#!/usr/bin/env python3
import sys
import wave
from pathlib import Path
from optparse import OptionParser
from PIL import Image
from functools import reduce


def extract_tile(pixels, x, y, bits, pal):
    tile = []
    width = 8
    for dy in range(8):
        a = 0
        b = 0
        w = 0
        for dx in range(8):
            px = pixels[(x * 8) + dx, (y * 8) + dy]
            f, idx = (True, pal[px]) if px in range(4) else (False, 0)
            a = a << 1 | idx & 1
            b = b << 1 | (idx >> 1) & 1
            w += 1 if f else 0
        width = min(width, w)
        tile.append(a)
        if bits == 2:
            tile.append(b)
    return width, tile


def output_array(outf, name, array, width):
    outf.write(bytes("static const UBYTE {0:s}[] = {{\n".format(name), "ascii"))
    idx = 0
    for v in array:
        outf.write(bytes("0x{:02x},".format(v), "ascii"))
        if idx >= (width - 1):
            outf.write(b"\n")
            idx = 0
        else:
            idx += 1
    if idx != 0:
        outf.write(b"\n")
    outf.write(b"};\n")


def append_face(storage, face):
    for i in range(len(storage)):
        if storage[i] == face:
            return True, i
    storage.append(face)
    return False, len(storage) - 1


def main(argv=None):
    parser = OptionParser("Usage: png2font.py [options] INPUT_FILE_NAME.PNG")
    parser.description = "This program takes an indexed png file with 5 or more colors and makes a font for use with " \
                         "gbdk2020. The first four indexed colors will be used for the font and any additional color " \
                         "indexes will be treated as not part of the font. Please ensure that only one glyph is " \
                         "stored in each 8x8 set of pixels in the input image."
    parser.add_option("-o", '--out', dest='outfilename', help='output file name')
    parser.add_option("-i", '--identifier', dest='identifier', help='source identifier')
    # parser.add_option("-u", '--uppercase', dest='uppercaseOnly', help='maps lowercase letters to uppercase letters')
    parser.add_option("-p", '--bpp', dest='bpp', default="1", help='bits per pixel: 1 or 2')
    parser.add_option("-r", '--inversePalette', action="store_false", dest='inversePalette',
                      default=True, help='inverses the palette order')
    parser.add_option("-s", '--start', dest='start', default="32", help='ascii code of the first symbol')

    parser.add_option("-b", '--bank', dest='bank', default="255", help='BANK number (default AUTO=255)')
    parser.add_option("-v", '--verbose', dest='verbose', action="store_true", default=False, help="Enable detailed output")

    (options, args) = parser.parse_args()

    if len(args) == 0:
        parser.print_help()
        parser.error("Input file name required\n")

    infilename = Path(args[0])

    if options.outfilename is None:
        if options.verbose:
            sys.stdout.write("No output file identifier given, defaulting to " + infilename.with_suffix('.c').__str__() + "\n")
        outfilename = infilename.with_suffix('.c')
    else:
        if options.verbose:
            sys.stdout.write("Output file identifier provided as: " + Path(options.outfilename).__str__() + "\n")
        outfilename = Path(options.outfilename)

    if options.identifier is None:
        identifier = str(Path(infilename.name).with_suffix(''))
        if options.verbose:
            sys.stdout.write("C identifier not provided. Using automatically generated identifier: " + identifier + "\n")
    else:
        identifier = options.identifier
        if options.verbose:
            sys.stdout.write("C identifier provided as: " + identifier + "\n")

    if not int(options.bpp) in [1, 2]:
        parser.print_help()
        parser.error("Supported bit per pixel values are: 1, 2")

    if options.inversePalette:
        if options.verbose:
            sys.stdout.write("Using default palette order: descending indexes\n")
        pal = [3, 2, 1, 0]
    else:
        if options.verbose:
            sys.stdout.write("Using default palette order: ascending indexes\n")
        pal = [0, 1, 2, 3]

    with Image.open(infilename) as font:
        w, h = font.size
        w //= 8
        h //= 8

        pixels = font.load()

        indexes, widths, faces = [0] * 256, [], []

        idx = int(options.start)
        if options.verbose:
            sys.stdout.write("Starting ascii index to map to glyphs: " + idx.__str__() + "\n")
        for y in range(h):
            for x in range(w):
                if options.verbose:
                    sys.stdout.write("Looking at the tile (" + x.__str__() + ", " + y.__str__() + ")\n")
                width, tile = extract_tile(pixels, x, y, int(options.bpp), pal)
                if options.verbose:
                    if width > 0:
                        sys.stdout.write("Glyph has a width of " + width.__str__() + "\n")
                    else:
                        sys.stdout.write("Width zero detected; no glyph found.\n")
                found, indexes[idx] = append_face(faces, tile)
                if options.verbose:
                    if found:
                        sys.stdout.write("The glyph was recognized as the tile in the " + indexes[idx].__str__() + " position\n")
                    else:
                        sys.stdout.write("The glyph was not recognized and will be added at index " + indexes[idx].__str__() + "\n")
                if not found:
                    widths.append(width)
                idx += 1

        is7BIT = idx <= 128
        if options.verbose:
            if is7BIT:
                sys.stdout.write("Discovered that the font being converted only uses 128 characters and is therefore only uses 7 bits for addressing.\nTruncating the indexes.\n")

        if is7BIT:
            indexes = indexes[:128]

        # if options.uppercaseOnly:
        #     if options.verbose:
        #         sys.stdout.write("Duplicating the uppercase indexes for the lowercase glyphs\n")
        #     for idx in range(26):
        #         lowercaseIndex = 97 + idx
        #         uppercaseIndex = 65 + idx
        #         indexes[lowercaseIndex] = indexes[uppercaseIndex]

        # output C source file
        with open(str(outfilename), "wb") as outf:
            outf.write(bytes("#pragma bank {1:s}\n\n"
                             "#include \"vwf.h\"\n"
                             "BANKREF({0:s})\n\n".format(identifier, options.bank), "ascii"))

            output_array(outf, "{:s}_table".format(identifier), indexes, 16)
            output_array(outf, "{:s}_widths".format(identifier), widths, 16)
            output_array(outf, "{:s}_faces".format(identifier), reduce(lambda x, y: x + y, faces), 8 if is7BIT else 16)

            outf.write(bytes("const font_desc_t {0:s} = {{\n"
                             "    {1:s}FONT_VWF,\n"
                             "    {0:s}_table,\n"
                             "    {0:s}_widths,\n"
                             "    {0:s}_faces\n"
                             "}};\n".format(identifier, "RECODE_7BIT|" if is7BIT else ""), "ascii"))

        # output C header file
        if outfilename.suffix == ".c":
            with open(str(outfilename.with_suffix('.h')), "wb") as hdrf:
                hdrf.write(bytes(("#ifndef __{0:s}_INCLUDE__\n"
                                  "#define __{0:s}_INCLUDE__\n\n"
                                  "BANKREF_EXTERN({0:s})\n"
                                  "extern const unsigned char {0:s}[];\n\n"
                                  "#endif\n").format(identifier), "ascii"))


if __name__ == '__main__':
    main()

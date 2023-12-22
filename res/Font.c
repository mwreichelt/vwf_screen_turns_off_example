#include <gb/gb.h>
#include "common.h"
#include "Font.h"
/*

 FONT.C

 Tile Source File.

 Info:
  Form                 : All tiles as one unit.
  Format               : Gameboy 4 color.
  Compression          : None.
  Counter              : None.
  Tile size            : 8 x 8
  Tiles                : 0 to 63

  Palette colors       : Included.
  SGB Palette          : None.
  CGB Palette          : None.

  Convert to metatiles : No.

 This file was generated by GBTD v2.2

*/

#pragma bank 255
BANKREF(Font_tiles_bank)

/* Start of tile array. */
const unsigned char Font_tiles[1024] =
{
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x18,0x18,0x38,0x38,0x30,0x30,
  0x00,0x00,0x60,0x60,0x60,0x60,0x00,0x00,
  0x00,0x00,0x66,0x66,0x66,0x66,0x44,0x44,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x24,0x24,0x7E,0x7E,0x24,0x24,
  0x24,0x24,0x7E,0x7E,0x24,0x24,0x00,0x00,
  0x00,0x00,0x3C,0x3C,0x50,0x50,0x38,0x38,
  0x14,0x14,0x14,0x14,0x78,0x78,0x00,0x00,
  0x00,0x00,0x64,0x64,0x64,0x64,0x08,0x08,
  0x10,0x10,0x26,0x26,0x26,0x26,0x00,0x00,
  0x00,0x00,0x30,0x30,0x48,0x48,0x30,0x30,
  0x54,0x54,0x48,0x48,0x34,0x34,0x00,0x00,
  0x00,0x00,0x18,0x18,0x18,0x18,0x10,0x10,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x04,0x04,0x08,0x08,0x08,0x08,
  0x08,0x08,0x08,0x08,0x04,0x04,0x00,0x00,
  0x00,0x00,0x40,0x40,0x20,0x20,0x20,0x20,
  0x20,0x20,0x20,0x20,0x40,0x40,0x00,0x00,
  0x00,0x00,0x10,0x10,0x10,0x10,0x7C,0x7C,
  0x38,0x38,0x28,0x28,0x00,0x00,0x00,0x00,
  0x00,0x00,0x10,0x10,0x10,0x10,0x7C,0x7C,
  0x10,0x10,0x10,0x10,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x60,0x60,0x60,0x60,0x40,0x40,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x7C,0x7C,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x60,0x60,0x60,0x60,0x00,0x00,
  0x00,0x00,0x04,0x04,0x04,0x04,0x08,0x08,
  0x10,0x10,0x20,0x20,0x20,0x20,0x00,0x00,
  0x00,0x00,0x18,0x18,0x24,0x24,0x2C,0x2C,
  0x34,0x34,0x24,0x24,0x18,0x18,0x00,0x00,
  0x00,0x00,0x08,0x08,0x18,0x18,0x28,0x28,
  0x08,0x08,0x08,0x08,0x08,0x08,0x00,0x00,
  0x00,0x00,0x38,0x38,0x44,0x44,0x04,0x04,
  0x18,0x18,0x20,0x20,0x7C,0x7C,0x00,0x00,
  0x00,0x00,0x38,0x38,0x44,0x44,0x18,0x18,
  0x04,0x04,0x44,0x44,0x38,0x38,0x00,0x00,
  0x00,0x00,0x18,0x18,0x20,0x20,0x48,0x48,
  0x7C,0x7C,0x08,0x08,0x08,0x08,0x00,0x00,
  0x00,0x00,0x7C,0x7C,0x40,0x40,0x78,0x78,
  0x04,0x04,0x04,0x04,0x78,0x78,0x00,0x00,
  0x00,0x00,0x3C,0x3C,0x40,0x40,0x78,0x78,
  0x44,0x44,0x44,0x44,0x38,0x38,0x00,0x00,
  0x00,0x00,0x7C,0x7C,0x08,0x08,0x08,0x08,
  0x10,0x10,0x10,0x10,0x20,0x20,0x00,0x00,
  0x00,0x00,0x38,0x38,0x44,0x44,0x38,0x38,
  0x44,0x44,0x44,0x44,0x38,0x38,0x00,0x00,
  0x00,0x00,0x38,0x38,0x44,0x44,0x3C,0x3C,
  0x04,0x04,0x04,0x04,0x78,0x78,0x00,0x00,
  0x00,0x00,0x00,0x00,0x60,0x60,0x60,0x60,
  0x00,0x00,0x60,0x60,0x60,0x60,0x00,0x00,
  0x00,0x00,0x00,0x00,0x60,0x60,0x60,0x60,
  0x00,0x00,0x60,0x60,0x60,0x60,0x40,0x40,
  0x00,0x00,0x08,0x08,0x10,0x10,0x20,0x20,
  0x20,0x20,0x10,0x10,0x08,0x08,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x7C,0x7C,
  0x00,0x00,0x7C,0x7C,0x00,0x00,0x00,0x00,
  0x00,0x00,0x20,0x20,0x10,0x10,0x08,0x08,
  0x08,0x08,0x10,0x10,0x20,0x20,0x00,0x00,
  0x00,0x00,0x78,0x78,0x0C,0x0C,0x18,0x18,
  0x00,0x00,0x60,0x60,0x60,0x60,0x00,0x00,
  0x00,0x00,0x18,0x18,0x24,0x24,0x4C,0x4C,
  0x54,0x54,0x5C,0x5C,0x40,0x40,0x3C,0x3C,
  0x00,0x00,0x10,0x10,0x28,0x28,0x28,0x28,
  0x44,0x44,0x7C,0x7C,0x44,0x44,0x00,0x00,
  0x00,0x00,0x78,0x78,0x44,0x44,0x78,0x78,
  0x44,0x44,0x44,0x44,0x78,0x78,0x00,0x00,
  0x00,0x00,0x38,0x38,0x44,0x44,0x40,0x40,
  0x40,0x40,0x44,0x44,0x38,0x38,0x00,0x00,
  0x00,0x00,0x78,0x78,0x44,0x44,0x44,0x44,
  0x44,0x44,0x44,0x44,0x78,0x78,0x00,0x00,
  0x00,0x00,0x7C,0x7C,0x40,0x40,0x70,0x70,
  0x40,0x40,0x40,0x40,0x7C,0x7C,0x00,0x00,
  0x00,0x00,0x7C,0x7C,0x40,0x40,0x70,0x70,
  0x40,0x40,0x40,0x40,0x40,0x40,0x00,0x00,
  0x00,0x00,0x38,0x38,0x44,0x44,0x40,0x40,
  0x4C,0x4C,0x44,0x44,0x3C,0x3C,0x00,0x00,
  0x00,0x00,0x44,0x44,0x44,0x44,0x7C,0x7C,
  0x44,0x44,0x44,0x44,0x44,0x44,0x00,0x00,
  0x00,0x00,0x7C,0x7C,0x10,0x10,0x10,0x10,
  0x10,0x10,0x10,0x10,0x7C,0x7C,0x00,0x00,
  0x00,0x00,0x7C,0x7C,0x08,0x08,0x08,0x08,
  0x08,0x08,0x48,0x48,0x30,0x30,0x00,0x00,
  0x00,0x00,0x44,0x44,0x48,0x48,0x70,0x70,
  0x48,0x48,0x44,0x44,0x44,0x44,0x00,0x00,
  0x00,0x00,0x40,0x40,0x40,0x40,0x40,0x40,
  0x40,0x40,0x40,0x40,0x7C,0x7C,0x00,0x00,
  0x00,0x00,0x44,0x44,0x6C,0x6C,0x54,0x54,
  0x44,0x44,0x44,0x44,0x44,0x44,0x00,0x00,
  0x00,0x00,0x44,0x44,0x64,0x64,0x54,0x54,
  0x54,0x54,0x4C,0x4C,0x44,0x44,0x00,0x00,
  0x00,0x00,0x38,0x38,0x44,0x44,0x44,0x44,
  0x44,0x44,0x44,0x44,0x38,0x38,0x00,0x00,
  0x00,0x00,0x78,0x78,0x44,0x44,0x78,0x78,
  0x40,0x40,0x40,0x40,0x40,0x40,0x00,0x00,
  0x00,0x00,0x38,0x38,0x44,0x44,0x44,0x44,
  0x44,0x44,0x4C,0x4C,0x3C,0x3C,0x00,0x00,
  0x00,0x00,0x78,0x78,0x44,0x44,0x78,0x78,
  0x48,0x48,0x44,0x44,0x44,0x44,0x00,0x00,
  0x00,0x00,0x3C,0x3C,0x40,0x40,0x38,0x38,
  0x04,0x04,0x04,0x04,0x78,0x78,0x00,0x00,
  0x00,0x00,0x7C,0x7C,0x10,0x10,0x10,0x10,
  0x10,0x10,0x10,0x10,0x10,0x10,0x00,0x00,
  0x00,0x00,0x44,0x44,0x44,0x44,0x44,0x44,
  0x44,0x44,0x44,0x44,0x38,0x38,0x00,0x00,
  0x00,0x00,0x44,0x44,0x44,0x44,0x44,0x44,
  0x28,0x28,0x28,0x28,0x10,0x10,0x00,0x00,
  0x00,0x00,0x44,0x44,0x44,0x44,0x44,0x44,
  0x54,0x54,0x54,0x54,0x28,0x28,0x00,0x00,
  0x00,0x00,0x44,0x44,0x28,0x28,0x10,0x10,
  0x10,0x10,0x28,0x28,0x44,0x44,0x00,0x00,
  0x00,0x00,0x44,0x44,0x28,0x28,0x10,0x10,
  0x10,0x10,0x10,0x10,0x10,0x10,0x00,0x00,
  0x00,0x00,0x7C,0x7C,0x08,0x08,0x10,0x10,
  0x10,0x10,0x20,0x20,0x7C,0x7C,0x00,0x00,
  0x00,0x00,0x70,0x70,0x40,0x40,0x40,0x40,
  0x40,0x40,0x40,0x40,0x70,0x70,0x00,0x00,
  0x00,0x00,0x20,0x20,0x20,0x20,0x10,0x10,
  0x08,0x08,0x04,0x04,0x04,0x04,0x00,0x00,
  0x00,0x00,0x1C,0x1C,0x04,0x04,0x04,0x04,
  0x04,0x04,0x04,0x04,0x1C,0x1C,0x00,0x00,
  0x00,0x00,0x10,0x10,0x28,0x28,0x44,0x44,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x7C,0x7C,0x00,0x00
};

void loadFontGraphicsData() BANKED {
    set_bkg_data(VRAM_FONT_START, sizeof(Font_tiles) >> 4, Font_tiles);
}

/* End of FONT.C */
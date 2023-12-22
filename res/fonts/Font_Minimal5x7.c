#pragma bank 255

#include "vwf.h"
#include "common.h"
BANKREF(Font_Minimal5x7)

static const UBYTE Font_Minimal5x7_table[] = {
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,
0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1a,0x1b,0x1c,0x1d,0x1e,0x1f,
0x20,0x21,0x22,0x23,0x24,0x25,0x26,0x27,0x28,0x29,0x2a,0x2b,0x2c,0x2d,0x2e,0x2f,
0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x3a,0x3b,0x3c,0x3d,0x3e,0x3f,
0x40,0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x4a,0x4b,0x4c,0x4d,0x4e,0x4f,
0x50,0x51,0x52,0x53,0x54,0x55,0x56,0x57,0x58,0x59,0x5a,0x5b,0x4c,0x5c,0x5d,0x5e,
};
static const UBYTE Font_Minimal5x7_widths[] = {
0x05,0x02,0x04,0x06,0x06,0x06,0x07,0x02,0x03,0x03,0x06,0x06,0x03,0x04,0x02,0x05,
0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x02,0x03,0x04,0x04,0x04,0x06,
0x08,0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x06,
0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x03,0x05,0x03,0x06,0x06,
0x04,0x06,0x06,0x06,0x06,0x06,0x04,0x06,0x06,0x02,0x06,0x05,0x02,0x06,0x06,0x06,
0x05,0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x05,0x06,0x04,0x04,0x06,0x04,
};
static const UBYTE Font_Minimal5x7_faces[] = {
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x80,0x80,0x80,0x80,0x80,0x00,0x80,
0x00,0xa0,0xa0,0x00,0x00,0x00,0x00,0x00,
0x00,0x50,0x50,0xf8,0x50,0xf8,0x50,0x50,
0x00,0x70,0xa8,0xa0,0x70,0x28,0xa8,0x70,
0x00,0xc8,0xc8,0x10,0x20,0x40,0x98,0x98,
0x00,0xe0,0xa0,0xc0,0x60,0x94,0x88,0x74,
0x00,0x80,0x80,0x00,0x00,0x00,0x00,0x00,
0x00,0x40,0x80,0x80,0x80,0x80,0x80,0x40,
0x00,0x80,0x40,0x40,0x40,0x40,0x40,0x80,
0x00,0x00,0x50,0x20,0xf8,0x20,0x50,0x00,
0x00,0x00,0x20,0x20,0xf8,0x20,0x20,0x00,
0x00,0x00,0x00,0x00,0x00,0x40,0x40,0x80,
0x00,0x00,0x00,0x00,0xe0,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,
0x00,0x10,0x20,0x20,0x40,0x40,0x80,0x80,
0x00,0x70,0x88,0x98,0xa8,0xc8,0x88,0x70,
0x00,0x20,0x60,0xa0,0x20,0x20,0x20,0xf8,
0x00,0x70,0x88,0x08,0x10,0x20,0x40,0xf8,
0x00,0x70,0x88,0x08,0x30,0x08,0x88,0x70,
0x00,0x88,0x88,0x88,0xf8,0x08,0x08,0x08,
0x00,0xf8,0x80,0xf0,0x08,0x08,0x88,0x70,
0x00,0x70,0x88,0x80,0xf0,0x88,0x88,0x70,
0x00,0xf8,0x08,0x10,0x20,0x20,0x20,0x20,
0x00,0x70,0x88,0x88,0x70,0x88,0x88,0x70,
0x00,0x70,0x88,0x88,0x78,0x08,0x88,0x70,
0x00,0x00,0x00,0x80,0x00,0x00,0x80,0x00,
0x00,0x00,0x00,0x40,0x00,0x40,0x80,0x00,
0x00,0x00,0x00,0x20,0x40,0x80,0x40,0x20,
0x00,0x00,0x00,0xe0,0x00,0xe0,0x00,0x00,
0x00,0x00,0x00,0x80,0x40,0x20,0x40,0x80,
0x00,0x70,0x88,0x08,0x10,0x20,0x00,0x20,
0x00,0x7c,0x82,0xba,0xaa,0xbe,0x80,0x7c,
0x00,0x70,0x88,0x88,0xf8,0x88,0x88,0x88,
0x00,0xf0,0x88,0x88,0xf0,0x88,0x88,0xf0,
0x00,0x70,0x88,0x80,0x80,0x80,0x88,0x70,
0x00,0xf0,0x88,0x88,0x88,0x88,0x88,0xf0,
0x00,0xf8,0x80,0x80,0xf0,0x80,0x80,0xf8,
0x00,0xf8,0x80,0x80,0xf0,0x80,0x80,0x80,
0x00,0x70,0x88,0x80,0xb8,0x88,0x88,0x70,
0x00,0x88,0x88,0x88,0xf8,0x88,0x88,0x88,
0x00,0xf8,0x20,0x20,0x20,0x20,0x20,0xf8,
0x00,0x7c,0x08,0x08,0x08,0x08,0x88,0x70,
0x00,0x88,0x90,0xa0,0xc0,0xa0,0x90,0x88,
0x00,0x80,0x80,0x80,0x80,0x80,0x80,0xf8,
0x00,0x88,0xd8,0xa8,0x88,0x88,0x88,0x88,
0x00,0x88,0xc8,0xa8,0xa8,0x98,0x98,0x88,
0x00,0x70,0x88,0x88,0x88,0x88,0x88,0x70,
0x00,0xf0,0x88,0x88,0xf0,0x80,0x80,0x80,
0x00,0x70,0x88,0x88,0x88,0xa8,0x90,0x68,
0x00,0xf0,0x88,0x88,0xf0,0xa0,0x90,0x88,
0x00,0x70,0x88,0x80,0x70,0x08,0x88,0x70,
0x00,0xf8,0x20,0x20,0x20,0x20,0x20,0x20,
0x00,0x88,0x88,0x88,0x88,0x88,0x88,0x70,
0x00,0x88,0x88,0x88,0x50,0x50,0x20,0x20,
0x00,0x88,0xa8,0xa8,0xa8,0xa8,0xa8,0x50,
0x00,0x88,0x88,0x50,0x20,0x50,0x88,0x88,
0x00,0x88,0x88,0x50,0x20,0x20,0x20,0x20,
0x00,0xf8,0x08,0x10,0x20,0x40,0x80,0xf8,
0x00,0xc0,0x80,0x80,0x80,0x80,0x80,0xc0,
0x00,0x80,0x40,0x40,0x20,0x20,0x10,0x10,
0x00,0xc0,0x40,0x40,0x40,0x40,0x40,0xc0,
0x00,0x20,0x50,0x50,0x88,0x88,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xf8,
0x00,0xc0,0x60,0x20,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x70,0x08,0x78,0x88,0x78,
0x00,0x80,0x80,0xf0,0x88,0x88,0x88,0xf0,
0x00,0x00,0x00,0x70,0x88,0x80,0x88,0x70,
0x00,0x08,0x08,0x78,0x88,0x88,0x88,0x78,
0x00,0x00,0x00,0x70,0x88,0xf8,0x80,0x70,
0x00,0x60,0x40,0xe0,0x40,0x40,0x40,0x40,
0x00,0x00,0x70,0x88,0x80,0xb8,0x88,0x78,
0x00,0x80,0x80,0xf0,0x88,0x88,0x88,0x88,
0x00,0x80,0x00,0x80,0x80,0x80,0x80,0x80,
0x00,0x00,0x10,0x10,0x10,0x10,0x90,0x60,
0x00,0x80,0x80,0x90,0xa0,0xc0,0xa0,0x90,
0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x80,
0x00,0x00,0x00,0xd0,0xa8,0xa8,0xa8,0xa8,
0x00,0x00,0x00,0xf0,0x88,0x88,0x88,0x88,
0x00,0x00,0x00,0x70,0x88,0x88,0x88,0x70,
0x00,0x00,0x00,0xe0,0x90,0x90,0xe0,0x80,
0x00,0x00,0x00,0x70,0x90,0x90,0x70,0x10,
0x00,0x00,0x00,0x98,0xa0,0xc0,0x80,0x80,
0x00,0x00,0x00,0x78,0x80,0x70,0x08,0xf0,
0x00,0x40,0x40,0xf8,0x40,0x40,0x48,0x30,
0x00,0x00,0x00,0x88,0x88,0x88,0x88,0x78,
0x00,0x00,0x00,0x88,0x88,0x50,0x50,0x20,
0x00,0x00,0x00,0xa8,0xa8,0xa8,0xa8,0x50,
0x00,0x00,0x00,0x88,0x50,0x20,0x50,0x88,
0x00,0x00,0x00,0x88,0x50,0x20,0x20,0x20,
0x00,0x00,0x00,0xf8,0x10,0x20,0x40,0xf8,
0x00,0x20,0x40,0x40,0x80,0x40,0x40,0x20,
0x00,0x80,0x40,0x40,0x20,0x40,0x40,0x80,
0x00,0x00,0x40,0xa8,0x10,0x00,0x00,0x00,
0xc0,0x60,0x20,0x00,0x00,0x00,0x00,0x00,
};
const font_desc_t Font_Minimal5x7 = {
    RECODE_7BIT|FONT_VWF,
    Font_Minimal5x7_table,
    Font_Minimal5x7_widths,
    Font_Minimal5x7_faces
};
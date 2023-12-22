#pragma bank 255

#include "vwf.h"
#include "common.h"
BANKREF(Font_CoCa_GB)

static const UBYTE Font_CoCa_GB_table[] = {
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,
0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1a,0x1b,0x1c,0x1d,0x1e,0x1f,
0x20,0x21,0x22,0x23,0x24,0x25,0x26,0x27,0x28,0x29,0x2a,0x2b,0x2c,0x2d,0x2e,0x2f,
0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x3a,0x3b,0x0f,0x3c,0x3d,0x3e,
0x3f,0x40,0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x4a,0x4b,0x4c,0x4d,0x4e,
0x4f,0x50,0x51,0x52,0x53,0x54,0x55,0x56,0x57,0x58,0x59,0x5a,0x5b,0x5c,0x5d,0x00,
};
static const UBYTE Font_CoCa_GB_widths[] = {
0x05,0x02,0x04,0x06,0x06,0x05,0x06,0x03,0x03,0x03,0x08,0x05,0x03,0x05,0x02,0x05,
0x06,0x04,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x03,0x03,0x04,0x05,0x04,0x05,
0x07,0x06,0x05,0x06,0x06,0x05,0x05,0x06,0x05,0x06,0x06,0x05,0x05,0x06,0x06,0x06,
0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x08,0x06,0x06,0x06,0x03,0x03,0x04,0x05,0x03,
0x06,0x05,0x04,0x05,0x05,0x05,0x05,0x05,0x04,0x04,0x05,0x02,0x06,0x05,0x06,0x05,
0x05,0x05,0x03,0x04,0x05,0x06,0x06,0x05,0x05,0x05,0x04,0x05,0x04,0x07,
};
static const UBYTE Font_CoCa_GB_faces[] = {
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x80,0x80,0x80,0x80,0x00,0x80,0x00,
0x00,0xa0,0xa0,0x00,0x00,0x00,0x00,0x00,
0x00,0x50,0xf8,0x50,0x50,0xf8,0x50,0x00,
0x20,0x70,0xa8,0xa0,0x70,0x28,0xa8,0x70,
0x00,0x00,0x90,0x20,0x40,0x90,0x00,0x00,
0x40,0xa0,0xa0,0x40,0xa8,0x90,0x68,0x00,
0x00,0x40,0x40,0x00,0x00,0x00,0x00,0x00,
0x00,0x40,0x80,0x80,0x80,0x80,0x40,0x00,
0x00,0x80,0x40,0x40,0x40,0x40,0x80,0x00,
0x10,0x28,0xc6,0x44,0x28,0x7c,0xc6,0x00,
0x00,0x00,0x00,0x20,0x70,0x20,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x40,0x40,0x80,
0x00,0x00,0x00,0x00,0x70,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x80,0x00,
0x00,0x10,0x20,0x20,0x40,0x40,0x80,0x00,
0x00,0x70,0x88,0x98,0xe8,0x88,0x70,0x00,
0x00,0x40,0xc0,0x40,0x40,0x40,0xe0,0x00,
0x00,0x60,0x90,0x10,0x20,0x40,0xf0,0x00,
0x00,0x60,0x90,0x20,0x10,0x90,0x60,0x00,
0x00,0x20,0xa0,0xa0,0xf0,0x20,0x20,0x00,
0x00,0xf0,0x80,0xe0,0x10,0x10,0xe0,0x00,
0x00,0x60,0x80,0xe0,0x90,0x90,0x60,0x00,
0x00,0xf0,0x10,0x10,0x20,0x40,0x80,0x00,
0x00,0x60,0x90,0x60,0x90,0x90,0x60,0x00,
0x00,0x60,0x90,0x90,0x70,0x10,0x60,0x00,
0x00,0x00,0x40,0x00,0x00,0x40,0x00,0x00,
0x00,0x00,0x40,0x00,0x40,0x40,0x80,0x00,
0x00,0x00,0x20,0x40,0x80,0x40,0x20,0x00,
0x00,0x00,0x00,0x70,0x00,0x70,0x00,0x00,
0x00,0x00,0x80,0x40,0x20,0x40,0x80,0x00,
0x00,0x60,0x90,0x10,0x20,0x00,0x20,0x00,
0x00,0x38,0x44,0xb4,0xb4,0xb8,0x42,0x3c,
0x00,0x20,0x50,0x88,0xf8,0x88,0x88,0x00,
0x00,0xe0,0x90,0xe0,0x90,0x90,0xe0,0x00,
0x00,0x70,0x88,0x80,0x80,0x88,0x70,0x00,
0x00,0xe0,0x90,0x88,0x88,0x90,0xe0,0x00,
0x00,0xf0,0x80,0xe0,0x80,0x80,0xf0,0x00,
0x00,0xf0,0x80,0xe0,0x80,0x80,0x80,0x00,
0x00,0x70,0x88,0x80,0x98,0x88,0x70,0x00,
0x00,0x90,0x90,0x90,0xf0,0x90,0x90,0x00,
0x00,0xf8,0x20,0x20,0x20,0x20,0xf8,0x00,
0x00,0xf8,0x10,0x10,0x10,0x90,0x60,0x00,
0x00,0x90,0xa0,0xc0,0xc0,0xa0,0x90,0x00,
0x00,0x80,0x80,0x80,0x80,0x80,0xf0,0x00,
0x00,0x88,0xd8,0xa8,0x88,0x88,0x88,0x00,
0x00,0x88,0xc8,0xa8,0x98,0x88,0x88,0x00,
0x00,0x70,0x88,0x88,0x88,0x88,0x70,0x00,
0x00,0xf0,0x88,0x88,0xf0,0x80,0x80,0x00,
0x00,0x70,0x88,0x88,0xa8,0x90,0x68,0x00,
0x00,0xf0,0x88,0x88,0xf0,0x90,0x88,0x00,
0x00,0x70,0x88,0x40,0x30,0x88,0x70,0x00,
0x00,0xf8,0x20,0x20,0x20,0x20,0x20,0x00,
0x00,0x88,0x88,0x88,0x88,0x88,0x70,0x00,
0x00,0x88,0x88,0x50,0x50,0x20,0x20,0x00,
0x00,0x82,0x82,0x54,0x54,0x28,0x28,0x00,
0x00,0x88,0x50,0x20,0x20,0x50,0x88,0x00,
0x00,0x88,0x50,0x20,0x20,0x20,0x20,0x00,
0x00,0xf8,0x08,0x10,0x60,0x80,0xf8,0x00,
0x00,0xc0,0x80,0x80,0x80,0x80,0xc0,0x00,
0x00,0xc0,0x40,0x40,0x40,0x40,0xc0,0x00,
0x40,0xa0,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0xf0,0x00,
0x80,0x40,0x40,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x60,0x10,0x70,0x90,0x68,0x00,
0x80,0x80,0xe0,0x90,0x90,0x90,0xe0,0x00,
0x00,0x00,0x60,0x80,0x80,0x80,0x60,0x00,
0x10,0x10,0x70,0x90,0x90,0x90,0x70,0x00,
0x00,0x00,0x60,0x90,0xe0,0x80,0x70,0x00,
0x20,0x50,0x40,0xe0,0x40,0x40,0x40,0x00,
0x00,0x00,0x60,0x90,0x90,0x70,0x10,0x60,
0x80,0x80,0xe0,0x90,0x90,0x90,0x90,0x00,
0x00,0x40,0x00,0x40,0x40,0x40,0x40,0x00,
0x00,0x20,0x00,0x20,0x20,0x20,0xa0,0x40,
0x80,0x80,0x90,0xa0,0xc0,0xa0,0x90,0x00,
0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x00,
0x00,0x00,0xd0,0xa8,0xa8,0xa8,0x88,0x00,
0x00,0x00,0xe0,0x90,0x90,0x90,0x90,0x00,
0x00,0x00,0x70,0x88,0x88,0x88,0x70,0x00,
0x00,0x00,0x60,0x90,0x90,0xe0,0x80,0x80,
0x00,0x00,0x60,0x90,0x90,0x70,0x10,0x10,
0x00,0x00,0xb0,0xc0,0x80,0x80,0x80,0x00,
0x00,0x00,0xe0,0x80,0x40,0x20,0xe0,0x00,
0x40,0x40,0xe0,0x40,0x40,0x40,0x40,0x00,
0x00,0x00,0x90,0x90,0x90,0x90,0x70,0x00,
0x00,0x00,0x88,0x88,0x50,0x50,0x20,0x00,
0x00,0x00,0x88,0x88,0xa8,0xa8,0x50,0x00,
0x00,0x00,0x90,0x90,0x60,0x90,0x90,0x00,
0x00,0x00,0x90,0x90,0x90,0x70,0x10,0x60,
0x00,0x00,0xf0,0x10,0x20,0x40,0xf0,0x00,
0x60,0x40,0x40,0x80,0x40,0x40,0x60,0x00,
0x20,0x20,0x20,0x20,0x20,0x20,0x20,0x20,
0xc0,0x40,0x40,0x20,0x40,0x40,0xc0,0x00,
0x00,0x00,0x00,0x64,0x98,0x00,0x00,0x00,
};
const font_desc_t Font_CoCa_GB = {
    RECODE_7BIT|FONT_VWF,
    Font_CoCa_GB_table,
    Font_CoCa_GB_widths,
    Font_CoCa_GB_faces
};
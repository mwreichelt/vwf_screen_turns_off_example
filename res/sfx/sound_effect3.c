#pragma bank 255

#include <gbdk/platform.h>
#include <stdint.h>
#include "common.h"

BANKREF(sound_effect3)
const uint8_t sound_effect3[] = {
0x30,
0x31,0b01111000,0x80,0x60,0x39,0x87,
0x30,
0x31,0b01111001,0x80,0x83,0x06,0x87,
0x30,
0x30,
0x30,
0x30,
0x31,0b01111011,0x3a,0xa1,0x00,0xc0,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x31,0b00001000,0x87,
0x31,0b00001001,0x87,
0x30,
0x30,
0x31,0b00001011,0xc0,
0x30,
0x31,0b00101000,0x08,0x87,
0x31,0b00101001,0x08,0x87,
0x30,
0x30,
0x31,0b00101000,0x60,0x87,
0x31,0b00101001,0x83,0x87,
0x30,
0x30,
0x31,0b00001011,0xc0,
0x30,
0x31,0b00101000,0x08,0x87,
0x31,0b00101001,0x08,0x87,
0x30,
0x30,
0x31,0b00101000,0x60,0x87,
0x31,0b00101001,0x83,0x87,
0x30,
0x31,0b00001011,0xc0,
0x30,
0x31,0b00101000,0x08,0x87,
0x31,0b00101001,0x08,0x87,
0x30,
0x30,
0x30,
0x31,0b00111000,0x60,0x4f,0x87,
0x31,0b00111001,0x83,0x21,0x87,
0x30,
0x30,
0x31,0b00001011,0xc0,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x31,0b00011000,0x59,0x87,
0x31,0b00011001,0x2d,0x87,
0x30,
0x31,0b00001011,0xc0,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x31,0b00011000,0x62,0x87,
0x31,0b00011001,0x39,0x87,
0x30,
0x30,
0x31,0b00001011,0xc0,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x30,
0x33,0b10101000,0x00,0x08,0x80,0b00101001,0x08,0x80,0b00101011,0x08,0x80,
1,0b00000111
};
void AT(0b00001011) __mute_mask_sound_effect3;
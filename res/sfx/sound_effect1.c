#pragma bank 255

#include <gbdk/platform.h>
#include <stdint.h>
#include "common.h"

BANKREF(sound_effect1)
const uint8_t sound_effect1[] = {
0x33,0b11111000,0x00,0x00,0x00,0x00,0x80,0b01111001,0x00,0x00,0x00,0x80,0b01111011,0x00,0x00,0x00,0x80,
0x30,
0x30,
0x30,
0x30,
0x31,0b11111000,0x00,0x80,0xf0,0x00,0x80,
0x30,
0x30,
0x31,0b00111000,0xf0,0x9d,0x80,
0x30,
0x30,
0x31,0b00111000,0xf0,0x6b,0x81,
0x30,
0x30,
0x31,0b00111000,0xf0,0x77,0x82,
0x30,
0x30,
0x31,0b00111000,0xf0,0x12,0x83,
0x30,
0x30,
0x31,0b00111000,0xf0,0x9b,0x83,
0x30,
0x30,
0x31,0b00111000,0xf0,0x4e,0x84,
0x30,
0x30,
0x31,0b00111000,0xf0,0xb5,0x84,
0x30,
0x30,
0x31,0b00111000,0xf0,0x3b,0x85,
0x30,
0x30,
0x31,0b00111000,0xf0,0x89,0x85,
0x30,
0x30,
0x31,0b00111000,0xf0,0xce,0x85,
0x30,
0x30,
0x31,0b00111000,0xf0,0x27,0x86,
0x30,
0x30,
0x31,0b00111000,0xf0,0x5b,0x86,
0x30,
0x30,
0x31,0b00111000,0xf0,0x9e,0x86,
0x30,
0x30,
0x31,0b00111000,0xf0,0xc4,0x86,
0x30,
0x30,
0x31,0b00111000,0xf0,0xe7,0x86,
0x30,
0x30,
0x31,0b00111000,0xf0,0x14,0x87,
0x30,
0x30,
0x31,0b00111000,0xf0,0x2d,0x87,
0x30,
0x30,
0x31,0b00111000,0xf0,0x4f,0x87,
0x30,
0x30,
0x31,0b00111000,0xf0,0x62,0x87,
0x30,
0x30,
0x31,0b00111000,0xf0,0x73,0x87,
0x30,
0x30,
0x31,0b00111000,0xf0,0x8a,0x87,
0x30,
0x30,
0x31,0b00111000,0xf0,0x97,0x87,
0x30,
0x30,
0x31,0b01111000,0x80,0xf5,0xa7,0x87,
0x30,
0x30,
1,0b00000111
};
void AT(0b00001011) __mute_mask_sound_effect1;
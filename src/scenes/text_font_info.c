#include "common.h"
#include "text_font_info.h"

#pragma bank 255

BANKREF(text_font_info)

const vwf_text_segment_t tsCoCaGBv2_desc = {  &tsCoCaGBv2_alphabet, "This is the primary writing font for delivering lots of text at once. I made it for this game myself." };
const vwf_text_segment_t tsCoCaGBv2_alphabet = { &tsCoCaGBv2_desc, "\nABCDEFGHIJKLMNOPQRSTUVWXYZ\n01234567890\nABCDEFGHIJKLMNOPQRSTUVWXYZ\n01234567890\n!@#$%^&*()-=+[]{}<>;:'\""};
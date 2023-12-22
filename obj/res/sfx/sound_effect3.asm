;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (Linux)
;--------------------------------------------------------
	.module sound_effect3
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sound_effect3
	.globl b___func_sound_effect3
	.globl ___func_sound_effect3
	.globl ___mute_mask_sound_effect3
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$__mute_mask_sound_effect3$0_0$0 == 0x000b
___mute_mask_sound_effect3	=	0x000b
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$__func_sound_effect3$0$0	= .
	.globl	G$__func_sound_effect3$0$0
	C$sound_effect3.c$7$0_0$119	= .
	.globl	C$sound_effect3.c$7$0_0$119
;res/sfx/sound_effect3.c:7: BANKREF(sound_effect3)
;	---------------------------------
; Function __func_sound_effect3
; ---------------------------------
	b___func_sound_effect3	= 255
___func_sound_effect3::
	.local b___func_sound_effect3 
	___bank_sound_effect3 = b___func_sound_effect3 
	.globl ___bank_sound_effect3 
	.area _CODE_255
G$sound_effect3$0_0$0 == .
_sound_effect3:
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x78	; 120	'x'
	.db #0x80	; 128
	.db #0x60	; 96
	.db #0x39	; 57	'9'
	.db #0x87	; 135
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x79	; 121	'y'
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x06	; 6
	.db #0x87	; 135
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x7b	; 123
	.db #0x3a	; 58
	.db #0xa1	; 161
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x08	; 8
	.db #0x87	; 135
	.db #0x31	; 49	'1'
	.db #0x09	; 9
	.db #0x87	; 135
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x0b	; 11
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x28	; 40
	.db #0x08	; 8
	.db #0x87	; 135
	.db #0x31	; 49	'1'
	.db #0x29	; 41
	.db #0x08	; 8
	.db #0x87	; 135
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x28	; 40
	.db #0x60	; 96
	.db #0x87	; 135
	.db #0x31	; 49	'1'
	.db #0x29	; 41
	.db #0x83	; 131
	.db #0x87	; 135
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x0b	; 11
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x28	; 40
	.db #0x08	; 8
	.db #0x87	; 135
	.db #0x31	; 49	'1'
	.db #0x29	; 41
	.db #0x08	; 8
	.db #0x87	; 135
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x28	; 40
	.db #0x60	; 96
	.db #0x87	; 135
	.db #0x31	; 49	'1'
	.db #0x29	; 41
	.db #0x83	; 131
	.db #0x87	; 135
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x0b	; 11
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x28	; 40
	.db #0x08	; 8
	.db #0x87	; 135
	.db #0x31	; 49	'1'
	.db #0x29	; 41
	.db #0x08	; 8
	.db #0x87	; 135
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x38	; 56	'8'
	.db #0x60	; 96
	.db #0x4f	; 79	'O'
	.db #0x87	; 135
	.db #0x31	; 49	'1'
	.db #0x39	; 57	'9'
	.db #0x83	; 131
	.db #0x21	; 33
	.db #0x87	; 135
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x0b	; 11
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x18	; 24
	.db #0x59	; 89	'Y'
	.db #0x87	; 135
	.db #0x31	; 49	'1'
	.db #0x19	; 25
	.db #0x2d	; 45
	.db #0x87	; 135
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x0b	; 11
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x18	; 24
	.db #0x62	; 98	'b'
	.db #0x87	; 135
	.db #0x31	; 49	'1'
	.db #0x19	; 25
	.db #0x39	; 57	'9'
	.db #0x87	; 135
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x0b	; 11
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x33	; 51	'3'
	.db #0xa8	; 168
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x29	; 41
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x2b	; 43
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x01	; 1
	.db #0x07	; 7
	.area _INITIALIZER
	.area _CABS (ABS)
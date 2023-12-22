;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (Linux)
;--------------------------------------------------------
	.module Toggle1x2
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Toggle1x2_tiles
	.globl b___func_Toggle1x2_bank
	.globl ___func_Toggle1x2_bank
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
	.area _CODE
	G$__func_Toggle1x2_bank$0$0	= .
	.globl	G$__func_Toggle1x2_bank$0$0
	C$Toggle1x2.c$7$0_0$119	= .
	.globl	C$Toggle1x2.c$7$0_0$119
;res/Toggle1x2.c:7: BANKREF(Toggle1x2_bank)
;	---------------------------------
; Function __func_Toggle1x2_bank
; ---------------------------------
	b___func_Toggle1x2_bank	= 0
___func_Toggle1x2_bank::
	.local b___func_Toggle1x2_bank 
	___bank_Toggle1x2_bank = b___func_Toggle1x2_bank 
	.globl ___bank_Toggle1x2_bank 
	.area _CODE
G$Toggle1x2_tiles$0_0$0 == .
_Toggle1x2_tiles:
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x71	; 113	'q'
	.db #0x80	; 128
	.db #0x75	; 117	'u'
	.db #0x80	; 128
	.db #0x75	; 117	'u'
	.db #0x80	; 128
	.db #0x71	; 113	'q'
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0xb6	; 182
	.db #0x01	; 1
	.db #0x96	; 150
	.db #0x01	; 1
	.db #0xa6	; 166
	.db #0x01	; 1
	.db #0xb6	; 182
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xc4	; 196
	.db #0x7f	; 127
	.db #0xd5	; 213
	.db #0x7f	; 127
	.db #0xd4	; 212
	.db #0x7f	; 127
	.db #0xc5	; 197
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0x47	; 71	'G'
	.db #0xfe	; 254
	.db #0xdf	; 223
	.db #0xfe	; 254
	.db #0xcf	; 207
	.db #0xfe	; 254
	.db #0xdf	; 223
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xb1	; 177
	.db #0xff	; 255
	.db #0xb7	; 183
	.db #0xff	; 255
	.db #0xb3	; 179
	.db #0xff	; 255
	.db #0x91	; 145
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x11	; 17
	.db #0xff	; 255
	.db #0x77	; 119	'w'
	.db #0xff	; 255
	.db #0x59	; 89	'Y'
	.db #0xff	; 255
	.db #0x11	; 17
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xa8	; 168
	.db #0xff	; 255
	.db #0x8b	; 139
	.db #0xff	; 255
	.db #0xa9	; 169
	.db #0xff	; 255
	.db #0xa8	; 168
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x89	; 137
	.db #0xff	; 255
	.db #0xaa	; 170
	.db #0xff	; 255
	.db #0x8a	; 138
	.db #0xff	; 255
	.db #0xa9	; 169
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.area _INITIALIZER
	.area _CABS (ABS)

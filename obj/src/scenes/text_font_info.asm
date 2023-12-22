;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (Linux)
;--------------------------------------------------------
	.module text_font_info
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tsCoCaGBv2_alphabet
	.globl _tsCoCaGBv2_desc
	.globl b___func_text_font_info
	.globl ___func_text_font_info
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
	.area _CODE_255
	G$__func_text_font_info$0$0	= .
	.globl	G$__func_text_font_info$0$0
	C$text_font_info.c$6$0_0$119	= .
	.globl	C$text_font_info.c$6$0_0$119
;src/scenes/text_font_info.c:6: BANKREF(text_font_info)
;	---------------------------------
; Function __func_text_font_info
; ---------------------------------
	b___func_text_font_info	= 255
___func_text_font_info::
	.local b___func_text_font_info 
	___bank_text_font_info = b___func_text_font_info 
	.globl ___bank_text_font_info 
	.area _CODE_255
G$tsCoCaGBv2_desc$0_0$0 == .
_tsCoCaGBv2_desc:
	.dw _tsCoCaGBv2_alphabet
	.dw __str_0
G$tsCoCaGBv2_alphabet$0_0$0 == .
_tsCoCaGBv2_alphabet:
	.dw _tsCoCaGBv2_desc
	.dw __str_1
Ftext_font_info$__str_0$0_0$0 == .
__str_0:
	.ascii "This is the primary writing font for delivering lots of text"
	.ascii " at once. I made it for this game myself."
	.db 0x00
Ftext_font_info$__str_1$0_0$0 == .
__str_1:
	.db 0x0a
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.db 0x0a
	.ascii "01234567890"
	.db 0x0a
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.db 0x0a
	.ascii "01234567890"
	.db 0x0a
	.ascii "!@#$%^&*()-=+[]{}<>;:'"
	.db 0x22
	.db 0x00
	.area _INITIALIZER
	.area _CABS (ABS)

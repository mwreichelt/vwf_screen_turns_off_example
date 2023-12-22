;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (Linux)
;--------------------------------------------------------
	.module Data_Music
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b___func_Data_Music_bank
	.globl ___func_Data_Music_bank
	.globl _Data_Music
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
G$Data_Music$0_0$0==.
_Data_Music::
	.ds 34
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
	G$__func_Data_Music_bank$0$0	= .
	.globl	G$__func_Data_Music_bank$0$0
	C$Data_Music.c$8$0_0$119	= .
	.globl	C$Data_Music.c$8$0_0$119
;res/data/Data_Music.c:8: BANKREF(Data_Music_bank)
;	---------------------------------
; Function __func_Data_Music_bank
; ---------------------------------
	b___func_Data_Music_bank	= 255
___func_Data_Music_bank::
	.local b___func_Data_Music_bank 
	___bank_Data_Music_bank = b___func_Data_Music_bank 
	.globl ___bank_Data_Music_bank 
	.area _CODE_255
	.area _INITIALIZER
FData_Music$__xinit_Data_Music$0_0$0 == .
__xinit__Data_Music:
	.ascii "NONE         "
	.db 0x00
	.db #0x00	; 0
	.dw #0x0000
	.ascii "TEMPLATE     "
	.db 0x00
	.byte ___bank_song_template
	.dw _template
	.area _CABS (ABS)

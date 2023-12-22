;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (Linux)
;--------------------------------------------------------
	.module Data_SFX
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b___func_Data_SFX_bank
	.globl ___func_Data_SFX_bank
	.globl _Data_SFX
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
G$Data_SFX$0_0$0==.
_Data_SFX::
	.ds 72
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
	G$__func_Data_SFX_bank$0$0	= .
	.globl	G$__func_Data_SFX_bank$0$0
	C$Data_SFX.c$10$0_0$167	= .
	.globl	C$Data_SFX.c$10$0_0$167
;res/data/Data_SFX.c:10: BANKREF(Data_SFX_bank)
;	---------------------------------
; Function __func_Data_SFX_bank
; ---------------------------------
	b___func_Data_SFX_bank	= 255
___func_Data_SFX_bank::
	.local b___func_Data_SFX_bank 
	___bank_Data_SFX_bank = b___func_Data_SFX_bank 
	.globl ___bank_Data_SFX_bank 
	.area _CODE_255
	.area _INITIALIZER
FData_SFX$__xinit_Data_SFX$0_0$0 == .
__xinit__Data_SFX:
	.ascii "NONE         "
	.db 0x00
	.db #0x00	; 0
	.dw #0x0000
	.db #0x00	; 0
	.ascii "SFX1         "
	.db 0x00
	.byte ___bank_sound_effect1
	.dw _sound_effect1
	.byte ___mute_mask_sound_effect1
	.ascii "SFX2         "
	.db 0x00
	.byte ___bank_sound_effect2
	.dw _sound_effect2
	.byte ___mute_mask_sound_effect2
	.ascii "SFX3         "
	.db 0x00
	.byte ___bank_sound_effect3
	.dw _sound_effect3
	.byte ___mute_mask_sound_effect3
	.area _CABS (ABS)

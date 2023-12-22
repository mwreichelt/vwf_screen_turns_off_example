;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (Linux)
;--------------------------------------------------------
	.module GraphicsLoader_UI
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _set_banked_data
	.globl _loadUIGraphics
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
	.area _CODE_0
	G$loadUIGraphics$0$0	= .
	.globl	G$loadUIGraphics$0$0
	C$GraphicsLoader_UI.c$22$0_0$142	= .
	.globl	C$GraphicsLoader_UI.c$22$0_0$142
;src/rom0/GraphicsLoader_UI.c:22: void loadUIGraphics() {
;	---------------------------------
; Function loadUIGraphics
; ---------------------------------
_loadUIGraphics::
	C$GraphicsLoader_UI.c$23$1_0$142	= .
	.globl	C$GraphicsLoader_UI.c$23$1_0$142
;src/rom0/GraphicsLoader_UI.c:23: switch(UI_GRAPHICS_INDEX) {
	ld	a, (#_TEMP_VAR_A)
	or	a, a
	jr	Z, 00101$
	ld	a, (#_TEMP_VAR_A)
	dec	a
	jr	Z, 00102$
	ld	a, (#_TEMP_VAR_A)
	sub	a, #0x07
	jr	Z, 00103$
	ret
	C$GraphicsLoader_UI.c$24$2_0$143	= .
	.globl	C$GraphicsLoader_UI.c$24$2_0$143
;src/rom0/GraphicsLoader_UI.c:24: case UI_GRAPHICS_WINDOW_BORDERS_INDEX:
00101$:
	C$GraphicsLoader_UI.c$25$2_0$143	= .
	.globl	C$GraphicsLoader_UI.c$25$2_0$143
;src/rom0/GraphicsLoader_UI.c:25: set_banked_data(UI_GRAPHICS_VRAM_START, 8u, WindowBorders, BANK(WindowBorders_bank));
	ld	b, #<(___bank_WindowBorders_bank)
	push	bc
	inc	sp
	ld	de, #_WindowBorders
	push	de
	ld	e, #0x08
	ld	a, (#_TEMP_VAR_B)
	call	_set_banked_data
	C$GraphicsLoader_UI.c$26$2_0$143	= .
	.globl	C$GraphicsLoader_UI.c$26$2_0$143
;src/rom0/GraphicsLoader_UI.c:26: break;
	ret
	C$GraphicsLoader_UI.c$27$2_0$143	= .
	.globl	C$GraphicsLoader_UI.c$27$2_0$143
;src/rom0/GraphicsLoader_UI.c:27: case UI_GRAPHICS_SMALL_ARROWS_INDEX:
00102$:
	C$GraphicsLoader_UI.c$28$2_0$143	= .
	.globl	C$GraphicsLoader_UI.c$28$2_0$143
;src/rom0/GraphicsLoader_UI.c:28: set_banked_data(UI_GRAPHICS_VRAM_START, 4u, Icon_Small_Arrows, BANK(Icon_Small_Arrows_bank));
	ld	b, #<(___bank_Icon_Small_Arrows_bank)
	push	bc
	inc	sp
	ld	de, #_Icon_Small_Arrows
	push	de
	ld	e, #0x04
	ld	a, (#_TEMP_VAR_B)
	call	_set_banked_data
	C$GraphicsLoader_UI.c$29$2_0$143	= .
	.globl	C$GraphicsLoader_UI.c$29$2_0$143
;src/rom0/GraphicsLoader_UI.c:29: break;
	ret
	C$GraphicsLoader_UI.c$30$2_0$143	= .
	.globl	C$GraphicsLoader_UI.c$30$2_0$143
;src/rom0/GraphicsLoader_UI.c:30: case UI_GRAPHICS_TOGGLE_INDEX:
00103$:
	C$GraphicsLoader_UI.c$31$2_0$143	= .
	.globl	C$GraphicsLoader_UI.c$31$2_0$143
;src/rom0/GraphicsLoader_UI.c:31: set_banked_data(UI_GRAPHICS_VRAM_START, 8u, Toggle1x2_tiles, BANK(Toggle1x2_bank));
	ld	b, #<(___bank_Toggle1x2_bank)
	push	bc
	inc	sp
	ld	de, #_Toggle1x2_tiles
	push	de
	ld	e, #0x08
	ld	a, (#_TEMP_VAR_B)
	call	_set_banked_data
	C$GraphicsLoader_UI.c$33$1_0$142	= .
	.globl	C$GraphicsLoader_UI.c$33$1_0$142
;src/rom0/GraphicsLoader_UI.c:33: }
	C$GraphicsLoader_UI.c$34$1_0$142	= .
	.globl	C$GraphicsLoader_UI.c$34$1_0$142
;src/rom0/GraphicsLoader_UI.c:34: }
	C$GraphicsLoader_UI.c$34$1_0$142	= .
	.globl	C$GraphicsLoader_UI.c$34$1_0$142
	XG$loadUIGraphics$0$0	= .
	.globl	XG$loadUIGraphics$0$0
	ret
	.area _CODE_0
	.area _INITIALIZER
	.area _CABS (ABS)

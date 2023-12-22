;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (Linux)
;--------------------------------------------------------
	.module GraphicsLoader_FullScreen
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _set_banked_tiles
	.globl _set_banked_data
	.globl _loadFullScreenGraphics
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
	G$loadFullScreenGraphics$0$0	= .
	.globl	G$loadFullScreenGraphics$0$0
	C$GraphicsLoader_FullScreen.c$18$0_0$126	= .
	.globl	C$GraphicsLoader_FullScreen.c$18$0_0$126
;src/rom0/GraphicsLoader_FullScreen.c:18: void loadFullScreenGraphics() {
;	---------------------------------
; Function loadFullScreenGraphics
; ---------------------------------
_loadFullScreenGraphics::
	C$GraphicsLoader_FullScreen.c$22$2_0$127	= .
	.globl	C$GraphicsLoader_FullScreen.c$22$2_0$127
;src/rom0/GraphicsLoader_FullScreen.c:22: set_banked_data(0, 143u, TitleSalvageFrontier, BANK(TitleSalvageFrontier_tiles_bank));
	ld	b, #<(___bank_TitleSalvageFrontier_tiles_bank)
	push	bc
	inc	sp
	ld	de, #_TitleSalvageFrontier
	push	de
	ld	e, #0x8f
	xor	a, a
	call	_set_banked_data
	C$GraphicsLoader_FullScreen.c$23$2_0$127	= .
	.globl	C$GraphicsLoader_FullScreen.c$23$2_0$127
;src/rom0/GraphicsLoader_FullScreen.c:23: set_banked_tiles(0, 0, Title_SalvageFrontierWidth, Title_SalvageFrontierHeight, Title_SalvageFrontier, BANK(TitleSalvageFrontier_map_bank));
	ld	b, #<(___bank_TitleSalvageFrontier_map_bank)
	push	bc
	inc	sp
	ld	de, #_Title_SalvageFrontierPLN0
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	ld	e, a
	call	_set_banked_tiles
	C$GraphicsLoader_FullScreen.c$25$1_0$126	= .
	.globl	C$GraphicsLoader_FullScreen.c$25$1_0$126
;src/rom0/GraphicsLoader_FullScreen.c:25: }
	C$GraphicsLoader_FullScreen.c$26$1_0$126	= .
	.globl	C$GraphicsLoader_FullScreen.c$26$1_0$126
;src/rom0/GraphicsLoader_FullScreen.c:26: }
	C$GraphicsLoader_FullScreen.c$26$1_0$126	= .
	.globl	C$GraphicsLoader_FullScreen.c$26$1_0$126
	XG$loadFullScreenGraphics$0$0	= .
	.globl	XG$loadFullScreenGraphics$0$0
	ret
	.area _CODE_0
	.area _INITIALIZER
	.area _CABS (ABS)

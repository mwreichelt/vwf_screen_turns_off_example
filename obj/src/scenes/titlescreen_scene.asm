;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (Linux)
;--------------------------------------------------------
	.module titlescreen_scene
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b___func_titlescreen_scene_bank
	.globl ___func_titlescreen_scene_bank
	.globl _handleTitlescreenUpdate
	.globl _drawTitlescreen
	.globl _loadTitlescreenGraphics
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
	.area _CODE_255
	G$loadTitlescreenGraphics$0$0	= .
	.globl	G$loadTitlescreenGraphics$0$0
	C$titlescreen_scene.c$7$0_0$126	= .
	.globl	C$titlescreen_scene.c$7$0_0$126
;src/scenes/titlescreen_scene.c:7: void loadTitlescreenGraphics() {
;	---------------------------------
; Function loadTitlescreenGraphics
; ---------------------------------
_loadTitlescreenGraphics::
	C$titlescreen_scene.c$9$1_0$126	= .
	.globl	C$titlescreen_scene.c$9$1_0$126
;src/scenes/titlescreen_scene.c:9: FULLSCREEN_GRAPHICS_INDEX = FULLSCREEN_GRAPHICS_TITLESCREEN_INDEX;
	ld	hl, #_TEMP_VAR_A
	ld	(hl), #0x00
	C$titlescreen_scene.c$10$1_0$126	= .
	.globl	C$titlescreen_scene.c$10$1_0$126
;src/scenes/titlescreen_scene.c:10: loadFullScreenGraphics();
	C$titlescreen_scene.c$11$1_0$126	= .
	.globl	C$titlescreen_scene.c$11$1_0$126
;src/scenes/titlescreen_scene.c:11: }
	C$titlescreen_scene.c$11$1_0$126	= .
	.globl	C$titlescreen_scene.c$11$1_0$126
	XG$loadTitlescreenGraphics$0$0	= .
	.globl	XG$loadTitlescreenGraphics$0$0
	jp	_loadFullScreenGraphics
	G$drawTitlescreen$0$0	= .
	.globl	G$drawTitlescreen$0$0
	C$titlescreen_scene.c$13$1_0$128	= .
	.globl	C$titlescreen_scene.c$13$1_0$128
;src/scenes/titlescreen_scene.c:13: void drawTitlescreen() {
;	---------------------------------
; Function drawTitlescreen
; ---------------------------------
_drawTitlescreen::
	C$titlescreen_scene.c$15$1_0$128	= .
	.globl	C$titlescreen_scene.c$15$1_0$128
;src/scenes/titlescreen_scene.c:15: }
	C$titlescreen_scene.c$15$1_0$128	= .
	.globl	C$titlescreen_scene.c$15$1_0$128
	XG$drawTitlescreen$0$0	= .
	.globl	XG$drawTitlescreen$0$0
	ret
	G$handleTitlescreenUpdate$0$0	= .
	.globl	G$handleTitlescreenUpdate$0$0
	C$titlescreen_scene.c$17$1_0$129	= .
	.globl	C$titlescreen_scene.c$17$1_0$129
;src/scenes/titlescreen_scene.c:17: void handleTitlescreenUpdate() {
;	---------------------------------
; Function handleTitlescreenUpdate
; ---------------------------------
_handleTitlescreenUpdate::
	C$titlescreen_scene.c$20$1_0$129	= .
	.globl	C$titlescreen_scene.c$20$1_0$129
;src/scenes/titlescreen_scene.c:20: if(JOYPAD_CURRENT & J_START) {
	ld	a, (#_JOYPAD_CURRENT)
	rlca
	ret	NC
	C$titlescreen_scene.c$22$2_0$130	= .
	.globl	C$titlescreen_scene.c$22$2_0$130
;src/scenes/titlescreen_scene.c:22: GAME_STATE = STATE_DEBUGROOM;
	ld	hl, #_GAME_STATE
	ld	(hl), #0x09
	C$titlescreen_scene.c$24$1_0$129	= .
	.globl	C$titlescreen_scene.c$24$1_0$129
;src/scenes/titlescreen_scene.c:24: }
	C$titlescreen_scene.c$24$1_0$129	= .
	.globl	C$titlescreen_scene.c$24$1_0$129
	XG$handleTitlescreenUpdate$0$0	= .
	.globl	XG$handleTitlescreenUpdate$0$0
	ret
	G$__func_titlescreen_scene_bank$0$0	= .
	.globl	G$__func_titlescreen_scene_bank$0$0
	C$titlescreen_scene.c$26$1_0$131	= .
	.globl	C$titlescreen_scene.c$26$1_0$131
;src/scenes/titlescreen_scene.c:26: BANKREF(titlescreen_scene_bank)
;	---------------------------------
; Function __func_titlescreen_scene_bank
; ---------------------------------
	b___func_titlescreen_scene_bank	= 255
___func_titlescreen_scene_bank::
	.local b___func_titlescreen_scene_bank 
	___bank_titlescreen_scene_bank = b___func_titlescreen_scene_bank 
	.globl ___bank_titlescreen_scene_bank 
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)

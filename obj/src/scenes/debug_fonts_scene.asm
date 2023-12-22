;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (Linux)
;--------------------------------------------------------
	.module debug_fonts_scene
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _drawFontInfo_TextArea
	.globl _drawFontInfo
	.globl b___func_debug_fonts_scene_bank
	.globl ___func_debug_fonts_scene_bank
	.globl _vwf_draw_text
	.globl _vwf_activate_font
	.globl _set_bkg_tiles
	.globl _fontData
	.globl _debug_fontsTeardown
	.globl _initializedebug_fontsScene
	.globl _handledebug_fontsUpdate
	.globl _drawdebug_fontsScene
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
	G$__func_debug_fonts_scene_bank$0$0	= .
	.globl	G$__func_debug_fonts_scene_bank$0$0
	C$debug_fonts_scene.c$11$0_0$142	= .
	.globl	C$debug_fonts_scene.c$11$0_0$142
;src/scenes/debug_fonts_scene.c:11: BANKREF(debug_fonts_scene_bank)
;	---------------------------------
; Function __func_debug_fonts_scene_bank
; ---------------------------------
	b___func_debug_fonts_scene_bank	= 255
___func_debug_fonts_scene_bank::
	.local b___func_debug_fonts_scene_bank 
	___bank_debug_fonts_scene_bank = b___func_debug_fonts_scene_bank 
	.globl ___bank_debug_fonts_scene_bank 
	G$drawFontInfo$0$0	= .
	.globl	G$drawFontInfo$0$0
	C$debug_fonts_scene.c$25$1_0$143	= .
	.globl	C$debug_fonts_scene.c$25$1_0$143
;src/scenes/debug_fonts_scene.c:25: void drawFontInfo() {
;	---------------------------------
; Function drawFontInfo
; ---------------------------------
_drawFontInfo::
	C$debug_fonts_scene.c$26$1_0$143	= .
	.globl	C$debug_fonts_scene.c$26$1_0$143
;src/scenes/debug_fonts_scene.c:26: vwf_activate_font(fontData[CURSOR_INDEX].fontId);
	ld	hl, #_CURSOR_INDEX
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_fontData
	add	hl,bc
	ld	bc, #0x00e8
	add	hl, bc
	ld	a, (hl)
	call	_vwf_activate_font
	C$debug_fonts_scene.c$27$1_0$143	= .
	.globl	C$debug_fonts_scene.c$27$1_0$143
;src/scenes/debug_fonts_scene.c:27: vwf_draw_text(1u, 2u, 0x8B, (const unsigned char *)fontData[CURSOR_INDEX].name);
	ld	hl, #_CURSOR_INDEX
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_fontData
	add	hl,bc
	push	hl
	ld	a, #0x8b
	push	af
	inc	sp
	ld	e, #0x02
	ld	a, #0x01
	call	_vwf_draw_text
	C$debug_fonts_scene.c$28$1_0$143	= .
	.globl	C$debug_fonts_scene.c$28$1_0$143
;src/scenes/debug_fonts_scene.c:28: vwf_draw_text(0u, 3u, 0x94, (const unsigned char *)fontData[CURSOR_INDEX].description);
	ld	hl, #_CURSOR_INDEX
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_fontData
	add	hl,bc
	ld	bc, #0x000c
	add	hl, bc
	push	hl
	ld	a, #0x94
	push	af
	inc	sp
	ld	e, #0x03
	xor	a, a
	call	_vwf_draw_text
	C$debug_fonts_scene.c$29$1_0$143	= .
	.globl	C$debug_fonts_scene.c$29$1_0$143
;src/scenes/debug_fonts_scene.c:29: }
	C$debug_fonts_scene.c$29$1_0$143	= .
	.globl	C$debug_fonts_scene.c$29$1_0$143
	XG$drawFontInfo$0$0	= .
	.globl	XG$drawFontInfo$0$0
	ret
G$fontData$0_0$0 == .
_fontData:
	.ascii "CoCa_GB_v2"
	.db 0x00
	.db 0x00
	.ascii " This is the primary writing"
	.db 0x0a
	.ascii "font for delivering lots of text"
	.db 0x0a
	.ascii "at once."
	.db 0x0a
	.ascii "I made it for this game myself."
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
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db #0x00	; 0
	.ascii "condensed"
	.db 0x00
	.db 0x00
	.db 0x00
	.ascii "This is the font writing in cramped spaces"
	.db 0x0a
	.ascii "or for labelling things."
	.db 0x0a
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ01234567890"
	.db 0x0a
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ01234567890"
	.db 0x0a
	.ascii "!@#$%^&*()-=+[]{}<>;:'"
	.db 0x22
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db #0x01	; 1
	.ascii "Minimal 3x5"
	.db 0x00
	.ascii "This is the Minimal3x5 font."
	.db 0x0a
	.ascii "I'm not sure I will use it right now."
	.db 0x0a
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ01234567890"
	.db 0x0a
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ01234567890"
	.db 0x0a
	.ascii "!@#$%^&*()-=+[]{}<>;:'"
	.db 0x22
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db #0x02	; 2
	.ascii "Minimal 5x7"
	.db 0x00
	.ascii "This is the Minimal5x7 font."
	.db 0x0a
	.ascii "I will likely replace this one."
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
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db #0x03	; 3
	G$drawFontInfo_TextArea$0$0	= .
	.globl	G$drawFontInfo_TextArea$0$0
	C$debug_fonts_scene.c$36$1_0$144	= .
	.globl	C$debug_fonts_scene.c$36$1_0$144
;src/scenes/debug_fonts_scene.c:36: void drawFontInfo_TextArea() {
;	---------------------------------
; Function drawFontInfo_TextArea
; ---------------------------------
_drawFontInfo_TextArea::
	C$debug_fonts_scene.c$51$1_0$144	= .
	.globl	C$debug_fonts_scene.c$51$1_0$144
;src/scenes/debug_fonts_scene.c:51: vwf_activate_font(fontData[CURSOR_INDEX].fontId);
	ld	hl, #_CURSOR_INDEX
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_fontData
	add	hl,bc
	ld	bc, #0x00e8
	add	hl, bc
	ld	a, (hl)
	call	_vwf_activate_font
	C$debug_fonts_scene.c$52$1_0$144	= .
	.globl	C$debug_fonts_scene.c$52$1_0$144
;src/scenes/debug_fonts_scene.c:52: vwf_draw_text(1u, 8u, 0x80, (const unsigned char *)fontData[CURSOR_INDEX].description);
	ld	hl, #_CURSOR_INDEX
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_fontData
	add	hl,bc
	ld	bc, #0x000c
	add	hl, bc
	push	hl
	ld	a, #0x80
	push	af
	inc	sp
	ld	e, #0x08
	ld	a, #0x01
	call	_vwf_draw_text
	C$debug_fonts_scene.c$53$1_0$144	= .
	.globl	C$debug_fonts_scene.c$53$1_0$144
;src/scenes/debug_fonts_scene.c:53: }
	C$debug_fonts_scene.c$53$1_0$144	= .
	.globl	C$debug_fonts_scene.c$53$1_0$144
	XG$drawFontInfo_TextArea$0$0	= .
	.globl	XG$drawFontInfo_TextArea$0$0
	ret
	G$debug_fontsTeardown$0$0	= .
	.globl	G$debug_fontsTeardown$0$0
	C$debug_fonts_scene.c$57$1_0$146	= .
	.globl	C$debug_fonts_scene.c$57$1_0$146
;src/scenes/debug_fonts_scene.c:57: void debug_fontsTeardown() {
;	---------------------------------
; Function debug_fontsTeardown
; ---------------------------------
_debug_fontsTeardown::
	C$debug_fonts_scene.c$59$1_0$146	= .
	.globl	C$debug_fonts_scene.c$59$1_0$146
;src/scenes/debug_fonts_scene.c:59: }
	C$debug_fonts_scene.c$59$1_0$146	= .
	.globl	C$debug_fonts_scene.c$59$1_0$146
	XG$debug_fontsTeardown$0$0	= .
	.globl	XG$debug_fontsTeardown$0$0
	ret
	G$initializedebug_fontsScene$0$0	= .
	.globl	G$initializedebug_fontsScene$0$0
	C$debug_fonts_scene.c$61$1_0$147	= .
	.globl	C$debug_fonts_scene.c$61$1_0$147
;src/scenes/debug_fonts_scene.c:61: void initializedebug_fontsScene() {
;	---------------------------------
; Function initializedebug_fontsScene
; ---------------------------------
_initializedebug_fontsScene::
	C$debug_fonts_scene.c$63$1_0$147	= .
	.globl	C$debug_fonts_scene.c$63$1_0$147
;src/scenes/debug_fonts_scene.c:63: RENDER_TARGET = RENDER_TARGET_BKG;
	ld	hl, #_RENDER_TARGET
	ld	(hl), #0x00
	C$debug_fonts_scene.c$64$1_0$147	= .
	.globl	C$debug_fonts_scene.c$64$1_0$147
;src/scenes/debug_fonts_scene.c:64: set_bkg_tiles(0, 0, 20u, 18u, BLANK_SCREEN_MAP);
	ld	de, #_BLANK_SCREEN_MAP
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$debug_fonts_scene.c$66$1_0$147	= .
	.globl	C$debug_fonts_scene.c$66$1_0$147
;src/scenes/debug_fonts_scene.c:66: CURSOR_INDEX = 0u;
	ld	hl, #_CURSOR_INDEX
	ld	(hl), #0x00
	C$debug_fonts_scene.c$68$1_0$147	= .
	.globl	C$debug_fonts_scene.c$68$1_0$147
;src/scenes/debug_fonts_scene.c:68: drawFontInfo_TextArea();
	call	_drawFontInfo_TextArea
	C$debug_fonts_scene.c$70$1_0$147	= .
	.globl	C$debug_fonts_scene.c$70$1_0$147
;src/scenes/debug_fonts_scene.c:70: SPRITES_8x8;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfb
	ldh	(_LCDC_REG + 0), a
	C$debug_fonts_scene.c$71$1_0$147	= .
	.globl	C$debug_fonts_scene.c$71$1_0$147
;src/scenes/debug_fonts_scene.c:71: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$debug_fonts_scene.c$72$1_0$147	= .
	.globl	C$debug_fonts_scene.c$72$1_0$147
;src/scenes/debug_fonts_scene.c:72: }
	C$debug_fonts_scene.c$72$1_0$147	= .
	.globl	C$debug_fonts_scene.c$72$1_0$147
	XG$initializedebug_fontsScene$0$0	= .
	.globl	XG$initializedebug_fontsScene$0$0
	ret
	G$handledebug_fontsUpdate$0$0	= .
	.globl	G$handledebug_fontsUpdate$0$0
	C$debug_fonts_scene.c$74$1_0$148	= .
	.globl	C$debug_fonts_scene.c$74$1_0$148
;src/scenes/debug_fonts_scene.c:74: void handledebug_fontsUpdate() {
;	---------------------------------
; Function handledebug_fontsUpdate
; ---------------------------------
_handledebug_fontsUpdate::
	C$debug_fonts_scene.c$75$1_0$148	= .
	.globl	C$debug_fonts_scene.c$75$1_0$148
;src/scenes/debug_fonts_scene.c:75: CURSOR_INDEX_PREV = CURSOR_INDEX;
	ld	a, (#_CURSOR_INDEX)
	ld	(#_CURSOR_INDEX_PREV),a
	C$debug_fonts_scene.c$79$1_0$148	= .
	.globl	C$debug_fonts_scene.c$79$1_0$148
;src/scenes/debug_fonts_scene.c:79: if((JOYPAD_CURRENT & J_B) && !(JOYPAD_PREVIOUS & J_B)) {
	ld	a, (#_JOYPAD_CURRENT)
	ld	hl, #_JOYPAD_PREVIOUS
	ld	c, (hl)
	bit	5, a
	jr	Z, 00115$
	bit	5, c
	jr	NZ, 00115$
	C$debug_fonts_scene.c$80$2_0$149	= .
	.globl	C$debug_fonts_scene.c$80$2_0$149
;src/scenes/debug_fonts_scene.c:80: GAME_STATE = STATE_DEBUGROOM;
	ld	hl, #_GAME_STATE
	ld	(hl), #0x09
	ret
00115$:
	C$debug_fonts_scene.c$81$1_0$148	= .
	.globl	C$debug_fonts_scene.c$81$1_0$148
;src/scenes/debug_fonts_scene.c:81: } else if((JOYPAD_CURRENT & J_LEFT) && !(JOYPAD_PREVIOUS & J_LEFT)) {
	bit	1, a
	jr	Z, 00111$
	bit	1, c
	jr	NZ, 00111$
	C$debug_fonts_scene.c$82$2_0$150	= .
	.globl	C$debug_fonts_scene.c$82$2_0$150
;src/scenes/debug_fonts_scene.c:82: if(CURSOR_INDEX == 0u) {
	ld	hl, #_CURSOR_INDEX
	ld	a, (hl)
	or	a, a
	jr	NZ, 00102$
	C$debug_fonts_scene.c$83$3_0$151	= .
	.globl	C$debug_fonts_scene.c$83$3_0$151
;src/scenes/debug_fonts_scene.c:83: CURSOR_INDEX = FONT_COUNT - 1u;
	ld	(hl), #0x03
	ret
00102$:
	C$debug_fonts_scene.c$85$3_0$152	= .
	.globl	C$debug_fonts_scene.c$85$3_0$152
;src/scenes/debug_fonts_scene.c:85: CURSOR_INDEX--;
	ld	hl, #_CURSOR_INDEX
	dec	(hl)
	ret
00111$:
	C$debug_fonts_scene.c$87$1_0$148	= .
	.globl	C$debug_fonts_scene.c$87$1_0$148
;src/scenes/debug_fonts_scene.c:87: } else if((JOYPAD_CURRENT & J_RIGHT) && !(JOYPAD_PREVIOUS & J_RIGHT)) {
	rrca
	ret	NC
	bit	0, c
	ret	NZ
	C$debug_fonts_scene.c$88$2_0$153	= .
	.globl	C$debug_fonts_scene.c$88$2_0$153
;src/scenes/debug_fonts_scene.c:88: if(CURSOR_INDEX == (FONT_COUNT - 1u)) {
	ld	a, (#_CURSOR_INDEX)
	sub	a, #0x03
	jr	NZ, 00105$
	C$debug_fonts_scene.c$89$3_0$154	= .
	.globl	C$debug_fonts_scene.c$89$3_0$154
;src/scenes/debug_fonts_scene.c:89: CURSOR_INDEX = 0u;
	ld	hl, #_CURSOR_INDEX
	ld	(hl), #0x00
	ret
00105$:
	C$debug_fonts_scene.c$91$3_0$155	= .
	.globl	C$debug_fonts_scene.c$91$3_0$155
;src/scenes/debug_fonts_scene.c:91: CURSOR_INDEX++;
	ld	hl, #_CURSOR_INDEX
	inc	(hl)
	C$debug_fonts_scene.c$94$1_0$148	= .
	.globl	C$debug_fonts_scene.c$94$1_0$148
;src/scenes/debug_fonts_scene.c:94: }
	C$debug_fonts_scene.c$94$1_0$148	= .
	.globl	C$debug_fonts_scene.c$94$1_0$148
	XG$handledebug_fontsUpdate$0$0	= .
	.globl	XG$handledebug_fontsUpdate$0$0
	ret
	G$drawdebug_fontsScene$0$0	= .
	.globl	G$drawdebug_fontsScene$0$0
	C$debug_fonts_scene.c$96$1_0$156	= .
	.globl	C$debug_fonts_scene.c$96$1_0$156
;src/scenes/debug_fonts_scene.c:96: void drawdebug_fontsScene() {
;	---------------------------------
; Function drawdebug_fontsScene
; ---------------------------------
_drawdebug_fontsScene::
	C$debug_fonts_scene.c$97$1_0$156	= .
	.globl	C$debug_fonts_scene.c$97$1_0$156
;src/scenes/debug_fonts_scene.c:97: if(CURSOR_INDEX != CURSOR_INDEX_PREV) {
	C$debug_fonts_scene.c$101$1_0$156	= .
	.globl	C$debug_fonts_scene.c$101$1_0$156
;src/scenes/debug_fonts_scene.c:101: }
	C$debug_fonts_scene.c$101$1_0$156	= .
	.globl	C$debug_fonts_scene.c$101$1_0$156
	XG$drawdebug_fontsScene$0$0	= .
	.globl	XG$drawdebug_fontsScene$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)

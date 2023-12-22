;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (Linux)
;--------------------------------------------------------
	.module debug_scene
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _drawDebugScene
	.globl _handleDebugUpdate
	.globl _initializeDebugScene
	.globl _debugSceneTeardown
	.globl b___func_debug_scene_bank
	.globl ___func_debug_scene_bank
	.globl _loadUIGraphics
	.globl _drawWindowBorder
	.globl _drawTextBkg
	.globl b_loadFontGraphicsData
	.globl _loadFontGraphicsData
	.globl _uitoa
	.globl _set_bkg_tiles
	.globl _Debug_Room_Options
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
	G$__func_debug_scene_bank$0$0	= .
	.globl	G$__func_debug_scene_bank$0$0
	C$debug_scene.c$20$0_0$156	= .
	.globl	C$debug_scene.c$20$0_0$156
;src/scenes/debug_scene.c:20: BANKREF(debug_scene_bank)
;	---------------------------------
; Function __func_debug_scene_bank
; ---------------------------------
	b___func_debug_scene_bank	= 255
___func_debug_scene_bank::
	.local b___func_debug_scene_bank 
	___bank_debug_scene_bank = b___func_debug_scene_bank 
	.globl ___bank_debug_scene_bank 
	G$debugSceneTeardown$0$0	= .
	.globl	G$debugSceneTeardown$0$0
	C$debug_scene.c$33$1_0$157	= .
	.globl	C$debug_scene.c$33$1_0$157
;src/scenes/debug_scene.c:33: void debugSceneTeardown() {
;	---------------------------------
; Function debugSceneTeardown
; ---------------------------------
_debugSceneTeardown::
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+0
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	xor	a, a
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
	C$debug_scene.c$37$1_0$157	= .
	.globl	C$debug_scene.c$37$1_0$157
;src/scenes/debug_scene.c:37: HIDE_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
	C$debug_scene.c$38$1_0$157	= .
	.globl	C$debug_scene.c$38$1_0$157
;src/scenes/debug_scene.c:38: }
	C$debug_scene.c$38$1_0$157	= .
	.globl	C$debug_scene.c$38$1_0$157
	XG$debugSceneTeardown$0$0	= .
	.globl	XG$debugSceneTeardown$0$0
	ret
G$Debug_Room_Options$0_0$0 == .
_Debug_Room_Options:
	.ascii "MUSIC"
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db #0x0a	; 10
	.ascii "FONTS"
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db #0x14	; 20
	G$initializeDebugScene$0$0	= .
	.globl	G$initializeDebugScene$0$0
	C$debug_scene.c$40$1_0$161	= .
	.globl	C$debug_scene.c$40$1_0$161
;src/scenes/debug_scene.c:40: void initializeDebugScene() {
;	---------------------------------
; Function initializeDebugScene
; ---------------------------------
_initializeDebugScene::
	C$debug_scene.c$42$1_0$161	= .
	.globl	C$debug_scene.c$42$1_0$161
;src/scenes/debug_scene.c:42: RENDER_TARGET = RENDER_TARGET_BKG;
	ld	hl, #_RENDER_TARGET
	ld	(hl), #0x00
	C$debug_scene.c$43$1_0$161	= .
	.globl	C$debug_scene.c$43$1_0$161
;src/scenes/debug_scene.c:43: set_bkg_tiles(0, 0, 20u, 18u, BLANK_SCREEN_MAP);
	ld	de, #_BLANK_SCREEN_MAP
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	xor	a, a
	call	_set_bkg_tiles
	add	sp, #6
	C$debug_scene.c$46$1_0$161	= .
	.globl	C$debug_scene.c$46$1_0$161
;src/scenes/debug_scene.c:46: loadFontGraphicsData();
	ld	e, #b_loadFontGraphicsData
	ld	hl, #_loadFontGraphicsData
	call	___sdcc_bcall_ehl
	C$debug_scene.c$48$1_0$161	= .
	.globl	C$debug_scene.c$48$1_0$161
;src/scenes/debug_scene.c:48: TEMP_VAR_A = UI_GRAPHICS_WINDOW_BORDERS_INDEX;
	ld	hl, #_TEMP_VAR_A
	ld	(hl), #0x00
	C$debug_scene.c$49$1_0$161	= .
	.globl	C$debug_scene.c$49$1_0$161
;src/scenes/debug_scene.c:49: TEMP_VAR_B = VRAM_WINDOW_BORDERS_START;
	ld	hl, #_TEMP_VAR_B
	ld	(hl), #0x60
	C$debug_scene.c$50$1_0$161	= .
	.globl	C$debug_scene.c$50$1_0$161
;src/scenes/debug_scene.c:50: loadUIGraphics();
	call	_loadUIGraphics
	C$debug_scene.c$52$1_0$161	= .
	.globl	C$debug_scene.c$52$1_0$161
;src/scenes/debug_scene.c:52: TEMP_VAR_A = UI_GRAPHICS_SMALL_ARROWS_INDEX;
	ld	hl, #_TEMP_VAR_A
	ld	(hl), #0x01
	C$debug_scene.c$53$1_0$161	= .
	.globl	C$debug_scene.c$53$1_0$161
;src/scenes/debug_scene.c:53: TEMP_VAR_B = VRAM_SMALL_ARROWS_START;
	ld	hl, #_TEMP_VAR_B
	ld	(hl), #0xc4
	C$debug_scene.c$54$1_0$161	= .
	.globl	C$debug_scene.c$54$1_0$161
;src/scenes/debug_scene.c:54: loadUIGraphics();
	call	_loadUIGraphics
	C$debug_scene.c$58$1_0$161	= .
	.globl	C$debug_scene.c$58$1_0$161
;src/scenes/debug_scene.c:58: drawWindowBorder(0, 0, 12u, 18u);
	ld	hl, #0x120c
	push	hl
	xor	a, a
	ld	e, a
	call	_drawWindowBorder
	C$debug_scene.c$61$1_0$161	= .
	.globl	C$debug_scene.c$61$1_0$161
;src/scenes/debug_scene.c:61: drawTextBkg(13u, 1u, (unsigned char *)"DEBUG");
	ld	de, #___str_2
	push	de
	ld	e, #0x01
	ld	a, #0x0d
	call	_drawTextBkg
	C$debug_scene.c$62$1_0$161	= .
	.globl	C$debug_scene.c$62$1_0$161
;src/scenes/debug_scene.c:62: drawTextBkg(13u, 2u, (unsigned char *)"ROOM");
	ld	de, #___str_3
	push	de
	ld	e, #0x02
	ld	a, #0x0d
	call	_drawTextBkg
	C$debug_scene.c$65$1_0$161	= .
	.globl	C$debug_scene.c$65$1_0$161
;src/scenes/debug_scene.c:65: drawTextBkg(13u, 3u, (unsigned char *)"C");
	ld	de, #___str_4
	push	de
	ld	e, #0x03
	ld	a, #0x0d
	call	_drawTextBkg
	C$debug_scene.c$66$1_0$161	= .
	.globl	C$debug_scene.c$66$1_0$161
;src/scenes/debug_scene.c:66: uitoa(CURSOR_INDEX, (char *)ITOA_STRING, 10);
	ld	de, #_ITOA_STRING
	ld	hl, #_CURSOR_INDEX
	ld	c, (hl)
	ld	b, #0x00
	ld	a, #0x0a
	push	af
	inc	sp
	push	de
	push	bc
	call	_uitoa
	add	sp, #5
	C$debug_scene.c$67$1_0$161	= .
	.globl	C$debug_scene.c$67$1_0$161
;src/scenes/debug_scene.c:67: drawTextBkg(14u, 3u, ITOA_STRING);
	ld	de, #_ITOA_STRING
	push	de
	ld	e, #0x03
	ld	a, #0x0e
	call	_drawTextBkg
	C$debug_scene.c$70$3_0$163	= .
	.globl	C$debug_scene.c$70$3_0$163
;src/scenes/debug_scene.c:70: for(uint8_t i = 0; i < DEBUGSCENE_OPTIONS_COUNT; i++) {
	ld	c, #0x00
00105$:
	ld	a, c
	sub	a, #0x02
	jr	NC, 00101$
	C$debug_scene.c$71$3_0$163	= .
	.globl	C$debug_scene.c$71$3_0$163
;src/scenes/debug_scene.c:71: drawTextBkg(2u, i + 1, (unsigned char *) Debug_Room_Options[i].name);
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	de, #_Debug_Room_Options
	add	hl, de
	ld	e, c
	inc	e
	push	bc
	push	hl
	ld	a, #0x02
	call	_drawTextBkg
	pop	bc
	C$debug_scene.c$70$2_0$162	= .
	.globl	C$debug_scene.c$70$2_0$162
;src/scenes/debug_scene.c:70: for(uint8_t i = 0; i < DEBUGSCENE_OPTIONS_COUNT; i++) {
	inc	c
	jr	00105$
00101$:
	C$debug_scene.c$75$1_0$161	= .
	.globl	C$debug_scene.c$75$1_0$161
;src/scenes/debug_scene.c:75: CURSOR_INDEX = DEBUGSCENE_CURSOR_INDEX_START;
	ld	hl, #_CURSOR_INDEX
	ld	(hl), #0x00
	C$debug_scene.c$76$1_0$161	= .
	.globl	C$debug_scene.c$76$1_0$161
;src/scenes/debug_scene.c:76: CURSOR_INDEX_PREV = DEBUGSCENE_CURSOR_INDEX_START;
	ld	hl, #_CURSOR_INDEX_PREV
	ld	(hl), #0x00
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0xc4
;src/scenes/debug_scene.c:78: move_sprite(DEBUGSCENE_CURSOR_SPRITE_ID, DEBUGSCENE_CURSOR_X_POS, DEBUGSCENE_CURSOR_Y_START_POS + (8u * (CURSOR_INDEX + 1)));
	ld	a, (#_CURSOR_INDEX)
	inc	a
	add	a, a
	add	a, a
	add	a, a
	add	a, #0x11
	ld	c, a
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	(hl), c
	inc	hl
	ld	(hl), #0x0a
	C$debug_scene.c$80$1_0$161	= .
	.globl	C$debug_scene.c$80$1_0$161
;src/scenes/debug_scene.c:80: SPRITES_8x8;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfb
	ldh	(_LCDC_REG + 0), a
	C$debug_scene.c$81$1_0$161	= .
	.globl	C$debug_scene.c$81$1_0$161
;src/scenes/debug_scene.c:81: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$debug_scene.c$82$1_0$161	= .
	.globl	C$debug_scene.c$82$1_0$161
;src/scenes/debug_scene.c:82: }
	C$debug_scene.c$82$1_0$161	= .
	.globl	C$debug_scene.c$82$1_0$161
	XG$initializeDebugScene$0$0	= .
	.globl	XG$initializeDebugScene$0$0
	ret
Fdebug_scene$__str_2$0_0$0 == .
___str_2:
	.ascii "DEBUG"
	.db 0x00
Fdebug_scene$__str_3$0_0$0 == .
___str_3:
	.ascii "ROOM"
	.db 0x00
Fdebug_scene$__str_4$0_0$0 == .
___str_4:
	.ascii "C"
	.db 0x00
	G$handleDebugUpdate$0$0	= .
	.globl	G$handleDebugUpdate$0$0
	C$debug_scene.c$84$1_0$170	= .
	.globl	C$debug_scene.c$84$1_0$170
;src/scenes/debug_scene.c:84: void handleDebugUpdate() {
;	---------------------------------
; Function handleDebugUpdate
; ---------------------------------
_handleDebugUpdate::
	C$debug_scene.c$85$1_0$170	= .
	.globl	C$debug_scene.c$85$1_0$170
;src/scenes/debug_scene.c:85: CURSOR_INDEX_PREV = CURSOR_INDEX;
	ld	a, (#_CURSOR_INDEX)
	ld	(#_CURSOR_INDEX_PREV),a
	C$debug_scene.c$87$1_0$170	= .
	.globl	C$debug_scene.c$87$1_0$170
;src/scenes/debug_scene.c:87: if((JOYPAD_CURRENT & J_UP) && !(JOYPAD_PREVIOUS & J_UP)) {
	ld	hl, #_JOYPAD_CURRENT
	ld	c, (hl)
	ld	hl, #_JOYPAD_PREVIOUS
	ld	b, (hl)
	bit	2, c
	jr	Z, 00111$
	bit	2, b
	jr	NZ, 00111$
	C$debug_scene.c$88$2_0$171	= .
	.globl	C$debug_scene.c$88$2_0$171
;src/scenes/debug_scene.c:88: if(CURSOR_INDEX == 0u) {
	ld	hl, #_CURSOR_INDEX
	ld	a, (hl)
	or	a, a
	jr	NZ, 00102$
	C$debug_scene.c$89$3_0$172	= .
	.globl	C$debug_scene.c$89$3_0$172
;src/scenes/debug_scene.c:89: CURSOR_INDEX = DEBUGSCENE_OPTIONS_COUNT - 1u;
	ld	(hl), #0x01
	jr	00112$
00102$:
	C$debug_scene.c$91$3_0$173	= .
	.globl	C$debug_scene.c$91$3_0$173
;src/scenes/debug_scene.c:91: CURSOR_INDEX--;
	ld	hl, #_CURSOR_INDEX
	dec	(hl)
	jr	00112$
00111$:
	C$debug_scene.c$93$1_0$170	= .
	.globl	C$debug_scene.c$93$1_0$170
;src/scenes/debug_scene.c:93: } else if ((JOYPAD_CURRENT & J_DOWN) && !(JOYPAD_PREVIOUS & J_DOWN)) {
	bit	3, c
	jr	Z, 00112$
	bit	3, b
	jr	NZ, 00112$
	C$debug_scene.c$94$2_0$174	= .
	.globl	C$debug_scene.c$94$2_0$174
;src/scenes/debug_scene.c:94: if(CURSOR_INDEX == DEBUGSCENE_OPTIONS_COUNT - 1u) {
	ld	a, (#_CURSOR_INDEX)
	dec	a
	jr	NZ, 00105$
	C$debug_scene.c$95$3_0$175	= .
	.globl	C$debug_scene.c$95$3_0$175
;src/scenes/debug_scene.c:95: CURSOR_INDEX = 0u;
	ld	hl, #_CURSOR_INDEX
	ld	(hl), #0x00
	jr	00112$
00105$:
	C$debug_scene.c$97$3_0$176	= .
	.globl	C$debug_scene.c$97$3_0$176
;src/scenes/debug_scene.c:97: CURSOR_INDEX++;
	ld	hl, #_CURSOR_INDEX
	inc	(hl)
00112$:
	C$debug_scene.c$102$1_0$170	= .
	.globl	C$debug_scene.c$102$1_0$170
;src/scenes/debug_scene.c:102: ((JOYPAD_CURRENT & J_A) && !(JOYPAD_PREVIOUS & J_A)) ||
	bit	4, c
	jr	Z, 00118$
	bit	4, b
	jr	Z, 00114$
00118$:
	C$debug_scene.c$103$1_0$170	= .
	.globl	C$debug_scene.c$103$1_0$170
;src/scenes/debug_scene.c:103: ((JOYPAD_CURRENT & J_START) && !(JOYPAD_PREVIOUS & J_START))
	bit	7, c
	ret	Z
	bit	7, b
	ret	NZ
00114$:
	C$debug_scene.c$105$2_0$177	= .
	.globl	C$debug_scene.c$105$2_0$177
;src/scenes/debug_scene.c:105: GAME_STATE = Debug_Room_Options[CURSOR_INDEX].state;
	ld	hl, #_CURSOR_INDEX
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	bc,#_Debug_Room_Options
	add	hl,bc
	ld	bc, #0x000a
	add	hl, bc
	ld	a, (hl)
	ld	(#_GAME_STATE),a
	C$debug_scene.c$107$1_0$170	= .
	.globl	C$debug_scene.c$107$1_0$170
;src/scenes/debug_scene.c:107: }
	C$debug_scene.c$107$1_0$170	= .
	.globl	C$debug_scene.c$107$1_0$170
	XG$handleDebugUpdate$0$0	= .
	.globl	XG$handleDebugUpdate$0$0
	ret
	G$drawDebugScene$0$0	= .
	.globl	G$drawDebugScene$0$0
	C$debug_scene.c$109$1_0$178	= .
	.globl	C$debug_scene.c$109$1_0$178
;src/scenes/debug_scene.c:109: void drawDebugScene() {
;	---------------------------------
; Function drawDebugScene
; ---------------------------------
_drawDebugScene::
	C$debug_scene.c$110$1_0$178	= .
	.globl	C$debug_scene.c$110$1_0$178
;src/scenes/debug_scene.c:110: if (CURSOR_INDEX != CURSOR_INDEX_PREV) {
	ld	a, (#_CURSOR_INDEX)
	ld	hl, #_CURSOR_INDEX_PREV
	sub	a, (hl)
	ret	Z
;src/scenes/debug_scene.c:112: move_sprite(DEBUGSCENE_CURSOR_SPRITE_ID, DEBUGSCENE_CURSOR_X_POS, DEBUGSCENE_CURSOR_Y_START_POS + (8u * (CURSOR_INDEX + 1)));
	ld	a, (#_CURSOR_INDEX)
	inc	a
	add	a, a
	add	a, a
	add	a, a
	add	a, #0x11
	ld	c, a
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	(hl), c
	inc	hl
	ld	(hl), #0x0a
	C$debug_scene.c$115$2_0$179	= .
	.globl	C$debug_scene.c$115$2_0$179
;src/scenes/debug_scene.c:115: uitoa(CURSOR_INDEX, (char *)ITOA_STRING, 10);
	ld	de, #_ITOA_STRING
	ld	hl, #_CURSOR_INDEX
	ld	c, (hl)
	ld	b, #0x00
	ld	a, #0x0a
	push	af
	inc	sp
	push	de
	push	bc
	call	_uitoa
	add	sp, #5
	C$debug_scene.c$116$2_0$179	= .
	.globl	C$debug_scene.c$116$2_0$179
;src/scenes/debug_scene.c:116: drawTextBkg(14u, 3u, ITOA_STRING);
	ld	de, #_ITOA_STRING
	push	de
	ld	e, #0x03
	ld	a, #0x0e
	call	_drawTextBkg
	C$debug_scene.c$118$1_0$178	= .
	.globl	C$debug_scene.c$118$1_0$178
;src/scenes/debug_scene.c:118: }
	C$debug_scene.c$118$1_0$178	= .
	.globl	C$debug_scene.c$118$1_0$178
	XG$drawDebugScene$0$0	= .
	.globl	XG$drawDebugScene$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)

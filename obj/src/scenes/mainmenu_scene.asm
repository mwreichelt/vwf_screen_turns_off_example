;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (Linux)
;--------------------------------------------------------
	.module mainmenu_scene
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b___func_mainmenu_scene_bank
	.globl ___func_mainmenu_scene_bank
	.globl _mainmenuSceneTeardown
	.globl _drawMainmenuScene
	.globl _handleMainmenuUpdate
	.globl _initializeMainmenuScene
	.globl _loadUIGraphics
	.globl _drawWindowBorder
	.globl _uitoa
	.globl b_loadFontGraphicsData
	.globl _loadFontGraphicsData
	.globl _set_bkg_tile_xy
	.globl _set_bkg_tiles
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
	G$initializeMainmenuScene$0$0	= .
	.globl	G$initializeMainmenuScene$0$0
	C$mainmenu_scene.c$21$0_0$145	= .
	.globl	C$mainmenu_scene.c$21$0_0$145
;src/scenes/mainmenu_scene.c:21: void initializeMainmenuScene() {
;	---------------------------------
; Function initializeMainmenuScene
; ---------------------------------
_initializeMainmenuScene::
	C$mainmenu_scene.c$23$1_0$145	= .
	.globl	C$mainmenu_scene.c$23$1_0$145
;src/scenes/mainmenu_scene.c:23: RENDER_TARGET = RENDER_TARGET_BKG;
	ld	hl, #_RENDER_TARGET
	ld	(hl), #0x00
	C$mainmenu_scene.c$25$1_0$145	= .
	.globl	C$mainmenu_scene.c$25$1_0$145
;src/scenes/mainmenu_scene.c:25: loadFontGraphicsData();
	ld	e, #b_loadFontGraphicsData
	ld	hl, #_loadFontGraphicsData
	call	___sdcc_bcall_ehl
	C$mainmenu_scene.c$27$1_0$145	= .
	.globl	C$mainmenu_scene.c$27$1_0$145
;src/scenes/mainmenu_scene.c:27: TEMP_VAR_A = UI_GRAPHICS_WINDOW_BORDERS_INDEX;
	ld	hl, #_TEMP_VAR_A
	ld	(hl), #0x00
	C$mainmenu_scene.c$28$1_0$145	= .
	.globl	C$mainmenu_scene.c$28$1_0$145
;src/scenes/mainmenu_scene.c:28: TEMP_VAR_B = VRAM_WINDOW_BORDERS_START;
	ld	hl, #_TEMP_VAR_B
	ld	(hl), #0x60
	C$mainmenu_scene.c$29$1_0$145	= .
	.globl	C$mainmenu_scene.c$29$1_0$145
;src/scenes/mainmenu_scene.c:29: loadUIGraphics();
	call	_loadUIGraphics
	C$mainmenu_scene.c$31$1_0$145	= .
	.globl	C$mainmenu_scene.c$31$1_0$145
;src/scenes/mainmenu_scene.c:31: TEMP_VAR_A = UI_GRAPHICS_SMALL_ARROWS_INDEX;
	ld	hl, #_TEMP_VAR_A
	ld	(hl), #0x01
	C$mainmenu_scene.c$32$1_0$145	= .
	.globl	C$mainmenu_scene.c$32$1_0$145
;src/scenes/mainmenu_scene.c:32: TEMP_VAR_B = VRAM_SMALL_ARROWS_START;
	ld	hl, #_TEMP_VAR_B
	ld	(hl), #0xc4
	C$mainmenu_scene.c$33$1_0$145	= .
	.globl	C$mainmenu_scene.c$33$1_0$145
;src/scenes/mainmenu_scene.c:33: loadUIGraphics();
	call	_loadUIGraphics
	C$mainmenu_scene.c$36$1_0$145	= .
	.globl	C$mainmenu_scene.c$36$1_0$145
;src/scenes/mainmenu_scene.c:36: set_bkg_tiles(0, 0, 20u, 18u, BLANK_SCREEN_MAP);
	ld	de, #_BLANK_SCREEN_MAP
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$mainmenu_scene.c$37$1_0$145	= .
	.globl	C$mainmenu_scene.c$37$1_0$145
;src/scenes/mainmenu_scene.c:37: drawWindowBorder(9u, 0u, 11u, 5u);
	ld	hl, #0x50b
	push	hl
	ld	e, #0x00
	ld	a, #0x09
	call	_drawWindowBorder
	C$mainmenu_scene.c$39$1_0$145	= .
	.globl	C$mainmenu_scene.c$39$1_0$145
;src/scenes/mainmenu_scene.c:39: set_bkg_tiles(11u, 1u, 8u, 1u, "NEW GAME");
	ld	de, #___str_0
	push	de
	ld	hl, #0x108
	push	hl
	ld	hl, #0x10b
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$mainmenu_scene.c$40$1_0$145	= .
	.globl	C$mainmenu_scene.c$40$1_0$145
;src/scenes/mainmenu_scene.c:40: set_bkg_tiles(11u, 2u, 8u, 1u, "CONTINUE");
	ld	de, #___str_1
	push	de
	ld	hl, #0x108
	push	hl
	ld	hl, #0x20b
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$mainmenu_scene.c$41$1_0$145	= .
	.globl	C$mainmenu_scene.c$41$1_0$145
;src/scenes/mainmenu_scene.c:41: set_bkg_tiles(11u, 3u, 8u, 1u, "SETTINGS");
	ld	de, #___str_2
	push	de
	ld	hl, #0x108
	push	hl
	ld	hl, #0x30b
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$mainmenu_scene.c$44$1_0$145	= .
	.globl	C$mainmenu_scene.c$44$1_0$145
;src/scenes/mainmenu_scene.c:44: CURSOR_INDEX = CURSOR_INDEX_NEWGAME;
	ld	hl, #_CURSOR_INDEX
	ld	(hl), #0x00
	C$mainmenu_scene.c$45$1_0$145	= .
	.globl	C$mainmenu_scene.c$45$1_0$145
;src/scenes/mainmenu_scene.c:45: CURSOR_INDEX_PREV = CURSOR_INDEX_NEWGAME;
	ld	hl, #_CURSOR_INDEX_PREV
	ld	(hl), #0x00
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0xc4
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, #0x18
	ld	(hl+), a
	ld	(hl), #0x54
	C$mainmenu_scene.c$49$1_0$145	= .
	.globl	C$mainmenu_scene.c$49$1_0$145
;src/scenes/mainmenu_scene.c:49: SPRITES_8x8;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfb
	ldh	(_LCDC_REG + 0), a
	C$mainmenu_scene.c$50$1_0$145	= .
	.globl	C$mainmenu_scene.c$50$1_0$145
;src/scenes/mainmenu_scene.c:50: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$mainmenu_scene.c$51$1_0$145	= .
	.globl	C$mainmenu_scene.c$51$1_0$145
;src/scenes/mainmenu_scene.c:51: }
	C$mainmenu_scene.c$51$1_0$145	= .
	.globl	C$mainmenu_scene.c$51$1_0$145
	XG$initializeMainmenuScene$0$0	= .
	.globl	XG$initializeMainmenuScene$0$0
	ret
Fmainmenu_scene$__str_0$0_0$0 == .
___str_0:
	.ascii "NEW GAME"
	.db 0x00
Fmainmenu_scene$__str_1$0_0$0 == .
___str_1:
	.ascii "CONTINUE"
	.db 0x00
Fmainmenu_scene$__str_2$0_0$0 == .
___str_2:
	.ascii "SETTINGS"
	.db 0x00
	G$handleMainmenuUpdate$0$0	= .
	.globl	G$handleMainmenuUpdate$0$0
	C$mainmenu_scene.c$53$1_0$152	= .
	.globl	C$mainmenu_scene.c$53$1_0$152
;src/scenes/mainmenu_scene.c:53: void handleMainmenuUpdate() {
;	---------------------------------
; Function handleMainmenuUpdate
; ---------------------------------
_handleMainmenuUpdate::
	C$mainmenu_scene.c$55$1_0$152	= .
	.globl	C$mainmenu_scene.c$55$1_0$152
;src/scenes/mainmenu_scene.c:55: CURSOR_INDEX_PREV = CURSOR_INDEX;
	ld	a, (#_CURSOR_INDEX)
	ld	(#_CURSOR_INDEX_PREV),a
	C$mainmenu_scene.c$56$1_0$152	= .
	.globl	C$mainmenu_scene.c$56$1_0$152
;src/scenes/mainmenu_scene.c:56: if((JOYPAD_CURRENT & J_UP) && !(JOYPAD_PREVIOUS & J_UP)) {
	ld	hl, #_JOYPAD_CURRENT
	ld	c, (hl)
	ld	hl, #_JOYPAD_PREVIOUS
	ld	b, (hl)
	bit	2, c
	jr	Z, 00105$
	bit	2, b
	jr	NZ, 00105$
	C$mainmenu_scene.c$57$2_0$153	= .
	.globl	C$mainmenu_scene.c$57$2_0$153
;src/scenes/mainmenu_scene.c:57: if(CURSOR_INDEX != CURSOR_INDEX_NEWGAME) {
	ld	hl, #_CURSOR_INDEX
	ld	a, (hl)
	or	a, a
	jr	Z, 00102$
	C$mainmenu_scene.c$58$3_0$154	= .
	.globl	C$mainmenu_scene.c$58$3_0$154
;src/scenes/mainmenu_scene.c:58: CURSOR_INDEX--;
	dec	(hl)
	jr	00105$
00102$:
	C$mainmenu_scene.c$60$3_0$155	= .
	.globl	C$mainmenu_scene.c$60$3_0$155
;src/scenes/mainmenu_scene.c:60: CURSOR_INDEX = CURSOR_INDEX_SETTINGS;
	ld	hl, #_CURSOR_INDEX
	ld	(hl), #0x02
00105$:
	C$mainmenu_scene.c$63$1_0$152	= .
	.globl	C$mainmenu_scene.c$63$1_0$152
;src/scenes/mainmenu_scene.c:63: if((JOYPAD_CURRENT & J_DOWN) && !(JOYPAD_PREVIOUS & J_DOWN)) {
	bit	3, c
	jr	Z, 00111$
	bit	3, b
	jr	NZ, 00111$
	C$mainmenu_scene.c$64$2_0$156	= .
	.globl	C$mainmenu_scene.c$64$2_0$156
;src/scenes/mainmenu_scene.c:64: if(CURSOR_INDEX != CURSOR_INDEX_SETTINGS) {
	ld	a, (#_CURSOR_INDEX)
	sub	a, #0x02
	jr	Z, 00108$
	C$mainmenu_scene.c$65$3_0$157	= .
	.globl	C$mainmenu_scene.c$65$3_0$157
;src/scenes/mainmenu_scene.c:65: CURSOR_INDEX++;
	ld	hl, #_CURSOR_INDEX
	inc	(hl)
	jr	00111$
00108$:
	C$mainmenu_scene.c$67$3_0$158	= .
	.globl	C$mainmenu_scene.c$67$3_0$158
;src/scenes/mainmenu_scene.c:67: CURSOR_INDEX = CURSOR_INDEX_NEWGAME;
	ld	hl, #_CURSOR_INDEX
	ld	(hl), #0x00
00111$:
	C$mainmenu_scene.c$72$1_0$152	= .
	.globl	C$mainmenu_scene.c$72$1_0$152
;src/scenes/mainmenu_scene.c:72: ((JOYPAD_CURRENT & J_A) && !(JOYPAD_PREVIOUS & J_A)) ||
	bit	4, c
	jr	Z, 00117$
	bit	4, b
	jr	Z, 00113$
00117$:
	C$mainmenu_scene.c$73$1_0$152	= .
	.globl	C$mainmenu_scene.c$73$1_0$152
;src/scenes/mainmenu_scene.c:73: ((JOYPAD_CURRENT & J_START) && !(JOYPAD_PREVIOUS & J_START))
	bit	7, c
	ret	Z
	bit	7, b
	ret	NZ
00113$:
	C$mainmenu_scene.c$77$2_0$159	= .
	.globl	C$mainmenu_scene.c$77$2_0$159
;src/scenes/mainmenu_scene.c:77: GAME_STATE = STATE_DEBUGROOM; //TODO: Change this to a more sensible thing
	ld	hl, #_GAME_STATE
	ld	(hl), #0x09
	C$mainmenu_scene.c$80$1_0$152	= .
	.globl	C$mainmenu_scene.c$80$1_0$152
;src/scenes/mainmenu_scene.c:80: }
	C$mainmenu_scene.c$80$1_0$152	= .
	.globl	C$mainmenu_scene.c$80$1_0$152
	XG$handleMainmenuUpdate$0$0	= .
	.globl	XG$handleMainmenuUpdate$0$0
	ret
	G$drawMainmenuScene$0$0	= .
	.globl	G$drawMainmenuScene$0$0
	C$mainmenu_scene.c$82$1_0$160	= .
	.globl	C$mainmenu_scene.c$82$1_0$160
;src/scenes/mainmenu_scene.c:82: void drawMainmenuScene() {
;	---------------------------------
; Function drawMainmenuScene
; ---------------------------------
_drawMainmenuScene::
	C$mainmenu_scene.c$84$1_0$160	= .
	.globl	C$mainmenu_scene.c$84$1_0$160
;src/scenes/mainmenu_scene.c:84: if(CURSOR_INDEX != CURSOR_INDEX_PREV) {
	ld	a, (#_CURSOR_INDEX)
	ld	hl, #_CURSOR_INDEX_PREV
	sub	a, (hl)
	jr	Z, 00107$
	C$mainmenu_scene.c$85$2_0$161	= .
	.globl	C$mainmenu_scene.c$85$2_0$161
;src/scenes/mainmenu_scene.c:85: switch(CURSOR_INDEX) {
	ld	a, (#_CURSOR_INDEX)
	or	a, a
	jr	Z, 00102$
	ld	a, (#_CURSOR_INDEX)
	dec	a
	jr	Z, 00103$
	ld	a, (#_CURSOR_INDEX)
	sub	a, #0x02
	jr	Z, 00104$
	C$mainmenu_scene.c$87$3_0$162	= .
	.globl	C$mainmenu_scene.c$87$3_0$162
;src/scenes/mainmenu_scene.c:87: case CURSOR_INDEX_NEWGAME:
00102$:
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, #0x18
	ld	(hl+), a
	ld	(hl), #0x54
	C$mainmenu_scene.c$89$3_0$162	= .
	.globl	C$mainmenu_scene.c$89$3_0$162
;src/scenes/mainmenu_scene.c:89: break;
	jr	00107$
	C$mainmenu_scene.c$90$3_0$162	= .
	.globl	C$mainmenu_scene.c$90$3_0$162
;src/scenes/mainmenu_scene.c:90: case CURSOR_INDEX_CONTINUE:
00103$:
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, #0x20
	ld	(hl+), a
	ld	(hl), #0x54
	C$mainmenu_scene.c$92$3_0$162	= .
	.globl	C$mainmenu_scene.c$92$3_0$162
;src/scenes/mainmenu_scene.c:92: break;
	jr	00107$
	C$mainmenu_scene.c$93$3_0$162	= .
	.globl	C$mainmenu_scene.c$93$3_0$162
;src/scenes/mainmenu_scene.c:93: case CURSOR_INDEX_SETTINGS:
00104$:
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, #0x28
	ld	(hl+), a
	ld	(hl), #0x54
	C$mainmenu_scene.c$96$1_0$160	= .
	.globl	C$mainmenu_scene.c$96$1_0$160
;src/scenes/mainmenu_scene.c:96: }
00107$:
	C$mainmenu_scene.c$100$1_0$160	= .
	.globl	C$mainmenu_scene.c$100$1_0$160
;src/scenes/mainmenu_scene.c:100: if(ANIMATION_TICK < 10u) {
	ld	a, (#_ANIMATION_TICK)
	sub	a, #0x0a
	jr	NC, 00109$
	C$mainmenu_scene.c$101$2_0$163	= .
	.globl	C$mainmenu_scene.c$101$2_0$163
;src/scenes/mainmenu_scene.c:101: set_bkg_tile_xy(0u, 0u, 0x30); //0
	ld	a, #0x30
	push	af
	inc	sp
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tile_xy
	add	sp, #3
	C$mainmenu_scene.c$102$2_0$163	= .
	.globl	C$mainmenu_scene.c$102$2_0$163
;src/scenes/mainmenu_scene.c:102: set_bkg_tile_xy(0u, 0u, 0x30 + ANIMATION_TICK);
	ld	a, (#_ANIMATION_TICK)
	add	a, #0x30
	push	af
	inc	sp
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tile_xy
	add	sp, #3
	ret
00109$:
	C$mainmenu_scene.c$104$2_0$164	= .
	.globl	C$mainmenu_scene.c$104$2_0$164
;src/scenes/mainmenu_scene.c:104: uitoa(ANIMATION_TICK, (char *)ITOA_STRING, 10u);
	ld	de, #_ITOA_STRING
	ld	hl, #_ANIMATION_TICK
	ld	c, (hl)
	ld	b, #0x00
	ld	a, #0x0a
	push	af
	inc	sp
	push	de
	push	bc
	call	_uitoa
	add	sp, #5
	C$mainmenu_scene.c$105$2_0$164	= .
	.globl	C$mainmenu_scene.c$105$2_0$164
;src/scenes/mainmenu_scene.c:105: set_bkg_tiles(0, 0, 2u, 1u, ITOA_STRING);
	ld	de, #_ITOA_STRING
	push	de
	ld	hl, #0x102
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$mainmenu_scene.c$108$1_0$160	= .
	.globl	C$mainmenu_scene.c$108$1_0$160
;src/scenes/mainmenu_scene.c:108: }
	C$mainmenu_scene.c$108$1_0$160	= .
	.globl	C$mainmenu_scene.c$108$1_0$160
	XG$drawMainmenuScene$0$0	= .
	.globl	XG$drawMainmenuScene$0$0
	ret
	G$mainmenuSceneTeardown$0$0	= .
	.globl	G$mainmenuSceneTeardown$0$0
	C$mainmenu_scene.c$110$1_0$174	= .
	.globl	C$mainmenu_scene.c$110$1_0$174
;src/scenes/mainmenu_scene.c:110: void mainmenuSceneTeardown() {
;	---------------------------------
; Function mainmenuSceneTeardown
; ---------------------------------
_mainmenuSceneTeardown::
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+0
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	xor	a, a
	ld	(bc), a
	inc	bc
	xor	a, a
	ld	(bc), a
	C$mainmenu_scene.c$113$1_0$174	= .
	.globl	C$mainmenu_scene.c$113$1_0$174
;src/scenes/mainmenu_scene.c:113: HIDE_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
	C$mainmenu_scene.c$114$1_0$174	= .
	.globl	C$mainmenu_scene.c$114$1_0$174
;src/scenes/mainmenu_scene.c:114: }
	C$mainmenu_scene.c$114$1_0$174	= .
	.globl	C$mainmenu_scene.c$114$1_0$174
	XG$mainmenuSceneTeardown$0$0	= .
	.globl	XG$mainmenuSceneTeardown$0$0
	ret
	G$__func_mainmenu_scene_bank$0$0	= .
	.globl	G$__func_mainmenu_scene_bank$0$0
	C$mainmenu_scene.c$116$1_0$178	= .
	.globl	C$mainmenu_scene.c$116$1_0$178
;src/scenes/mainmenu_scene.c:116: BANKREF(mainmenu_scene_bank)
;	---------------------------------
; Function __func_mainmenu_scene_bank
; ---------------------------------
	b___func_mainmenu_scene_bank	= 255
___func_mainmenu_scene_bank::
	.local b___func_mainmenu_scene_bank 
	___bank_mainmenu_scene_bank = b___func_mainmenu_scene_bank 
	.globl ___bank_mainmenu_scene_bank 
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)

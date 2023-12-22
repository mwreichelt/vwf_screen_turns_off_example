;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (Linux)
;--------------------------------------------------------
	.module debugmusic_scene
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _drawDebugMusicScene
	.globl _handleDebugMusicUpdate
	.globl _initializeDebugMusicScene
	.globl _drawSfxName
	.globl _drawTrackName
	.globl _debugMusicTeardown
	.globl b___func_debugmusic_scene_bank
	.globl ___func_debugmusic_scene_bank
	.globl _loadUIGraphics
	.globl _cpy_banked_data
	.globl _drawTextBkg
	.globl _music_pause
	.globl _uitoa
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
	G$__func_debugmusic_scene_bank$0$0	= .
	.globl	G$__func_debugmusic_scene_bank$0$0
	C$debugmusic_scene.c$13$0_0$193	= .
	.globl	C$debugmusic_scene.c$13$0_0$193
;src/scenes/debugmusic_scene.c:13: BANKREF(debugmusic_scene_bank)
;	---------------------------------
; Function __func_debugmusic_scene_bank
; ---------------------------------
	b___func_debugmusic_scene_bank	= 255
___func_debugmusic_scene_bank::
	.local b___func_debugmusic_scene_bank 
	___bank_debugmusic_scene_bank = b___func_debugmusic_scene_bank 
	.globl ___bank_debugmusic_scene_bank 
	G$debugMusicTeardown$0$0	= .
	.globl	G$debugMusicTeardown$0$0
	C$debugmusic_scene.c$18$1_0$194	= .
	.globl	C$debugmusic_scene.c$18$1_0$194
;src/scenes/debugmusic_scene.c:18: void debugMusicTeardown() {
;	---------------------------------
; Function debugMusicTeardown
; ---------------------------------
_debugMusicTeardown::
	C$debugmusic_scene.c$20$1_0$194	= .
	.globl	C$debugmusic_scene.c$20$1_0$194
;src/scenes/debugmusic_scene.c:20: CURSOR_INDEX = 0;
	ld	hl, #_CURSOR_INDEX
	ld	(hl), #0x00
	C$debugmusic_scene.c$21$1_0$194	= .
	.globl	C$debugmusic_scene.c$21$1_0$194
;src/scenes/debugmusic_scene.c:21: CURSOR_INDEX_PREV = 0;
	ld	hl, #_CURSOR_INDEX_PREV
	ld	(hl), #0x00
	C$debugmusic_scene.c$22$1_0$194	= .
	.globl	C$debugmusic_scene.c$22$1_0$194
;src/scenes/debugmusic_scene.c:22: }
	C$debugmusic_scene.c$22$1_0$194	= .
	.globl	C$debugmusic_scene.c$22$1_0$194
	XG$debugMusicTeardown$0$0	= .
	.globl	XG$debugMusicTeardown$0$0
	ret
	G$drawTrackName$0$0	= .
	.globl	G$drawTrackName$0$0
	C$debugmusic_scene.c$24$1_0$195	= .
	.globl	C$debugmusic_scene.c$24$1_0$195
;src/scenes/debugmusic_scene.c:24: void drawTrackName() {
;	---------------------------------
; Function drawTrackName
; ---------------------------------
_drawTrackName::
	dec	sp
	C$debugmusic_scene.c$25$1_0$195	= .
	.globl	C$debugmusic_scene.c$25$1_0$195
;src/scenes/debugmusic_scene.c:25: set_bkg_tiles(1u, 4u, 3u,  1u, BLANK_SCREEN_MAP);
	ld	de, #_BLANK_SCREEN_MAP
	push	de
	ld	hl, #0x103
	push	hl
	ld	hl, #0x401
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$debugmusic_scene.c$27$1_0$195	= .
	.globl	C$debugmusic_scene.c$27$1_0$195
;src/scenes/debugmusic_scene.c:27: uitoa(CURSOR_INDEX, (char *)ITOA_STRING, 10);
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
	C$debugmusic_scene.c$28$1_0$195	= .
	.globl	C$debugmusic_scene.c$28$1_0$195
;src/scenes/debugmusic_scene.c:28: drawTextBkg(1u, 4u, ITOA_STRING);
	ld	de, #_ITOA_STRING
	push	de
	ld	e, #0x04
	ld	a, #0x01
	call	_drawTextBkg
	C$debugmusic_scene.c$29$1_0$195	= .
	.globl	C$debugmusic_scene.c$29$1_0$195
;src/scenes/debugmusic_scene.c:29: cpy_banked_data(TEMP_STRING, Data_Music[CURSOR_INDEX].title, 14u, BANK(Data_Music_bank));
	ldhl	sp,	#0
	ld	(hl), #<(___bank_Data_Music_bank)
	ld	hl, #_CURSOR_INDEX
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_Data_Music
	add	hl,bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#0
	ld	a, (hl)
	push	af
	inc	sp
	ld	de, #0x000e
	push	de
	ld	de, #_TEMP_STRING
	call	_cpy_banked_data
	C$debugmusic_scene.c$30$1_0$195	= .
	.globl	C$debugmusic_scene.c$30$1_0$195
;src/scenes/debugmusic_scene.c:30: drawTextBkg(4u, 4u, (unsigned char *)TEMP_STRING);
	ld	de, #_TEMP_STRING
	push	de
	ld	a,#0x04
	ld	e,a
	call	_drawTextBkg
	C$debugmusic_scene.c$31$1_0$195	= .
	.globl	C$debugmusic_scene.c$31$1_0$195
;src/scenes/debugmusic_scene.c:31: }
	inc	sp
	C$debugmusic_scene.c$31$1_0$195	= .
	.globl	C$debugmusic_scene.c$31$1_0$195
	XG$drawTrackName$0$0	= .
	.globl	XG$drawTrackName$0$0
	ret
	G$drawSfxName$0$0	= .
	.globl	G$drawSfxName$0$0
	C$debugmusic_scene.c$34$1_0$196	= .
	.globl	C$debugmusic_scene.c$34$1_0$196
;src/scenes/debugmusic_scene.c:34: void drawSfxName() {
;	---------------------------------
; Function drawSfxName
; ---------------------------------
_drawSfxName::
	dec	sp
	C$debugmusic_scene.c$35$1_0$196	= .
	.globl	C$debugmusic_scene.c$35$1_0$196
;src/scenes/debugmusic_scene.c:35: set_bkg_tiles(1u, 6u, 3u, 1u, BLANK_SCREEN_MAP);
	ld	de, #_BLANK_SCREEN_MAP
	push	de
	ld	hl, #0x103
	push	hl
	ld	hl, #0x601
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
	C$debugmusic_scene.c$37$1_0$196	= .
	.globl	C$debugmusic_scene.c$37$1_0$196
;src/scenes/debugmusic_scene.c:37: uitoa(TEMP_VAR_F, (char *)ITOA_STRING, 10);
	ld	de, #_ITOA_STRING
	ld	hl, #_TEMP_VAR_F
	ld	c, (hl)
	ld	b, #0x00
	ld	a, #0x0a
	push	af
	inc	sp
	push	de
	push	bc
	call	_uitoa
	add	sp, #5
	C$debugmusic_scene.c$38$1_0$196	= .
	.globl	C$debugmusic_scene.c$38$1_0$196
;src/scenes/debugmusic_scene.c:38: drawTextBkg(1u, 6u, ITOA_STRING);
	ld	de, #_ITOA_STRING
	push	de
	ld	e, #0x06
	ld	a, #0x01
	call	_drawTextBkg
	C$debugmusic_scene.c$39$1_0$196	= .
	.globl	C$debugmusic_scene.c$39$1_0$196
;src/scenes/debugmusic_scene.c:39: cpy_banked_data(TEMP_STRING, Data_SFX[TEMP_VAR_F].title, 14u, BANK(Data_SFX_bank));
	ldhl	sp,	#0
	ld	(hl), #<(___bank_Data_SFX_bank)
	ld	hl, #_TEMP_VAR_F
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	bc,#_Data_SFX
	add	hl,bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#0
	ld	a, (hl)
	push	af
	inc	sp
	ld	de, #0x000e
	push	de
	ld	de, #_TEMP_STRING
	call	_cpy_banked_data
	C$debugmusic_scene.c$40$1_0$196	= .
	.globl	C$debugmusic_scene.c$40$1_0$196
;src/scenes/debugmusic_scene.c:40: drawTextBkg(4u, 6u, (unsigned char *)TEMP_STRING);
	ld	de, #_TEMP_STRING
	push	de
	ld	e, #0x06
	ld	a, #0x04
	call	_drawTextBkg
	C$debugmusic_scene.c$41$1_0$196	= .
	.globl	C$debugmusic_scene.c$41$1_0$196
;src/scenes/debugmusic_scene.c:41: }
	inc	sp
	C$debugmusic_scene.c$41$1_0$196	= .
	.globl	C$debugmusic_scene.c$41$1_0$196
	XG$drawSfxName$0$0	= .
	.globl	XG$drawSfxName$0$0
	ret
	G$initializeDebugMusicScene$0$0	= .
	.globl	G$initializeDebugMusicScene$0$0
	C$debugmusic_scene.c$44$1_0$197	= .
	.globl	C$debugmusic_scene.c$44$1_0$197
;src/scenes/debugmusic_scene.c:44: void initializeDebugMusicScene() {
;	---------------------------------
; Function initializeDebugMusicScene
; ---------------------------------
_initializeDebugMusicScene::
	C$debugmusic_scene.c$46$1_0$197	= .
	.globl	C$debugmusic_scene.c$46$1_0$197
;src/scenes/debugmusic_scene.c:46: RENDER_TARGET = RENDER_TARGET_BKG;
	ld	hl, #_RENDER_TARGET
	ld	(hl), #0x00
	C$debugmusic_scene.c$47$1_0$197	= .
	.globl	C$debugmusic_scene.c$47$1_0$197
;src/scenes/debugmusic_scene.c:47: set_bkg_tiles(0, 0, 20u, 18u, BLANK_SCREEN_MAP);
	ld	de, #_BLANK_SCREEN_MAP
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$debugmusic_scene.c$49$1_0$197	= .
	.globl	C$debugmusic_scene.c$49$1_0$197
;src/scenes/debugmusic_scene.c:49: TEMP_VAR_A = UI_GRAPHICS_SMALL_ARROWS_INDEX;
	ld	hl, #_TEMP_VAR_A
	ld	(hl), #0x01
	C$debugmusic_scene.c$50$1_0$197	= .
	.globl	C$debugmusic_scene.c$50$1_0$197
;src/scenes/debugmusic_scene.c:50: TEMP_VAR_B = VRAM_SMALL_ARROWS_START;
	ld	hl, #_TEMP_VAR_B
	ld	(hl), #0xc4
	C$debugmusic_scene.c$51$1_0$197	= .
	.globl	C$debugmusic_scene.c$51$1_0$197
;src/scenes/debugmusic_scene.c:51: loadUIGraphics();
	call	_loadUIGraphics
	C$debugmusic_scene.c$54$1_0$197	= .
	.globl	C$debugmusic_scene.c$54$1_0$197
;src/scenes/debugmusic_scene.c:54: CURSOR_INDEX = 0u;
	ld	hl, #_CURSOR_INDEX
	ld	(hl), #0x00
	C$debugmusic_scene.c$55$1_0$197	= .
	.globl	C$debugmusic_scene.c$55$1_0$197
;src/scenes/debugmusic_scene.c:55: TEMP_VAR_F = 0u;
	ld	hl, #_TEMP_VAR_F
	ld	(hl), #0x00
	C$debugmusic_scene.c$57$1_0$197	= .
	.globl	C$debugmusic_scene.c$57$1_0$197
;src/scenes/debugmusic_scene.c:57: drawTextBkg(1u, 1u, (unsigned char *)"MUSIC ROOM");
	ld	de, #___str_0
	push	de
	ld	a,#0x01
	ld	e,a
	call	_drawTextBkg
	C$debugmusic_scene.c$58$1_0$197	= .
	.globl	C$debugmusic_scene.c$58$1_0$197
;src/scenes/debugmusic_scene.c:58: drawTextBkg(1u, 3u, (unsigned char *)"TRACK ID");
	ld	de, #___str_1
	push	de
	ld	e, #0x03
	ld	a, #0x01
	call	_drawTextBkg
	C$debugmusic_scene.c$59$1_0$197	= .
	.globl	C$debugmusic_scene.c$59$1_0$197
;src/scenes/debugmusic_scene.c:59: drawTextBkg(1u, 3u, (unsigned char *)"TRACK NAME");
	ld	de, #___str_2
	push	de
	ld	e, #0x03
	ld	a, #0x01
	call	_drawTextBkg
	C$debugmusic_scene.c$60$1_0$197	= .
	.globl	C$debugmusic_scene.c$60$1_0$197
;src/scenes/debugmusic_scene.c:60: drawTextBkg(1u, 5u, (unsigned char *)"SFX NAME");
	ld	de, #___str_3
	push	de
	ld	e, #0x05
	ld	a, #0x01
	call	_drawTextBkg
	C$debugmusic_scene.c$62$1_0$197	= .
	.globl	C$debugmusic_scene.c$62$1_0$197
;src/scenes/debugmusic_scene.c:62: drawTrackName();
	call	_drawTrackName
	C$debugmusic_scene.c$64$1_0$197	= .
	.globl	C$debugmusic_scene.c$64$1_0$197
;src/scenes/debugmusic_scene.c:64: drawSfxName();
	call	_drawSfxName
	C$debugmusic_scene.c$67$1_0$197	= .
	.globl	C$debugmusic_scene.c$67$1_0$197
;src/scenes/debugmusic_scene.c:67: drawTextBkg(1u, 10u, (unsigned char *)"U/D    CHANGE TRACK");
	ld	de, #___str_4
	push	de
	ld	e, #0x0a
	ld	a, #0x01
	call	_drawTextBkg
	C$debugmusic_scene.c$68$1_0$197	= .
	.globl	C$debugmusic_scene.c$68$1_0$197
;src/scenes/debugmusic_scene.c:68: set_bkg_tile_xy(1u, 10u, VRAM_ICON_ARROW_UP);
	ld	hl, #0xc60a
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	C$debugmusic_scene.c$69$1_0$197	= .
	.globl	C$debugmusic_scene.c$69$1_0$197
;src/scenes/debugmusic_scene.c:69: set_bkg_tile_xy(3u, 10u, VRAM_ICON_ARROW_DOWN);
	ld	hl, #0xc50a
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	C$debugmusic_scene.c$70$1_0$197	= .
	.globl	C$debugmusic_scene.c$70$1_0$197
;src/scenes/debugmusic_scene.c:70: drawTextBkg(1u, 11u, (unsigned char *)"START  PLAY/PAUSE MUSIC");
	ld	de, #___str_5
	push	de
	ld	e, #0x0b
	ld	a, #0x01
	call	_drawTextBkg
	C$debugmusic_scene.c$73$1_0$197	= .
	.globl	C$debugmusic_scene.c$73$1_0$197
;src/scenes/debugmusic_scene.c:73: drawTextBkg(1u, 12u, (unsigned char *)"L/R    CHANGE SFX");
	ld	de, #___str_6
	push	de
	ld	e, #0x0c
	ld	a, #0x01
	call	_drawTextBkg
	C$debugmusic_scene.c$74$1_0$197	= .
	.globl	C$debugmusic_scene.c$74$1_0$197
;src/scenes/debugmusic_scene.c:74: set_bkg_tile_xy(1u, 12u, VRAM_ICON_ARROW_LEFT);
	ld	hl, #0xc70c
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	C$debugmusic_scene.c$75$1_0$197	= .
	.globl	C$debugmusic_scene.c$75$1_0$197
;src/scenes/debugmusic_scene.c:75: set_bkg_tile_xy(3u, 12u, VRAM_ICON_ARROW_RIGHT);
	ld	hl, #0xc40c
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	C$debugmusic_scene.c$76$1_0$197	= .
	.globl	C$debugmusic_scene.c$76$1_0$197
;src/scenes/debugmusic_scene.c:76: drawTextBkg(1u, 13u, (unsigned char *)"A      PLAY SFX");
	ld	de, #___str_7
	push	de
	ld	e, #0x0d
	ld	a, #0x01
	call	_drawTextBkg
	C$debugmusic_scene.c$79$1_0$197	= .
	.globl	C$debugmusic_scene.c$79$1_0$197
;src/scenes/debugmusic_scene.c:79: SPRITES_8x8;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfb
	ldh	(_LCDC_REG + 0), a
	C$debugmusic_scene.c$80$1_0$197	= .
	.globl	C$debugmusic_scene.c$80$1_0$197
;src/scenes/debugmusic_scene.c:80: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$debugmusic_scene.c$81$1_0$197	= .
	.globl	C$debugmusic_scene.c$81$1_0$197
;src/scenes/debugmusic_scene.c:81: }
	C$debugmusic_scene.c$81$1_0$197	= .
	.globl	C$debugmusic_scene.c$81$1_0$197
	XG$initializeDebugMusicScene$0$0	= .
	.globl	XG$initializeDebugMusicScene$0$0
	ret
Fdebugmusic_scene$__str_0$0_0$0 == .
___str_0:
	.ascii "MUSIC ROOM"
	.db 0x00
Fdebugmusic_scene$__str_1$0_0$0 == .
___str_1:
	.ascii "TRACK ID"
	.db 0x00
Fdebugmusic_scene$__str_2$0_0$0 == .
___str_2:
	.ascii "TRACK NAME"
	.db 0x00
Fdebugmusic_scene$__str_3$0_0$0 == .
___str_3:
	.ascii "SFX NAME"
	.db 0x00
Fdebugmusic_scene$__str_4$0_0$0 == .
___str_4:
	.ascii "U/D    CHANGE TRACK"
	.db 0x00
Fdebugmusic_scene$__str_5$0_0$0 == .
___str_5:
	.ascii "START  PLAY/PAUSE MUSIC"
	.db 0x00
Fdebugmusic_scene$__str_6$0_0$0 == .
___str_6:
	.ascii "L/R    CHANGE SFX"
	.db 0x00
Fdebugmusic_scene$__str_7$0_0$0 == .
___str_7:
	.ascii "A      PLAY SFX"
	.db 0x00
	G$handleDebugMusicUpdate$0$0	= .
	.globl	G$handleDebugMusicUpdate$0$0
	C$debugmusic_scene.c$83$1_0$198	= .
	.globl	C$debugmusic_scene.c$83$1_0$198
;src/scenes/debugmusic_scene.c:83: void handleDebugMusicUpdate() {
;	---------------------------------
; Function handleDebugMusicUpdate
; ---------------------------------
_handleDebugMusicUpdate::
	dec	sp
	C$debugmusic_scene.c$85$1_0$198	= .
	.globl	C$debugmusic_scene.c$85$1_0$198
;src/scenes/debugmusic_scene.c:85: CURSOR_INDEX_PREV = CURSOR_INDEX;
	ld	a, (#_CURSOR_INDEX)
	ld	(#_CURSOR_INDEX_PREV),a
	C$debugmusic_scene.c$87$1_0$198	= .
	.globl	C$debugmusic_scene.c$87$1_0$198
;src/scenes/debugmusic_scene.c:87: TEMP_VAR_E = TEMP_VAR_F;
	ld	a, (#_TEMP_VAR_F)
	ld	(#_TEMP_VAR_E),a
	C$debugmusic_scene.c$90$1_0$198	= .
	.globl	C$debugmusic_scene.c$90$1_0$198
;src/scenes/debugmusic_scene.c:90: if((JOYPAD_CURRENT & J_UP) && !(JOYPAD_PREVIOUS & J_UP)) {
	ld	hl, #_JOYPAD_CURRENT
	ld	b, (hl)
	ld	hl, #_JOYPAD_PREVIOUS
	ld	c, (hl)
	bit	2, b
	jr	Z, 00111$
	bit	2, c
	jr	NZ, 00111$
	C$debugmusic_scene.c$91$2_0$199	= .
	.globl	C$debugmusic_scene.c$91$2_0$199
;src/scenes/debugmusic_scene.c:91: if(CURSOR_INDEX == 0u) {
	ld	hl, #_CURSOR_INDEX
	ld	a, (hl)
	or	a, a
	jr	NZ, 00102$
	C$debugmusic_scene.c$92$3_0$200	= .
	.globl	C$debugmusic_scene.c$92$3_0$200
;src/scenes/debugmusic_scene.c:92: CURSOR_INDEX = MUSIC_TRACK_COUNT - 1u;
	ld	(hl), #0x01
	jr	00112$
00102$:
	C$debugmusic_scene.c$94$3_0$201	= .
	.globl	C$debugmusic_scene.c$94$3_0$201
;src/scenes/debugmusic_scene.c:94: CURSOR_INDEX--;
	ld	hl, #_CURSOR_INDEX
	dec	(hl)
	jr	00112$
00111$:
	C$debugmusic_scene.c$96$1_0$198	= .
	.globl	C$debugmusic_scene.c$96$1_0$198
;src/scenes/debugmusic_scene.c:96: } else if ((JOYPAD_CURRENT & J_DOWN) && !(JOYPAD_PREVIOUS & J_DOWN)) {
	bit	3, b
	jr	Z, 00112$
	bit	3, c
	jr	NZ, 00112$
	C$debugmusic_scene.c$97$2_0$202	= .
	.globl	C$debugmusic_scene.c$97$2_0$202
;src/scenes/debugmusic_scene.c:97: if(CURSOR_INDEX == MUSIC_TRACK_COUNT - 1u) {
	ld	a, (#_CURSOR_INDEX)
	dec	a
	jr	NZ, 00105$
	C$debugmusic_scene.c$98$3_0$203	= .
	.globl	C$debugmusic_scene.c$98$3_0$203
;src/scenes/debugmusic_scene.c:98: CURSOR_INDEX = 0u;
	ld	hl, #_CURSOR_INDEX
	ld	(hl), #0x00
	jr	00112$
00105$:
	C$debugmusic_scene.c$100$3_0$204	= .
	.globl	C$debugmusic_scene.c$100$3_0$204
;src/scenes/debugmusic_scene.c:100: CURSOR_INDEX++;
	ld	hl, #_CURSOR_INDEX
	inc	(hl)
00112$:
	C$debugmusic_scene.c$105$1_0$198	= .
	.globl	C$debugmusic_scene.c$105$1_0$198
;src/scenes/debugmusic_scene.c:105: if((JOYPAD_CURRENT & J_START) && !(JOYPAD_PREVIOUS & J_START)) {
	bit	7, b
	jp	Z,00120$
	bit	7, c
	jr	NZ, 00120$
	C$debugmusic_scene.c$106$2_0$205	= .
	.globl	C$debugmusic_scene.c$106$2_0$205
;src/scenes/debugmusic_scene.c:106: if(CURSOR_INDEX != 0u) {
	ld	a, (#_CURSOR_INDEX)
	or	a, a
	jr	Z, 00120$
	C$debugmusic_scene.c$107$3_0$206	= .
	.globl	C$debugmusic_scene.c$107$3_0$206
;src/scenes/debugmusic_scene.c:107: if(MUSIC_TOGGLE == 0u) {
	ld	a, (#_MUSIC_TOGGLE)
	or	a, a
	jr	NZ, 00115$
	C$debugmusic_scene.c$108$4_0$207	= .
	.globl	C$debugmusic_scene.c$108$4_0$207
;src/scenes/debugmusic_scene.c:108: cpy_banked_data(&VAR_MUSIC_DATA, &Data_Music[CURSOR_INDEX], sizeof(music_data_t), BANK(Data_Music_bank));
	ldhl	sp,	#0
	ld	(hl), #<(___bank_Data_Music_bank)
	ld	hl, #_CURSOR_INDEX
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_Data_Music
	add	hl,bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#0
	ld	a, (hl)
	push	af
	inc	sp
	ld	de, #0x0011
	push	de
	ld	de, #_VAR_MUSIC_DATA
	call	_cpy_banked_data
;src/scenes/debugmusic_scene.c:112: music_load(VAR_MUSIC_DATA.bank, VAR_MUSIC_DATA.data);
	ld	hl, #_VAR_MUSIC_DATA + 15
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, (#(_VAR_MUSIC_DATA + 14) + 0)
;include/musicmanager.h:48: music_current_track_bank = MUSIC_STOP_BANK, music_next_track = data; music_current_track_bank = bank;
	ld	hl, #_music_current_track_bank
	ld	(hl), #0xff
	ld	hl, #_music_next_track
	ld	(hl), c
	inc	hl
	ld	(hl), b
	ld	(#_music_current_track_bank),a
	C$debugmusic_scene.c$113$4_0$207	= .
	.globl	C$debugmusic_scene.c$113$4_0$207
;src/scenes/debugmusic_scene.c:113: music_pause(FALSE);
	xor	a, a
	call	_music_pause
	C$debugmusic_scene.c$115$4_0$207	= .
	.globl	C$debugmusic_scene.c$115$4_0$207
;src/scenes/debugmusic_scene.c:115: MUSIC_TOGGLE = 1u;
	ld	hl, #_MUSIC_TOGGLE
	ld	(hl), #0x01
	jr	00120$
00115$:
	C$debugmusic_scene.c$123$4_0$208	= .
	.globl	C$debugmusic_scene.c$123$4_0$208
;src/scenes/debugmusic_scene.c:123: MUSIC_TOGGLE = 0u;
	ld	hl, #_MUSIC_TOGGLE
	ld	(hl), #0x00
;include/musicmanager.h:54: music_current_track_bank = MUSIC_STOP_BANK, music_sound_cut();
	ld	hl, #_music_current_track_bank
	ld	(hl), #0xff
;include/sfxplayer.h:22: NR12_REG = NR22_REG = NR32_REG = NR42_REG = 0;
	xor	a, a
	ldh	(_NR42_REG + 0), a
	xor	a, a
	ldh	(_NR32_REG + 0), a
	xor	a, a
	ldh	(_NR22_REG + 0), a
	xor	a, a
	ldh	(_NR12_REG + 0), a
;include/sfxplayer.h:23: NR14_REG = NR24_REG = NR44_REG = SFX_CH_RETRIGGER;
	ld	a, #0xc0
	ldh	(_NR44_REG + 0), a
	ld	a, #0xc0
	ldh	(_NR24_REG + 0), a
	ld	a, #0xc0
	ldh	(_NR14_REG + 0), a
;include/sfxplayer.h:24: NR51_REG = 0xFF;
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
	C$debugmusic_scene.c$125$1_0$198	= .
	.globl	C$debugmusic_scene.c$125$1_0$198
;src/scenes/debugmusic_scene.c:125: music_stop();
00120$:
	C$debugmusic_scene.c$90$1_0$198	= .
	.globl	C$debugmusic_scene.c$90$1_0$198
;src/scenes/debugmusic_scene.c:90: if((JOYPAD_CURRENT & J_UP) && !(JOYPAD_PREVIOUS & J_UP)) {
	ld	hl, #_JOYPAD_CURRENT
	ld	c, (hl)
	ld	a, (#_JOYPAD_PREVIOUS)
	ldhl	sp,	#0
	ld	(hl), a
	C$debugmusic_scene.c$137$1_0$198	= .
	.globl	C$debugmusic_scene.c$137$1_0$198
;src/scenes/debugmusic_scene.c:137: if((JOYPAD_CURRENT & J_LEFT) && !(JOYPAD_PREVIOUS & J_LEFT)) {
	bit	1, c
	jr	Z, 00132$
	push	hl
	ldhl	sp,	#2
	bit	1, (hl)
	pop	hl
	jr	NZ, 00132$
	C$debugmusic_scene.c$138$2_0$209	= .
	.globl	C$debugmusic_scene.c$138$2_0$209
;src/scenes/debugmusic_scene.c:138: if(TEMP_VAR_F == 0u) {
	ld	hl, #_TEMP_VAR_F
	ld	a, (hl)
	or	a, a
	jr	NZ, 00123$
	C$debugmusic_scene.c$139$3_0$210	= .
	.globl	C$debugmusic_scene.c$139$3_0$210
;src/scenes/debugmusic_scene.c:139: TEMP_VAR_F = MUSIC_SFX_COUNT - 1u;
	ld	(hl), #0x03
	jr	00133$
00123$:
	C$debugmusic_scene.c$141$3_0$211	= .
	.globl	C$debugmusic_scene.c$141$3_0$211
;src/scenes/debugmusic_scene.c:141: TEMP_VAR_F--;
	ld	hl, #_TEMP_VAR_F
	dec	(hl)
	jr	00133$
00132$:
	C$debugmusic_scene.c$143$1_0$198	= .
	.globl	C$debugmusic_scene.c$143$1_0$198
;src/scenes/debugmusic_scene.c:143: } else if ((JOYPAD_CURRENT & J_RIGHT) && !(JOYPAD_PREVIOUS & J_RIGHT)) {
	bit	0, c
	jr	Z, 00133$
	push	hl
	ldhl	sp,	#2
	bit	0, (hl)
	pop	hl
	jr	NZ, 00133$
	C$debugmusic_scene.c$144$2_0$212	= .
	.globl	C$debugmusic_scene.c$144$2_0$212
;src/scenes/debugmusic_scene.c:144: if(TEMP_VAR_F == MUSIC_SFX_COUNT - 1u) {
	ld	a, (#_TEMP_VAR_F)
	sub	a, #0x03
	jr	NZ, 00126$
	C$debugmusic_scene.c$145$3_0$213	= .
	.globl	C$debugmusic_scene.c$145$3_0$213
;src/scenes/debugmusic_scene.c:145: TEMP_VAR_F = 0u;
	ld	hl, #_TEMP_VAR_F
	ld	(hl), #0x00
	jr	00133$
00126$:
	C$debugmusic_scene.c$147$3_0$214	= .
	.globl	C$debugmusic_scene.c$147$3_0$214
;src/scenes/debugmusic_scene.c:147: TEMP_VAR_F++;
	ld	hl, #_TEMP_VAR_F
	inc	(hl)
00133$:
	C$debugmusic_scene.c$152$1_0$198	= .
	.globl	C$debugmusic_scene.c$152$1_0$198
;src/scenes/debugmusic_scene.c:152: if((JOYPAD_CURRENT & J_A) && !(JOYPAD_PREVIOUS & J_A)) {
	bit	4, c
	jp	Z,00138$
	push	hl
	ldhl	sp,	#2
	bit	4, (hl)
	pop	hl
	jp	NZ,00138$
	C$debugmusic_scene.c$153$2_0$215	= .
	.globl	C$debugmusic_scene.c$153$2_0$215
;src/scenes/debugmusic_scene.c:153: if(TEMP_VAR_F != 0u) {
	ld	a, (#_TEMP_VAR_F)
	or	a, a
	jp	Z, 00138$
	C$debugmusic_scene.c$154$3_0$216	= .
	.globl	C$debugmusic_scene.c$154$3_0$216
;src/scenes/debugmusic_scene.c:154: cpy_banked_data(&VAR_SFX_DATA, &Data_SFX[TEMP_VAR_F], sizeof(sfx_data_t), BANK(Data_SFX_bank));
	ldhl	sp,	#0
	ld	(hl), #<(___bank_Data_SFX_bank)
	ld	hl, #_TEMP_VAR_F
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	ld	bc,#_Data_SFX
	add	hl,bc
	ld	c, l
	ld	b, h
	ldhl	sp,	#0
	ld	a, (hl)
	push	af
	inc	sp
	ld	de, #0x0012
	push	de
	ld	de, #_VAR_SFX_DATA
	call	_cpy_banked_data
;src/scenes/debugmusic_scene.c:156: VAR_SFX_DATA.mute_mask, 1);
	ld	a, (#(_VAR_SFX_DATA + 17) + 0)
	ldhl	sp,	#0
	ld	(hl), a
;src/scenes/debugmusic_scene.c:155: music_play_sfx(VAR_SFX_DATA.bank, VAR_SFX_DATA.data,
	ld	hl, #_VAR_SFX_DATA + 15
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #_VAR_SFX_DATA + 14
	ld	e, (hl)
;include/musicmanager.h:61: if (priority < music_sfx_priority) return;
	ld	a, #0x01
	ld	hl, #_music_sfx_priority
	sub	a, (hl)
	jr	C, 00138$
;include/musicmanager.h:62: sfx_play_bank = SFX_STOP_BANK;
	ld	hl, #_sfx_play_bank
	ld	(hl), #0xff
;include/musicmanager.h:63: music_sfx_priority = priority;
	ld	hl, #_music_sfx_priority
	ld	(hl), #0x01
;include/musicmanager.h:64: music_sound_cut_mask(music_mute_mask);
	ld	a, (#_music_mute_mask)
;include/musicmanager.h:42: sfx_sound_cut_mask(mask);
	ld	d, a
;include/sfxplayer.h:33: if (mask & SFX_CH_1) NR12_REG = 0, NR14_REG = SFX_CH_RETRIGGER; 
	rrca
	jr	NC, 00150$
	xor	a, a
	ldh	(_NR12_REG + 0), a
	ld	a, #0xc0
	ldh	(_NR14_REG + 0), a
00150$:
;include/sfxplayer.h:34: if (mask & SFX_CH_2) NR22_REG = 0, NR24_REG = SFX_CH_RETRIGGER; 
	bit	1, d
	jr	Z, 00152$
	xor	a, a
	ldh	(_NR22_REG + 0), a
	ld	a, #0xc0
	ldh	(_NR24_REG + 0), a
00152$:
;include/sfxplayer.h:35: if (mask & SFX_CH_3) NR32_REG = 0; 
	bit	2, d
	jr	Z, 00154$
	xor	a, a
	ldh	(_NR32_REG + 0), a
00154$:
;include/sfxplayer.h:36: if (mask & SFX_CH_4) NR42_REG = 0, NR44_REG = SFX_CH_RETRIGGER;
	bit	3, d
	jr	Z, 00156$
	xor	a, a
	ldh	(_NR42_REG + 0), a
	ld	a, #0xc0
	ldh	(_NR44_REG + 0), a
00156$:
;include/sfxplayer.h:37: NR51_REG = 0xFF;
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
;include/musicmanager.h:65: music_mute_mask = mute_mask;
	ldhl	sp,	#0
	ld	a, (hl)
	ld	(#_music_mute_mask),a
;include/sfxplayer.h:45: sfx_play_bank = SFX_STOP_BANK, sfx_frame_skip = 0, sfx_play_sample = sample, sfx_play_bank = bank;
	ld	hl, #_sfx_play_bank
	ld	(hl), #0xff
	ld	hl, #_sfx_frame_skip
	ld	(hl), #0x00
	ld	hl, #_sfx_play_sample
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	ld	hl, #_sfx_play_bank
	ld	(hl), e
	C$debugmusic_scene.c$156$1_0$198	= .
	.globl	C$debugmusic_scene.c$156$1_0$198
;src/scenes/debugmusic_scene.c:156: VAR_SFX_DATA.mute_mask, 1);
00138$:
	C$debugmusic_scene.c$162$1_0$198	= .
	.globl	C$debugmusic_scene.c$162$1_0$198
;src/scenes/debugmusic_scene.c:162: if((JOYPAD_CURRENT & J_B) && !(JOYPAD_PREVIOUS & J_B)) {
	ld	a, (#_JOYPAD_CURRENT)
	bit	5, a
	jr	Z, 00161$
	ld	a, (#_JOYPAD_PREVIOUS)
	bit	5, a
	jr	NZ, 00161$
	C$debugmusic_scene.c$163$2_0$217	= .
	.globl	C$debugmusic_scene.c$163$2_0$217
;src/scenes/debugmusic_scene.c:163: GAME_STATE = STATE_DEBUGROOM;
	ld	hl, #_GAME_STATE
	ld	(hl), #0x09
00161$:
	C$debugmusic_scene.c$165$1_0$198	= .
	.globl	C$debugmusic_scene.c$165$1_0$198
;src/scenes/debugmusic_scene.c:165: }
	inc	sp
	C$debugmusic_scene.c$165$1_0$198	= .
	.globl	C$debugmusic_scene.c$165$1_0$198
	XG$handleDebugMusicUpdate$0$0	= .
	.globl	XG$handleDebugMusicUpdate$0$0
	ret
	G$drawDebugMusicScene$0$0	= .
	.globl	G$drawDebugMusicScene$0$0
	C$debugmusic_scene.c$167$1_0$242	= .
	.globl	C$debugmusic_scene.c$167$1_0$242
;src/scenes/debugmusic_scene.c:167: void drawDebugMusicScene() {
;	---------------------------------
; Function drawDebugMusicScene
; ---------------------------------
_drawDebugMusicScene::
	C$debugmusic_scene.c$169$1_0$242	= .
	.globl	C$debugmusic_scene.c$169$1_0$242
;src/scenes/debugmusic_scene.c:169: if(CURSOR_INDEX != CURSOR_INDEX_PREV) {
	ld	a, (#_CURSOR_INDEX)
	ld	hl, #_CURSOR_INDEX_PREV
	sub	a, (hl)
	jr	Z, 00102$
	C$debugmusic_scene.c$170$2_0$243	= .
	.globl	C$debugmusic_scene.c$170$2_0$243
;src/scenes/debugmusic_scene.c:170: drawTrackName();
	call	_drawTrackName
00102$:
	C$debugmusic_scene.c$174$1_0$242	= .
	.globl	C$debugmusic_scene.c$174$1_0$242
;src/scenes/debugmusic_scene.c:174: if(TEMP_VAR_F != TEMP_VAR_E) {
	ld	a, (#_TEMP_VAR_F)
	ld	hl, #_TEMP_VAR_E
	sub	a, (hl)
	C$debugmusic_scene.c$175$2_0$244	= .
	.globl	C$debugmusic_scene.c$175$2_0$244
;src/scenes/debugmusic_scene.c:175: drawSfxName();
	jp	NZ,_drawSfxName
	C$debugmusic_scene.c$178$1_0$242	= .
	.globl	C$debugmusic_scene.c$178$1_0$242
;src/scenes/debugmusic_scene.c:178: }
	C$debugmusic_scene.c$178$1_0$242	= .
	.globl	C$debugmusic_scene.c$178$1_0$242
	XG$drawDebugMusicScene$0$0	= .
	.globl	XG$drawDebugMusicScene$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)

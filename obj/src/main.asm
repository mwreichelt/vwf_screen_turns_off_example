;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _TMAInterruptHandler
	.globl _VBlankHandler
	.globl _drawdebug_fontsScene
	.globl _handledebug_fontsUpdate
	.globl _initializedebug_fontsScene
	.globl _debug_fontsTeardown
	.globl _drawDebugMusicScene
	.globl _handleDebugMusicUpdate
	.globl _initializeDebugMusicScene
	.globl _debugMusicTeardown
	.globl _drawDebugScene
	.globl _handleDebugUpdate
	.globl _initializeDebugScene
	.globl _debugSceneTeardown
	.globl _music_play_isr
	.globl _sfx_play_isr
	.globl _vwf_activate_font
	.globl _vwf_load_font
	.globl _vwf_set_destination
	.globl _mainmenuSceneTeardown
	.globl _drawMainmenuScene
	.globl _handleMainmenuUpdate
	.globl _initializeMainmenuScene
	.globl _handleTitlescreenUpdate
	.globl _drawTitlescreen
	.globl _loadTitlescreenGraphics
	.globl _initarand
	.globl _display_off
	.globl _wait_vbl_done
	.globl _set_interrupts
	.globl _joypad
	.globl _add_low_priority_TIM
	.globl _add_VBL
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
	G$VBlankHandler$0$0	= .
	.globl	G$VBlankHandler$0$0
	C$main.c$55$0_0$227	= .
	.globl	C$main.c$55$0_0$227
;src/main.c:55: void VBlankHandler() {
;	---------------------------------
; Function VBlankHandler
; ---------------------------------
_VBlankHandler::
	C$main.c$57$1_0$227	= .
	.globl	C$main.c$57$1_0$227
;src/main.c:57: if(MUSIC_TOGGLE > 0) {
	ld	a, (#_MUSIC_TOGGLE)
	or	a, a
	jr	Z, 00102$
	C$main.c$58$2_0$228	= .
	.globl	C$main.c$58$2_0$228
;src/main.c:58: music_play_isr();
	call	_music_play_isr
00102$:
	C$main.c$65$1_0$227	= .
	.globl	C$main.c$65$1_0$227
;src/main.c:65: FRAME_COUNTER++;
	ld	hl, #_FRAME_COUNTER
	inc	(hl)
	C$main.c$66$1_0$227	= .
	.globl	C$main.c$66$1_0$227
;src/main.c:66: if(FRAME_COUNTER == ANIMATION_TICK_SPEED) { //Set up our "animation ticks"
	ld	a, (hl)
	ld	hl, #_ANIMATION_TICK_SPEED
	sub	a, (hl)
	ret	NZ
	C$main.c$67$2_0$229	= .
	.globl	C$main.c$67$2_0$229
;src/main.c:67: FRAME_COUNTER = 0u;
	ld	hl, #_FRAME_COUNTER
	ld	(hl), #0x00
	C$main.c$68$2_0$229	= .
	.globl	C$main.c$68$2_0$229
;src/main.c:68: ANIMATION_TICK++;
	ld	hl, #_ANIMATION_TICK
	inc	(hl)
	C$main.c$70$1_0$227	= .
	.globl	C$main.c$70$1_0$227
;src/main.c:70: }
	C$main.c$70$1_0$227	= .
	.globl	C$main.c$70$1_0$227
	XG$VBlankHandler$0$0	= .
	.globl	XG$VBlankHandler$0$0
	ret
	G$TMAInterruptHandler$0$0	= .
	.globl	G$TMAInterruptHandler$0$0
	C$main.c$72$1_0$230	= .
	.globl	C$main.c$72$1_0$230
;src/main.c:72: void TMAInterruptHandler() {
;	---------------------------------
; Function TMAInterruptHandler
; ---------------------------------
_TMAInterruptHandler::
	C$main.c$73$1_0$230	= .
	.globl	C$main.c$73$1_0$230
;src/main.c:73: sfx_play_isr();
	C$main.c$74$1_0$230	= .
	.globl	C$main.c$74$1_0$230
;src/main.c:74: }
	C$main.c$74$1_0$230	= .
	.globl	C$main.c$74$1_0$230
	XG$TMAInterruptHandler$0$0	= .
	.globl	XG$TMAInterruptHandler$0$0
	jp	_sfx_play_isr
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$78$1_0$231	= .
	.globl	C$main.c$78$1_0$231
;src/main.c:78: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$80$1_0$231	= .
	.globl	C$main.c$80$1_0$231
;src/main.c:80: LCDC_REG|=LCDCF_BG8800;
	C$main.c$81$1_0$231	= .
	.globl	C$main.c$81$1_0$231
;src/main.c:81: PREVIOUS_GAME_STATE = 255u;
	ld	hl, #_PREVIOUS_GAME_STATE
	ld	(hl), #0xff
	C$main.c$82$1_0$231	= .
	.globl	C$main.c$82$1_0$231
;src/main.c:82: GAME_STATE = STATE_TITLESCREEN;
	ld	hl, #_GAME_STATE
	ld	(hl), #0x00
	C$main.c$85$1_0$231	= .
	.globl	C$main.c$85$1_0$231
;src/main.c:85: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;include/musicmanager.h:26: music_current_track_bank = MUSIC_STOP_BANK;
	ld	hl, #_music_current_track_bank
	ld	(hl), #0xff
;include/sfxplayer.h:18: NR52_REG = SFX_CH_ENABLE, NR51_REG = 0xFF, NR50_REG = 0x77;  // enable sound
	ld	a, #0x80
	ldh	(_NR52_REG + 0), a
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
	ld	a, #0x77
	ldh	(_NR50_REG + 0), a
;include/sfxplayer.h:41: sfx_play_bank = SFX_STOP_BANK, sfx_play_sample = NULL;
	ld	hl, #_sfx_play_bank
	ld	(hl), #0xff
	xor	a, a
	ld	hl, #_sfx_play_sample
	ld	(hl+), a
	ld	(hl), a
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
	C$main.c$104$1_0$231	= .
	.globl	C$main.c$104$1_0$231
;src/main.c:104: };
	di
	C$main.c$97$2_0$232	= .
	.globl	C$main.c$97$2_0$232
;src/main.c:97: add_VBL(VBlankHandler);
	ld	de, #_VBlankHandler
	push	de
	call	_add_VBL
	pop	hl
;include/musicmanager.h:21: TMA_REG = ((_cpu == CGB_TYPE) && (*(UBYTE *)0x0143 & 0x80)) ? 0x80u : 0xC0u;
	ld	a, (#__cpu)
	sub	a, #0x11
	jr	NZ, 00134$
	ld	a, (#0x0143)
	rlca
	jr	NC, 00134$
	ld	bc, #0x0080
	jr	00135$
00134$:
	ld	bc, #0x00c0
00135$:
	ld	a, c
	ldh	(_TMA_REG + 0), a
;include/musicmanager.h:22: TAC_REG = 0x07u;
	ld	a, #0x07
	ldh	(_TAC_REG + 0), a
	C$main.c$101$2_0$232	= .
	.globl	C$main.c$101$2_0$232
;src/main.c:101: add_low_priority_TIM(TMAInterruptHandler);
	ld	de, #_TMAInterruptHandler
	push	de
	call	_add_low_priority_TIM
	pop	hl
	C$main.c$102$2_0$232	= .
	.globl	C$main.c$102$2_0$232
;src/main.c:102: set_interrupts(IE_REG | TIM_IFLAG);
	ldh	a, (_IE_REG + 0)
	set	2, a
	push	af
	inc	sp
	call	_set_interrupts
	inc	sp
	ei
	C$main.c$116$1_0$231	= .
	.globl	C$main.c$116$1_0$231
;src/main.c:116: vwf_set_destination(VWF_RENDER_BKG);
	xor	a, a
	call	_vwf_set_destination
	C$main.c$118$1_0$231	= .
	.globl	C$main.c$118$1_0$231
;src/main.c:118: vwf_load_font(FONT_VWF_PARAGRAPH, Font_CoCa_GB, BANK(Font_CoCa_GB));
	ld	b, #<(___bank_Font_CoCa_GB)
	push	bc
	inc	sp
	ld	de, #_Font_CoCa_GB
	xor	a, a
	call	_vwf_load_font
	C$main.c$119$1_0$231	= .
	.globl	C$main.c$119$1_0$231
;src/main.c:119: vwf_load_font(FONT_VWF_CONDENSED, Font_condensed, BANK(Font_condensed));
	ld	b, #<(___bank_Font_condensed)
	push	bc
	inc	sp
	ld	de, #_Font_condensed
	ld	a, #0x01
	call	_vwf_load_font
	C$main.c$120$1_0$231	= .
	.globl	C$main.c$120$1_0$231
;src/main.c:120: vwf_load_font(FONT_VWF_MINIMAL_S, Font_Minimal3x5, BANK(Font_Minimal3x5));
	ld	b, #<(___bank_Font_Minimal3x5)
	push	bc
	inc	sp
	ld	de, #_Font_Minimal3x5
	ld	a, #0x02
	call	_vwf_load_font
	C$main.c$121$1_0$231	= .
	.globl	C$main.c$121$1_0$231
;src/main.c:121: vwf_load_font(FONT_VWF_MINIMAL_L, Font_Minimal5x7, BANK(Font_Minimal5x7));
	ld	b, #<(___bank_Font_Minimal5x7)
	push	bc
	inc	sp
	ld	de, #_Font_Minimal5x7
	ld	a, #0x03
	call	_vwf_load_font
	C$main.c$122$1_0$231	= .
	.globl	C$main.c$122$1_0$231
;src/main.c:122: vwf_activate_font(0);
	xor	a, a
	call	_vwf_activate_font
	C$main.c$125$1_0$231	= .
	.globl	C$main.c$125$1_0$231
;src/main.c:125: while(1) {
00125$:
	C$main.c$127$2_0$233	= .
	.globl	C$main.c$127$2_0$233
;src/main.c:127: JOYPAD_PREVIOUS = JOYPAD_CURRENT;
	ld	a, (#_JOYPAD_CURRENT)
	ld	(#_JOYPAD_PREVIOUS),a
	C$main.c$128$2_0$233	= .
	.globl	C$main.c$128$2_0$233
;src/main.c:128: JOYPAD_CURRENT = joypad();
	call	_joypad
	ld	(#_JOYPAD_CURRENT),a
	C$main.c$130$2_0$233	= .
	.globl	C$main.c$130$2_0$233
;src/main.c:130: if(PREVIOUS_GAME_STATE != GAME_STATE) {
	ld	a, (#_PREVIOUS_GAME_STATE)
	ld	hl, #_GAME_STATE
	sub	a, (hl)
	jp	Z,00116$
	C$main.c$132$3_0$234	= .
	.globl	C$main.c$132$3_0$234
;src/main.c:132: DISPLAY_OFF;
	call	_display_off
	C$main.c$135$3_0$234	= .
	.globl	C$main.c$135$3_0$234
;src/main.c:135: SCENE_SUBMODE = SUBMODE_DEFAULT;
	ld	hl, #_SCENE_SUBMODE
	ld	(hl), #0x00
	C$main.c$137$3_0$234	= .
	.globl	C$main.c$137$3_0$234
;src/main.c:137: switch(PREVIOUS_GAME_STATE) {
	ld	a, (#_PREVIOUS_GAME_STATE)
	or	a, a
	jr	Z, 00102$
	ld	a, (#_PREVIOUS_GAME_STATE)
	sub	a, #0x08
	jr	Z, 00101$
	ld	a, (#_PREVIOUS_GAME_STATE)
	sub	a, #0x09
	jr	Z, 00103$
	ld	a, (#_PREVIOUS_GAME_STATE)
	sub	a, #0x0a
	jr	Z, 00104$
	ld	a, (#_PREVIOUS_GAME_STATE)
	sub	a, #0x14
	jr	Z, 00105$
	jr	00107$
	C$main.c$138$4_0$235	= .
	.globl	C$main.c$138$4_0$235
;src/main.c:138: case STATE_MAINMENU:
00101$:
	C$main.c$140$4_0$235	= .
	.globl	C$main.c$140$4_0$235
;src/main.c:140: RNG_SEED |= (uint16_t)DIV_REG << 8;
	ldh	a, (_DIV_REG + 0)
	ld	c, a
	xor	a, a
	ld	hl, #_RNG_SEED
	or	a, (hl)
	ld	(hl+), a
	ld	a, c
	or	a, (hl)
	C$main.c$141$4_0$235	= .
	.globl	C$main.c$141$4_0$235
;src/main.c:141: initarand(RNG_SEED);
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	call	_initarand
	pop	hl
	C$main.c$142$4_0$235	= .
	.globl	C$main.c$142$4_0$235
;src/main.c:142: mainmenuSceneTeardown();
	call	_mainmenuSceneTeardown
	C$main.c$143$4_0$235	= .
	.globl	C$main.c$143$4_0$235
;src/main.c:143: break;
	jr	00107$
	C$main.c$144$4_0$235	= .
	.globl	C$main.c$144$4_0$235
;src/main.c:144: case STATE_TITLESCREEN:
00102$:
	C$main.c$146$4_0$235	= .
	.globl	C$main.c$146$4_0$235
;src/main.c:146: RNG_SEED = DIV_REG;
	ldh	a, (_DIV_REG + 0)
	ld	hl, #_RNG_SEED
	ld	(hl+), a
	ld	(hl), #0x00
	C$main.c$147$4_0$235	= .
	.globl	C$main.c$147$4_0$235
;src/main.c:147: break;
	jr	00107$
	C$main.c$148$4_0$235	= .
	.globl	C$main.c$148$4_0$235
;src/main.c:148: case STATE_DEBUGROOM:
00103$:
	C$main.c$149$4_0$235	= .
	.globl	C$main.c$149$4_0$235
;src/main.c:149: debugSceneTeardown();
	call	_debugSceneTeardown
	C$main.c$150$4_0$235	= .
	.globl	C$main.c$150$4_0$235
;src/main.c:150: break;
	jr	00107$
	C$main.c$151$4_0$235	= .
	.globl	C$main.c$151$4_0$235
;src/main.c:151: case STATE_DEBUG_MUSIC:
00104$:
	C$main.c$152$4_0$235	= .
	.globl	C$main.c$152$4_0$235
;src/main.c:152: debugMusicTeardown();
	call	_debugMusicTeardown
	C$main.c$153$4_0$235	= .
	.globl	C$main.c$153$4_0$235
;src/main.c:153: break;
	jr	00107$
	C$main.c$154$4_0$235	= .
	.globl	C$main.c$154$4_0$235
;src/main.c:154: case STATE_DEBUG_TEXT:
00105$:
	C$main.c$155$4_0$235	= .
	.globl	C$main.c$155$4_0$235
;src/main.c:155: debug_fontsTeardown();
	call	_debug_fontsTeardown
	C$main.c$159$3_0$234	= .
	.globl	C$main.c$159$3_0$234
;src/main.c:159: }
00107$:
	C$main.c$162$3_0$234	= .
	.globl	C$main.c$162$3_0$234
;src/main.c:162: switch(GAME_STATE) {
	ld	a, (#_GAME_STATE)
	or	a, a
	jr	Z, 00108$
	ld	a, (#_GAME_STATE)
	sub	a, #0x08
	jr	Z, 00109$
	ld	a, (#_GAME_STATE)
	sub	a, #0x09
	jr	Z, 00110$
	ld	a, (#_GAME_STATE)
	sub	a, #0x0a
	jr	Z, 00111$
	ld	a, (#_GAME_STATE)
	sub	a, #0x14
	jr	Z, 00112$
	jr	00114$
	C$main.c$163$4_0$236	= .
	.globl	C$main.c$163$4_0$236
;src/main.c:163: case STATE_TITLESCREEN:
00108$:
	C$main.c$164$4_0$236	= .
	.globl	C$main.c$164$4_0$236
;src/main.c:164: SWITCH_ROM(BANK(titlescreen_scene_bank));
	ld	a, #<(___bank_titlescreen_scene_bank)
	ldh	(__current_bank + 0), a
	ld	a, #<(___bank_titlescreen_scene_bank)
	ld	(#0x2000),a
	C$main.c$165$4_0$236	= .
	.globl	C$main.c$165$4_0$236
;src/main.c:165: loadTitlescreenGraphics();
	call	_loadTitlescreenGraphics
	C$main.c$166$4_0$236	= .
	.globl	C$main.c$166$4_0$236
;src/main.c:166: break;
	jr	00114$
	C$main.c$167$4_0$236	= .
	.globl	C$main.c$167$4_0$236
;src/main.c:167: case STATE_MAINMENU:
00109$:
	C$main.c$168$4_0$236	= .
	.globl	C$main.c$168$4_0$236
;src/main.c:168: SWITCH_ROM(BANK(mainmenu_scene_bank));
	ld	a, #<(___bank_mainmenu_scene_bank)
	ldh	(__current_bank + 0), a
	ld	a, #<(___bank_mainmenu_scene_bank)
	ld	(#0x2000),a
	C$main.c$169$4_0$236	= .
	.globl	C$main.c$169$4_0$236
;src/main.c:169: initializeMainmenuScene();
	call	_initializeMainmenuScene
	C$main.c$170$4_0$236	= .
	.globl	C$main.c$170$4_0$236
;src/main.c:170: break;
	jr	00114$
	C$main.c$171$4_0$236	= .
	.globl	C$main.c$171$4_0$236
;src/main.c:171: case STATE_DEBUGROOM:
00110$:
	C$main.c$172$4_0$236	= .
	.globl	C$main.c$172$4_0$236
;src/main.c:172: SWITCH_ROM(BANK(debug_scene_bank));
	ld	a, #<(___bank_debug_scene_bank)
	ldh	(__current_bank + 0), a
	ld	a, #<(___bank_debug_scene_bank)
	ld	(#0x2000),a
	C$main.c$173$4_0$236	= .
	.globl	C$main.c$173$4_0$236
;src/main.c:173: initializeDebugScene();
	call	_initializeDebugScene
	C$main.c$174$4_0$236	= .
	.globl	C$main.c$174$4_0$236
;src/main.c:174: break;
	jr	00114$
	C$main.c$175$4_0$236	= .
	.globl	C$main.c$175$4_0$236
;src/main.c:175: case STATE_DEBUG_MUSIC:
00111$:
	C$main.c$176$4_0$236	= .
	.globl	C$main.c$176$4_0$236
;src/main.c:176: SWITCH_ROM(BANK(debugmusic_scene_bank));
	ld	a, #<(___bank_debugmusic_scene_bank)
	ldh	(__current_bank + 0), a
	ld	a, #<(___bank_debugmusic_scene_bank)
	ld	(#0x2000),a
	C$main.c$177$4_0$236	= .
	.globl	C$main.c$177$4_0$236
;src/main.c:177: initializeDebugMusicScene();
	call	_initializeDebugMusicScene
	C$main.c$178$4_0$236	= .
	.globl	C$main.c$178$4_0$236
;src/main.c:178: break;
	jr	00114$
	C$main.c$179$4_0$236	= .
	.globl	C$main.c$179$4_0$236
;src/main.c:179: case STATE_DEBUG_TEXT:
00112$:
	C$main.c$180$4_0$236	= .
	.globl	C$main.c$180$4_0$236
;src/main.c:180: SWITCH_ROM(BANK(debug_fonts_scene_bank));
	ld	a, #<(___bank_debug_fonts_scene_bank)
	ldh	(__current_bank + 0), a
	ld	a, #<(___bank_debug_fonts_scene_bank)
	ld	(#0x2000),a
	C$main.c$181$4_0$236	= .
	.globl	C$main.c$181$4_0$236
;src/main.c:181: initializedebug_fontsScene();
	call	_initializedebug_fontsScene
	C$main.c$185$3_0$234	= .
	.globl	C$main.c$185$3_0$234
;src/main.c:185: }
00114$:
	C$main.c$186$3_0$234	= .
	.globl	C$main.c$186$3_0$234
;src/main.c:186: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
	C$main.c$188$3_0$234	= .
	.globl	C$main.c$188$3_0$234
;src/main.c:188: PREVIOUS_GAME_STATE = GAME_STATE;
	ld	a, (#_GAME_STATE)
	ld	(#_PREVIOUS_GAME_STATE),a
00116$:
	C$main.c$192$2_0$233	= .
	.globl	C$main.c$192$2_0$233
;src/main.c:192: switch(GAME_STATE) {
	ld	a, (#_GAME_STATE)
	or	a, a
	jr	Z, 00117$
	ld	a, (#_GAME_STATE)
	sub	a, #0x08
	jr	Z, 00118$
	ld	a, (#_GAME_STATE)
	sub	a, #0x09
	jr	Z, 00119$
	ld	a, (#_GAME_STATE)
	sub	a, #0x0a
	jr	Z, 00120$
	ld	a, (#_GAME_STATE)
	sub	a, #0x14
	jr	Z, 00121$
	jr	00123$
	C$main.c$193$3_0$237	= .
	.globl	C$main.c$193$3_0$237
;src/main.c:193: case STATE_TITLESCREEN:
00117$:
	C$main.c$194$3_0$237	= .
	.globl	C$main.c$194$3_0$237
;src/main.c:194: handleTitlescreenUpdate();
	call	_handleTitlescreenUpdate
	C$main.c$195$3_0$237	= .
	.globl	C$main.c$195$3_0$237
;src/main.c:195: drawTitlescreen();
	call	_drawTitlescreen
	C$main.c$196$3_0$237	= .
	.globl	C$main.c$196$3_0$237
;src/main.c:196: break;
	jr	00123$
	C$main.c$197$3_0$237	= .
	.globl	C$main.c$197$3_0$237
;src/main.c:197: case STATE_MAINMENU:
00118$:
	C$main.c$198$3_0$237	= .
	.globl	C$main.c$198$3_0$237
;src/main.c:198: handleMainmenuUpdate();
	call	_handleMainmenuUpdate
	C$main.c$199$3_0$237	= .
	.globl	C$main.c$199$3_0$237
;src/main.c:199: drawMainmenuScene();
	call	_drawMainmenuScene
	C$main.c$200$3_0$237	= .
	.globl	C$main.c$200$3_0$237
;src/main.c:200: break;
	jr	00123$
	C$main.c$201$3_0$237	= .
	.globl	C$main.c$201$3_0$237
;src/main.c:201: case STATE_DEBUGROOM:
00119$:
	C$main.c$202$3_0$237	= .
	.globl	C$main.c$202$3_0$237
;src/main.c:202: handleDebugUpdate();
	call	_handleDebugUpdate
	C$main.c$203$3_0$237	= .
	.globl	C$main.c$203$3_0$237
;src/main.c:203: drawDebugScene();
	call	_drawDebugScene
	C$main.c$204$3_0$237	= .
	.globl	C$main.c$204$3_0$237
;src/main.c:204: break;
	jr	00123$
	C$main.c$205$3_0$237	= .
	.globl	C$main.c$205$3_0$237
;src/main.c:205: case STATE_DEBUG_MUSIC:
00120$:
	C$main.c$206$3_0$237	= .
	.globl	C$main.c$206$3_0$237
;src/main.c:206: handleDebugMusicUpdate();
	call	_handleDebugMusicUpdate
	C$main.c$207$3_0$237	= .
	.globl	C$main.c$207$3_0$237
;src/main.c:207: drawDebugMusicScene();
	call	_drawDebugMusicScene
	C$main.c$208$3_0$237	= .
	.globl	C$main.c$208$3_0$237
;src/main.c:208: break;
	jr	00123$
	C$main.c$209$3_0$237	= .
	.globl	C$main.c$209$3_0$237
;src/main.c:209: case STATE_DEBUG_TEXT:
00121$:
	C$main.c$210$3_0$237	= .
	.globl	C$main.c$210$3_0$237
;src/main.c:210: handledebug_fontsUpdate();
	call	_handledebug_fontsUpdate
	C$main.c$211$3_0$237	= .
	.globl	C$main.c$211$3_0$237
;src/main.c:211: drawdebug_fontsScene();
	call	_drawdebug_fontsScene
	C$main.c$215$2_0$233	= .
	.globl	C$main.c$215$2_0$233
;src/main.c:215: }
00123$:
	C$main.c$218$2_0$233	= .
	.globl	C$main.c$218$2_0$233
;src/main.c:218: wait_vbl_done();
	call	_wait_vbl_done
	C$main.c$220$1_0$231	= .
	.globl	C$main.c$220$1_0$231
;src/main.c:220: }
	C$main.c$220$1_0$231	= .
	.globl	C$main.c$220$1_0$231
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jp	00125$
	.area _CODE_0
	.area _INITIALIZER
	.area _CABS (ABS)

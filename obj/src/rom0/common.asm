;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (Linux)
;--------------------------------------------------------
	.module common
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _uitoa
	.globl _strlen
	.globl _strcat
	.globl _memcpy
	.globl _strcpy
	.globl _set_win_tile_xy
	.globl _set_bkg_tile_xy
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _BLANK_SCREEN_MAP
	.globl _BANK_BACKUP
	.globl _RENDER_TARGET
	.globl _MUSIC_TOGGLE
	.globl _ANIMATION_TICK_SPEED
	.globl _ANIMATION_TICK
	.globl _FRAME_COUNTER
	.globl _TEMP_VAR_F
	.globl _TEMP_VAR_E
	.globl _TEMP_VAR_D
	.globl _TEMP_VAR_C
	.globl _TEMP_VAR_B
	.globl _TEMP_VAR_A
	.globl _RNG_8
	.globl _CURSOR_INDEX_PREV
	.globl _CURSOR_INDEX
	.globl _LOOP_LIMIT
	.globl _LOOP_INDEX
	.globl _JOYPAD_PREVIOUS
	.globl _JOYPAD_CURRENT
	.globl _SCENE_SUBMODE_PREV
	.globl _SCENE_SUBMODE
	.globl _PREVIOUS_GAME_STATE
	.globl _GAME_STATE
	.globl _ITOA_STRING
	.globl _VAR_SFX_DATA
	.globl _VAR_MUSIC_DATA
	.globl _TEMP_STRING
	.globl _RNG_SEED
	.globl _BLANK_SCREEN_TILES
	.globl _drawTextBkg
	.globl _makeLeadingZeroString
	.globl _drawWindowBorder
	.globl _set_banked_data
	.globl _cpy_banked_data
	.globl _set_banked_tiles
	.globl _set_based_banked_tiles
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$RNG_SEED$0_0$0==.
_RNG_SEED::
	.ds 2
G$TEMP_STRING$0_0$0==.
_TEMP_STRING::
	.ds 16
G$VAR_MUSIC_DATA$0_0$0==.
_VAR_MUSIC_DATA::
	.ds 17
G$VAR_SFX_DATA$0_0$0==.
_VAR_SFX_DATA::
	.ds 18
G$ITOA_STRING$0_0$0==.
_ITOA_STRING::
	.ds 4
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
G$GAME_STATE$0_0$0==.
_GAME_STATE::
	.ds 1
G$PREVIOUS_GAME_STATE$0_0$0==.
_PREVIOUS_GAME_STATE::
	.ds 1
G$SCENE_SUBMODE$0_0$0==.
_SCENE_SUBMODE::
	.ds 1
G$SCENE_SUBMODE_PREV$0_0$0==.
_SCENE_SUBMODE_PREV::
	.ds 1
G$JOYPAD_CURRENT$0_0$0==.
_JOYPAD_CURRENT::
	.ds 1
G$JOYPAD_PREVIOUS$0_0$0==.
_JOYPAD_PREVIOUS::
	.ds 1
G$LOOP_INDEX$0_0$0==.
_LOOP_INDEX::
	.ds 1
G$LOOP_LIMIT$0_0$0==.
_LOOP_LIMIT::
	.ds 1
G$CURSOR_INDEX$0_0$0==.
_CURSOR_INDEX::
	.ds 1
G$CURSOR_INDEX_PREV$0_0$0==.
_CURSOR_INDEX_PREV::
	.ds 1
G$RNG_8$0_0$0==.
_RNG_8::
	.ds 1
G$TEMP_VAR_A$0_0$0==.
_TEMP_VAR_A::
	.ds 1
G$TEMP_VAR_B$0_0$0==.
_TEMP_VAR_B::
	.ds 1
G$TEMP_VAR_C$0_0$0==.
_TEMP_VAR_C::
	.ds 1
G$TEMP_VAR_D$0_0$0==.
_TEMP_VAR_D::
	.ds 1
G$TEMP_VAR_E$0_0$0==.
_TEMP_VAR_E::
	.ds 1
G$TEMP_VAR_F$0_0$0==.
_TEMP_VAR_F::
	.ds 1
G$FRAME_COUNTER$0_0$0==.
_FRAME_COUNTER::
	.ds 1
G$ANIMATION_TICK$0_0$0==.
_ANIMATION_TICK::
	.ds 1
G$ANIMATION_TICK_SPEED$0_0$0==.
_ANIMATION_TICK_SPEED::
	.ds 1
G$MUSIC_TOGGLE$0_0$0==.
_MUSIC_TOGGLE::
	.ds 1
G$RENDER_TARGET$0_0$0==.
_RENDER_TARGET::
	.ds 1
G$BANK_BACKUP$0_0$0==.
_BANK_BACKUP::
	.ds 1
G$BLANK_SCREEN_MAP$0_0$0==.
_BLANK_SCREEN_MAP::
	.ds 360
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
	G$set_banked_data$0$0	= .
	.globl	G$set_banked_data$0$0
	C$common.c$136$1_0$169	= .
	.globl	C$common.c$136$1_0$169
;src/rom0/common.c:136: void set_banked_data(uint8_t first_tile, uint8_t nb_tiles, const uint8_t *data, uint8_t bank) NONBANKED {
;	---------------------------------
; Function set_banked_data
; ---------------------------------
_set_banked_data::
	dec	sp
	ld	b, a
	ldhl	sp,	#0
	ld	(hl), e
	C$common.c$137$2_0$169	= .
	.globl	C$common.c$137$2_0$169
;src/rom0/common.c:137: uint8_t _save = _current_bank;
	ldh	a, (__current_bank + 0)
	ld	c, a
	C$common.c$138$1_0$169	= .
	.globl	C$common.c$138$1_0$169
;src/rom0/common.c:138: SWITCH_ROM(bank);
	ldhl	sp,	#5
	ld	a, (hl)
	ldh	(__current_bank + 0), a
	ld	de, #0x2000
	C$common.c$139$1_0$169	= .
	.globl	C$common.c$139$1_0$169
;src/rom0/common.c:139: set_bkg_data(first_tile, nb_tiles, data);
	ld	a, (hl-)
	dec	hl
	ld	(de), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ldhl	sp,	#2
	ld	a, (hl)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_set_bkg_data
	add	sp, #4
	C$common.c$140$1_0$169	= .
	.globl	C$common.c$140$1_0$169
;src/rom0/common.c:140: SWITCH_ROM(_save);
	ld	a, c
	ldh	(__current_bank + 0), a
	ld	hl, #0x2000
	ld	(hl), c
	C$common.c$141$1_0$169	= .
	.globl	C$common.c$141$1_0$169
;src/rom0/common.c:141: }
	inc	sp
	pop	hl
	add	sp, #3
	jp	(hl)
	G$cpy_banked_data$0$0	= .
	.globl	G$cpy_banked_data$0$0
	C$common.c$150$1_0$171	= .
	.globl	C$common.c$150$1_0$171
;src/rom0/common.c:150: void cpy_banked_data(void * dest, const void * src, size_t len, uint8_t bank) NONBANKED {
;	---------------------------------
; Function cpy_banked_data
; ---------------------------------
_cpy_banked_data::
	add	sp, #-3
	ldhl	sp,	#1
	ld	(hl), e
	inc	hl
	ld	(hl), d
	C$common.c$151$2_0$171	= .
	.globl	C$common.c$151$2_0$171
;src/rom0/common.c:151: uint8_t _save = _current_bank;
	dec	hl
	dec	hl
	ldh	a, (__current_bank + 0)
	ld	(hl), a
	C$common.c$152$1_0$171	= .
	.globl	C$common.c$152$1_0$171
;src/rom0/common.c:152: SWITCH_ROM(bank);
	ldhl	sp,	#7
	ld	a, (hl)
	ldh	(__current_bank + 0), a
	ld	de, #0x2000
	C$common.c$153$1_0$171	= .
	.globl	C$common.c$153$1_0$171
;src/rom0/common.c:153: memcpy(dest, src, len);
	ld	a, (hl-)
	dec	hl
	ld	(de), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ldhl	sp,	#3
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_memcpy
	C$common.c$154$1_0$171	= .
	.globl	C$common.c$154$1_0$171
;src/rom0/common.c:154: SWITCH_ROM(_save);
	ldhl	sp,	#0
	ld	a, (hl)
	ldh	(__current_bank + 0), a
	ld	de, #0x2000
	ld	a, (hl)
	ld	(de), a
	C$common.c$155$1_0$171	= .
	.globl	C$common.c$155$1_0$171
;src/rom0/common.c:155: }
	add	sp, #3
	pop	hl
	add	sp, #3
	jp	(hl)
	G$set_banked_tiles$0$0	= .
	.globl	G$set_banked_tiles$0$0
	C$common.c$166$1_0$173	= .
	.globl	C$common.c$166$1_0$173
;src/rom0/common.c:166: void set_banked_tiles(uint8_t x_pos, uint8_t y_pos, uint8_t width, uint8_t height, const uint8_t * tile_data, uint8_t bank) NONBANKED {
;	---------------------------------
; Function set_banked_tiles
; ---------------------------------
_set_banked_tiles::
	dec	sp
	ld	b, a
	ldhl	sp,	#0
	ld	(hl), e
	C$common.c$167$2_0$173	= .
	.globl	C$common.c$167$2_0$173
;src/rom0/common.c:167: uint8_t _save = _current_bank;
	ldh	a, (__current_bank + 0)
	ld	c, a
	C$common.c$168$1_0$173	= .
	.globl	C$common.c$168$1_0$173
;src/rom0/common.c:168: SWITCH_ROM(bank);
	ldhl	sp,	#7
	ld	a, (hl)
	ldh	(__current_bank + 0), a
	ld	de, #0x2000
	C$common.c$169$1_0$173	= .
	.globl	C$common.c$169$1_0$173
;src/rom0/common.c:169: set_bkg_tiles(x_pos, y_pos, width, height, tile_data);
	ld	a, (hl-)
	dec	hl
	ld	(de), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	dec	hl
	ld	d, a
	push	de
	ld	a, (hl-)
	ld	d, a
	ld	e, (hl)
	push	de
	ldhl	sp,	#4
	ld	a, (hl)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
	C$common.c$170$1_0$173	= .
	.globl	C$common.c$170$1_0$173
;src/rom0/common.c:170: SWITCH_ROM(_save);
	ld	a, c
	ldh	(__current_bank + 0), a
	ld	hl, #0x2000
	ld	(hl), c
	C$common.c$171$1_0$173	= .
	.globl	C$common.c$171$1_0$173
;src/rom0/common.c:171: }
	inc	sp
	pop	hl
	add	sp, #5
	jp	(hl)
	G$set_based_banked_tiles$0$0	= .
	.globl	G$set_based_banked_tiles$0$0
	C$common.c$183$1_0$175	= .
	.globl	C$common.c$183$1_0$175
;src/rom0/common.c:183: void set_based_banked_tiles(uint8_t x_pos, uint8_t y_pos, uint8_t width, uint8_t height, const uint8_t * tile_data, uint8_t bank, uint8_t base_tile) NONBANKED {
;	---------------------------------
; Function set_based_banked_tiles
; ---------------------------------
_set_based_banked_tiles::
	dec	sp
	dec	sp
	ldhl	sp,	#1
	ld	(hl-), a
	ld	(hl), e
	C$common.c$184$2_0$175	= .
	.globl	C$common.c$184$2_0$175
;src/rom0/common.c:184: uint8_t _save = _current_bank;
	ldh	a, (__current_bank + 0)
	ld	c, a
	C$common.c$185$1_0$175	= .
	.globl	C$common.c$185$1_0$175
;src/rom0/common.c:185: SWITCH_ROM(bank);
	ldhl	sp,	#8
	ld	a, (hl)
	ldh	(__current_bank + 0), a
	ld	de, #0x2000
;src/rom0/common.c:186: set_bkg_based_tiles(x_pos, y_pos, width, height, tile_data, base_tile);
	ld	a, (hl+)
	ld	(de), a
	ld	a, (hl)
	ld	(#__map_tile_offset),a
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	dec	hl
	ld	d, a
	ld	a, (hl-)
	ld	b, a
	ld	a, (hl)
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1072: set_bkg_tiles(x, y, w, h, tiles);
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	d, a
	ld	e, (hl)
	push	de
	call	_set_bkg_tiles
	add	sp, #6
;/home/mreichelt/workspace/gameboy_development/gbdk/include/gb/gb.h:1073: _map_tile_offset = 0;
	ld	hl, #__map_tile_offset
	ld	(hl), #0x00
	C$common.c$187$1_0$175	= .
	.globl	C$common.c$187$1_0$175
;src/rom0/common.c:187: SWITCH_ROM(_save);
	ld	a, c
	ldh	(__current_bank + 0), a
	ld	hl, #0x2000
	ld	(hl), c
	C$common.c$188$1_0$175	= .
	.globl	C$common.c$188$1_0$175
;src/rom0/common.c:188: }
	inc	sp
	inc	sp
	pop	hl
	add	sp, #6
	jp	(hl)
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_0
	G$drawTextBkg$0$0	= .
	.globl	G$drawTextBkg$0$0
	C$common.c$56$0_0$153	= .
	.globl	C$common.c$56$0_0$153
;src/rom0/common.c:56: void drawTextBkg(uint8_t x, uint8_t y, unsigned char* const text)
;	---------------------------------
; Function drawTextBkg
; ---------------------------------
_drawTextBkg::
	ld	c, a
	ld	b, e
	C$common.c$58$1_0$153	= .
	.globl	C$common.c$58$1_0$153
;src/rom0/common.c:58: set_bkg_tiles(x, y, strlen((char *)text), 1, text);
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	call	_strlen
	pop	hl
	ld	a, e
	ldhl	sp,	#2
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	push	de
	ld	h, #0x01
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, c
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
	C$common.c$59$1_0$153	= .
	.globl	C$common.c$59$1_0$153
;src/rom0/common.c:59: }
	pop	hl
	pop	af
	jp	(hl)
G$BLANK_SCREEN_TILES$0_0$0 == .
_BLANK_SCREEN_TILES:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	G$makeLeadingZeroString$0$0	= .
	.globl	G$makeLeadingZeroString$0$0
	C$common.c$64$1_0$155	= .
	.globl	C$common.c$64$1_0$155
;src/rom0/common.c:64: void makeLeadingZeroString(uint8_t value, unsigned char finalStr[4]) {
;	---------------------------------
; Function makeLeadingZeroString
; ---------------------------------
_makeLeadingZeroString::
	add	sp, #-7
	ldhl	sp,	#6
	ld	(hl-), a
	dec	hl
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$common.c$65$2_0$155	= .
	.globl	C$common.c$65$2_0$155
;src/rom0/common.c:65: unsigned char val[4] = "000";
	ldhl	sp,	#0
	ld	a,#0x30
	ld	(hl+),a
	ld	(hl+), a
	ld	a, #0x30
	ld	(hl+), a
	ld	(hl), #0x00
	C$common.c$66$1_0$155	= .
	.globl	C$common.c$66$1_0$155
;src/rom0/common.c:66: uitoa(value, val, 10);
	ldhl	sp,	#6
	ld	c, (hl)
	ld	e, #0x00
	ld	a, #0x0a
	push	af
	inc	sp
	ld	hl, #1
	add	hl, sp
	push	hl
	ld	b, e
	push	bc
	call	_uitoa
	add	sp, #5
	C$common.c$67$1_0$155	= .
	.globl	C$common.c$67$1_0$155
;src/rom0/common.c:67: if(value < 10u) {
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x0a
	jr	NC, 00104$
	C$common.c$68$2_0$156	= .
	.globl	C$common.c$68$2_0$156
;src/rom0/common.c:68: strcpy(finalStr, "00");
	dec	hl
	dec	hl
	ld	de, #___str_1
	push	de
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	call	_strcpy
	add	sp, #4
	jr	00105$
00104$:
	C$common.c$69$1_0$155	= .
	.globl	C$common.c$69$1_0$155
;src/rom0/common.c:69: } else if (value < 100u) {
	ldhl	sp,	#6
	ld	a, (hl)
	sub	a, #0x64
	jr	NC, 00105$
	C$common.c$70$2_0$157	= .
	.globl	C$common.c$70$2_0$157
;src/rom0/common.c:70: strcpy(finalStr, "0");
	dec	hl
	dec	hl
	ld	de, #___str_2
	push	de
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	call	_strcpy
	add	sp, #4
00105$:
	C$common.c$72$1_0$155	= .
	.globl	C$common.c$72$1_0$155
;src/rom0/common.c:72: strcat(finalStr, val);
	ld	hl, #0
	add	hl, sp
	ld	c, l
	ld	b, h
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	call	_strcat
	C$common.c$73$1_0$155	= .
	.globl	C$common.c$73$1_0$155
;src/rom0/common.c:73: }
	add	sp, #7
	C$common.c$73$1_0$155	= .
	.globl	C$common.c$73$1_0$155
	XG$makeLeadingZeroString$0$0	= .
	.globl	XG$makeLeadingZeroString$0$0
	ret
Fcommon$__str_1$0_0$0 == .
___str_1:
	.ascii "00"
	.db 0x00
Fcommon$__str_2$0_0$0 == .
___str_2:
	.ascii "0"
	.db 0x00
	G$drawWindowBorder$0$0	= .
	.globl	G$drawWindowBorder$0$0
	C$common.c$84$1_0$159	= .
	.globl	C$common.c$84$1_0$159
;src/rom0/common.c:84: void drawWindowBorder(uint8_t x, uint8_t y, uint8_t w, uint8_t h) {
;	---------------------------------
; Function drawWindowBorder
; ---------------------------------
_drawWindowBorder::
	dec	sp
	dec	sp
	ld	c, a
	ld	b, e
	C$common.c$85$1_0$159	= .
	.globl	C$common.c$85$1_0$159
;src/rom0/common.c:85: uint8_t bottomY = y + h - 1u;
	ld	a, b
	ldhl	sp,	#5
	add	a, (hl)
	dec	a
	ldhl	sp,	#0
	ld	(hl), a
	C$common.c$86$1_0$159	= .
	.globl	C$common.c$86$1_0$159
;src/rom0/common.c:86: uint8_t rightX = x + w - 1u;
	ld	a, c
	ldhl	sp,	#4
	add	a, (hl)
	dec	a
	ldhl	sp,	#1
	ld	(hl), a
	C$common.c$89$1_0$159	= .
	.globl	C$common.c$89$1_0$159
;src/rom0/common.c:89: if(RENDER_TARGET == RENDER_TARGET_BKG) {
	ld	a, (#_RENDER_TARGET)
	or	a, a
	jr	NZ, 00102$
	C$common.c$90$2_0$160	= .
	.globl	C$common.c$90$2_0$160
;src/rom0/common.c:90: set_bkg_tile_xy(x, y, VRAM_WINDOW_BORDER_TOPLEFT);
	ld	a, #0x60
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, c
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	C$common.c$91$2_0$160	= .
	.globl	C$common.c$91$2_0$160
;src/rom0/common.c:91: set_bkg_tile_xy(rightX, y, VRAM_WINDOW_BORDER_TOPRIGHT);
	ld	a, #0x61
	push	af
	inc	sp
	push	bc
	inc	sp
	ldhl	sp,	#3
	ld	a, (hl)
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	C$common.c$92$2_0$160	= .
	.globl	C$common.c$92$2_0$160
;src/rom0/common.c:92: set_bkg_tile_xy(x, bottomY, VRAM_WINDOW_BORDER_BOTTOMLEFT);
	ld	a, #0x62
	push	af
	inc	sp
	ldhl	sp,	#1
	ld	a, (hl)
	push	af
	inc	sp
	ld	a, c
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	C$common.c$93$2_0$160	= .
	.globl	C$common.c$93$2_0$160
;src/rom0/common.c:93: set_bkg_tile_xy(rightX, bottomY, VRAM_WINDOW_BORDER_BOTTOMRIGHT);
	ld	a, #0x63
	push	af
	inc	sp
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	d, a
	ld	e, (hl)
	push	de
	call	_set_bkg_tile_xy
	add	sp, #3
	jr	00103$
00102$:
	C$common.c$95$2_0$161	= .
	.globl	C$common.c$95$2_0$161
;src/rom0/common.c:95: set_win_tile_xy(x, y, VRAM_WINDOW_BORDER_TOPLEFT);
	ld	a, #0x60
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, c
	push	af
	inc	sp
	call	_set_win_tile_xy
	add	sp, #3
	C$common.c$96$2_0$161	= .
	.globl	C$common.c$96$2_0$161
;src/rom0/common.c:96: set_win_tile_xy(rightX, y, VRAM_WINDOW_BORDER_TOPRIGHT);
	ld	a, #0x61
	push	af
	inc	sp
	push	bc
	inc	sp
	ldhl	sp,	#3
	ld	a, (hl)
	push	af
	inc	sp
	call	_set_win_tile_xy
	add	sp, #3
	C$common.c$97$2_0$161	= .
	.globl	C$common.c$97$2_0$161
;src/rom0/common.c:97: set_win_tile_xy(x, bottomY, VRAM_WINDOW_BORDER_BOTTOMLEFT);
	ld	a, #0x62
	push	af
	inc	sp
	ldhl	sp,	#1
	ld	a, (hl)
	push	af
	inc	sp
	ld	a, c
	push	af
	inc	sp
	call	_set_win_tile_xy
	add	sp, #3
	C$common.c$98$2_0$161	= .
	.globl	C$common.c$98$2_0$161
;src/rom0/common.c:98: set_win_tile_xy(rightX, bottomY, VRAM_WINDOW_BORDER_BOTTOMRIGHT);
	ld	a, #0x63
	push	af
	inc	sp
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	d, a
	ld	e, (hl)
	push	de
	call	_set_win_tile_xy
	add	sp, #3
00103$:
	C$common.c$102$1_0$159	= .
	.globl	C$common.c$102$1_0$159
;src/rom0/common.c:102: LOOP_INDEX = 1;
	ld	hl, #_LOOP_INDEX
	ld	(hl), #0x01
	C$common.c$103$1_0$159	= .
	.globl	C$common.c$103$1_0$159
;src/rom0/common.c:103: LOOP_LIMIT = w - 1u;
	ldhl	sp,	#4
	ld	a, (hl)
	dec	a
	ld	(#_LOOP_LIMIT),a
	C$common.c$104$1_0$159	= .
	.globl	C$common.c$104$1_0$159
;src/rom0/common.c:104: while(LOOP_INDEX < LOOP_LIMIT) {
00107$:
	ld	a, (#_LOOP_INDEX)
	ld	hl, #_LOOP_LIMIT
	sub	a, (hl)
	jr	NC, 00109$
	C$common.c$106$1_0$159	= .
	.globl	C$common.c$106$1_0$159
;src/rom0/common.c:106: set_bkg_tile_xy(x + LOOP_INDEX, y, VRAM_WINDOW_BORDER_TOP);
	ld	a, c
	ld	hl, #_LOOP_INDEX
	add	a, (hl)
	ld	d, a
	C$common.c$105$2_0$162	= .
	.globl	C$common.c$105$2_0$162
;src/rom0/common.c:105: if(RENDER_TARGET == RENDER_TARGET_BKG) {
	ld	a, (#_RENDER_TARGET)
	or	a, a
	jr	NZ, 00105$
	C$common.c$106$3_0$163	= .
	.globl	C$common.c$106$3_0$163
;src/rom0/common.c:106: set_bkg_tile_xy(x + LOOP_INDEX, y, VRAM_WINDOW_BORDER_TOP);
	ld	a, #0x64
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	C$common.c$107$3_0$163	= .
	.globl	C$common.c$107$3_0$163
;src/rom0/common.c:107: set_bkg_tile_xy(x + LOOP_INDEX, bottomY, VRAM_WINDOW_BORDER_BOTTOM);
	ld	a, c
	ld	hl, #_LOOP_INDEX
	add	a, (hl)
	ld	h, #0x67
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ldhl	sp,	#1
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	jr	00106$
00105$:
	C$common.c$109$3_0$164	= .
	.globl	C$common.c$109$3_0$164
;src/rom0/common.c:109: set_win_tile_xy(x + LOOP_INDEX, y, VRAM_WINDOW_BORDER_TOP);
	ld	a, #0x64
	push	af
	inc	sp
	push	bc
	inc	sp
	push	de
	inc	sp
	call	_set_win_tile_xy
	add	sp, #3
	C$common.c$110$3_0$164	= .
	.globl	C$common.c$110$3_0$164
;src/rom0/common.c:110: set_win_tile_xy(x + LOOP_INDEX, bottomY, VRAM_WINDOW_BORDER_BOTTOM);
	ld	a, c
	ld	hl, #_LOOP_INDEX
	add	a, (hl)
	ld	h, #0x67
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ldhl	sp,	#1
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_set_win_tile_xy
	add	sp, #3
00106$:
	C$common.c$112$2_0$162	= .
	.globl	C$common.c$112$2_0$162
;src/rom0/common.c:112: LOOP_INDEX++;
	ld	hl, #_LOOP_INDEX
	inc	(hl)
	jr	00107$
00109$:
	C$common.c$114$1_0$159	= .
	.globl	C$common.c$114$1_0$159
;src/rom0/common.c:114: LOOP_INDEX = 1u;
	ld	hl, #_LOOP_INDEX
	ld	(hl), #0x01
	C$common.c$115$1_0$159	= .
	.globl	C$common.c$115$1_0$159
;src/rom0/common.c:115: LOOP_LIMIT = h - 1u;
	ldhl	sp,	#5
	ld	a, (hl)
	dec	a
	ld	(#_LOOP_LIMIT),a
	C$common.c$116$1_0$159	= .
	.globl	C$common.c$116$1_0$159
;src/rom0/common.c:116: while(LOOP_INDEX < LOOP_LIMIT) {
00113$:
	ld	a, (#_LOOP_INDEX)
	ld	hl, #_LOOP_LIMIT
	sub	a, (hl)
	jr	NC, 00116$
	C$common.c$118$1_0$159	= .
	.globl	C$common.c$118$1_0$159
;src/rom0/common.c:118: set_bkg_tile_xy(x, y + LOOP_INDEX, VRAM_WINDOW_BORDER_LEFT);
	ld	a, b
	ld	hl, #_LOOP_INDEX
	add	a, (hl)
	ld	d, a
	C$common.c$117$2_0$165	= .
	.globl	C$common.c$117$2_0$165
;src/rom0/common.c:117: if(RENDER_TARGET == RENDER_TARGET_BKG) {
	ld	a, (#_RENDER_TARGET)
	or	a, a
	jr	NZ, 00111$
	C$common.c$118$3_0$166	= .
	.globl	C$common.c$118$3_0$166
;src/rom0/common.c:118: set_bkg_tile_xy(x, y + LOOP_INDEX, VRAM_WINDOW_BORDER_LEFT);
	ld	a, #0x65
	push	af
	inc	sp
	ld	e, c
	push	de
	call	_set_bkg_tile_xy
	add	sp, #3
	C$common.c$119$3_0$166	= .
	.globl	C$common.c$119$3_0$166
;src/rom0/common.c:119: set_bkg_tile_xy(rightX, y + LOOP_INDEX, VRAM_WINDOW_BORDER_RIGHT);
	ld	a, b
	ld	hl, #_LOOP_INDEX
	add	a, (hl)
	ld	h, #0x66
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	ldhl	sp,	#3
	ld	a, (hl)
	push	af
	inc	sp
	call	_set_bkg_tile_xy
	add	sp, #3
	jr	00112$
00111$:
	C$common.c$121$3_0$167	= .
	.globl	C$common.c$121$3_0$167
;src/rom0/common.c:121: set_win_tile_xy(x, y + LOOP_INDEX, VRAM_WINDOW_BORDER_LEFT);
	ld	a, #0x65
	push	af
	inc	sp
	ld	e, c
	push	de
	call	_set_win_tile_xy
	add	sp, #3
	C$common.c$122$3_0$167	= .
	.globl	C$common.c$122$3_0$167
;src/rom0/common.c:122: set_win_tile_xy(rightX, y + LOOP_INDEX, VRAM_WINDOW_BORDER_RIGHT);
	ld	a, b
	ld	hl, #_LOOP_INDEX
	add	a, (hl)
	ld	h, #0x66
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	ldhl	sp,	#3
	ld	a, (hl)
	push	af
	inc	sp
	call	_set_win_tile_xy
	add	sp, #3
00112$:
	C$common.c$124$2_0$165	= .
	.globl	C$common.c$124$2_0$165
;src/rom0/common.c:124: LOOP_INDEX++;
	ld	hl, #_LOOP_INDEX
	inc	(hl)
	jr	00113$
00116$:
	C$common.c$126$1_0$159	= .
	.globl	C$common.c$126$1_0$159
;src/rom0/common.c:126: }
	inc	sp
	inc	sp
	pop	hl
	pop	af
	jp	(hl)
	.area _CODE_0
	.area _INITIALIZER
Fcommon$__xinit_GAME_STATE$0_0$0 == .
__xinit__GAME_STATE:
	.db #0x00	; 0
Fcommon$__xinit_PREVIOUS_GAME_STATE$0_0$0 == .
__xinit__PREVIOUS_GAME_STATE:
	.db #0x00	; 0
Fcommon$__xinit_SCENE_SUBMODE$0_0$0 == .
__xinit__SCENE_SUBMODE:
	.db #0x00	; 0
Fcommon$__xinit_SCENE_SUBMODE_PREV$0_0$0 == .
__xinit__SCENE_SUBMODE_PREV:
	.db #0x00	; 0
Fcommon$__xinit_JOYPAD_CURRENT$0_0$0 == .
__xinit__JOYPAD_CURRENT:
	.db #0x00	; 0
Fcommon$__xinit_JOYPAD_PREVIOUS$0_0$0 == .
__xinit__JOYPAD_PREVIOUS:
	.db #0x00	; 0
Fcommon$__xinit_LOOP_INDEX$0_0$0 == .
__xinit__LOOP_INDEX:
	.db #0x00	; 0
Fcommon$__xinit_LOOP_LIMIT$0_0$0 == .
__xinit__LOOP_LIMIT:
	.db #0x12	; 18
Fcommon$__xinit_CURSOR_INDEX$0_0$0 == .
__xinit__CURSOR_INDEX:
	.db #0x00	; 0
Fcommon$__xinit_CURSOR_INDEX_PREV$0_0$0 == .
__xinit__CURSOR_INDEX_PREV:
	.db #0x00	; 0
Fcommon$__xinit_RNG_8$0_0$0 == .
__xinit__RNG_8:
	.db #0x00	; 0
Fcommon$__xinit_TEMP_VAR_A$0_0$0 == .
__xinit__TEMP_VAR_A:
	.db #0x00	; 0
Fcommon$__xinit_TEMP_VAR_B$0_0$0 == .
__xinit__TEMP_VAR_B:
	.db #0x00	; 0
Fcommon$__xinit_TEMP_VAR_C$0_0$0 == .
__xinit__TEMP_VAR_C:
	.db #0x00	; 0
Fcommon$__xinit_TEMP_VAR_D$0_0$0 == .
__xinit__TEMP_VAR_D:
	.db #0x00	; 0
Fcommon$__xinit_TEMP_VAR_E$0_0$0 == .
__xinit__TEMP_VAR_E:
	.db #0x00	; 0
Fcommon$__xinit_TEMP_VAR_F$0_0$0 == .
__xinit__TEMP_VAR_F:
	.db #0x00	; 0
Fcommon$__xinit_FRAME_COUNTER$0_0$0 == .
__xinit__FRAME_COUNTER:
	.db #0x00	; 0
Fcommon$__xinit_ANIMATION_TICK$0_0$0 == .
__xinit__ANIMATION_TICK:
	.db #0x00	; 0
Fcommon$__xinit_ANIMATION_TICK_SPEED$0_0$0 == .
__xinit__ANIMATION_TICK_SPEED:
	.db #0x3c	; 60
Fcommon$__xinit_MUSIC_TOGGLE$0_0$0 == .
__xinit__MUSIC_TOGGLE:
	.db #0x00	; 0
Fcommon$__xinit_RENDER_TARGET$0_0$0 == .
__xinit__RENDER_TARGET:
	.db #0x00	; 0
Fcommon$__xinit_BANK_BACKUP$0_0$0 == .
__xinit__BANK_BACKUP:
	.db #0x01	; 1
Fcommon$__xinit_BLANK_SCREEN_MAP$0_0$0 == .
__xinit__BLANK_SCREEN_MAP:
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.area _CABS (ABS)

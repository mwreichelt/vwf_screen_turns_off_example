;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (Linux)
;--------------------------------------------------------
	.module vwf
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _vwf_print_render
	.globl _vwf_print_reset
	.globl _vwf_swap_tiles
	.globl _vwf_set_banked_data
	.globl _vwf_get_bkg_addr
	.globl _vwf_get_win_addr
	.globl _vwf_read_banked_ubyte
	.globl _vwf_memcpy
	.globl _vwf_print_shift_char
	.globl _set_bkg_1bpp_data
	.globl _set_vram_byte
	.globl _vwf_render_base_address
	.globl _vwf_mode
	.globl _vwf_inverse_map
	.globl _vwf_current_offset
	.globl _vwf_current_font_bank
	.globl _vwf_current_font_desc
	.globl _vwf_current_tile
	.globl _vwf_current_rotate
	.globl _vwf_current_mask
	.globl _vwf_tile_data
	.globl _vwf_fonts
	.globl _vwf_set_destination
	.globl _vwf_draw_text
	.globl _vwf_load_font
	.globl _vwf_activate_font
	.globl _vwf_next_tile
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$vwf_fonts$0_0$0==.
_vwf_fonts::
	.ds 12
G$vwf_tile_data$0_0$0==.
_vwf_tile_data::
	.ds 16
G$vwf_current_mask$0_0$0==.
_vwf_current_mask::
	.ds 1
G$vwf_current_rotate$0_0$0==.
_vwf_current_rotate::
	.ds 1
G$vwf_current_tile$0_0$0==.
_vwf_current_tile::
	.ds 1
G$vwf_current_font_desc$0_0$0==.
_vwf_current_font_desc::
	.ds 7
G$vwf_current_font_bank$0_0$0==.
_vwf_current_font_bank::
	.ds 1
Lvwf.vwf_draw_text$ui_dest_base$1_0$129==.
_vwf_draw_text_ui_dest_base_65536_129:
	.ds 2
Lvwf.vwf_draw_text$ui_dest_ptr$1_0$129==.
_vwf_draw_text_ui_dest_ptr_65536_129:
	.ds 2
Lvwf.vwf_draw_text$ui_text_ptr$1_0$129==.
_vwf_draw_text_ui_text_ptr_65536_129:
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
G$vwf_current_offset$0_0$0==.
_vwf_current_offset::
	.ds 1
G$vwf_inverse_map$0_0$0==.
_vwf_inverse_map::
	.ds 1
G$vwf_mode$0_0$0==.
_vwf_mode::
	.ds 1
G$vwf_render_base_address$0_0$0==.
_vwf_render_base_address::
	.ds 2
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
	.area _CODE
	G$vwf_set_destination$0$0	= .
	.globl	G$vwf_set_destination$0$0
	C$vwf.c$43$0_0$119	= .
	.globl	C$vwf.c$43$0_0$119
;src/vwf/vwf.c:43: void vwf_set_destination(vwf_reder_dest_e destination) {
;	---------------------------------
; Function vwf_set_destination
; ---------------------------------
_vwf_set_destination::
	C$vwf.c$44$1_0$119	= .
	.globl	C$vwf.c$44$1_0$119
;src/vwf/vwf.c:44: vwf_render_base_address = (destination == VWF_RENDER_BKG) ? vwf_get_bkg_addr() : vwf_get_win_addr();
	or	a, a
	jr	NZ, 00103$
	call	_vwf_get_bkg_addr
	jr	00104$
00103$:
	call	_vwf_get_win_addr
00104$:
	ld	hl, #_vwf_render_base_address
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$vwf.c$45$1_0$119	= .
	.globl	C$vwf.c$45$1_0$119
;src/vwf/vwf.c:45: }
	C$vwf.c$45$1_0$119	= .
	.globl	C$vwf.c$45$1_0$119
	XG$vwf_set_destination$0$0	= .
	.globl	XG$vwf_set_destination$0$0
	ret
	G$vwf_print_reset$0$0	= .
	.globl	G$vwf_print_reset$0$0
	C$vwf.c$47$1_0$121	= .
	.globl	C$vwf.c$47$1_0$121
;src/vwf/vwf.c:47: void vwf_print_reset(uint8_t tile) {
;	---------------------------------
; Function vwf_print_reset
; ---------------------------------
_vwf_print_reset::
	ld	(#_vwf_current_tile),a
	C$vwf.c$49$1_0$121	= .
	.globl	C$vwf.c$49$1_0$121
;src/vwf/vwf.c:49: vwf_current_offset = 0;
	ld	hl, #_vwf_current_offset
	ld	(hl), #0x00
	C$vwf.c$50$1_0$121	= .
	.globl	C$vwf.c$50$1_0$121
;src/vwf/vwf.c:50: vwf_swap_tiles(); 
	call	_vwf_swap_tiles
	C$vwf.c$51$1_0$121	= .
	.globl	C$vwf.c$51$1_0$121
;src/vwf/vwf.c:51: vwf_swap_tiles(); 
	C$vwf.c$52$1_0$121	= .
	.globl	C$vwf.c$52$1_0$121
;src/vwf/vwf.c:52: }
	C$vwf.c$52$1_0$121	= .
	.globl	C$vwf.c$52$1_0$121
	XG$vwf_print_reset$0$0	= .
	.globl	XG$vwf_print_reset$0$0
	jp	_vwf_swap_tiles
	G$vwf_print_render$0$0	= .
	.globl	G$vwf_print_render$0$0
	C$vwf.c$54$1_0$123	= .
	.globl	C$vwf.c$54$1_0$123
;src/vwf/vwf.c:54: uint8_t vwf_print_render(const unsigned char ch) {
;	---------------------------------
; Function vwf_print_render
; ---------------------------------
_vwf_print_render::
	add	sp, #-3
	ld	c, a
	C$vwf.c$55$1_0$123	= .
	.globl	C$vwf.c$55$1_0$123
;src/vwf/vwf.c:55: uint8_t letter = vwf_read_banked_ubyte(vwf_current_font_desc.recode_table + (ch & ((vwf_current_font_desc.attr & RECODE_7BIT) ? 0x7fu : 0xffu)), vwf_current_font_bank);
	ld	hl, #_vwf_current_font_desc + 1
	ld	a, (hl+)
	ld	b, (hl)
	ld	hl, #_vwf_current_font_desc
;	spillPairReg hl
	bit	0, (hl)
	jr	Z, 00110$
	ld	de, #0x007f
	jr	00111$
00110$:
	ld	de, #0x00ff
00111$:
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	af
	ld	a, l
	and	a, e
	ld	e, a
	ld	a, h
	and	a, d
	ld	d, a
	pop	af
	add	a, e
	ld	c, a
	ld	a, b
	adc	a, d
	ld	hl, #_vwf_current_font_bank
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	b, a
	push	bc
	call	_vwf_read_banked_ubyte
	add	sp, #3
	ldhl	sp,	#0
	ld	(hl), e
	C$vwf.c$56$1_0$123	= .
	.globl	C$vwf.c$56$1_0$123
;src/vwf/vwf.c:56: const uint8_t * bitmap = vwf_current_font_desc.bitmaps + (uint16_t)letter * 8;
	ld	hl, #_vwf_current_font_desc + 5
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ldhl	sp,	#0
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	a, h
	ldhl	sp,	#1
	ld	(hl), c
	inc	hl
	ld	(hl), a
	C$vwf.c$57$1_0$123	= .
	.globl	C$vwf.c$57$1_0$123
;src/vwf/vwf.c:57: if (vwf_current_font_desc.attr & FONT_VWF) {
	ld	a, (#_vwf_current_font_desc + 0)
	bit	1, a
	jp	Z,00106$
	C$vwf.c$58$2_0$124	= .
	.globl	C$vwf.c$58$2_0$124
;src/vwf/vwf.c:58: uint8_t width = vwf_read_banked_ubyte(vwf_current_font_desc.widths + letter, vwf_current_font_bank);
	ld	hl, #_vwf_current_font_desc + 3
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ldhl	sp,	#0
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	a, (#_vwf_current_font_bank)
	push	af
	inc	sp
	push	bc
	call	_vwf_read_banked_ubyte
	add	sp, #3
	C$vwf.c$59$2_0$124	= .
	.globl	C$vwf.c$59$2_0$124
;src/vwf/vwf.c:59: uint8_t dx = (8u - vwf_current_offset);
	ld	a, #0x08
	ld	hl, #_vwf_current_offset
	sub	a, (hl)
	ldhl	sp,	#0
	C$vwf.c$60$2_0$124	= .
	.globl	C$vwf.c$60$2_0$124
;src/vwf/vwf.c:60: vwf_current_mask = (0xffu << dx) | (0xffu >> (vwf_current_offset + width));
	ld	(hl), a
	push	af
	ld	b, #0xff
	pop	af
	inc	a
	jr	00142$
00141$:
	sla	b
00142$:
	dec	a
	jr	NZ,00141$
	ld	hl, #_vwf_current_offset
	ld	c, (hl)
	ld	a, c
	add	a, e
	ld	d, a
	ld	hl, #0x00ff
	inc	d
	jr	00144$
00143$:
	srl	h
	rr	l
00144$:
	dec	d
	jr	NZ, 00143$
	ld	a, l
	or	a, b
	ld	(#_vwf_current_mask),a
	C$vwf.c$62$2_0$124	= .
	.globl	C$vwf.c$62$2_0$124
;src/vwf/vwf.c:62: vwf_current_rotate = vwf_current_offset;
	ld	hl, #_vwf_current_rotate
	ld	(hl), c
	C$vwf.c$63$1_0$123	= .
	.globl	C$vwf.c$63$1_0$123
;src/vwf/vwf.c:63: vwf_print_shift_char(vwf_tile_data, bitmap, vwf_current_font_bank);
	ld	bc, #_vwf_tile_data+0
	push	bc
	push	de
	ld	a, (#_vwf_current_font_bank)
	push	af
	inc	sp
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	hl, #_vwf_tile_data
	push	hl
	call	_vwf_print_shift_char
	add	sp, #5
	pop	de
	pop	bc
	C$vwf.c$64$2_0$124	= .
	.globl	C$vwf.c$64$2_0$124
;src/vwf/vwf.c:64: if ((uint8_t)(vwf_current_offset + width) > 8u) {
	ld	a, (#_vwf_current_offset)
	add	a, e
	ld	d, a
	ld	a, #0x08
	sub	a, d
	jr	NC, 00102$
	C$vwf.c$65$3_0$125	= .
	.globl	C$vwf.c$65$3_0$125
;src/vwf/vwf.c:65: vwf_current_rotate = dx | 0x80u;
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, #0x80
	ld	(#_vwf_current_rotate),a
	C$vwf.c$66$3_0$125	= .
	.globl	C$vwf.c$66$3_0$125
;src/vwf/vwf.c:66: vwf_current_mask = 0xffu >> (width - dx);
	ld	a, e
	ldhl	sp,	#0
	sub	a, (hl)
	ld	d, a
	ld	hl, #0x00ff
	inc	d
	jr	00146$
00145$:
	srl	h
	rr	l
00146$:
	dec	d
	jr	NZ, 00145$
	ld	a, l
	ld	(_vwf_current_mask), a
	C$vwf.c$67$3_0$125	= .
	.globl	C$vwf.c$67$3_0$125
;src/vwf/vwf.c:67: vwf_print_shift_char(vwf_tile_data + DEVICE_TILE_SIZE, bitmap, vwf_current_font_bank);
	push	bc
	push	de
	ld	a, (#_vwf_current_font_bank)
	push	af
	inc	sp
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	hl, #(_vwf_tile_data + 8)
	push	hl
	call	_vwf_print_shift_char
	add	sp, #5
	pop	de
	pop	bc
00102$:
	C$vwf.c$69$2_0$124	= .
	.globl	C$vwf.c$69$2_0$124
;src/vwf/vwf.c:69: vwf_current_offset += width;
	ld	a, e
	ld	hl, #_vwf_current_offset
	add	a, (hl)
	ld	(hl), a
	C$vwf.c$71$2_0$124	= .
	.globl	C$vwf.c$71$2_0$124
;src/vwf/vwf.c:71: if (vwf_current_offset > 7u) {
	ld	a, #0x07
	sub	a, (hl)
	jr	NC, 00104$
	C$vwf.c$72$3_0$126	= .
	.globl	C$vwf.c$72$3_0$126
;src/vwf/vwf.c:72: vwf_current_offset -= 8u;
	ld	a, (hl)
	add	a, #0xf8
	C$vwf.c$73$3_0$126	= .
	.globl	C$vwf.c$73$3_0$126
;src/vwf/vwf.c:73: set_bkg_1bpp_data(vwf_current_tile, (vwf_current_offset) ? 2 : 1, vwf_tile_data);
	ld	(hl), a
	or	a, a
	jr	Z, 00112$
	ld	de, #0x0002
	jr	00113$
00112$:
	ld	de, #0x0001
00113$:
	ld	a, e
	push	bc
	push	af
	inc	sp
	ld	a, (#_vwf_current_tile)
	push	af
	inc	sp
	call	_set_bkg_1bpp_data
	add	sp, #4
	C$vwf.c$74$3_0$126	= .
	.globl	C$vwf.c$74$3_0$126
;src/vwf/vwf.c:74: vwf_current_tile++;
	ld	hl, #_vwf_current_tile
	inc	(hl)
	C$vwf.c$75$3_0$126	= .
	.globl	C$vwf.c$75$3_0$126
;src/vwf/vwf.c:75: vwf_swap_tiles();
	call	_vwf_swap_tiles
	C$vwf.c$76$3_0$126	= .
	.globl	C$vwf.c$76$3_0$126
;src/vwf/vwf.c:76: return TRUE;
	ld	a, #0x01
	jr	00108$
00104$:
	C$vwf.c$78$2_0$124	= .
	.globl	C$vwf.c$78$2_0$124
;src/vwf/vwf.c:78: set_bkg_1bpp_data(vwf_current_tile, 1, vwf_tile_data);
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ld	a, (#_vwf_current_tile)
	push	af
	inc	sp
	call	_set_bkg_1bpp_data
	add	sp, #4
	C$vwf.c$79$2_0$124	= .
	.globl	C$vwf.c$79$2_0$124
;src/vwf/vwf.c:79: return FALSE;
	xor	a, a
	jr	00108$
00106$:
	C$vwf.c$81$2_0$127	= .
	.globl	C$vwf.c$81$2_0$127
;src/vwf/vwf.c:81: vwf_set_banked_data(vwf_current_tile++, 1, bitmap, vwf_current_font_bank);
	ld	hl, #_vwf_current_tile
	ld	b, (hl)
	inc	(hl)
	ld	a, (#_vwf_current_font_bank)
	push	af
	inc	sp
	ldhl	sp,	#2
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_vwf_set_banked_data
	add	sp, #5
	C$vwf.c$82$2_0$127	= .
	.globl	C$vwf.c$82$2_0$127
;src/vwf/vwf.c:82: vwf_current_offset = 0;
	ld	hl, #_vwf_current_offset
	ld	(hl), #0x00
	C$vwf.c$83$2_0$127	= .
	.globl	C$vwf.c$83$2_0$127
;src/vwf/vwf.c:83: return TRUE;
	ld	a, #0x01
00108$:
	C$vwf.c$85$1_0$123	= .
	.globl	C$vwf.c$85$1_0$123
;src/vwf/vwf.c:85: }
	add	sp, #3
	C$vwf.c$85$1_0$123	= .
	.globl	C$vwf.c$85$1_0$123
	XG$vwf_print_render$0$0	= .
	.globl	XG$vwf_print_render$0$0
	ret
	G$vwf_draw_text$0$0	= .
	.globl	G$vwf_draw_text$0$0
	C$vwf.c$87$1_0$129	= .
	.globl	C$vwf.c$87$1_0$129
;src/vwf/vwf.c:87: uint8_t vwf_draw_text(uint8_t x, uint8_t y, uint8_t base_tile, const unsigned char * str) {
;	---------------------------------
; Function vwf_draw_text
; ---------------------------------
_vwf_draw_text::
	ld	d, a
	C$vwf.c$90$1_0$129	= .
	.globl	C$vwf.c$90$1_0$129
;src/vwf/vwf.c:90: ui_dest_ptr = ui_dest_base = vwf_render_base_address + (y + DEVICE_SCREEN_Y_OFFSET) * (DEVICE_SCREEN_BUFFER_WIDTH * DEVICE_SCREEN_MAP_ENTRY_SIZE) + ((x + DEVICE_SCREEN_X_OFFSET) * DEVICE_SCREEN_MAP_ENTRY_SIZE);
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	a, c
	ld	hl, #_vwf_render_base_address
	add	a, (hl)
	inc	hl
	ld	c, a
	ld	a, b
	adc	a, (hl)
	ld	b, a
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, l
	ld	a, h
	ld	hl, #_vwf_draw_text_ui_dest_base_65536_129
	ld	(hl), c
	inc	hl
	ld	(hl), a
	ld	hl, #_vwf_draw_text_ui_dest_ptr_65536_129
	ld	(hl), c
	inc	hl
	ld	(hl), a
	C$vwf.c$91$1_0$129	= .
	.globl	C$vwf.c$91$1_0$129
;src/vwf/vwf.c:91: ui_text_ptr = str;
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(#_vwf_draw_text_ui_text_ptr_65536_129),a
	ldhl	sp,	#4
	ld	a, (hl)
	ld	(#_vwf_draw_text_ui_text_ptr_65536_129 + 1),a
	C$vwf.c$93$1_0$129	= .
	.globl	C$vwf.c$93$1_0$129
;src/vwf/vwf.c:93: vwf_print_reset(base_tile);
	ldhl	sp,	#2
	ld	a, (hl)
	call	_vwf_print_reset
	C$vwf.c$94$1_0$129	= .
	.globl	C$vwf.c$94$1_0$129
;src/vwf/vwf.c:94: while (*ui_text_ptr) {
00118$:
	ld	hl, #_vwf_draw_text_ui_text_ptr_65536_129
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_vwf_draw_text_ui_text_ptr_65536_129 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	c, (hl)
	ld	a, c
	or	a, a
	jp	Z, 00120$
	C$vwf.c$97$1_0$129	= .
	.globl	C$vwf.c$97$1_0$129
;src/vwf/vwf.c:97: vwf_activate_font(*++ui_text_ptr);
	ld	hl, #_vwf_draw_text_ui_text_ptr_65536_129
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	inc	de
	C$vwf.c$95$2_0$130	= .
	.globl	C$vwf.c$95$2_0$130
;src/vwf/vwf.c:95: switch (*ui_text_ptr) {
	ld	a, c
	dec	a
	jr	Z, 00101$
	C$vwf.c$101$1_0$129	= .
	.globl	C$vwf.c$101$1_0$129
;src/vwf/vwf.c:101: if (vwf_current_offset) vwf_print_reset(vwf_current_tile + 1u);
	ld	hl, #_vwf_current_tile
	ld	b, (hl)
	inc	b
	C$vwf.c$95$2_0$130	= .
	.globl	C$vwf.c$95$2_0$130
;src/vwf/vwf.c:95: switch (*ui_text_ptr) {
	ld	a,c
	cp	a,#0x02
	jr	Z, 00102$
	cp	a,#0x03
	jr	Z, 00105$
	sub	a, #0x0a
	jr	Z, 00106$
	jp	00109$
	C$vwf.c$96$3_0$131	= .
	.globl	C$vwf.c$96$3_0$131
;src/vwf/vwf.c:96: case 0x01:
00101$:
	C$vwf.c$97$3_0$131	= .
	.globl	C$vwf.c$97$3_0$131
;src/vwf/vwf.c:97: vwf_activate_font(*++ui_text_ptr);
	ld	hl, #_vwf_draw_text_ui_text_ptr_65536_129
	ld	a, e
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_vwf_draw_text_ui_text_ptr_65536_129 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (hl)
	call	_vwf_activate_font
	C$vwf.c$98$3_0$131	= .
	.globl	C$vwf.c$98$3_0$131
;src/vwf/vwf.c:98: break;
	jp	00117$
	C$vwf.c$99$3_0$131	= .
	.globl	C$vwf.c$99$3_0$131
;src/vwf/vwf.c:99: case 0x02:
00102$:
	C$vwf.c$100$3_0$131	= .
	.globl	C$vwf.c$100$3_0$131
;src/vwf/vwf.c:100: ui_dest_ptr = ui_dest_base = vwf_render_base_address + (*++ui_text_ptr + DEVICE_SCREEN_Y_OFFSET) * (DEVICE_SCREEN_BUFFER_WIDTH * DEVICE_SCREEN_MAP_ENTRY_SIZE) + ((*++ui_text_ptr + DEVICE_SCREEN_X_OFFSET) * DEVICE_SCREEN_MAP_ENTRY_SIZE);
	ld	hl, #_vwf_draw_text_ui_text_ptr_65536_129
	ld	a, e
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_vwf_draw_text_ui_text_ptr_65536_129 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a, l
	ld	d, h
	ld	hl, #_vwf_render_base_address
	add	a, (hl)
	inc	hl
	ld	e, a
	ld	a, d
	adc	a, (hl)
	ld	d, a
	ld	hl, #_vwf_draw_text_ui_text_ptr_65536_129
	inc	(hl)
	jr	NZ, 00187$
	inc	hl
	inc	(hl)
00187$:
	ld	hl, #_vwf_draw_text_ui_text_ptr_65536_129
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_vwf_draw_text_ui_text_ptr_65536_129 + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ld	e, l
	ld	d, h
	ld	hl, #_vwf_draw_text_ui_dest_base_65536_129
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	ld	hl, #_vwf_draw_text_ui_dest_ptr_65536_129
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$vwf.c$101$3_0$131	= .
	.globl	C$vwf.c$101$3_0$131
;src/vwf/vwf.c:101: if (vwf_current_offset) vwf_print_reset(vwf_current_tile + 1u);
	ld	a, (#_vwf_current_offset)
	or	a, a
	jp	Z, 00117$
	ld	a, b
	call	_vwf_print_reset
	C$vwf.c$102$3_0$131	= .
	.globl	C$vwf.c$102$3_0$131
;src/vwf/vwf.c:102: break; 
	jr	00117$
	C$vwf.c$103$3_0$131	= .
	.globl	C$vwf.c$103$3_0$131
;src/vwf/vwf.c:103: case 0x03:
00105$:
	C$vwf.c$104$3_0$131	= .
	.globl	C$vwf.c$104$3_0$131
;src/vwf/vwf.c:104: vwf_inverse_map = *++ui_text_ptr;
	ld	hl, #_vwf_draw_text_ui_text_ptr_65536_129
	ld	a, e
	ld	(hl+), a
	ld	a, d
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, (bc)
	ld	(#_vwf_inverse_map),a
	C$vwf.c$105$3_0$131	= .
	.globl	C$vwf.c$105$3_0$131
;src/vwf/vwf.c:105: break;
	jr	00117$
	C$vwf.c$106$3_0$131	= .
	.globl	C$vwf.c$106$3_0$131
;src/vwf/vwf.c:106: case '\n':
00106$:
	C$vwf.c$107$3_0$131	= .
	.globl	C$vwf.c$107$3_0$131
;src/vwf/vwf.c:107: ui_dest_ptr = ui_dest_base += (DEVICE_SCREEN_BUFFER_WIDTH * DEVICE_SCREEN_MAP_ENTRY_SIZE);
	ld	hl, #_vwf_draw_text_ui_dest_base_65536_129
	ld	a, (hl+)
	add	a, #0x20
	ld	c, a
	ld	a, (hl)
	adc	a, #0x00
	ld	e, a
	ld	hl, #_vwf_draw_text_ui_dest_ptr_65536_129
	ld	a, c
	ld	(hl+), a
	ld	(hl), e
	ld	hl, #_vwf_draw_text_ui_dest_base_65536_129
	ld	a, c
	ld	(hl+), a
	ld	(hl), e
	C$vwf.c$108$3_0$131	= .
	.globl	C$vwf.c$108$3_0$131
;src/vwf/vwf.c:108: if (vwf_current_offset) vwf_print_reset(vwf_current_tile + 1u);
	ld	a, (#_vwf_current_offset)
	or	a, a
	jr	Z, 00117$
	ld	a, b
	call	_vwf_print_reset
	C$vwf.c$109$3_0$131	= .
	.globl	C$vwf.c$109$3_0$131
;src/vwf/vwf.c:109: break; 
	jr	00117$
	C$vwf.c$110$3_0$131	= .
	.globl	C$vwf.c$110$3_0$131
;src/vwf/vwf.c:110: default:
00109$:
	C$vwf.c$111$3_0$131	= .
	.globl	C$vwf.c$111$3_0$131
;src/vwf/vwf.c:111: if (vwf_print_render(*ui_text_ptr)) {
	ld	a, c
	call	_vwf_print_render
	or	a, a
	jr	Z, 00113$
	C$vwf.c$112$4_0$132	= .
	.globl	C$vwf.c$112$4_0$132
;src/vwf/vwf.c:112: if (vwf_mode & VWF_MODE_PRINT) set_vram_byte(ui_dest_ptr, vwf_current_tile - 1);
	ld	a, (#_vwf_mode)
	rrca
	jr	NC, 00111$
	ld	a, (#_vwf_current_tile)
	dec	a
	push	af
	inc	sp
	ld	hl, #_vwf_draw_text_ui_dest_ptr_65536_129
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	call	_set_vram_byte
	add	sp, #3
00111$:
	C$vwf.c$113$4_0$132	= .
	.globl	C$vwf.c$113$4_0$132
;src/vwf/vwf.c:113: ui_dest_ptr += DEVICE_SCREEN_MAP_ENTRY_SIZE;
	ld	hl, #_vwf_draw_text_ui_dest_ptr_65536_129
	inc	(hl)
	jr	NZ, 00189$
	inc	hl
	inc	(hl)
00189$:
00113$:
	C$vwf.c$115$3_0$131	= .
	.globl	C$vwf.c$115$3_0$131
;src/vwf/vwf.c:115: if ((vwf_current_offset) && (vwf_mode & VWF_MODE_PRINT)) set_vram_byte(ui_dest_ptr, vwf_current_tile);
	ld	a, (#_vwf_current_offset)
	or	a, a
	jr	Z, 00117$
	ld	a, (#_vwf_mode)
	rrca
	jr	NC, 00117$
	ld	a, (#_vwf_current_tile)
	push	af
	inc	sp
	ld	hl, #_vwf_draw_text_ui_dest_ptr_65536_129
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	call	_set_vram_byte
	add	sp, #3
	C$vwf.c$117$2_0$130	= .
	.globl	C$vwf.c$117$2_0$130
;src/vwf/vwf.c:117: }
00117$:
	C$vwf.c$118$2_0$130	= .
	.globl	C$vwf.c$118$2_0$130
;src/vwf/vwf.c:118: ui_text_ptr++;
	ld	hl, #_vwf_draw_text_ui_text_ptr_65536_129
	inc	(hl)
	jp	NZ,00118$
	inc	hl
	inc	(hl)
	jp	00118$
00120$:
	C$vwf.c$120$1_0$129	= .
	.globl	C$vwf.c$120$1_0$129
;src/vwf/vwf.c:120: return vwf_next_tile() - base_tile;
	call	_vwf_next_tile
	ldhl	sp,	#2
	sub	a, (hl)
	C$vwf.c$121$1_0$129	= .
	.globl	C$vwf.c$121$1_0$129
;src/vwf/vwf.c:121: }
	pop	hl
	add	sp, #3
	jp	(hl)
	G$vwf_load_font$0$0	= .
	.globl	G$vwf_load_font$0$0
	C$vwf.c$123$1_0$134	= .
	.globl	C$vwf.c$123$1_0$134
;src/vwf/vwf.c:123: void vwf_load_font(uint8_t idx, const void * font, uint8_t bank) {
;	---------------------------------
; Function vwf_load_font
; ---------------------------------
_vwf_load_font::
	dec	sp
	dec	sp
	ld	c, a
	inc	sp
	inc	sp
	push	de
	C$vwf.c$124$1_0$134	= .
	.globl	C$vwf.c$124$1_0$134
;src/vwf/vwf.c:124: vwf_fonts[idx].bank = bank;
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ld	a, #<(_vwf_fonts)
	add	a, l
	ld	e, a
	ld	a, #>(_vwf_fonts)
	adc	a, h
	ld	d, a
	ldhl	sp,	#4
	ld	a, (hl)
	ld	(de), a
	C$vwf.c$125$1_0$134	= .
	.globl	C$vwf.c$125$1_0$134
;src/vwf/vwf.c:125: vwf_fonts[idx].ptr = (void *)font;
	inc	de
	ldhl	sp,	#0
	ld	a, (hl+)
	ld	(de), a
	inc	de
	ld	a, (hl)
	ld	(de), a
	C$vwf.c$126$1_0$134	= .
	.globl	C$vwf.c$126$1_0$134
;src/vwf/vwf.c:126: vwf_activate_font(idx); 
	ld	a, c
	C$vwf.c$127$1_0$134	= .
	.globl	C$vwf.c$127$1_0$134
;src/vwf/vwf.c:127: }
	call	_vwf_activate_font
	pop	hl
	pop	hl
	inc	sp
	jp	(hl)
	G$vwf_activate_font$0$0	= .
	.globl	G$vwf_activate_font$0$0
	C$vwf.c$129$1_0$136	= .
	.globl	C$vwf.c$129$1_0$136
;src/vwf/vwf.c:129: void vwf_activate_font(uint8_t idx) {
;	---------------------------------
; Function vwf_activate_font
; ---------------------------------
_vwf_activate_font::
	ld	c, a
	C$vwf.c$130$1_0$136	= .
	.globl	C$vwf.c$130$1_0$136
;src/vwf/vwf.c:130: vwf_current_font_bank = vwf_fonts[idx].bank;
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ld	bc,#_vwf_fonts
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	a, (bc)
	ld	(#_vwf_current_font_bank),a
	C$vwf.c$131$1_0$136	= .
	.globl	C$vwf.c$131$1_0$136
;src/vwf/vwf.c:131: vwf_memcpy(&vwf_current_font_desc, vwf_fonts[idx].ptr, sizeof(font_desc_t), vwf_current_font_bank);    
	ld	l, c
	ld	h, b
	inc	hl
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, (#_vwf_current_font_bank)
	push	af
	inc	sp
	ld	de, #0x0007
	push	de
	push	bc
	ld	de, #_vwf_current_font_desc
	push	de
	call	_vwf_memcpy
	add	sp, #7
	C$vwf.c$132$1_0$136	= .
	.globl	C$vwf.c$132$1_0$136
;src/vwf/vwf.c:132: }
	C$vwf.c$132$1_0$136	= .
	.globl	C$vwf.c$132$1_0$136
	XG$vwf_activate_font$0$0	= .
	.globl	XG$vwf_activate_font$0$0
	ret
	G$vwf_next_tile$0$0	= .
	.globl	G$vwf_next_tile$0$0
	C$vwf.c$134$1_0$137	= .
	.globl	C$vwf.c$134$1_0$137
;src/vwf/vwf.c:134: uint8_t vwf_next_tile() {
;	---------------------------------
; Function vwf_next_tile
; ---------------------------------
_vwf_next_tile::
	C$vwf.c$135$1_0$137	= .
	.globl	C$vwf.c$135$1_0$137
;src/vwf/vwf.c:135: return (vwf_current_offset) ? vwf_current_tile + 1u : vwf_current_tile;
	ld	a, (#_vwf_current_offset)
	or	a, a
	jr	Z, 00103$
	ld	a, (#_vwf_current_tile)
	inc	a
	ret
00103$:
	ld	a, (#_vwf_current_tile)
	C$vwf.c$136$1_0$137	= .
	.globl	C$vwf.c$136$1_0$137
;src/vwf/vwf.c:136: }
	C$vwf.c$136$1_0$137	= .
	.globl	C$vwf.c$136$1_0$137
	XG$vwf_next_tile$0$0	= .
	.globl	XG$vwf_next_tile$0$0
	ret
	.area _CODE
	.area _INITIALIZER
Fvwf$__xinit_vwf_current_offset$0_0$0 == .
__xinit__vwf_current_offset:
	.db #0x00	; 0
Fvwf$__xinit_vwf_inverse_map$0_0$0 == .
__xinit__vwf_inverse_map:
	.db #0x00	; 0
Fvwf$__xinit_vwf_mode$0_0$0 == .
__xinit__vwf_mode:
	.db #0x01	; 1
Fvwf$__xinit_vwf_render_base_address$0_0$0 == .
__xinit__vwf_render_base_address:
	.dw #0x9800
	.area _CABS (ABS)

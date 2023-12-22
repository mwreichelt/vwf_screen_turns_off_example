;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (Linux)
;--------------------------------------------------------
	.module musicmanager
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _hUGE_dosound
	.globl _hUGE_init
	.globl _sfx_play_isr
	.globl _music_sfx_priority
	.globl _music_play_isr_pause
	.globl _music_play_isr_counter
	.globl _music_mute_mask
	.globl _music_mute_flag
	.globl _music_current_track_bank
	.globl _music_next_track
	.globl _music_play_isr
	.globl _music_pause
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$music_next_track$0_0$0==.
_music_next_track::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
G$music_current_track_bank$0_0$0==.
_music_current_track_bank::
	.ds 1
G$music_mute_flag$0_0$0==.
_music_mute_flag::
	.ds 1
G$music_mute_mask$0_0$0==.
_music_mute_mask::
	.ds 1
G$music_play_isr_counter$0_0$0==.
_music_play_isr_counter::
	.ds 1
G$music_play_isr_pause$0_0$0==.
_music_play_isr_pause::
	.ds 1
G$music_sfx_priority$0_0$0==.
_music_sfx_priority::
	.ds 1
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
	G$music_play_isr$0$0	= .
	.globl	G$music_play_isr$0$0
	C$musicmanager.c$15$0_0$160	= .
	.globl	C$musicmanager.c$15$0_0$160
;src/rom0/musicmanager.c:15: void music_play_isr() NONBANKED {
;	---------------------------------
; Function music_play_isr
; ---------------------------------
_music_play_isr::
	C$musicmanager.c$16$1_0$160	= .
	.globl	C$musicmanager.c$16$1_0$160
;src/rom0/musicmanager.c:16: if (sfx_play_bank != SFX_STOP_BANK) {
	ld	a, (#_sfx_play_bank)
	inc	a
	jr	Z, 00106$
	C$musicmanager.c$17$2_0$161	= .
	.globl	C$musicmanager.c$17$2_0$161
;src/rom0/musicmanager.c:17: if (!music_mute_flag) hUGE_mute_mask = music_mute_mask, music_mute_flag = TRUE;
	ld	a, (#_music_mute_flag)
	or	a, a
	jr	NZ, 00102$
	ld	a, (#_music_mute_mask)
	ld	(#_hUGE_mute_mask),a
	ld	hl, #_music_mute_flag
	ld	(hl), #0x01
00102$:
	C$musicmanager.c$18$2_0$161	= .
	.globl	C$musicmanager.c$18$2_0$161
;src/rom0/musicmanager.c:18: if (!sfx_play_isr()) {
	call	_sfx_play_isr
	ld	a, e
	or	a, a
	jr	NZ, 00106$
	C$musicmanager.c$19$3_0$162	= .
	.globl	C$musicmanager.c$19$3_0$162
;src/rom0/musicmanager.c:19: hUGE_mute_mask = MUTE_MASK_NONE, hUGE_reset_wave(), music_mute_flag = FALSE;
	ld	hl, #_hUGE_mute_mask
	ld	(hl), #0x00
;include/hUGEDriver_b9.h:116: hUGE_current_wave = 100;
	ld	hl, #_hUGE_current_wave
	ld	(hl), #0x64
	C$musicmanager.c$19$3_0$162	= .
	.globl	C$musicmanager.c$19$3_0$162
;src/rom0/musicmanager.c:19: hUGE_mute_mask = MUTE_MASK_NONE, hUGE_reset_wave(), music_mute_flag = FALSE;
	ld	hl, #_music_mute_flag
	ld	(hl), #0x00
	C$musicmanager.c$23$3_0$162	= .
	.globl	C$musicmanager.c$23$3_0$162
;src/rom0/musicmanager.c:23: music_mute_mask = MUTE_MASK_NONE;
	ld	hl, #_music_mute_mask
	ld	(hl), #0x00
	C$musicmanager.c$24$3_0$162	= .
	.globl	C$musicmanager.c$24$3_0$162
;src/rom0/musicmanager.c:24: music_sfx_priority = MUSIC_SFX_PRIORITY_MINIMAL; 
	ld	hl, #_music_sfx_priority
	ld	(hl), #0x00
	C$musicmanager.c$25$3_0$162	= .
	.globl	C$musicmanager.c$25$3_0$162
;src/rom0/musicmanager.c:25: sfx_play_bank = SFX_STOP_BANK;
	ld	hl, #_sfx_play_bank
	ld	(hl), #0xff
00106$:
	C$musicmanager.c$28$1_0$160	= .
	.globl	C$musicmanager.c$28$1_0$160
;src/rom0/musicmanager.c:28: if (music_play_isr_pause) return;
	ld	a, (#_music_play_isr_pause)
	or	a, a
	ret	NZ
	C$musicmanager.c$29$1_0$160	= .
	.globl	C$musicmanager.c$29$1_0$160
;src/rom0/musicmanager.c:29: if (music_current_track_bank == MUSIC_STOP_BANK) return;
	ld	a, (#_music_current_track_bank)
	inc	a
	ret	Z
	C$musicmanager.c$33$2_0$163	= .
	.globl	C$musicmanager.c$33$2_0$163
;src/rom0/musicmanager.c:33: uint8_t save_bank = _current_bank;
	ldh	a, (__current_bank + 0)
	ld	c, a
	C$musicmanager.c$34$1_1$163	= .
	.globl	C$musicmanager.c$34$1_1$163
;src/rom0/musicmanager.c:34: SWITCH_ROM(music_current_track_bank);
	ld	hl, #_music_current_track_bank
	ld	a, (hl)
	ldh	(__current_bank + 0), a
	ld	de, #0x2000
	ld	a, (hl)
	ld	(de), a
	C$musicmanager.c$35$1_1$163	= .
	.globl	C$musicmanager.c$35$1_1$163
;src/rom0/musicmanager.c:35: if (music_next_track) {
	ld	hl, #_music_next_track + 1
	ld	a, (hl-)
	or	a, (hl)
	jr	Z, 00112$
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
	C$musicmanager.c$37$2_1$164	= .
	.globl	C$musicmanager.c$37$2_1$164
;src/rom0/musicmanager.c:37: hUGE_init(music_next_track);
	push	bc
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	push	de
	call	_hUGE_init
	pop	hl
	pop	bc
	C$musicmanager.c$38$2_1$164	= .
	.globl	C$musicmanager.c$38$2_1$164
;src/rom0/musicmanager.c:38: music_next_track = 0;
	xor	a, a
	ld	hl, #_music_next_track
	ld	(hl+), a
	ld	(hl), a
	jr	00113$
00112$:
	C$musicmanager.c$39$1_1$163	= .
	.globl	C$musicmanager.c$39$1_1$163
;src/rom0/musicmanager.c:39: } else hUGE_dosound();
	push	bc
	call	_hUGE_dosound
	pop	bc
00113$:
	C$musicmanager.c$40$1_1$163	= .
	.globl	C$musicmanager.c$40$1_1$163
;src/rom0/musicmanager.c:40: SWITCH_ROM(save_bank);
	ld	a, c
	ldh	(__current_bank + 0), a
	ld	hl, #0x2000
	ld	(hl), c
	C$musicmanager.c$41$1_1$160	= .
	.globl	C$musicmanager.c$41$1_1$160
;src/rom0/musicmanager.c:41: }
	C$musicmanager.c$41$1_1$160	= .
	.globl	C$musicmanager.c$41$1_1$160
	XG$music_play_isr$0$0	= .
	.globl	XG$music_play_isr$0$0
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	G$music_pause$0$0	= .
	.globl	G$music_pause$0$0
	C$musicmanager.c$43$1_1$175	= .
	.globl	C$musicmanager.c$43$1_1$175
;src/rom0/musicmanager.c:43: void music_pause(uint8_t pause) {
;	---------------------------------
; Function music_pause
; ---------------------------------
_music_pause::
	ld	c, a
	C$musicmanager.c$44$1_0$175	= .
	.globl	C$musicmanager.c$44$1_0$175
;src/rom0/musicmanager.c:44: if (music_play_isr_pause = pause) music_sound_cut();
	ld	hl, #_music_play_isr_pause
	ld	(hl), c
	ld	a, c
	or	a, a
	ret	Z
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
	C$musicmanager.c$44$1_0$175	= .
	.globl	C$musicmanager.c$44$1_0$175
;src/rom0/musicmanager.c:44: if (music_play_isr_pause = pause) music_sound_cut();
	C$musicmanager.c$45$1_0$175	= .
	.globl	C$musicmanager.c$45$1_0$175
;src/rom0/musicmanager.c:45: }
	C$musicmanager.c$45$1_0$175	= .
	.globl	C$musicmanager.c$45$1_0$175
	XG$music_pause$0$0	= .
	.globl	XG$music_pause$0$0
	ret
	.area _CODE
	.area _INITIALIZER
Fmusicmanager$__xinit_music_current_track_bank$0_0$0 == .
__xinit__music_current_track_bank:
	.db #0xff	; 255
Fmusicmanager$__xinit_music_mute_flag$0_0$0 == .
__xinit__music_mute_flag:
	.db #0x00	; 0
Fmusicmanager$__xinit_music_mute_mask$0_0$0 == .
__xinit__music_mute_mask:
	.db #0x00	; 0
Fmusicmanager$__xinit_music_play_isr_counter$0_0$0 == .
__xinit__music_play_isr_counter:
	.db #0x00	; 0
Fmusicmanager$__xinit_music_play_isr_pause$0_0$0 == .
__xinit__music_play_isr_pause:
	.db #0x00	; 0
Fmusicmanager$__xinit_music_sfx_priority$0_0$0 == .
__xinit__music_sfx_priority:
	.db #0x00	; 0
	.area _CABS (ABS)

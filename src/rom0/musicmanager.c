#include <gbdk/platform.h>

#include "musicmanager.h"
#include "sfxplayer.h"

#include "hUGEDriver_b9.h"

volatile uint8_t music_current_track_bank = MUSIC_STOP_BANK;
uint8_t music_mute_flag = FALSE, music_mute_mask = MUTE_MASK_NONE;
const hUGESong_t * music_next_track;
uint8_t music_play_isr_counter = 0;
uint8_t music_play_isr_pause = FALSE;
uint8_t music_sfx_priority = MUSIC_SFX_PRIORITY_MINIMAL;

void music_play_isr() NONBANKED {
    if (sfx_play_bank != SFX_STOP_BANK) {
        if (!music_mute_flag) hUGE_mute_mask = music_mute_mask, music_mute_flag = TRUE;
        if (!sfx_play_isr()) {
            hUGE_mute_mask = MUTE_MASK_NONE, hUGE_reset_wave(), music_mute_flag = FALSE;
            #ifdef FORCE_CUT_SFX
            music_sound_cut_mask(music_mute_mask);
            #endif
            music_mute_mask = MUTE_MASK_NONE;
            music_sfx_priority = MUSIC_SFX_PRIORITY_MINIMAL; 
            sfx_play_bank = SFX_STOP_BANK;
        }
    }
    if (music_play_isr_pause) return;
    if (music_current_track_bank == MUSIC_STOP_BANK) return;
#ifdef VGM_TIMER
    if (++music_play_isr_counter & 3) return;
#endif
    uint8_t save_bank = _current_bank;
    SWITCH_ROM(music_current_track_bank);
    if (music_next_track) {
        music_sound_cut();
        hUGE_init(music_next_track);
        music_next_track = 0;
    } else hUGE_dosound();
    SWITCH_ROM(save_bank);
}

void music_pause(uint8_t pause) {
    if (music_play_isr_pause = pause) music_sound_cut();
}

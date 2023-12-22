#include <gb/gb.h>
#include <stdlib.h>
#include "musicmanager.h"
#include "common.h"
#include "GraphicsLoader_UI.h"
#include "Data_Music.h"
#include "Data_SFX.h"

#pragma bank 255



BANKREF(debugmusic_scene_bank)

BANKREF_EXTERN(Data_Music_bank)
BANKREF_EXTERN(Data_SFX_bank)

void debugMusicTeardown() {
    //Clean up anything that you used
    CURSOR_INDEX = 0;
    CURSOR_INDEX_PREV = 0;
}

void drawTrackName() {
    set_bkg_tiles(1u, 4u, 3u,  1u, BLANK_SCREEN_MAP);

    uitoa(CURSOR_INDEX, (char *)ITOA_STRING, 10);
    drawTextBkg(1u, 4u, ITOA_STRING);
    cpy_banked_data(TEMP_STRING, Data_Music[CURSOR_INDEX].title, 14u, BANK(Data_Music_bank));
    drawTextBkg(4u, 4u, (unsigned char *)TEMP_STRING);
}

#ifdef VGM2GBSFX_DRIVER
void drawSfxName() {
    set_bkg_tiles(1u, 6u, 3u, 1u, BLANK_SCREEN_MAP);

    uitoa(TEMP_VAR_F, (char *)ITOA_STRING, 10);
    drawTextBkg(1u, 6u, ITOA_STRING);
    cpy_banked_data(TEMP_STRING, Data_SFX[TEMP_VAR_F].title, 14u, BANK(Data_SFX_bank));
    drawTextBkg(4u, 6u, (unsigned char *)TEMP_STRING);
}
#endif

void initializeDebugMusicScene() {
    //Draw the screen
    RENDER_TARGET = RENDER_TARGET_BKG;
    set_bkg_tiles(0, 0, 20u, 18u, BLANK_SCREEN_MAP);

    TEMP_VAR_A = UI_GRAPHICS_SMALL_ARROWS_INDEX;
    TEMP_VAR_B = VRAM_SMALL_ARROWS_START;
    loadUIGraphics();

    //Initialize graphics and variable state and such
    CURSOR_INDEX = 0u;
    TEMP_VAR_F = 0u;

    drawTextBkg(1u, 1u, (unsigned char *)"MUSIC ROOM");
    drawTextBkg(1u, 3u, (unsigned char *)"TRACK ID");
    drawTextBkg(1u, 3u, (unsigned char *)"TRACK NAME");
    drawTextBkg(1u, 5u, (unsigned char *)"SFX NAME");

    drawTrackName();
#ifdef VGM2GBSFX_DRIVER
    drawSfxName();
#endif

    drawTextBkg(1u, 10u, (unsigned char *)"U/D    CHANGE TRACK");
    set_bkg_tile_xy(1u, 10u, VRAM_ICON_ARROW_UP);
    set_bkg_tile_xy(3u, 10u, VRAM_ICON_ARROW_DOWN);
    drawTextBkg(1u, 11u, (unsigned char *)"START  PLAY/PAUSE MUSIC");

#ifdef VGM2GBSFX_DRIVER
    drawTextBkg(1u, 12u, (unsigned char *)"L/R    CHANGE SFX");
    set_bkg_tile_xy(1u, 12u, VRAM_ICON_ARROW_LEFT);
    set_bkg_tile_xy(3u, 12u, VRAM_ICON_ARROW_RIGHT);
    drawTextBkg(1u, 13u, (unsigned char *)"A      PLAY SFX");
#endif

    SPRITES_8x8;
    SHOW_SPRITES;
}

void handleDebugMusicUpdate() {
    //Handle updating any variable state based on input
    CURSOR_INDEX_PREV = CURSOR_INDEX;
#ifdef VGM2GBSFX_DRIVER
    TEMP_VAR_E = TEMP_VAR_F;
#endif

    if((JOYPAD_CURRENT & J_UP) && !(JOYPAD_PREVIOUS & J_UP)) {
        if(CURSOR_INDEX == 0u) {
            CURSOR_INDEX = MUSIC_TRACK_COUNT - 1u;
        } else {
            CURSOR_INDEX--;
        }
    } else if ((JOYPAD_CURRENT & J_DOWN) && !(JOYPAD_PREVIOUS & J_DOWN)) {
        if(CURSOR_INDEX == MUSIC_TRACK_COUNT - 1u) {
            CURSOR_INDEX = 0u;
        } else {
            CURSOR_INDEX++;
        }
    }

    //Play/Pause music
    if((JOYPAD_CURRENT & J_START) && !(JOYPAD_PREVIOUS & J_START)) {
        if(CURSOR_INDEX != 0u) {
            if(MUSIC_TOGGLE == 0u) {
                cpy_banked_data(&VAR_MUSIC_DATA, &Data_Music[CURSOR_INDEX], sizeof(music_data_t), BANK(Data_Music_bank));
#ifndef VGM2GBSFX_DRIVER
                hUGE_init(TRACK_DATA[CURSOR_INDEX]);
#else
                music_load(VAR_MUSIC_DATA.bank, VAR_MUSIC_DATA.data);
                music_pause(FALSE);
#endif
                MUSIC_TOGGLE = 1u;
#ifndef VGM2GBSFX_DRIVER
                hUGE_mute_channel(HT_CH1, HT_CH_PLAY);
                hUGE_mute_channel(HT_CH2, HT_CH_PLAY);
                hUGE_mute_channel(HT_CH3, HT_CH_PLAY);
                hUGE_mute_channel(HT_CH4, HT_CH_PLAY);
#endif
            } else {
                MUSIC_TOGGLE = 0u;
#ifdef VGM2GBSFX_DRIVER
                music_stop();
#else
                hUGE_mute_channel(HT_CH1, HT_CH_MUTE);
                hUGE_mute_channel(HT_CH2, HT_CH_MUTE);
                hUGE_mute_channel(HT_CH3, HT_CH_MUTE);
                hUGE_mute_channel(HT_CH4, HT_CH_MUTE);
#endif
            }
        }
    }

#ifdef VGM2GBSFX_DRIVER
    if((JOYPAD_CURRENT & J_LEFT) && !(JOYPAD_PREVIOUS & J_LEFT)) {
        if(TEMP_VAR_F == 0u) {
            TEMP_VAR_F = MUSIC_SFX_COUNT - 1u;
        } else {
            TEMP_VAR_F--;
        }
    } else if ((JOYPAD_CURRENT & J_RIGHT) && !(JOYPAD_PREVIOUS & J_RIGHT)) {
        if(TEMP_VAR_F == MUSIC_SFX_COUNT - 1u) {
            TEMP_VAR_F = 0u;
        } else {
            TEMP_VAR_F++;
        }
    }

    //Play sfx
    if((JOYPAD_CURRENT & J_A) && !(JOYPAD_PREVIOUS & J_A)) {
        if(TEMP_VAR_F != 0u) {
            cpy_banked_data(&VAR_SFX_DATA, &Data_SFX[TEMP_VAR_F], sizeof(sfx_data_t), BANK(Data_SFX_bank));
            music_play_sfx(VAR_SFX_DATA.bank, VAR_SFX_DATA.data,
                           VAR_SFX_DATA.mute_mask, 1);
        }
    }
#endif

    //Go back to debug room menu
    if((JOYPAD_CURRENT & J_B) && !(JOYPAD_PREVIOUS & J_B)) {
        GAME_STATE = STATE_DEBUGROOM;
    }
}

void drawDebugMusicScene() {
    //Handle any graphics changes based on input
    if(CURSOR_INDEX != CURSOR_INDEX_PREV) {
        drawTrackName();
    }

#ifdef VGM2GBSFX_DRIVER
    if(TEMP_VAR_F != TEMP_VAR_E) {
        drawSfxName();
    }
#endif
}


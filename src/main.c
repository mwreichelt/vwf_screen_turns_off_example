#include <gb/gb.h>
#include <stdint.h>
#include <string.h>
#include <rand.h>
#include "common.h"
#include "game_structs.h"
#include "titlescreen_scene.h"
#include "mainmenu_scene.h"
#include "vwf.h"
//#include "vwf_font.h"
#include "Font_Minimal3x5.h"
#include "Font_Minimal5x7.h"
#include "Font_condensed.h"
#include "Font_CoCa_GB_v2.h"

#ifdef VGM2GBSFX_DRIVER
#include "musicmanager.h"
#endif
#include "hUGEDriver_b9.h"
#include "debug_scene.h"
#include "debugmusic_scene.h"
#include "debug_fonts_scene.h"

#pragma bank 0

BANKREF_EXTERN(mainmenu_scene_bank)
BANKREF_EXTERN(titlescreen_scene_bank)


BANKREF_EXTERN(debug_scene_bank)
BANKREF_EXTERN(debugmusic_scene_bank)
BANKREF_EXTERN(debugstate_scene_bank)
BANKREF_EXTERN(debug_fonts_scene_bank)

BANKREF_EXTERN(Font_Minimal3x5)
BANKREF_EXTERN(Font_Minimal5x7)
BANKREF_EXTERN(Font_condensed)
BANKREF_EXTERN(Font_CoCa_GB)

#ifndef VGM2GBSFX_DRIVER
void VBlankHandler() {
    if(MUSIC_TOGGLE > 0) {
        hUGE_dosound();
    }

    //Try adding a frame counter here I guess?
    FRAME_COUNTER++;
    if(FRAME_COUNTER == ANIMATION_TICK_SPEED) {
        FRAME_COUNTER = 0u;
        ANIMATION_TICK++;
    }
}
#else
#ifndef VGM_TIMER
void VBlankHandler() {
    //Handle music playing
    if(MUSIC_TOGGLE > 0) {
        music_play_isr();
    }

    //TODO: Handle vwf textarea rendering
//    vwf_textarea_vblank_update();

    //Increment the frame counter and handle animation ticks
    FRAME_COUNTER++;
    if(FRAME_COUNTER == ANIMATION_TICK_SPEED) { //Set up our "animation ticks"
        FRAME_COUNTER = 0u;
        ANIMATION_TICK++;
    }
}

void TMAInterruptHandler() {
    sfx_play_isr();
}
#endif
#endif

void main()
{
    LCDC_REG|=LCDCF_BG8800;
    PREVIOUS_GAME_STATE = 255u;
    GAME_STATE = STATE_TITLESCREEN;

    // Turn the background map on to make it visible
    SHOW_BKG;

#ifdef VGM2GBSFX_DRIVER
    music_init();

    __critical {
#ifdef VGM_TIMER
        music_setup_timer();
        add_low_priority_TIM(music_play_isr);
        set_interrupts(IE_REG | TIM_IFLAG);
#else
        //Music
        add_VBL(VBlankHandler);

        //SFX
        music_setup_timer();
        add_low_priority_TIM(TMAInterruptHandler);
        set_interrupts(IE_REG | TIM_IFLAG);
#endif
    };

#else
    NR52_REG = 0x80;
    NR51_REG = 0xFF;
    NR50_REG = 0x77;
    __critical {
        add_VBL(VBlankHandler);
    }
#endif

    //Initialize our VWF fonts
    vwf_set_destination(VWF_RENDER_BKG);

    vwf_load_font(FONT_VWF_PARAGRAPH, Font_CoCa_GB, BANK(Font_CoCa_GB));
    vwf_load_font(FONT_VWF_CONDENSED, Font_condensed, BANK(Font_condensed));
    vwf_load_font(FONT_VWF_MINIMAL_S, Font_Minimal3x5, BANK(Font_Minimal3x5));
    vwf_load_font(FONT_VWF_MINIMAL_L, Font_Minimal5x7, BANK(Font_Minimal5x7));
    vwf_activate_font(0);

    // Loop forever
    while(1) {

        JOYPAD_PREVIOUS = JOYPAD_CURRENT;
        JOYPAD_CURRENT = joypad();

        if(PREVIOUS_GAME_STATE != GAME_STATE) {
            //Teardown the old scene
            DISPLAY_OFF;

            //Reset the submode
            SCENE_SUBMODE = SUBMODE_DEFAULT;

            switch(PREVIOUS_GAME_STATE) {
                case STATE_MAINMENU:
                    //Get the second rng seed based on div_reg from exiting the main menu
                    RNG_SEED |= (uint16_t)DIV_REG << 8;
                    initarand(RNG_SEED);
                    mainmenuSceneTeardown();
                    break;
                case STATE_TITLESCREEN:
                    //Set the rng seed based on the div_reg from exiting the titlescreen
                    RNG_SEED = DIV_REG;
                    break;
                case STATE_DEBUGROOM:
                    debugSceneTeardown();
                    break;
                case STATE_DEBUG_MUSIC:
                    debugMusicTeardown();
                    break;
                case STATE_DEBUG_TEXT:
                    debug_fontsTeardown();
                    break;
                default:
                    break;
            }

            //Initialize the new scene
            switch(GAME_STATE) {
                case STATE_TITLESCREEN:
                    SWITCH_ROM(BANK(titlescreen_scene_bank));
                    loadTitlescreenGraphics();
                    break;
                case STATE_MAINMENU:
                    SWITCH_ROM(BANK(mainmenu_scene_bank));
                    initializeMainmenuScene();
                    break;
                case STATE_DEBUGROOM:
                    SWITCH_ROM(BANK(debug_scene_bank));
                    initializeDebugScene();
                    break;
                case STATE_DEBUG_MUSIC:
                    SWITCH_ROM(BANK(debugmusic_scene_bank));
                    initializeDebugMusicScene();
                    break;
                case STATE_DEBUG_TEXT:
                    SWITCH_ROM(BANK(debug_fonts_scene_bank));
                    initializedebug_fontsScene();
                    break;
                default:
                    break;
            }
            DISPLAY_ON;

            PREVIOUS_GAME_STATE = GAME_STATE;
        }

		// Game main loop processing goes here
        switch(GAME_STATE) {
            case STATE_TITLESCREEN:
                handleTitlescreenUpdate();
                drawTitlescreen();
                break;
            case STATE_MAINMENU:
                handleMainmenuUpdate();
                drawMainmenuScene();
                break;
            case STATE_DEBUGROOM:
                handleDebugUpdate();
                drawDebugScene();
                break;
            case STATE_DEBUG_MUSIC:
                handleDebugMusicUpdate();
                drawDebugMusicScene();
                break;
            case STATE_DEBUG_TEXT:
                handledebug_fontsUpdate();
                drawdebug_fontsScene();
                break;
            default:
                break;
        }

		// Done processing, yield CPU and wait for start of next frame
        wait_vbl_done();
    }
}

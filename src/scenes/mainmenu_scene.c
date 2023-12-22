#include <gb/gb.h>
#include "common.h"
#include "Font.h"
#include <stdlib.h>
//#include "WindowBorders.h"
//#include "Icon_Small_Arrows.h"
#include "GraphicsLoader_UI.h"

#define CURSOR_SPRITE_ID 0u
#define CURSOR_INDEX_NEWGAME 0u
#define CURSOR_INDEX_CONTINUE 1u
#define CURSOR_INDEX_SETTINGS 2u

#define MAINMENU_CURSOR_X 84u
#define MAINMENU_CURSOR_Y_1 24u
#define MAINMENU_CURSOR_Y_2 32u
#define MAINMENU_CURSOR_Y_3 40u

#pragma bank 255

void initializeMainmenuScene() {
    //Load your graphics
    RENDER_TARGET = RENDER_TARGET_BKG;

    loadFontGraphicsData();

    TEMP_VAR_A = UI_GRAPHICS_WINDOW_BORDERS_INDEX;
    TEMP_VAR_B = VRAM_WINDOW_BORDERS_START;
    loadUIGraphics();

    TEMP_VAR_A = UI_GRAPHICS_SMALL_ARROWS_INDEX;
    TEMP_VAR_B = VRAM_SMALL_ARROWS_START;
    loadUIGraphics();

    //Draw your scene
    set_bkg_tiles(0, 0, 20u, 18u, BLANK_SCREEN_MAP);
    drawWindowBorder(9u, 0u, 11u, 5u);

    set_bkg_tiles(11u, 1u, 8u, 1u, "NEW GAME");
    set_bkg_tiles(11u, 2u, 8u, 1u, "CONTINUE");
    set_bkg_tiles(11u, 3u, 8u, 1u, "SETTINGS");

    //Draw the cursor
    CURSOR_INDEX = CURSOR_INDEX_NEWGAME;
    CURSOR_INDEX_PREV = CURSOR_INDEX_NEWGAME;
    set_sprite_tile(CURSOR_SPRITE_ID, VRAM_ICON_ARROW_RIGHT);
    move_sprite(CURSOR_SPRITE_ID, MAINMENU_CURSOR_X, MAINMENU_CURSOR_Y_1);

    SPRITES_8x8;
    SHOW_SPRITES;
}

void handleMainmenuUpdate() {
    //Update variables based on input and time
    CURSOR_INDEX_PREV = CURSOR_INDEX;
    if((JOYPAD_CURRENT & J_UP) && !(JOYPAD_PREVIOUS & J_UP)) {
        if(CURSOR_INDEX != CURSOR_INDEX_NEWGAME) {
            CURSOR_INDEX--;
        } else {
            CURSOR_INDEX = CURSOR_INDEX_SETTINGS;
        }
    }
    if((JOYPAD_CURRENT & J_DOWN) && !(JOYPAD_PREVIOUS & J_DOWN)) {
        if(CURSOR_INDEX != CURSOR_INDEX_SETTINGS) {
            CURSOR_INDEX++;
        } else {
            CURSOR_INDEX = CURSOR_INDEX_NEWGAME;
        }
    }

    if(
            ((JOYPAD_CURRENT & J_A) && !(JOYPAD_PREVIOUS & J_A)) ||
            ((JOYPAD_CURRENT & J_START) && !(JOYPAD_PREVIOUS & J_START))
    )
    {
//        if(CURSOR_INDEX == CURSOR_INDEX_NEWGAME) { //TODO: Uncomment this when we have menu options that actually do something
            GAME_STATE = STATE_DEBUGROOM; //TODO: Change this to a more sensible thing
//        }
    }
}

void drawMainmenuScene() {
    //Update graphics and simulation based on variable changes
    if(CURSOR_INDEX != CURSOR_INDEX_PREV) {
        switch(CURSOR_INDEX) {
            default:
            case CURSOR_INDEX_NEWGAME:
                move_sprite(CURSOR_SPRITE_ID, MAINMENU_CURSOR_X, MAINMENU_CURSOR_Y_1);
                break;
            case CURSOR_INDEX_CONTINUE:
                move_sprite(CURSOR_SPRITE_ID, MAINMENU_CURSOR_X, MAINMENU_CURSOR_Y_2);
                break;
            case CURSOR_INDEX_SETTINGS:
                move_sprite(CURSOR_SPRITE_ID, MAINMENU_CURSOR_X, MAINMENU_CURSOR_Y_3);
                break;
        }
    }


    if(ANIMATION_TICK < 10u) {
        set_bkg_tile_xy(0u, 0u, 0x30); //0
        set_bkg_tile_xy(0u, 0u, 0x30 + ANIMATION_TICK);
    } else {
        uitoa(ANIMATION_TICK, (char *)ITOA_STRING, 10u);
        set_bkg_tiles(0, 0, 2u, 1u, ITOA_STRING);
    }

}

void mainmenuSceneTeardown() {
    //Clean up anything that got used during a scene and could persist to the next scene
    move_sprite(CURSOR_SPRITE_ID, 0u, 0u); // Hide the cursor sprite
    HIDE_SPRITES;
}

BANKREF(mainmenu_scene_bank)
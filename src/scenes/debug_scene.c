#include <gb/gb.h>
#include "common.h"
#include <stdlib.h>
#include "Font.h"
#include "GraphicsLoader_UI.h"
#include "vwf.h"



#define DEBUGSCENE_CURSOR_SPRITE_ID 0u

#define DEBUGSCENE_CURSOR_INDEX_START 0u
#define DEBUGSCENE_CURSOR_X_POS 10u
#define DEBUGSCENE_CURSOR_Y_START_POS 17u

#define DEBUGSCENE_OPTIONS_COUNT 2u

#pragma bank 255

BANKREF(debug_scene_bank)

typedef struct DebugData {
    unsigned char name[10];
    uint8_t state;
} DebugData_t;


const DebugData_t Debug_Room_Options[DEBUGSCENE_OPTIONS_COUNT] = {
        {"MUSIC", STATE_DEBUG_MUSIC},
        {"FONTS", STATE_DEBUG_TEXT}
};

void debugSceneTeardown() {
    //Clean up anything that you used

    move_sprite(DEBUGSCENE_CURSOR_SPRITE_ID, 0u, 0u); // Hide the cursor sprite
    HIDE_SPRITES;
}

void initializeDebugScene() {
    //Draw the screen
    RENDER_TARGET = RENDER_TARGET_BKG;
    set_bkg_tiles(0, 0, 20u, 18u, BLANK_SCREEN_MAP);

    //Load grpahics for the debug menu
    loadFontGraphicsData();

    TEMP_VAR_A = UI_GRAPHICS_WINDOW_BORDERS_INDEX;
    TEMP_VAR_B = VRAM_WINDOW_BORDERS_START;
    loadUIGraphics();

    TEMP_VAR_A = UI_GRAPHICS_SMALL_ARROWS_INDEX;
    TEMP_VAR_B = VRAM_SMALL_ARROWS_START;
    loadUIGraphics();


    //Draw border for containing the options
    drawWindowBorder(0, 0, 12u, 18u);

    //Where are we again?
    drawTextBkg(13u, 1u, (unsigned char *)"DEBUG");
    drawTextBkg(13u, 2u, (unsigned char *)"ROOM");

    //Variable debug view
    drawTextBkg(13u, 3u, (unsigned char *)"C");
    uitoa(CURSOR_INDEX, (char *)ITOA_STRING, 10);
    drawTextBkg(14u, 3u, ITOA_STRING);

    //Set up the options
    for(uint8_t i = 0; i < DEBUGSCENE_OPTIONS_COUNT; i++) {
        drawTextBkg(2u, i + 1, (unsigned char *) Debug_Room_Options[i].name);
    }

    //Draw the cursor
    CURSOR_INDEX = DEBUGSCENE_CURSOR_INDEX_START;
    CURSOR_INDEX_PREV = DEBUGSCENE_CURSOR_INDEX_START;
    set_sprite_tile(DEBUGSCENE_CURSOR_SPRITE_ID, VRAM_ICON_ARROW_RIGHT);
    move_sprite(DEBUGSCENE_CURSOR_SPRITE_ID, DEBUGSCENE_CURSOR_X_POS, DEBUGSCENE_CURSOR_Y_START_POS + (8u * (CURSOR_INDEX + 1)));

    SPRITES_8x8;
    SHOW_SPRITES;
}

void handleDebugUpdate() {
    CURSOR_INDEX_PREV = CURSOR_INDEX;

    if((JOYPAD_CURRENT & J_UP) && !(JOYPAD_PREVIOUS & J_UP)) {
        if(CURSOR_INDEX == 0u) {
            CURSOR_INDEX = DEBUGSCENE_OPTIONS_COUNT - 1u;
        } else {
            CURSOR_INDEX--;
        }
    } else if ((JOYPAD_CURRENT & J_DOWN) && !(JOYPAD_PREVIOUS & J_DOWN)) {
        if(CURSOR_INDEX == DEBUGSCENE_OPTIONS_COUNT - 1u) {
            CURSOR_INDEX = 0u;
        } else {
            CURSOR_INDEX++;
        }
    }

    if (
            ((JOYPAD_CURRENT & J_A) && !(JOYPAD_PREVIOUS & J_A)) ||
            ((JOYPAD_CURRENT & J_START) && !(JOYPAD_PREVIOUS & J_START))
    ) {
        GAME_STATE = Debug_Room_Options[CURSOR_INDEX].state;
    }
}

void drawDebugScene() {
    if (CURSOR_INDEX != CURSOR_INDEX_PREV) {
        //Move the cursor sprite
        move_sprite(DEBUGSCENE_CURSOR_SPRITE_ID, DEBUGSCENE_CURSOR_X_POS, DEBUGSCENE_CURSOR_Y_START_POS + (8u * (CURSOR_INDEX + 1)));

        //Update debug view value
        uitoa(CURSOR_INDEX, (char *)ITOA_STRING, 10);
        drawTextBkg(14u, 3u, ITOA_STRING);
    }
}

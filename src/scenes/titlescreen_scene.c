#include <gb/gb.h>
#include "GraphicsLoader_FullScreen.h"
#include "./common.h"

#pragma bank 255

void loadTitlescreenGraphics() {
    // Load Background tiles and map
    FULLSCREEN_GRAPHICS_INDEX = FULLSCREEN_GRAPHICS_TITLESCREEN_INDEX;
    loadFullScreenGraphics();
}

void drawTitlescreen() {
    //TODO: Any graphical updates go here
}

void handleTitlescreenUpdate() {
    //Handle any state logic stuff for the titlescreen.

    if(JOYPAD_CURRENT & J_START) {

        GAME_STATE = STATE_DEBUGROOM;
    }
}

BANKREF(titlescreen_scene_bank)
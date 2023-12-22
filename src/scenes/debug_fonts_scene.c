#include <gb/gb.h>
#include "common.h"
#include <string.h>
#include "vwf.h"
#include "debug_fonts_scene.h"
#include "text_font_info.h"

#pragma bank 255


BANKREF(debug_fonts_scene_bank)
BANKREF_EXTERN(debug_fonts_scene_bank)

BANKREF_EXTERN(text_font_info)
#define FONT_COUNT 4u

//region Traditional VWF
const FontData_t fontData[FONT_COUNT] = {
        {"CoCa_GB_v2", " This is the primary writing\nfont for delivering lots of text\nat once.\nI made it for this game myself.\nABCDEFGHIJKLMNOPQRSTUVWXYZ\n01234567890\nABCDEFGHIJKLMNOPQRSTUVWXYZ\n01234567890\n!@#$%^&*()-=+[]{}<>;:'\"", FONT_VWF_PARAGRAPH},
        {"condensed", "This is the font writing in cramped spaces\nor for labelling things.\nABCDEFGHIJKLMNOPQRSTUVWXYZ01234567890\nABCDEFGHIJKLMNOPQRSTUVWXYZ01234567890\n!@#$%^&*()-=+[]{}<>;:'\"", FONT_VWF_CONDENSED},
        {"Minimal 3x5", "This is the Minimal3x5 font.\nI'm not sure I will use it right now.\nABCDEFGHIJKLMNOPQRSTUVWXYZ01234567890\nABCDEFGHIJKLMNOPQRSTUVWXYZ01234567890\n!@#$%^&*()-=+[]{}<>;:'\"", FONT_VWF_MINIMAL_S},
        {"Minimal 5x7", "This is the Minimal5x7 font.\nI will likely replace this one.\nABCDEFGHIJKLMNOPQRSTUVWXYZ\n01234567890\nABCDEFGHIJKLMNOPQRSTUVWXYZ\n01234567890\n!@#$%^&*()-=+[]{}<>;:'\"", FONT_VWF_MINIMAL_L}
};

void drawFontInfo() {
    vwf_activate_font(fontData[CURSOR_INDEX].fontId);
    vwf_draw_text(1u, 2u, 0x8B, (const unsigned char *)fontData[CURSOR_INDEX].name);
    vwf_draw_text(0u, 3u, 0x94, (const unsigned char *)fontData[CURSOR_INDEX].description);
}

//endregion

//region Textarea VWF

//How to render text with a textarea:
void drawFontInfo_TextArea() {
    //Initialize textarea
//    vwf_textarea_activate_font(0u);//fontData[CURSOR_INDEX].fontId);
//    vwf_initialize_textarea(1u, 2u, DEVICE_SCREEN_WIDTH - 2u, DEVICE_SCREEN_HEIGHT - 4u, 0x8B);
//
//    //Set next text segment
//    vwf_textarea_current_segment = (vwf_text_segment_t *) &tsCoCaGBv2_desc;
//    vwf_textarea_current_segment_bank = BANK(text_font_info);
//
//    //Enable textarea
//    vwf_textarea_enabled = TRUE;

    //Voila! Your text renders one character at a time!

    //This next bit is toxa's vwf code
    vwf_activate_font(fontData[CURSOR_INDEX].fontId);
    vwf_draw_text(1u, 8u, 0x80, (const unsigned char *)fontData[CURSOR_INDEX].description);
}

//endregion

void debug_fontsTeardown() {
    //TODO: Clean up anything that you used
}

void initializedebug_fontsScene() {
    //Draw the screen
    RENDER_TARGET = RENDER_TARGET_BKG;
    set_bkg_tiles(0, 0, 20u, 18u, BLANK_SCREEN_MAP);

    CURSOR_INDEX = 0u;
//    drawFontInfo();
    drawFontInfo_TextArea();

    SPRITES_8x8;
    SHOW_SPRITES;
}

void handledebug_fontsUpdate() {
    CURSOR_INDEX_PREV = CURSOR_INDEX;

    //Handle updating any variable state based on input

    if((JOYPAD_CURRENT & J_B) && !(JOYPAD_PREVIOUS & J_B)) {
        GAME_STATE = STATE_DEBUGROOM;
    } else if((JOYPAD_CURRENT & J_LEFT) && !(JOYPAD_PREVIOUS & J_LEFT)) {
        if(CURSOR_INDEX == 0u) {
            CURSOR_INDEX = FONT_COUNT - 1u;
        } else {
            CURSOR_INDEX--;
        }
    } else if((JOYPAD_CURRENT & J_RIGHT) && !(JOYPAD_PREVIOUS & J_RIGHT)) {
        if(CURSOR_INDEX == (FONT_COUNT - 1u)) {
            CURSOR_INDEX = 0u;
        } else {
            CURSOR_INDEX++;
        }
    }
}

void drawdebug_fontsScene() {
    if(CURSOR_INDEX != CURSOR_INDEX_PREV) {
//        set_bkg_tiles(0, 0, 20u, 18u, BLANK_SCREEN_MAP);
//        drawFontInfo();
    }
}

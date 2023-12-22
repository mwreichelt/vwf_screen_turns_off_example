#include <gb/gb.h>
#include "common.h"
#include "GraphicsLoader_UI.h"

#include "WindowBorders.h"
#include "Icon_Small_Arrows.h"
#include "Toggle1x2.h"

#pragma bank 0

BANKREF_EXTERN(WindowBorders_bank)
BANKREF_EXTERN(Icon_Small_Arrows_bank)
BANKREF_EXTERN(Toggle1x2_bank)


/**
 * @brief Loads the graphics data for ui elements of the specified index into VRAM at the specified location.
 * Requires global variables:
 * TEMP_VAR_A - The index of the ui element to load into VRAM
 * TEMP_VAR_B - The index in VRAM to load the ui element at
 */
void loadUIGraphics() {
    switch(UI_GRAPHICS_INDEX) {
        case UI_GRAPHICS_WINDOW_BORDERS_INDEX:
            set_banked_data(UI_GRAPHICS_VRAM_START, 8u, WindowBorders, BANK(WindowBorders_bank));
            break;
        case UI_GRAPHICS_SMALL_ARROWS_INDEX:
            set_banked_data(UI_GRAPHICS_VRAM_START, 4u, Icon_Small_Arrows, BANK(Icon_Small_Arrows_bank));
            break;
        case UI_GRAPHICS_TOGGLE_INDEX:
            set_banked_data(UI_GRAPHICS_VRAM_START, 8u, Toggle1x2_tiles, BANK(Toggle1x2_bank));
            break;
    }
}
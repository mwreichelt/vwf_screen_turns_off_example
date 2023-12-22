#include <gb/gb.h>
#include "common.h"
#include "GraphicsLoader_FullScreen.h"

#include "Title_SalvageFrontier_tiles.h"
#include "Title_SalvageFrontier_map.h"

#pragma bank 0

BANKREF_EXTERN(TitleSalvageFrontier_tiles_bank)
BANKREF_EXTERN(TitleSalvageFrontier_map_bank)

/**
 * @brief Loads the graphics data for a full screen image of the specified index into VRAM at the appropriate location.
 * Requires global variables:
 * TEMP_VAR_A - The index of the full screen image
 */
void loadFullScreenGraphics() {
    switch(FULLSCREEN_GRAPHICS_INDEX) {
        case FULLSCREEN_GRAPHICS_TITLESCREEN_INDEX:
        default:
            set_banked_data(0, 143u, TitleSalvageFrontier, BANK(TitleSalvageFrontier_tiles_bank));
            set_banked_tiles(0, 0, Title_SalvageFrontierWidth, Title_SalvageFrontierHeight, Title_SalvageFrontier, BANK(TitleSalvageFrontier_map_bank));
            break;
    }
}
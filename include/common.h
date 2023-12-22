#include <gb/gb.h>
#include <types.h>
#include "game_structs.h"

//This is a workaround for the jetbrains CLion IDE whose language analyzer can't parse some things about the
//  gbdk-2020 defines.
#ifdef __JETBRAINS_IDE__
//I'm lying to CLion about what will be in this function because CLion loses it's shit over the assembly that's in
//  the real version of BANKREF()
#define BANKREF(VARNAME) void __func_VARNAME() {}
//I'm lying to CLion about this generating a constant at compile time because it will be a constant by compile time
#define BANK(VARNAME) ( (uint8_t) 1u )
//Same as BANK() above. I wish there was a better way to get CLion to figure this shit out.
#define SFX_MUTE_MASK(VARNAME) ( (uint8_t) 1u )
#endif

#define VGM2GBSFX_DRIVER
//#define VGM_TIMER

#define STATE_TITLESCREEN 0u
#define STATE_MAINMENU 8u
#define STATE_DEBUGROOM 9u
#define STATE_DEBUG_MUSIC 10u
#define STATE_DEBUG_TEXT 20u

#define SUBMODE_DEFAULT 0u

#define FONT_VWF_PARAGRAPH 0u
#define FONT_VWF_CONDENSED 1u
#define FONT_VWF_MINIMAL_S 2u
#define FONT_VWF_MINIMAL_L 3u

#define RENDER_TARGET_BKG 0u
#define RENDER_TARGET_WIN 1u

#define VRAM_FONT_START 0x20

#define VRAM_SMALL_ARROWS_START 0xC4

#define VRAM_WINDOW_BORDERS_START 0x60
#define VRAM_WINDOW_BORDER_TOP (uint8_t)(VRAM_WINDOW_BORDERS_START + 4u)
#define VRAM_WINDOW_BORDER_LEFT (uint8_t)(VRAM_WINDOW_BORDER_TOP + 1u)
#define VRAM_WINDOW_BORDER_RIGHT (uint8_t)(VRAM_WINDOW_BORDER_LEFT + 1u)
#define VRAM_WINDOW_BORDER_BOTTOM (uint8_t)(VRAM_WINDOW_BORDER_RIGHT + 1u)
#define VRAM_WINDOW_BORDER_TOPLEFT VRAM_WINDOW_BORDERS_START
#define VRAM_WINDOW_BORDER_TOPRIGHT (uint8_t)(VRAM_WINDOW_BORDERS_START + 1u)
#define VRAM_WINDOW_BORDER_BOTTOMLEFT (uint8_t)(VRAM_WINDOW_BORDERS_START + 2u)
#define VRAM_WINDOW_BORDER_BOTTOMRIGHT (uint8_t)(VRAM_WINDOW_BORDERS_START + 3u)

#define VRAM_BLANK_TILE 0x20

#define VRAM_ICON_ARROW_UP (uint8_t)(VRAM_SMALL_ARROWS_START + 2u)
#define VRAM_ICON_ARROW_DOWN (uint8_t)(VRAM_SMALL_ARROWS_START + 1u)
#define VRAM_ICON_ARROW_RIGHT VRAM_SMALL_ARROWS_START
#define VRAM_ICON_ARROW_LEFT (uint8_t)(VRAM_SMALL_ARROWS_START + 3u)

extern uint8_t GAME_STATE, PREVIOUS_GAME_STATE;
extern uint8_t SCENE_SUBMODE, SCENE_SUBMODE_PREV;
extern uint8_t RENDER_TARGET;
extern uint8_t BANK_BACKUP;

extern uint8_t JOYPAD_CURRENT, JOYPAD_PREVIOUS;

extern uint8_t CURSOR_INDEX;
extern uint8_t CURSOR_INDEX_PREV;
extern uint16_t RNG_SEED;
extern uint8_t RNG_8;
extern uint8_t TEMP_VAR_A;
extern uint8_t TEMP_VAR_B;
extern uint8_t TEMP_VAR_C;
extern uint8_t TEMP_VAR_D;
extern uint8_t TEMP_VAR_E;
extern uint8_t TEMP_VAR_F;
extern char TEMP_STRING[16];

extern uint8_t FRAME_COUNTER;
extern uint8_t ANIMATION_TICK;
extern uint8_t ANIMATION_TICK_SPEED;

extern uint8_t MUSIC_TOGGLE;
extern music_data_t VAR_MUSIC_DATA;
extern sfx_data_t VAR_SFX_DATA;

extern const unsigned char BLANK_SCREEN_TILES[256];
extern unsigned char BLANK_SCREEN_MAP[];

extern unsigned char ITOA_STRING[4];

void drawTextBkg(uint8_t x, uint8_t y, unsigned char* const text);
void makeLeadingZeroString(uint8_t value, unsigned char finalStr[4]);
void drawWindowBorder(uint8_t x, uint8_t y, uint8_t w, uint8_t h);
void set_banked_data(uint8_t first_tile, uint8_t nb_tiles, const uint8_t *data, uint8_t bank);
void cpy_banked_data(void * dest, const void * src, size_t len, uint8_t bank);
void set_banked_tiles(uint8_t x_pos, uint8_t y_pos, uint8_t width, uint8_t height, const unsigned char * tile_data, uint8_t bank);
void set_based_banked_tiles(uint8_t x_pos, uint8_t y_pos, uint8_t width, uint8_t height, const unsigned char * tile_data, uint8_t bank, uint8_t base_tile);

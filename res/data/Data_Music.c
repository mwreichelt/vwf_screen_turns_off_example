#include "common.h"
#include "game_structs.h"
#include "Data_Music.h"

#include "song_template.h"

#pragma bank 255
BANKREF(Data_Music_bank)

BANKREF_EXTERN(song_template)

music_data_t Data_Music[MUSIC_TRACK_COUNT] = {
        { "NONE         ", 0u, 0u },
        { "TEMPLATE     ", BANK(song_template), &template },
};
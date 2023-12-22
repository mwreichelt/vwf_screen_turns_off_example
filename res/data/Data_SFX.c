#include "musicmanager.h"
#include "common.h"
#include "Data_SFX.h"

#include "sound_effect1.h"
#include "sound_effect2.h"
#include "sound_effect3.h"

#pragma bank 255
BANKREF(Data_SFX_bank)

BANKREF_EXTERN(sound_effect1)
BANKREF_EXTERN(sound_effect2)
BANKREF_EXTERN(sound_effect3)

sfx_data_t Data_SFX[MUSIC_SFX_COUNT] = {
        {"NONE         ", 0u, 0u, 0u},
        {"SFX1         ", BANK(sound_effect1), sound_effect1, SFX_MUTE_MASK(sound_effect1) },
        {"SFX2         ", BANK(sound_effect2), sound_effect2, SFX_MUTE_MASK(sound_effect2) },
        {"SFX3         ", BANK(sound_effect3), sound_effect3, SFX_MUTE_MASK(sound_effect3) },
};
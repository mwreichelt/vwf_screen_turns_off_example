#ifndef GAME_STRUCTS
#define GAME_STRUCTS

#include <stdint.h>
#include "hUGEDriver_b9.h"

typedef struct PlayerSkill{
    uint8_t icon_id;
    uint8_t phys_atk;
    uint8_t beam_atk;
    uint8_t healing_power;
    uint8_t energy_cost;
    uint8_t self_buff_id;
    uint8_t foe_buff_id;
    char name[16];
} PlayerSkill_t;

//The AI pattern should be an unsigned byte where each bit holds some flag for how the enemy AI behaves
//e.g.
// 0-1: How many attacks per turn?
// 2-3: Is it likely to heal? 0 for no, and then 1-3 is increasingly likely
// 4-5: Does it buff? 0 for no, 1-3 increasingly cares about buffs/debuffs
// 6-7: Difficulty lever; If 0 it should pick skills at random and do nothing if a slot with no skill is selected. If 1 it should use skills in order. 2 and 3 should be for harder fights. 3 is the hardest ai.
//
//Abilities is a 16 bit integer that's really four 4-bit values that point to a list of enemy abilities. That gives me 16 abilities to implement for foes.
//Moves is the same as abilities right now. That's 16 moves for foes.
//Appearance is a 16-bit integer that breaks down into four 4-bit values. The values are for different parts of the enemy image; in order: head, body, arms, legs.

typedef struct EnemyData{
    unsigned char const name[8];
    uint8_t phys_atk;
    uint8_t phys_def;
    uint8_t beam_atk;
    uint8_t beam_def;
    uint8_t max_hp;
    uint8_t ai_pattern;
    uint16_t abilities;
    uint16_t moves;
    uint8_t appearance_head;
    uint8_t appearance_larm;
    uint8_t appearance_rarm;
    uint8_t appearance_legs;
    uint8_t appearance_lshoulder;
    uint8_t appearance_rshoulder;
    uint8_t appearance_antenna;
} EnemyData_t;

typedef struct EnemySkill {
    unsigned char *const name;
    uint8_t phys_atk;
    uint8_t beam_atk;
    uint8_t selfBuff;
    uint8_t foeBuff;
    uint8_t healing_power;
} EnemySkill_t;

//Buffs are not just a straight number.
//Bits 0-3: a number from 0-15.
//Bit 4: Is this buff a flat add to the stat (0) or is it multiplicative (1)? (UNIMPLEMENTED)
//Bit 5: Is this buff based off a percentage of the target's stat? (bit 4 == 1 only)
//Bit 6: Is this buff value multiplied by 2?
//Bit 7: Is this a buff or a debuff?
//The buff_options bytes are as follows:
//Bit 0: Is the target the user (0) or the opponent (1)?
//Bit 1: Is the buff removable?
//Bit 2-4: How long until the buff expires? unsigned 3-bit int.
//Bit 5-7: Unused
typedef struct Buff {
    uint8_t phys_atk;
    uint8_t phys_def;
    uint8_t beam_atk;
    uint8_t beam_def;
    uint8_t en_regen;
    uint8_t buff_options;
    uint8_t buff_id;
} Buff_t;

//What do I want abilities to do?
// typedef struct Ability {
    
// } Ability_t;

//The message_options byte is laid out as follows:
//Bits 0-2: A number from 0-7 to denote what the message type is. All other bits are dependent on this number.
/*  0) Player/Enemy skill use.
        "<player or foe icon> used <skillName>."
        Bit 3: 1 if foe, 0 if player
        Bit 4-7: Unused.
        message_value: id of the player/foe skill that was used
    1) Buff/Debuff applied.
        Currently no message for this, but I'm reserving its spot just in case.
    2) What stats are buffed/debuffed.
        "<statIcon><one or more arrows all of which are up or down>"
        Bits 3-5: 3-bit number of which stat icon to show. Follows the normal stat order. Ends with speed, hp and en.
        Bit 6: Are the arrows up or down?
        Bit 7: 1 if foe is target, 0 if player is target
        message_value: How many arrows to display?
    3) Was the battle lost or won.
        "Battle won" or "Defeated"
        Bits 3-7: Unused.
        message_value: 1 for a win, 0 for a loss.
    4) Amount of damage dealt.
        "<player or foe icon> deals <damage number> <physical or beam atk or healing icon> dmg"
        Bit 3: 1 if foe, 0 if player
        Bit 4-5: number of which stat icon to show. Follows the normal stat order. Ends with speed, hp and en.
        Bit 6-7: Unused.
        message_value: The damage number to display.
    5) Amount of HP changed.
        "<player or foe icon><right arrow><new hp value><hp icon>"
        Bit 3: 1 if foe, 0 if player
        Bit 4-7: Unused.
        message_value: The new hp value.
    6) Buff/Debuff wears off.
        Currently no message for this, but I'm reserving its spot just in case.
    7) Unused.
*/
typedef struct EncodedMessage {
    uint8_t message_options;
    uint8_t message_value;
} EncodedMessage_t;

/**
 A piece of equipment needs the following:
 A name
 One int (signed) of each stat that equipment can affect
 An appearance (an index to a set of tiles)
 A slot id
 One or more abilities
 */
typedef struct Equipment {
    unsigned char name[8];
    int8_t patk;
    int8_t pdef;
    int8_t batk;
    int8_t bdef;
    int8_t max_hp;
    int8_t max_en;
    int8_t en_regen;
    uint8_t appearance;
    uint8_t slot_id;
    uint8_t ability_one;
    uint8_t ability_two;
    uint8_t skill_id;
    uint8_t skill_enabled;
} Equipment_t;

#define EQUIP_SLOT_HEAD 1u
#define EQUIP_SLOT_LARM 2u
#define EQUIP_SLOT_RARM 3u
#define EQUIP_SLOT_LEGS 4u
#define EQUIP_SLOT_LSHOULDER 5u
#define EQUIP_SLOT_RSHOULDER 6u
//Antenna is for enemies only
#define EQUIP_SLOT_ANTENNA 7u

/**
 * Each enemy can drop different bits of equipment.
 * Each enemy can drop the same number of different equipment.
 * Each enemy can drop one equipment less frequently than the others.
 */
typedef struct LootTable {
    uint8_t common_drop_1_id;
    uint8_t common_drop_2_id;
    uint8_t rare_drop_id;
} LootTable_t;

/**
 * First pass at an ability struct.
 */
typedef struct Ability {
    uint8_t ability_id;
    uint8_t ability_param;
    char name[9];
} Ability_t;

/**
 * Struct for holding data about music tracks
 */
typedef struct music_data {
    unsigned char title[14];
    uint8_t bank;
    const hUGESong_t * data;
} music_data_t;

/**
 * Struct for holding data about sound effects
 */
typedef struct sfx_data {
    unsigned char title[14];
    uint8_t bank;
    const uint8_t * data;
    uint8_t mute_mask;
} sfx_data_t;

#endif
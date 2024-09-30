#ifndef POKEDIAMOND_POKEDEX_H
#define POKEDIAMOND_POKEDEX_H

#include "global.h"

#include "pokemon.h"
#include "save.h"

typedef struct Pokedex {
    /* 0x0000 */ u32 magic; // BEEFCAFE
    /* 0x0004 */ u8 caughtFlags[0x3C];
    /* 0x0040 */ u32 caughtFlagsHi_Deoxys1; // Deoxys form plus top 13 dex flags
    /* 0x0044 */ u8 seenFlags[0x3C];
    /* 0x0080 */ u32 seenFlagsHi_Deoxys2; // Deoxys form plus top 13 dex flags
    /* 0x0084 */ u8 field_0084[0x40];     // Genders
    /* 0x00C4 */ u8 field_00C4[0x40];     // Genders
    /* 0x0104 */ u32 spindaPersonality;   // spinda personality
    /* 0x0108 */ u8 shellosGastrodon[2];  // Shellos/Gastrodon
    /* 0x0108 */ u8 burmyWormadam[2];     // Burmy/Wormadam
    /* 0x010C */ u8 seenUnown[28];        // Unown
    /* 0x0128 */ u8 unlockedGenderEntries;
    /* 0x0129 */ u8 meister[14]; // Meister?
    /* 0x0137 */ u8 unlockedForeignEntries;
    /* 0x0138 */ u8 unlockedSinnohDex;
    /* 0x0139 */ u8 unlockedNationalDex;
    /* 0x013A */ u8 padding_013A[2];
} Pokedex;

u32 Save_Pokedex_sizeof(void);
struct Pokedex *Save_Pokedex_New(HeapID heapId);
void Save_Pokedex_Copy(const struct Pokedex *src, struct Pokedex *dest);
s32 Pokedex_CountSeenShellosOrGastrodon_Internal(struct Pokedex *pokedex, u32 species);
BOOL Pokedex_HasSeenShellosOrGastrodonForm(struct Pokedex *pokedex, u32 species, u8 state);
void Pokedex_SetSeenShellosOrGastrodonForm(struct Pokedex *pokedex, u32 species, u32 state);
s32 Pokedex_CountSeenBurmyOrWormadam_Internal(struct Pokedex *pokedex, u32 species);
BOOL Pokedex_HasSeenBurmyOrWormadamForm(struct Pokedex *pokedex, u32 species, u8 state);
void Pokedex_SetSeenBurmyOrWormadamForm(struct Pokedex *pokedex, u32 species, s32 state);
void Pokedex_SetSeenDeoxysFormAt(struct Pokedex *pokedex, u8 r4, u8 r6);
s32 Pokedex_CountSeenDeoxysForms_Internal(struct Pokedex *pokedex);
BOOL Pokedex_HasSeenDeoxysForm(struct Pokedex *pokedex, u32 state);
void Pokedex_TrySetSeenDeoxysForm(struct Pokedex *pokedex, u16 species, struct Pokemon *pokemon);
void Pokedex_InitSeenDeoxysFormsArray(struct Pokedex *pokedex);
void Pokedex_SetMonSeenForm(struct Pokedex *pokedex, u16 species, struct Pokemon *pokemon);
void Pokedex_SetMeisterFlagBySpeciesAndLanguage(struct Pokedex *pokedex, u32 species, u32 language);
s32 sub_020242C8(struct Pokedex *pokedex, u16 species, s32 r4);
BOOL Pokedex_SpeciesIsNotMythical(u16 species);
BOOL Pokedex_SpeciesIsNotSinnohMythical(u16 species);
void Save_Pokedex_Init(struct Pokedex *pokedex);
u16 Pokedex_CountNationalDexOwned(struct Pokedex *pokedex);
u16 Pokedex_CountNationalDexSeen(struct Pokedex *pokedex);
u16 Pokedex_CountSeenMons(struct Pokedex *pokedex);
u16 Pokedex_CountSinnohDexOwned(struct Pokedex *pokedex);
u16 Pokedex_CountSinnohDexSeen(struct Pokedex *pokedex);
BOOL Pokedex_NationalDexIsComplete(struct Pokedex *pokedex);
BOOL Pokedex_SinnohDexIsComplete(struct Pokedex *pokedex);
u16 Pokedex_CountNationalDexOwned_OmitMythicals(struct Pokedex *pokedex);
u16 Pokedex_CountSinnohDexSeen_OmitMythicals(struct Pokedex *pokedex);
BOOL Pokedex_CheckMonCaughtFlag(struct Pokedex *pokedex, u16 species);
BOOL Pokedex_CheckMonSeenFlag(struct Pokedex *pokedex, u16 species);
u32 Pokedex_GetSeenSpindaPersonality(struct Pokedex *pokedex, u32 a1);
s32 sub_02024674(struct Pokedex *pokedex, u16 species, s32 r6);
s32 Pokedex_GetSeenUnownI(struct Pokedex *pokedex, s32 a1);
s32 Pokedex_CountSeenUnown(struct Pokedex *pokedex);
BOOL Pokedex_GetSeenShellosForm(struct Pokedex *pokedex, s32 a1);
s32 Pokedex_CountSeenShellos(struct Pokedex *pokedex);
BOOL Pokedex_GetSeenGastrodonForm(struct Pokedex *pokedex, s32 a1);
s32 Pokedex_CountSeenGastrodon(struct Pokedex *pokedex);
s32 Pokedex_GetSeenBurmyForm(struct Pokedex *pokedex, s32 a1);
s32 Pokedex_CountSeenBurmy(struct Pokedex *pokedex);
s32 Pokedex_GetSeenWormadamForm(struct Pokedex *pokedex, s32 a1);
s32 Pokedex_CountSeenWormadam(struct Pokedex *pokedex);
s32 Pokedex_GetSeenDeoxysForm(struct Pokedex *pokedex, s32 a1);
s32 Pokedex_CountSeenDeoxys(struct Pokedex *pokedex);
void Pokedex_SetMonSeenFlag(struct Pokedex *pokedex, struct Pokemon *pokemon);
void Pokedex_SetMonCaughtFlag(struct Pokedex *pokedex, struct Pokemon *pokemon);
void Pokedex_SetNatDexFlag(struct Pokedex *pokedex);
BOOL Pokedex_GetNatDexFlag(struct Pokedex *pokedex);
BOOL Pokedex_GetGenderEntriesFlag(struct Pokedex *pokedex);
void Pokedex_SetGenderEntriesFlag(struct Pokedex *pokedex);
s32 Pokedex_GetMeisterFlagBySpeciesAndLanguage(struct Pokedex *pokedex, u32 species, u32 language);
void Pokedex_SetForeignEntriesFlag(struct Pokedex *pokedex);
BOOL Pokedex_GetForeignEntriesFlag(struct Pokedex *pokedex);
BOOL Pokedex_GetSinnohDexFlag(struct Pokedex *pokedex);
void Pokedex_SetSinnohDexFlag(struct Pokedex *pokedex);
struct Pokedex *Save_Pokedex_Get(struct SaveData *save);
s32 Pokedex_GetSeenMonForm(struct Pokedex *pokedex, s32 a1, u32 a2);

#endif // POKEDIAMOND_POKEDEX_H

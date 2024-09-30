#ifndef GUARD_MAIN_H
#define GUARD_MAIN_H

#include "FS_overlay.h"
#include "SPI_pm.h"
#include "overlay_manager.h"
#include "save.h"

struct Unk21C4818 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
};

struct Unk21C4828 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
};

struct UnkStruct_021C4918 {
    s32 unk0;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8;
    u8 padding[3];
};

struct Main {
    void (*vBlankIntr)(void *);
    void *vBlankIntrArg;
    void (*hBlankIntr)(void *);
    void *hBlankIntrArg;
    s32 unk10;
    s32 unk14;
    void *unk18;
    void *unk1C;
    void *unk20;
    void *unk24;
    s32 unk28;
    u32 unk2C;
    s32 unk30;
    u32 buttonMode;
    u32 heldKeysRaw;
    u32 newKeysRaw;
    u32 newAndRepeatedKeysRaw;
    u32 heldKeys;
    u32 newKeys;
    u32 newAndRepeatedKeys;
    s32 keyRepeatCounter;
    s32 keyRepeatContinueDelay;
    s32 keyRepeatStartDelay;
    u16 touchX;
    u16 touchY;
    u16 touchNew;
    u16 touchHeld;
    u8 touchpadReadAuto;
    u8 screensFlipped;
    u8 gbaCartId;
    u8 unk67;
    u8 softResetDisabled;
    u8 padding_69[3]; // nice
    s32 unk6C;
};

// extern struct UnkStruct_021C4918 gSystem + 0x60;

extern PMBackLightSwitch gBacklightTop;
extern s32 UNK_02016FA4;

struct UnkStruct_02016FA8 {
    FSOverlayID mainOverlayId;
    struct OverlayManager *overlayManager;
    FSOverlayID queuedMainOverlayId;
    const struct OverlayManagerTemplate *template;
    s32 unk10;
    s32 unk14;
    struct SaveData *save;
};

extern struct UnkStruct_02016FA8 UNK_02016FA8;

void NitroMain(void);

extern struct Main gSystem;

void sub_02000DF4(void);
void Main_RunOverlayManager(void);
void RegisterMainOverlay(FSOverlayID id, const struct OverlayManagerTemplate *template);
void sub_02000E9C(void);
void sub_02000EC8(u32 parameter);
void sub_02000EE8(void);
void DoSoftReset(u32 parameter);
void sub_02000F4C(u32 arg0, u32 arg1);
void InitializeMainRNG(void);
void HandleDSLidAction(void);

#endif // GUARD_MAIN_H

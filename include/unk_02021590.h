#ifndef POKEDIAMOND_UNK_02021590_H
#define POKEDIAMOND_UNK_02021590_H

#include "filesystem.h"
#include "font.h"

struct FontGraphicHeader {
    u32 headerSize;
    u32 widthDataStart;
    u32 numGlyphs;
    u8 fixedWidth;
    u8 fixedHeight;
    u8 glyphWidth;
    u8 glyphHeight;
};

struct FontData {
    u32 glyphAccessMode;
    void (*uncompGlyphFunc)(struct FontData *, u16, struct UnkStruct_02002C14_sub *);
    u32 glyphShape;
    u32 glyphSize;
    void *narcReadBuf;
    u8 glyphReadBuf[0x40];
    NARC *narc;
    u32 fileId;
    struct FontGraphicHeader gfxHeader;
    BOOL isFixedWidthFont;
    int (*glyphWidthFunc)(struct FontData *, int);
    u8 *glyphWidths;
};

struct FontData *FontData_New(NarcId narcId, s32 fileId, u32 unk2, BOOL unk3, HeapID heapId);
void FontData_Delete(struct FontData *ptr);
void FontData_ModeSwitch(struct FontData *ptr, u32 a1, HeapID heapId);
void FontData_Init(struct FontData *ptr, NarcId narcId, s32 fileId, BOOL unk, HeapID heapId);
void FontData_FreeWidthsAndNarc(struct FontData *ptr);
void InitFontResources(struct FontData *ptr, u32 a1, HeapID heapId);
void InitFontResources_FromPreloaded(struct FontData *ptr, HeapID heapId);
void InitFontResources_LazyFromNarc(struct FontData *ptr, HeapID heapId);
void FreeLoadedFontResources(struct FontData *ptr);
void FreeLoadedFontResources_FromPreloaded(struct FontData *ptr);
void FreeLoadedFontResources_LazyFromNarc(struct FontData *ptr);
void TryLoadGlyph(struct FontData *ptr, u32 param1, struct UnkStruct_02002C14_sub *ptr2);
void DecompressGlyphTiles_FromPreloaded(struct FontData *ptr, u16 param1, struct UnkStruct_02002C14_sub *param2);
void DecompressGlyphTiles_LazyFromNarc(struct FontData *ptr, u16 param1, struct UnkStruct_02002C14_sub *param2);
u32 GetStringWidth(struct FontData *ptr, const u16 *str, u32 letterSpacing);
int GetGlyphWidth_VariableWidth(struct FontData *ptr, int a1);
int GetGlyphWidth_FixedWidth(struct FontData *ptr, int a1);
s32 GetStringWidthMultiline(struct FontData *r7, const u16 *arr, u32 r6);
s32 StringGetWidth_SingleLine_HandleClearToControlCode(struct FontData *r6, const u16 *arr);

#endif // POKEDIAMOND_UNK_02021590_H

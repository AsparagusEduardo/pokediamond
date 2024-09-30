#ifndef POKEDIAMOND_UNK_0200BB14_H
#define POKEDIAMOND_UNK_0200BB14_H

#include "global.h"

#include "unk_02008DEC.h"

struct UnkStruct_0200BB14_1 {
    HeapID heapId;
    u32 unk004;
    u32 unk008;
    u32 unk00c;
    u8 unk010[0x128];
};

struct UnkStruct_0200BB14_2 {
    u32 unk00;
    struct UnkStruct_02008AA4_1 *unk04;
    struct UnkStruct_02008DEC_2 *unk08;
    struct UnkStruct_02008DEC_1 *unk0c[6];
    struct UnkStruct_02008DEC_5 *unk24[6];
    s32 unk3c[6];
    s32 unk54;
};

struct UnkStruct_0200BB14_3 {
    u32 unk00;
    s16 unk04;
    s16 unk06;
    u16 unk08;
    u16 unk0a;
    u32 unk0c;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1c;
    u32 unk20;
    u32 unk24;
};

struct UnkStruct_0200BB14_sub {
    u32 unk00;
    u32 unk04;
    u32 unk08;
    u32 unk0C;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    u8 unk20;
    u8 unk21[0x3];
};

struct UnkStruct_0200BB14_4 {
    u32 unk00;
    struct UnkStruct_0200BB14_sub *unk04;
    s32 unk08;
    s32 unk0c;
    s32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1c;
    u16 unk20;
    u32 unk24;
    u32 unk28;
    u32 unk2c;
};

struct UnkStruct_0200BB14_6 {
    struct UnkStruct_0200BB14_sub *unk0;
    u32 unk4;
};
struct UnkStruct_0200BB14_5 {
    u32 unk00;
    struct UnkStruct_0200BB14_sub *unk04;
    struct UnkStruct_0200BB14_6 *unk08;
    u32 unk0c;
};

struct UnkStruct_0200BB14_1 *sub_0200BB14(HeapID heapId);
struct UnkStruct_0200BB14_2 *sub_0200BB34(struct UnkStruct_0200BB14_1 *param0);
u32 sub_0200BB68(u32 param0);
BOOL sub_0200BB6C(struct UnkStruct_0200BB14_1 *param0, u32 *param1, u32 *param2, u32 param3);
BOOL sub_0200BBF0(
    struct UnkStruct_0200BB14_1 *param0, struct UnkStruct_0200BB14_2 *param1, u32 param2);
void sub_0200BC14(u32 param0);
void sub_0200BC1C(u32 *param0);
void sub_0200BC30();
void sub_0200BC38();
void sub_0200BC40(struct UnkStruct_0200BB14_2 *param0);
void sub_0200BC4C(struct UnkStruct_0200BB14_2 *param0);
void sub_0200BC5C(struct UnkStruct_0200BB14_2 *param0);
void sub_0200BCB0(u32 *param0);
void sub_0200BCD0(struct UnkStruct_0200BB14_1 *param0, struct UnkStruct_0200BB14_2 *param1);
void sub_0200BCE0(struct UnkStruct_0200BB14_1 *param0, struct UnkStruct_0200BB14_2 *param1);
void sub_0200BD04(u32 *param0);
BOOL sub_0200BD20(
    struct UnkStruct_0200BB14_1 *param0, struct UnkStruct_0200BB14_2 *param1, const char **param2);
u32 sub_0200BE38(u32 *param0, u32 *param1, struct UnkStruct_0200BB14_3 *param2);
u32 sub_0200BE74(u32 *param0,
    u32 *param1,
    u32 param2,
    s16 param3,
    s16 param4,
    s16 param5,
    u16 param6,
    u32 param7,
    u32 param8,
    u32 param9,
    u32 param10,
    u32 param11,
    u32 param12,
    u32 param13);
BOOL sub_0200BF60(
    struct UnkStruct_0200BB14_1 *param0, struct UnkStruct_0200BB14_2 *param1, s32 *param2);
BOOL sub_0200C00C(HeapID *heapId,
    struct UnkStruct_0200BB14_2 *param1,
    NarcId param2,
    s32 param3,
    BOOL param4,
    u32 param5,
    s32 param6);
s32 sub_0200C06C(HeapID *heapId,
    struct UnkStruct_0200BB14_2 *param1,
    NarcId param2,
    s32 param3,
    BOOL param4,
    u32 param5,
    u32 param6,
    s32 param7);
u8 sub_0200C0DC(u32 param0,
    u32 param1,
    HeapID *heapId,
    struct UnkStruct_0200BB14_2 *param3,
    NarcId param4,
    s32 param5,
    BOOL param6,
    u32 param7,
    u32 param8,
    s32 param9);
BOOL sub_0200C124(HeapID *heapId,
    struct UnkStruct_0200BB14_2 *param1,
    NarcId param2,
    s32 param3,
    BOOL param4,
    s32 param5);
BOOL sub_0200C13C(HeapID *heapId,
    struct UnkStruct_0200BB14_2 *param1,
    NarcId param2,
    s32 param3,
    BOOL param4,
    s32 param5);
struct UnkStruct_0200BB14_5 *sub_0200C154(
    struct UnkStruct_0200BB14_1 *param0, struct UnkStruct_0200BB14_2 *param1, u32 *param2);
u32 sub_0200C334(struct UnkStruct_02008DEC_1 **param0, s32 param1);
s32 sub_0200C344(struct UnkStruct_02008DEC_1 **param0, s32 param1, u32 param2);
BOOL sub_0200C358(struct UnkStruct_0200BB14_2 *param0, u32 param1);
BOOL sub_0200C368(struct UnkStruct_0200BB14_2 *param0, u32 param1);
BOOL sub_0200C378(struct UnkStruct_0200BB14_2 *param0, u32 param1);
BOOL sub_0200C388(struct UnkStruct_0200BB14_2 *param0, u32 param1);
void sub_0200C398(struct UnkStruct_0200BB14_1 *param0, struct UnkStruct_0200BB14_2 *param1);
void sub_0200C3DC(u32 *param0);
BOOL sub_0200C404(HeapID *heapId,
    struct UnkStruct_0200BB14_2 *param1,
    NarcId param2,
    s32 param3,
    BOOL param4,
    u32 param5,
    s32 param6);
BOOL sub_0200C474(struct UnkStruct_02008DEC_5 *param0, struct UnkStruct_02008DEC_sub *param1);
BOOL sub_0200C4A8(struct UnkStruct_02008DEC_1 *param0, struct UnkStruct_02008DEC_5 *param1, u32 param2);
BOOL sub_0200C4F4(struct UnkStruct_02008DEC_1 *param0, struct UnkStruct_02008DEC_5 *param1, u32 param2);
BOOL sub_0200C548(struct UnkStruct_02008DEC_1 *param0, struct UnkStruct_02008DEC_5 *param1, u32 param2);
void sub_0200C59C(u32 param0);
void sub_0200C5A8(u32 *param0);
void sub_0200C5B4(u32 *param0, u32 param1);
void sub_0200C5C0(u32 *param0, u32 param1);
u32 sub_0200C5CC(u32 *param0);
void sub_0200C5D8(u32 param0, u32 param1);
void sub_0200C5E0(u32 *param0, u32 param1);
void sub_0200C5EC(u32 param0, u32 param1);
void sub_0200C5F4(u32 *param0, u32 param1);
u32 sub_0200C600(u32 param0);
u32 sub_0200C608(u32 *param0);
void sub_0200C614(u32 param0);
void sub_0200C61C(u32 *param0);
void sub_0200C628(u32 param0);
void sub_0200C630(u32 *param0);
void sub_0200C63C(u32 param0, u32 param1);
void sub_0200C644(u32 *param0, u32 param1);
u8 sub_0200C650(u32 param0);
u8 sub_0200C658(u32 *param0);
void sub_0200C664(u32 param0, u32 param1);
void sub_0200C66C(u32 *param0, u32 param1);
void sub_0200C678(u32 param0, u32 param1);
void sub_0200C680(u32 *param0, u32 param1);
u8 sub_0200C68C(u32 *param0);
void sub_0200C698(u32 param0, u32 param1);
u8 sub_0200C6A4(u32 *param0);
void sub_0200C6B0(u32 *param0, u32 param1);
void sub_0200C6BC(u32 param0, u32 param1);
void sub_0200C6C4(u32 *param0, u32 param1);
u16 sub_0200C6D0(u32 param0);
u16 sub_0200C6D8(u32 *param0);
void sub_0200C6E4(u32 param0, u32 param1, u32 param2);
void sub_0200C714(u32 *param0, u32 param1, u32 param2);
void sub_0200C720(u32 param0, u32 param1, u32 param2, u32 param3);
void sub_0200C750(u32 *param0, u32 param1, u32 param2, u32 param3);
void sub_0200C75C(u32 param0, u16 *param1, u16 *param2);
void sub_0200C7A0(u32 *param0, u16 *param1, u16 *param2);
void sub_0200C7AC(u32 param0, u16 *param1, u16 *param2, s32 param3);
void sub_0200C7F0(u32 *param0, u16 *param1, u16 *param2, s32 param3);
void sub_0200C7FC(u32 param0, u16 *param1, u16 *param2);
void sub_0200C82C(u32 *param0, u16 *param1, u16 *param2);
void sub_0200C838(u32 param0, u32 param1);
void sub_0200C840(u32 *param0, u32 param1);
void sub_0200C84C(u32 param0, f32 param1, f32 param2);
void sub_0200C884(u32 *param0, f32 param1, f32 param2);
void sub_0200C890(u32 param0, u16 param1);
void sub_0200C898(u32 *param0, u16 param1);
void sub_0200C8A4(u32 param0, u32 param1);
void sub_0200C8BC(u32 *param0, u32 param1);
void sub_0200C8C8(u32 param0, u32 param1);
void sub_0200C8D0(u32 *param0, u32 param1);
void sub_0200C8DC(u32 *param0, u32 param1, u32 param2);
void sub_0200C8F8(u32 *param0, u32 param1);
void sub_0200C904(u32 param0, u32 param1);
void sub_0200C90C(u32 *param0, u32 param1);
BOOL sub_0200C918(HeapID *heapId,
    struct UnkStruct_0200BB14_2 *param1,
    NarcId param2,
    s32 param3,
    BOOL param4,
    u32 param5,
    s32 param6);
BOOL sub_0200C978(HeapID *heapId,
    struct UnkStruct_0200BB14_2 *param1,
    NarcId param2,
    s32 param3,
    BOOL param4,
    u32 param5,
    s32 param6);
void sub_0200C9D8(
    HeapID *heapId, struct UnkStruct_02008DEC_1 **param1, NarcId param2, s32 param3, BOOL param4, s32 param5);
void sub_0200CA0C(
    HeapID *heapId, struct UnkStruct_02008DEC_1 **param1, NarcId param2, s32 param3, BOOL param4, s32 param5);
u32 sub_0200CA40(u32 *param0);

#endif // POKEDIAMOND_UNK_0200BB14_H

#ifndef POKEDIAMOND_SAV_CHATOT_H
#define POKEDIAMOND_SAV_CHATOT_H

#include "save.h"

typedef struct SaveChatotSoundClip {
    // TODO: Fill this in
    BOOL exists;
    s8 data[1000];
} SaveChatotSoundClip;

u32 Save_Chatot_sizeof(void);
void Save_Chatot_Init(struct SaveChatotSoundClip *chatot);
struct SaveChatotSoundClip *Chatot_New(HeapID heapId);
struct SaveChatotSoundClip *Save_Chatot_Get(struct SaveData *save);
BOOL Chatot_Exists(struct SaveChatotSoundClip *chatot);
void Chatot_Invalidate(struct SaveChatotSoundClip *chatot);
s8 *Chatot_GetData(struct SaveChatotSoundClip *chatot);
void Chatot_Decode(s8 *dest, const s8 *data);
void Chatot_Encode(struct SaveChatotSoundClip *chatot, const s8 *data);
void Chatot_Copy(struct SaveChatotSoundClip *dest, const struct SaveChatotSoundClip *src);

#endif // POKEDIAMOND_SAV_CHATOT_H

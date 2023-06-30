#ifndef POKEDIAMOND_UNK_020139D8_H
#define POKEDIAMOND_UNK_020139D8_H

struct UnkStruct_020139D8
{
    HeapID heapId;
    struct MsgData * msgDatas[11];
};

typedef struct SaveEasyChat
{
    u32 unk_0;
    u32 unk_4;
} SaveEasyChat;

struct UnkStruct_020139D8 * EasyChatManager_New(HeapID heapId);
void EasyChatManager_Delete(struct UnkStruct_020139D8 * unk);
void EasyChatManager_ReadWordIntoString(struct UnkStruct_020139D8 * unk, u16 a1, struct String * str);
void GetECWordIntoStringByIndex(u32 a0, struct String * a1);
u16 GetECWordIndexByPair(u16 a0, u16 a1);
void GetCategoryAndMsgNoByECWordIdx(u32 a0, s32 * a1, s32 * a2);
u32 sub_02013B28(void);
void sub_02013B2C(struct SaveEasyChat * unk);
struct SaveEasyChat * Save_EasyChat_Get(struct SaveData * save);
BOOL sub_02013B68(struct SaveEasyChat * unk, u32 a1);
u32 Save_EasyChat_RandomTrendySayingSet(struct SaveEasyChat * unk);
BOOL Save_EasyChat_TrendySayingsUnlockedAllCheck(struct SaveEasyChat * unk);
u16 TrendyWordIdxToECWord(u32 a0);
BOOL sub_02013C0C(struct SaveEasyChat * unk, u32 a1);
void sub_02013C18(struct SaveEasyChat * unk, u32 a1);
s32 sub_02013C28(u16 a0);
u16 sub_02013C6C(u16 a0, s32 a1);

#endif //POKEDIAMOND_UNK_020139D8_H

#include "scrcmd.h"
#include "player_data.h"

extern void * FieldSysGetAttrAddr(struct FieldSystem *fieldSystem, u8 idx);

extern u32 MOD05_021E27E8(struct FieldSystem *fieldSystem, u8, u8);
extern void MOD05_021E288C(u32 *);
extern void MOD05_021E28A0(struct FieldSystem *fieldSystem, u32 *);

THUMB_FUNC BOOL ScrCmd_GiveMoney(struct ScriptContext * ctx) //006F
{
    struct SaveBlock2 * sav2 = ScriptEnvironment_GetSav2Ptr(ctx->fieldSystem);
    struct PlayerData * player = Sav2_PlayerData_GetProfileAddr(sav2);

    u32 amount = ScriptReadWord(ctx);
    PlayerProfile_AddMoney(player, amount);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_TakeMoneyImmediate(struct ScriptContext * ctx) //0070 - todo: TakeMoney?
{
    struct SaveBlock2 * sav2 = ScriptEnvironment_GetSav2Ptr(ctx->fieldSystem);
    struct PlayerData * player = Sav2_PlayerData_GetProfileAddr(sav2);

    u32 amount = ScriptReadWord(ctx);
    PlayerProfile_SubMoney(player, amount);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_TakeMoneyAddress(struct ScriptContext * ctx) //01A3 - todo: TakeMoneyVar?
{
    struct SaveBlock2 * sav2 = ScriptEnvironment_GetSav2Ptr(ctx->fieldSystem);
    struct PlayerData * player = Sav2_PlayerData_GetProfileAddr(sav2);

    u16 amount = ScriptGetVar(ctx);
    PlayerProfile_SubMoney(player, (u32)amount);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_HasEnoughMoneyImmediate(struct ScriptContext * ctx) //0071 - todo: CanAffordMoney?
{
    struct SaveBlock2 * sav2 = ScriptEnvironment_GetSav2Ptr(ctx->fieldSystem);
    struct PlayerData * player = Sav2_PlayerData_GetProfileAddr(sav2);
    u16 * ret_ptr = ScriptGetVarPointer(ctx);

    u32 amount = ScriptReadWord(ctx);
    u32 money = PlayerProfile_GetMoney(player);

    if (money < amount)
    {
        *ret_ptr = 0;
    }
    else
    {
        *ret_ptr = 1;
    }

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_HasEnoughMoneyAddress(struct ScriptContext * ctx) //01AB - todo: CanAffordMoneyVar?
{
    struct SaveBlock2 * sav2 = ScriptEnvironment_GetSav2Ptr(ctx->fieldSystem);
    struct PlayerData * player = Sav2_PlayerData_GetProfileAddr(sav2);
    u16 * ret_ptr = ScriptGetVarPointer(ctx);

    u16 amount = ScriptGetVar(ctx);
    u32 money = PlayerProfile_GetMoney(player);

    if (money < amount)
    {
        *ret_ptr = 0;
    }
    else
    {
        *ret_ptr = 1;
    }

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_ShowMoneyBox(struct ScriptContext * ctx) //0072
{
    struct FieldSystem *fieldSystem = ctx->fieldSystem;
    u16 unk1 = ScriptGetVar(ctx);
    u16 unk2 = ScriptGetVar(ctx);
    u32 *unk_ret_ptr = FieldSysGetAttrAddr(fieldSystem, 0x27);

    *unk_ret_ptr = MOD05_021E27E8(ctx->fieldSystem, (u8)unk1, (u8)unk2);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_HideMoneyBox(struct ScriptContext * ctx) //0073
{
    u32 ** unk = FieldSysGetAttrAddr(ctx->fieldSystem, 0x27);
    MOD05_021E288C(*unk);

    return FALSE;
}

THUMB_FUNC BOOL ScrCmd_UpdateMoneyBox(struct ScriptContext * ctx) //0074
{
    u32 ** unk = FieldSysGetAttrAddr(ctx->fieldSystem, 0x27);
    MOD05_021E28A0(ctx->fieldSystem, *unk);

    return FALSE;
}

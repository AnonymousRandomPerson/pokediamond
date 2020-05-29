#include "global.h"
#include "main.h"
#include "poke_overlay.h"
#include "heap.h"

THUMB_FUNC struct UnkStruct_02006234 * FUN_02006234(struct Unk21DBE18 * ovly_mgr, int * a1, u32 heap_id)
{
    struct UnkStruct_02006234 * ret = (struct UnkStruct_02006234 *)AllocFromHeap(heap_id, sizeof(struct UnkStruct_02006234));
    ret->ovly_mgr = *ovly_mgr;
    ret->unk10 = 0;
    ret->unk14 = 0;
    ret->unk18 = a1;
    ret->unk1C = NULL;
    ret->unk20 = 0;
    ret->unk24 = 0;
    return ret;
}

THUMB_FUNC void FUN_02006260(struct UnkStruct_02006234 * a0)
{
    FreeToHeap(a0);
}

THUMB_FUNC void * FUN_02006268(struct UnkStruct_02006234 * a0, u32 size, u32 heap_id)
{
    return a0->unk1C = AllocFromHeap(heap_id, size);
}

THUMB_FUNC void * FUN_02006278(struct UnkStruct_02006234 * a0)
{
    return a0->unk1C;
}

THUMB_FUNC void FUN_0200627C(struct UnkStruct_02006234 * a0)
{
    FreeToHeap(a0->unk1C);
    a0->unk1C = NULL;
}

THUMB_FUNC int * FUN_0200628C(struct UnkStruct_02006234 * a0)
{
    return a0->unk18;
}

THUMB_FUNC BOOL FUN_02006290(struct UnkStruct_02006234 * a0)
{
    switch (a0->unk10)
    {
    case 0:
        if (a0->ovly_mgr.ovly != SDK_OVERLAY_INVALID_ID)
            HandleLoadOverlay(a0->ovly_mgr.ovly, 2);
        a0->unk10 = 1;
        // fallthrough
    case 1:
        if (a0->ovly_mgr.unk0(a0, &a0->unk14) == TRUE)
        {
            a0->unk10 = 2;
            a0->unk14 = 0;
        }
        break;
    case 2:
        if (a0->ovly_mgr.unk4(a0, &a0->unk14) == TRUE)
        {
            a0->unk10 = 3;
            a0->unk14 = 0;
        }
        break;
    case 3:
        if (a0->ovly_mgr.unk8(a0, &a0->unk14) == TRUE)
        {
            if (a0->ovly_mgr.ovly != SDK_OVERLAY_INVALID_ID)
                UnloadOverlayByID(a0->ovly_mgr.ovly);
            return TRUE;
        }
        break;
    }
    return FALSE;
}

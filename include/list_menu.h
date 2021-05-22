#ifndef POKEDIAMOND_LIST_MENU_H
#define POKEDIAMOND_LIST_MENU_H

#include "list_menu_cursor.h"

#define LIST_HEADER          -3
#define LIST_CANCEL          -2
#define LIST_NOTHING_CHOSEN  -1

#define LIST_NO_MULTIPLE_SCROLL    0
#define LIST_MULTIPLE_SCROLL_DPAD  1
#define LIST_MULTIPLE_SCROLL_L_R   2

struct ListMenu;

struct ListMenuItem
{
    const u16 * text;
    s32 index;
};

// TODO: Document remaining fields.
// A lot of these are named based on similar fields in gen 3.

typedef void (*LM_MOVECURSORFUNC)(struct ListMenu *list, s32 index, u8 onInit);
typedef void (*LM_ITEMPRINTFUNC)(struct ListMenu *list, s32 index, u8 y);

struct ListMenuTemplate
{
    /*0x00*/ struct ListMenuItem * items;
    /*0x04*/ LM_MOVECURSORFUNC moveCursorFunc;
    /*0x08*/ LM_ITEMPRINTFUNC itemPrintFunc;
    /*0x0C*/ struct Window * window;
    /*0x10*/ u16 totalItems;
    /*0x12*/ u16 maxShowed;
    /*0x14*/ u8 header_X;
    /*0x15*/ u8 item_X;
    /*0x16*/ u8 cursor_X;
    /*0x17*/ u8 upText_Y:4;
             u8 cursorPal:4;
    /*0x18*/ u8 fillValue:4;
             u8 cursorShadowPal:4;
    /*0x1A*/ u16 lettersSpacing:3;
             u16 itemVerticalPadding:4;
             u16 scrollMultiple:2;
             u16 fontId:6;
             u16 cursorKind:1;
    /*0x1C*/ u32 unk_1C;
};

struct ListMenu
{
    /*0x00*/ struct ListMenuTemplate template;
    // ListMenuOverride from gen 3
    /*0x20*/ u8 cursorPal:4;
             u8 fillValue:4;
    /*0x21*/ u8 cursorShadowPal:4;
             u8 unk_21_4:4;
    /*0x22*/ u8 lettersSpacing:6;
    /*0x23*/ u8 unk_23;
    /*0x24*/ u8 fontId:7;
             u8 overrideEnabled:1;
    /*0x28*/ struct ListMenuCursor *cursor;
    /*0x2c*/ u16 cursorPos;
    /*0x2e*/ u16 itemsAbove;
    /*0x30*/ u8 unk_30;
    /*0x31*/ u8 unk_31;
    /*0x32*/ u8 taskId;
    /*0x33*/ u8 unk_33;
    /*0x34*/ u8 heap_id;
};

struct ListMenu * ListMenuInit(const struct ListMenuTemplate * template, u16 cursorPos, u16 itemsAbove, u32 heap_id);
s32 ListMenu_ProcessInput(struct ListMenu * list);
void DestroyListMenu(struct ListMenu * list, u16 * cursorPos, u16 * itemsAbove);
void RedrawListMenu(struct ListMenu * list);

#endif // POKEDIAMOND_LIST_MENU_H

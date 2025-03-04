#ifndef POKEDIAMOND_BG_WINDOW_H
#define POKEDIAMOND_BG_WINDOW_H

#include "NNS_g2d.h"
#include "global.h"
#include "GX_layers.h"
#include "MI_uncompress.h"
#include "OS_cache.h"
#include "gx.h"
#include "heap.h"
#include "math_util.h"

typedef struct BgTemplate {
    u32 x;
    u32 y;
    u32 bufferSize;
    u32 baseTile;

    u8 size;
    u8 colorMode;
    u8 screenBase;
    u8 charBase;
    u8 bgExtPltt;
    u8 priority;
    u8 areaOver;
    u8 dummy; // probably paddding
    u32 mosaic;
} BgTemplate;

typedef struct Background {
    void *tilemapBuffer;
    u32 bufferSize;
    u32 baseTile;

    fx32 hOffset;
    fx32 vOffset;

    u8 mode;
    u8 size;
    u8 colorMode;
    u8 tileSize;
    u16 rotation;
    u16 unk22; // probably padding
    fx32 xScale;
    fx32 yScale;
    fx32 centerX;
    fx32 centerY;
} Background;

typedef struct BgConfig {
    HeapID heapId;
    u16 scrollScheduled;
    u16 bufferTransferScheduled;
    Background bgs[8];
} BgConfig;

typedef struct Bitmap {
    const u8 *pixels;
    u16 width;
    u16 height;
} Bitmap;

typedef struct WindowTemplate {
    u8 bgId;
    u8 left;
    u8 top;
    u8 width;
    u8 height;
    u8 palette;
    u16 baseTile;
} WindowTemplate;

typedef struct Window {
    BgConfig *bgConfig;
    u8 bgId;
    u8 tilemapLeft;
    u8 tilemapTop;
    u8 width;
    u8 height;
    u8 paletteNum;
    u16 baseTile : 15;
    u16 colorMode : 1;
    void *pixelBuffer;
} Window;

enum GFScreen {
    SCREEN_MAIN = 0,
    SCREEN_SUB  = 1,
};

enum GFBppMode {
    GF_BG_CLR_4BPP = 0,
    GF_BG_CLR_8BPP,
};

enum GFBgLayer {
    GF_BG_LYR_MAIN_0 = 0,
    GF_BG_LYR_MAIN_1,
    GF_BG_LYR_MAIN_2,
    GF_BG_LYR_MAIN_3,
    GF_BG_LYR_SUB_0,
    GF_BG_LYR_SUB_1,
    GF_BG_LYR_SUB_2,
    GF_BG_LYR_SUB_3,
    GF_BG_LYR_MAIN_CNT = 4,
    GF_BG_LYR_SUB_CNT = 4,
    GF_BG_LYR_MAIN_FIRST = GF_BG_LYR_MAIN_0,
    GF_BG_LYR_SUB_FIRST = GF_BG_LYR_SUB_0,
    GF_BG_LYR_MAX = 8,

    GF_BG_LYR_MAIN_0_F = 1 << (GF_BG_LYR_MAIN_0 - GF_BG_LYR_MAIN_FIRST),
    GF_BG_LYR_MAIN_1_F = 1 << (GF_BG_LYR_MAIN_1 - GF_BG_LYR_MAIN_FIRST),
    GF_BG_LYR_MAIN_2_F = 1 << (GF_BG_LYR_MAIN_2 - GF_BG_LYR_MAIN_FIRST),
    GF_BG_LYR_MAIN_3_F = 1 << (GF_BG_LYR_MAIN_3 - GF_BG_LYR_MAIN_FIRST),
    GF_BG_LYR_SUB_0_F = 1 << (GF_BG_LYR_SUB_0 - GF_BG_LYR_SUB_FIRST),
    GF_BG_LYR_SUB_1_F = 1 << (GF_BG_LYR_SUB_1 - GF_BG_LYR_SUB_FIRST),
    GF_BG_LYR_SUB_2_F = 1 << (GF_BG_LYR_SUB_2 - GF_BG_LYR_SUB_FIRST),
    GF_BG_LYR_SUB_3_F = 1 << (GF_BG_LYR_SUB_3 - GF_BG_LYR_SUB_FIRST),

    GF_BG_LYR_UNALLOC = 0xFF,
};

enum GFPalLoadLocation {
    GF_PAL_LOCATION_MAIN_BG = 0,
    GF_PAL_LOCATION_MAIN_OBJ,
    GF_PAL_LOCATION_MAIN_BGEXT,
    GF_PAL_LOCATION_MAIN_OBJEXT,
    GF_PAL_LOCATION_SUB_BG,
    GF_PAL_LOCATION_SUB_OBJ,
    GF_PAL_LOCATION_SUB_BGEXT,
    GF_PAL_LOCATION_SUB_OBJEXT,
};

enum GFPalSlotOffset {
    GF_PAL_SLOT_OFFSET_0 = 0x00,
    GF_PAL_SLOT_OFFSET_1 = 0x20,
    GF_PAL_SLOT_OFFSET_2 = 0x40,
    GF_PAL_SLOT_OFFSET_3 = 0x60,
    GF_PAL_SLOT_OFFSET_4 = 0x80,
    GF_PAL_SLOT_OFFSET_5 = 0xA0,
    GF_PAL_SLOT_OFFSET_6 = 0xC0,
    GF_PAL_SLOT_OFFSET_7 = 0xE0,
    GF_PAL_SLOT_OFFSET_8 = 0x100,
    GF_PAL_SLOT_OFFSET_9 = 0x120,
    GF_PAL_SLOT_OFFSET_10 = 0x140,
    GF_PAL_SLOT_OFFSET_11 = 0x160,
    GF_PAL_SLOT_OFFSET_12 = 0x180,
    GF_PAL_SLOT_OFFSET_13 = 0x1A0,
    GF_PAL_SLOT_OFFSET_14 = 0X1C0,
    GF_PAL_SLOT_OFFSET_15 = 0X1E0
};

enum GFBgType {
    GF_BG_TYPE_TEXT = 0,
    GF_BG_TYPE_AFFINE,
    GF_BG_TYPE_256x16PLTT,
    GF_BG_TYPE_MAX,
};

enum GFBgCntSet {
    GF_BG_CNT_SET_COLOR_MODE = 0,
    GF_BG_CNT_SET_SCREEN_BASE,
    GF_BG_CNT_SET_CHAR_BASE,
};

enum GFBgScreenSize {
    GF_BG_SCR_SIZE_128x128 = 0,
    GF_BG_SCR_SIZE_256x256,
    GF_BG_SCR_SIZE_256x512,
    GF_BG_SCR_SIZE_512x256,
    GF_BG_SCR_SIZE_512x512,
    GF_BG_SCR_SIZE_1024x1024
};

enum BgPosAdjustOp {
    // Text layers
    BG_POS_OP_SET_X = 0,
    BG_POS_OP_ADD_X,
    BG_POS_OP_SUB_X,
    BG_POS_OP_SET_Y,
    BG_POS_OP_ADD_Y,
    BG_POS_OP_SUB_Y,

    // Affine layers
    BG_POS_OP_SET_ROT = 0,
    BG_POS_OP_ADD_ROT,
    BG_POS_OP_SUB_ROT,
    BG_POS_OP_SET_CENTERX = 9,
    BG_POS_OP_ADD_CENTERX,
    BG_POS_OP_SUB_CENTERX,
    BG_POS_OP_SET_CENTERY,
    BG_POS_OP_ADD_CENTERY,
    BG_POS_OP_SUB_CENTERY,
};

enum {
    TILE_SIZE_4BPP = 32,
    TILE_SIZE_8BPP = 64,
};

#define TILEMAP_COPY_SRC_FLAT       0  // Source dimensions are equal to dest dimensions
#define TILEMAP_COPY_SRC_RECT       1  // Dest dimensions carve out a window from source

// Passed to FillBgTilemapRect(Text) mode arg. 0-15 = palette selection. 16,17 as defined.
#define TILEMAP_FILL_KEEP_PAL      16  // Do not replace the selected palette index
#define TILEMAP_FILL_OVWT_PAL      17  // Fill value includes palette

BgConfig *BgConfig_Alloc(HeapID heapId);
HeapID BgConfig_GetHeapId(BgConfig *bgConfig);
void SetBothScreensModesAndDisable(const GraphicsModes *modes);
void SetScreenModeAndDisable(const struct GraphicsModes *gfxModes, enum GFScreen screen);
void InitBgFromTemplate(BgConfig *bgConfig, u8 bgId, const BgTemplate *template, u8 bgMode);
void SetBgControlParam(BgConfig *config, u8 bgId, enum GFBgCntSet attr, u8 value);
void FreeBgTilemapBuffer(BgConfig *bgConfig, u8 bgId);
void SetBgPriority(u8 bgId, u16 priority);
void ToggleBgLayer(u8 bgId, GXLayerToggle toggle);
void BgSetPosTextAndCommit(BgConfig *bgConfig, u8 bgId, enum BgPosAdjustOp op, fx32 val);
fx32 Bg_GetXpos(const BgConfig *bgConfig, enum GFBgLayer bgId);
fx32 Bg_GetYpos(BgConfig *bgConfig, enum GFBgLayer bgId);
void Bg_SetTextDimAndAffineParams(BgConfig *bgConfig, u8 bgId, enum BgPosAdjustOp op, fx32 value, MtxFx22 *mtx, fx32 centerX, fx32 centerY);
void SetBgAffine(BgConfig *bgConfig, u8 bgId, MtxFx22 *mtx, fx32 centerX, fx32 centerY);
void BgCommitTilemapBufferToVram(BgConfig *bgConfig, u8 bgId);
void BgCopyOrUncompressTilemapBufferRangeToVram(BgConfig *bgConfig, u8 bgId, const void *buffer, u32 bufferSize, u32 baseTile);
void BG_LoadScreenTilemapData(BgConfig *bgConfig, u8 bgId, const void *data, u32 size);
void BG_LoadCharTilesData(BgConfig *bgConfig, u8 bgId, const void *data, u32 size, u32 tileStart);
void BG_ClearCharDataRange(u8 bgId, u32 size, u32 offset, HeapID heapId);
void BG_FillCharDataRange(BgConfig *bgConfig, enum GFBgLayer bgId, u32 fillValue, u32 ntiles, u32 offset);
void BG_LoadPlttData(u32 location, void *plttData, u32 size, enum GFPalSlotOffset offset);
void BG_SetMaskColor(u8 bgId, u16 value);
void LoadRectToBgTilemapRect(BgConfig *bgConfig, u8 bgId, const void *buffer, u8 destX, u8 destY, u8 width, u8 height);
void CopyToBgTilemapRect(BgConfig *bgConfig, u8 bgId, u8 destX, u8 destY, u8 destWidth, u8 destHeight, const void *buffer, u8 srcX, u8 srcY, u8 srcWidth, u8 srcHeight);
void CopyRectToBgTilemapRect(BgConfig *bgConfig, u8 bgId, u8 destX, u8 destY, u8 destWidth, u8 destHeight, const void *buffer, u8 srcX, u8 srcY, u8 srcWidth, u8 srcHeight);
void FillBgTilemapRect(BgConfig *bgConfig, u8 bgId, u16 fillValue, u8 x, u8 y, u8 width, u8 height, u8 mode);
void BgTilemapRectChangePalette(BgConfig *bgConfig, u8 bgId, u8 x, u8 y, u8 width, u8 height, u8 palette);
void BgClearTilemapBufferAndCommit(BgConfig *bgConfig, u8 bgId);
void BgFillTilemapBufferAndCommit(BgConfig *bgConfig, u8 bgId, u16 fillValue);
void BgFillTilemapBufferAndSchedule(BgConfig *bgConfig, u8 bgId, u16 fillValue);
void *BgGetCharPtr(u8 bgId);
u8 *Convert4bppTo8bpp(u8 *src4Bpp, u32 size, u8 paletteNum, HeapID heapId);
void *GetBgTilemapBuffer(BgConfig *bgConfig, u8 bgId);
u16 GetBgRotation(BgConfig *bgConfig, u8 bgId);
u8 GetBgPriority(BgConfig *bgConfig, u8 bgId);
void BlitBitmapRect4Bit(const Bitmap *src, const Bitmap *dest, u16 srcX, u16 srcY, u16 destX, u16 destY, u16 width, u16 height, u16 colorKey);
void FillBitmapRect8Bit(const Bitmap *surface, u16 x, u16 y, u16 width, u16 height, u8 fillValue);
Window *AllocWindows(HeapID heapId, s32 num);
void InitWindow(Window *window);
BOOL WindowIsInUse(const Window *window);
void AddWindowParameterized(BgConfig *bgConfig, Window *window, u8 bgId, u8 x, u8 y, u8 width, u8 height, u8 paletteNum, u16 baseTile);
void AddTextWindowTopLeftCorner(BgConfig *bgConfig, Window *window, u8 width, u8 height, u16 baseTile, u8 paletteNum);
void AddWindow(BgConfig *bgConfig, Window *window, const WindowTemplate *template);
void RemoveWindow(Window *window);
void WindowArray_Delete(Window *windows, s32 count);
void CopyWindowToVram(Window *window);
void ScheduleWindowCopyToVram(Window *window);
void PutWindowTilemap(Window *window);
void PutWindowTilemapRectAnchoredTopLeft(Window *window, u8 width, u8 height);
void ClearWindowTilemap(Window *window);
void PutWindowTilemap_AffineMode(Window *window);
void CopyWindowPixelsToVram_TextMode(Window *window);
void ClearWindowTilemapAndCopyToVram(Window *window);
void ClearWindowTilemapAndScheduleTransfer(Window *window);
void FillWindowPixelBuffer(Window *window, u8 fillValue);
void BlitBitmapRectToWindow(Window *window, void *src, u16 srcX, u16 srcY, u16 srcWidth, u16 srcHeight, u16 destX, u16 destY, u16 destWidth, u16 destHeight);
void BlitBitmapRect(Window *window, void *src, u16 srcX, u16 srcY, u16 srcWidth, u16 srcHeight, u16 destX, u16 destY, u16 destWidth, u16 destHeight, u16 colorKey);
void FillWindowPixelRect(Window *window, u8 fillValue, u16 x, u16 y, u16 width, u16 height);
void CopyGlyphToWindow(Window *window, u8 *glyphPixels, u16 srcWidth, u16 srcHeight, u16 destX, u16 destY, u16 table);
void ScrollWindow(Window *window, u8 direction, u8 y, u8 fillValue);
u8 GetWindowBgId(Window *window);
u8 GetWindowWidth(Window *window);
u8 GetWindowHeight(Window *window);
u8 GetWindowX(Window *window);
u8 GetWindowY(Window *window);
void SetWindowX(Window *window, u8 x);
void SetWindowY(Window *window, u8 y);
void SetWindowPaletteNum(Window *window, u8 paletteNum);
NNSG2dCharacterData *LoadCharacterDataFromFile(void **char_ret, HeapID heapId, const char *path);
NNSG2dPaletteData *LoadPaletteDataFromFile(void **pltt_ret, HeapID heapId, const char *path);
void DoScheduledBgGpuUpdates(BgConfig *bgConfig);
void ScheduleBgTilemapBufferTransfer(BgConfig *bgConfig, u8 bgId);
void ScheduleSetBgPosText(BgConfig *bgConfig, u8 bgId, enum BgPosAdjustOp op, fx32 value);
void ScheduleSetBgAffineRotation(BgConfig *bgConfig, u8 bgId, enum BgPosAdjustOp op, u16 value);
void ScheduleSetBgAffinePos(BgConfig *bgConfig, u8 bgId, enum BgPosAdjustOp op, fx32 value);
BOOL DoesPixelAtScreenXYMatchPtrVal(BgConfig *bgConfig, u8 bgId, u8 x, u8 y, u16 *src);

#endif // POKEDIAMOND_BG_WINDOW_H

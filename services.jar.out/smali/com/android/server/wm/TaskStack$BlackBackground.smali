.class Lcom/android/server/wm/TaskStack$BlackBackground;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlackBackground"
.end annotation


# static fields
.field static final DEBUG_BG:Z = false

.field static final TAG_BG:Ljava/lang/String; = "TaskStack::BlackBackground"


# instance fields
.field mBaseWindow:Lcom/android/server/wm/WindowState;

.field mBlackSurface:Lcom/android/server/wm/DimLayer;

.field mBottomLayer:I

.field mDimBounds:Landroid/graphics/Rect;

.field mLayer:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mShown:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v1, -0x1

    .line 1268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1269
    new-instance v0, Lcom/android/server/wm/DimLayer;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    .line 1270
    iput v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    .line 1271
    iput v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    .line 1272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    .line 1273
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mDimBounds:Landroid/graphics/Rect;

    .line 1274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    .line 1275
    iput-object p1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1276
    return-void
.end method


# virtual methods
.method animateBlackBackground()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1329
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    if-nez v7, :cond_1

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1332
    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    iget-object v8, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 1333
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    if-nez v7, :cond_2

    .line 1334
    iget-boolean v6, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    if-eqz v6, :cond_0

    .line 1336
    iget-object v6, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 1337
    iput-boolean v5, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    goto :goto_0

    .line 1340
    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_3
    move v4, v6

    .line 1341
    .local v4, "isVisible":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x3e9

    if-eq v7, v8, :cond_4

    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x3ec

    if-ne v7, v8, :cond_9

    :cond_4
    move v1, v6

    .line 1342
    .local v1, "isMediaWin":Z
    :goto_2
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_a

    move v3, v6

    .line 1343
    .local v3, "isOpaqueWin":Z
    :goto_3
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    .line 1344
    .local v2, "isMinimized":Z
    if-eqz v4, :cond_7

    if-nez v2, :cond_7

    if-nez v1, :cond_5

    if-nez v3, :cond_7

    :cond_5
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    if-nez v7, :cond_7

    :cond_6
    iget-object v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v7, :cond_b

    .line 1351
    :cond_7
    iget-boolean v6, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    if-eqz v6, :cond_0

    .line 1353
    iget-object v6, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 1354
    iput-boolean v5, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    goto/16 :goto_0

    .end local v1    # "isMediaWin":Z
    .end local v2    # "isMinimized":Z
    .end local v3    # "isOpaqueWin":Z
    .end local v4    # "isVisible":Z
    :cond_8
    move v4, v5

    .line 1340
    goto :goto_1

    .restart local v4    # "isVisible":Z
    :cond_9
    move v1, v5

    .line 1341
    goto :goto_2

    .restart local v1    # "isMediaWin":Z
    :cond_a
    move v3, v5

    .line 1342
    goto :goto_3

    .line 1357
    .restart local v2    # "isMinimized":Z
    .restart local v3    # "isOpaqueWin":Z
    :cond_b
    iget v5, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    add-int/lit8 v0, v5, -0x1

    .line 1358
    .local v0, "dimlayer":I
    iget v5, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    if-ne v5, v0, :cond_c

    iget-boolean v5, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    if-nez v5, :cond_0

    .line 1360
    :cond_c
    iput v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    .line 1361
    iget-object v5, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    iget v7, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mLayer:I

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x0

    invoke-virtual {v5, v7, v8, v10, v11}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 1362
    iput-boolean v6, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    goto/16 :goto_0
.end method

.method destroySurface()V
    .locals 1

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 1309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    .line 1310
    return-void
.end method

.method hide()V
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBlackSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 1316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mShown:Z

    .line 1318
    :cond_0
    return-void
.end method

.method notifyVisibleWindow(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v2, -0x1

    .line 1279
    if-nez p1, :cond_1

    .line 1281
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    .line 1282
    iput v2, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    .line 1304
    :cond_0
    :goto_0
    return-void

    .line 1286
    :cond_1
    iget v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    if-eq v1, v2, :cond_2

    iget v1, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v2, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    if-ge v1, v2, :cond_3

    .line 1287
    :cond_2
    iget v1, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBottomLayer:I

    .line 1291
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_4

    .line 1293
    iput-object p1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 1294
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v1, v2, :cond_7

    .line 1295
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_5

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3ec

    if-ne v1, v2, :cond_6

    :cond_5
    const/4 v0, 0x1

    .line 1296
    .local v0, "isMediaWin":Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v2, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v1, v2, :cond_0

    .line 1298
    iput-object p1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 1295
    .end local v0    # "isMediaWin":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 1300
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v2, p1, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v1, v2, :cond_0

    .line 1302
    iput-object p1, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mBaseWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0
.end method

.method setBound(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/android/server/wm/TaskStack$BlackBackground;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1325
    :cond_0
    return-void
.end method

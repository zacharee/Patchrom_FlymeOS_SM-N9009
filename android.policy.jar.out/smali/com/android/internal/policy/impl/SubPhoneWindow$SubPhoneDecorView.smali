.class final Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;
.super Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
.source "SubPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SubPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubPhoneDecorView"
.end annotation


# instance fields
.field private mResizeHelper:Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/SubPhoneWindow;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "featureId"    # I

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V

    .line 135
    return-void
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, -0x1

    .line 206
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/SubPhoneWindow;->mIsBorder:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/SubPhoneWindow;->access$200(Lcom/android/internal/policy/impl/SubPhoneWindow;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/SubPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 208
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SubPhoneWindow;->access$000(Lcom/android/internal/policy/impl/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v3, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v1, v3, :cond_2

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/SubPhoneWindow;->mIsBorder:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/SubPhoneWindow;->access$202(Lcom/android/internal/policy/impl/SubPhoneWindow;Z)Z

    .line 224
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    return-void

    .line 214
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    .line 222
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SubPhoneWindow;->access$300(Lcom/android/internal/policy/impl/SubPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Border;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/policy/impl/multiwindow/Border;->drawBorderLine(Landroid/graphics/Canvas;II)V

    goto :goto_0

    .line 216
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SubPhoneWindow;->access$300(Lcom/android/internal/policy/impl/SubPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Border;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/multiwindow/Border;->setDrawOption(I)V

    goto :goto_1

    .line 219
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/impl/multiwindow/Border;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SubPhoneWindow;->access$300(Lcom/android/internal/policy/impl/SubPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Border;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/multiwindow/Border;->setDrawOption(I)V

    goto :goto_1

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initResizeHelper()V
    .locals 30

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/SubPhoneWindow;->getStackBoxBounds()Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SubPhoneWindow;->access$400(Lcom/android/internal/policy/impl/SubPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v4

    .line 230
    .local v4, "stackBounds":Landroid/graphics/Rect;
    const/4 v8, 0x0

    .line 231
    .local v8, "minWidth":I
    const/4 v9, 0x0

    .line 232
    .local v9, "minHeight":I
    const/4 v10, 0x0

    .line 233
    .local v10, "maxWidth":I
    const/4 v11, 0x0

    .line 234
    .local v11, "maxHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v24, v2, v3

    .line 243
    .local v24, "maxSizeRatio":F
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->appWidth:I

    move/from16 v26, v0

    .line 244
    .local v26, "screenWidth":I
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->appHeight:I

    move/from16 v25, v0

    .line 246
    .local v25, "screenHeight":I
    move/from16 v0, v26

    int-to-float v2, v0

    mul-float v2, v2, v24

    float-to-int v10, v2

    .line 247
    move/from16 v0, v25

    int-to-float v2, v0

    mul-float v2, v2, v24

    float-to-int v11, v2

    .line 249
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v26

    int-to-float v3, v0

    div-float v23, v2, v3

    .line 250
    .local v23, "hScale":F
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v25

    int-to-float v3, v0

    div-float v29, v2, v3

    .line 252
    .local v29, "vScale":F
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 254
    .local v5, "resizeBounds":Landroid/graphics/Rect;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v22

    .line 256
    .local v22, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, v22

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    sub-int v27, v2, v3

    .line 257
    .local v27, "test":I
    move/from16 v0, v27

    int-to-float v2, v0

    mul-float v28, v2, v23

    .line 258
    .local v28, "test2":F
    move-object/from16 v0, v22

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v23

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 259
    .local v21, "absWidth":I
    move-object/from16 v0, v22

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v29

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 261
    .local v20, "absHeight":I
    move-object/from16 v0, v22

    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    packed-switch v2, :pswitch_data_0

    .line 267
    :pswitch_0
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    add-int v2, v2, v20

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 273
    :goto_0
    new-instance v6, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v6, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 274
    .local v6, "paddingRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->mResizeHelper:Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;

    if-nez v2, :cond_0

    .line 276
    new-instance v2, Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v7, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView$1;-><init>(Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;)V

    invoke-direct/range {v2 .. v11}, Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper$Listener;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->mResizeHelper:Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;

    .line 292
    :goto_1
    return-void

    .line 264
    .end local v6    # "paddingRect":Landroid/graphics/Rect;
    :pswitch_1
    iget v2, v5, Landroid/graphics/Rect;->right:I

    add-int v2, v2, v21

    iput v2, v5, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 290
    .restart local v6    # "paddingRect":Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->mResizeHelper:Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V

    goto :goto_1

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->drawBorder(Landroid/graphics/Canvas;)V

    .line 180
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->access$000(Lcom/android/internal/policy/impl/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SubPhoneWindow;->access$000(Lcom/android/internal/policy/impl/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->mResizeHelper:Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->initResizeHelper()V

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->mResizeHelper:Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;->dispathcHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 140
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SubPhoneWindow;->access$000(Lcom/android/internal/policy/impl/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SubPhoneWindow;->access$000(Lcom/android/internal/policy/impl/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 167
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 143
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->initResizeHelper()V

    .line 144
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->mResizeHelper:Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;->begin(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/SubPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/SubPhoneWindow;->access$100(Lcom/android/internal/policy/impl/SubPhoneWindow;)Z

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->mResizeHelper:Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;

    if-nez v1, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->initResizeHelper()V

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->mResizeHelper:Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;->move(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->mResizeHelper:Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/SubPhoneWindow$ResizeHelper;->finish(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->draw(Landroid/graphics/Canvas;)V

    .line 173
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;->drawBorder(Landroid/graphics/Canvas;)V

    .line 174
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->onAttachedToWindow()V

    .line 198
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 203
    return-void
.end method

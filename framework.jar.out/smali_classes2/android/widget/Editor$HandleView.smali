.class abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field protected static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xfa0

.field static final HANDLE_TYPE_END:I = 0x2

.field static final HANDLE_TYPE_INSERT:I = 0x3

.field static final HANDLE_TYPE_NONE:I = 0x0

.field static final HANDLE_TYPE_START:I = 0x1

.field private static final HISTORY_SIZE:I = 0x5

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private mActionPopupShower:Ljava/lang/Runnable;

.field protected mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mCurCursorPosTop:Z

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field public mHandleType:I

.field protected mHorizontalGravity:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mInitPositionX:I

.field private mInitPositionY:I

.field private mInitRawY:F

.field protected mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mMinSize:I

.field private mNewActionPopupHider:Ljava/lang/Runnable;

.field private mNewActionPopupShower:Ljava/lang/Runnable;

.field protected mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

.field private mNumberPreviousOffsets:I

.field protected mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field protected mbFlipCursor:Z

.field protected mbSwitchCursor:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4330
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 4331
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4312
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4314
    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4325
    iput v5, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    .line 4374
    new-array v1, v2, [J

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 4375
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 4376
    iput v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4377
    iput v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4837
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mbFlipCursor:Z

    .line 4838
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mCurCursorPosTop:Z

    .line 4332
    new-instance v1, Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, #android:attr@textSelectHandleWindowStyle#t

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 4334
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 4335
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 4336
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 4337
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4339
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 4340
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 4345
    iput v5, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    .line 4346
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4349
    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {p1}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4350
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->recalHandleView()V

    .line 4357
    :goto_0
    return-void

    .line 4352
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v0

    .line 4353
    .local v0, "handleHeight":I
    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 4354
    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    goto :goto_0
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 4385
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4386
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 4387
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 4388
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4389
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 10

    .prologue
    .line 4392
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4393
    .local v4, "now":J
    const/4 v0, 0x0

    .line 4394
    .local v0, "i":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4395
    .local v2, "index":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4396
    .local v1, "iMax":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x96

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 4397
    add-int/lit8 v0, v0, 0x1

    .line 4398
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x5

    goto :goto_0

    .line 4401
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x15e

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 4403
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v3, v3, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4405
    :cond_1
    return-void
.end method

.method private getHorizontalOffset()I
    .locals 4

    .prologue
    .line 4648
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v2

    .line 4649
    .local v2, "width":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4651
    .local v0, "drawWidth":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v3, :pswitch_data_0

    .line 4657
    :pswitch_0
    sub-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 4663
    .local v1, "left":I
    :goto_0
    return v1

    .line 4653
    .end local v1    # "left":I
    :pswitch_1
    const/4 v1, 0x0

    .line 4654
    .restart local v1    # "left":I
    goto :goto_0

    .line 4660
    .end local v1    # "left":I
    :pswitch_2
    sub-int v1, v2, v0

    .restart local v1    # "left":I
    goto :goto_0

    .line 4651
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getPreferredHeight()I
    .locals 2

    .prologue
    .line 4421
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 4417
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 4531
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 4532
    const/4 v0, 0x1

    .line 4539
    :goto_0
    return v0

    .line 4535
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4536
    const/4 v0, 0x0

    goto :goto_0

    .line 4539
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v2, v2

    # invokes: Landroid/widget/Editor;->isPositionVisible(FF)Z
    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;FF)Z

    move-result v0

    goto :goto_0
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 4380
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4381
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4382
    return-void
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 4824
    const/4 v0, 0x1

    return v0
.end method

.method protected dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4437
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4438
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4439
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4441
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 4442
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    .line 4443
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected getCursorOffset()I
    .locals 1

    .prologue
    .line 4667
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getHorizontalGravity(Z)I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 4446
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 4448
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 4449
    return-void
.end method

.method protected hideActionPopupWindow()V
    .locals 2

    .prologue
    .line 4468
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4469
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4471
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 4472
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    .line 4474
    :cond_1
    return-void
.end method

.method hideNewActionPopupWindow()V
    .locals 1

    .prologue
    .line 4513
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v0, :cond_0

    .line 4514
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    .line 4516
    :cond_0
    return-void
.end method

.method hideNewActionPopupWindowAfterDelay()V
    .locals 4

    .prologue
    .line 4499
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 4500
    new-instance v0, Landroid/widget/Editor$HandleView$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$HandleView$2;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    .line 4508
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4510
    return-void

    .line 4506
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->removeNewActionPopupHiderCallback()V

    goto :goto_0
.end method

.method public initPreviousOffset()V
    .locals 1

    .prologue
    .line 4833
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4834
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 4804
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 4526
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4408
    iget v1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 4815
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 4817
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideNewActionPopupWindow()V

    .line 4819
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 4640
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4641
    .local v0, "drawWidth":I
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    .line 4643
    .local v1, "left":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    add-int v4, v1, v0

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4644
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4645
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 4808
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 4810
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideNewActionPopupWindow()V

    .line 4812
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 4413
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    .line 4414
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4678
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 4800
    :cond_0
    :goto_0
    const/4 v12, 0x1

    return v12

    .line 4680
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v12

    invoke-direct {p0, v12}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 4682
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4683
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4686
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4687
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4688
    iget v12, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iput v12, p0, Landroid/widget/Editor$HandleView;->mInitPositionX:I

    .line 4689
    iget v12, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iput v12, p0, Landroid/widget/Editor$HandleView;->mInitPositionY:I

    .line 4690
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v12

    iput v12, p0, Landroid/widget/Editor$HandleView;->mInitRawY:F

    .line 4693
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v12}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v4

    .line 4694
    .local v4, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v12

    iput v12, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v12

    iput v12, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->hideOptionWrapper()V

    goto :goto_0

    .end local v4    # "positionListener":Landroid/widget/Editor$PositionListener;
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->hideOptionWrapper()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    .local v8, "rawX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    .local v9, "rawY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v9

    iget v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v13, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v13, v13

    sub-float v7, v12, v13

    .line 4711
    .local v7, "previousVerticalOffset":F
    iget v12, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v12, v12

    sub-float v12, v9, v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v13, v13

    sub-float v0, v12, v13

    .line 4713
    .local v0, "currentVerticalOffset":F
    iget v12, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v12, v7, v12

    if-gez v12, :cond_3

    .line 4714
    iget v12, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 4715
    .local v3, "newVerticalOffset":F
    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 4725
    :goto_1
    iget v12, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v12, v12

    add-float/2addr v12, v3

    iput v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4730
    iget v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v12, v8, v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v13, v13

    add-float v1, v12, v13

    .line 4731
    .local v1, "newPosX":F
    iget v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float v12, v9, v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v2, v12, v13

    .line 4733
    .local v2, "newPosY":F
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v10

    .line 4734
    .local v10, "scaleRatio":Landroid/graphics/PointF;
    iget v12, v10, Landroid/graphics/PointF;->x:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_1

    .line 4735
    iget v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v13, p0, Landroid/widget/Editor$HandleView;->mInitPositionX:I

    int-to-float v13, v13

    add-float v11, v12, v13

    .line 4736
    .local v11, "tempX":F
    sub-float v12, v8, v11

    iget v13, v10, Landroid/graphics/PointF;->x:F

    div-float/2addr v12, v13

    iget v13, p0, Landroid/widget/Editor$HandleView;->mInitPositionX:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget v13, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v13, v13

    add-float v1, v12, v13

    .line 4738
    .end local v11    # "tempX":F
    :cond_1
    iget v12, v10, Landroid/graphics/PointF;->y:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_2

    .line 4739
    iget v12, p0, Landroid/widget/Editor$HandleView;->mInitRawY:F

    sub-float v12, v9, v12

    iget v13, v10, Landroid/graphics/PointF;->y:F

    div-float/2addr v12, v13

    iget v13, p0, Landroid/widget/Editor$HandleView;->mInitPositionY:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget v13, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v2, v12, v13

    .line 4743
    :cond_2
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    goto/16 :goto_0

    .line 4717
    .end local v1    # "newPosX":F
    .end local v2    # "newPosY":F
    .end local v3    # "newVerticalOffset":F
    .end local v10    # "scaleRatio":Landroid/graphics/PointF;
    :cond_3
    cmpg-float v12, v0, v7

    if-gez v12, :cond_4

    .line 4718
    iget v12, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v12}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 4719
    .restart local v3    # "newVerticalOffset":F
    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_1

    .line 4722
    .end local v3    # "newVerticalOffset":F
    :cond_4
    iget v12, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v12}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 4723
    .restart local v3    # "newVerticalOffset":F
    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    .line 4748
    .end local v0    # "currentVerticalOffset":F
    .end local v3    # "newVerticalOffset":F
    .end local v7    # "previousVerticalOffset":F
    .end local v8    # "rawX":F
    .end local v9    # "rawY":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp()V

    .line 4749
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->showOptionWrapper()V

    .line 4752
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v12}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 4753
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->refreshForSwitchingCursor()Z

    .line 4755
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    iget-object v13, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    if-le v12, v13, :cond_5

    .line 4756
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Landroid/text/Spannable;

    iget-object v13, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    iget-object v14, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v14}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v14

    invoke-static {v12, v13, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4761
    :cond_5
    iget v12, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 4762
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4763
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->recalHandleView()V

    .line 4765
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4767
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v12}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int v5, v12, v13

    .line 4769
    .local v5, "positionX":I
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v12}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int v6, v12, v13

    .line 4771
    .local v6, "positionY":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 4772
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-virtual {v12, v5, v6, v13, v14}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 4782
    .end local v5    # "positionX":I
    .end local v6    # "positionY":I
    :cond_6
    :goto_2
    iget v12, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_0

    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v12}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v12}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 4783
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v12, :cond_0

    .line 4784
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v12}, Landroid/widget/Editor$NewActionPopupWindow;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 4785
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v12}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 4786
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v12}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Editor$SelectionModifierCursorController;->hideAllNewActionPopup()V

    goto/16 :goto_0

    .line 4774
    .restart local v5    # "positionX":I
    .restart local v6    # "positionY":I
    :cond_7
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v13, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v13}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2

    .line 4789
    .end local v5    # "positionX":I
    .end local v6    # "positionY":I
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/widget/Editor$HandleView;->showNewActionPopupWindow(I)V

    goto/16 :goto_0

    .line 4797
    :pswitch_3
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 4678
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 8
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    const/4 v5, 0x1

    .line 4551
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 4552
    .local v2, "layout":Landroid/text/Layout;
    if-nez v2, :cond_1

    .line 4554
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 4585
    :cond_0
    :goto_0
    return-void

    .line 4558
    :cond_1
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4559
    .local v1, "hintLayout":Landroid/text/Layout;
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4562
    move-object v2, v1

    .line 4565
    :cond_2
    iget v6, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    if-eq p1, v6, :cond_5

    move v4, v5

    .local v4, "offsetChanged":Z
    :goto_1
    if-nez v4, :cond_3

    if-eqz p2, :cond_0

    :cond_3
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$HandleView;->injectPositionAtCursorOffset(I)Z

    move-result v6

    if-eqz v6, :cond_flyme_0

    return-void

    :cond_flyme_0
    if-eqz v4, :cond_4

    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    :cond_4
    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .local v3, "line":I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    const/high16 v0, 0x3f000000    # 0.5f

    .line 4574
    .local v0, "compensation":F
    :goto_2
    invoke-virtual {v2, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    add-float/2addr v6, v0

    iget v7, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4576
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    iput v6, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4579
    iget v6, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4580
    iget v6, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v7, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4582
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4583
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    goto :goto_0

    .line 4565
    .end local v0    # "compensation":F
    .end local v3    # "line":I
    .end local v4    # "offsetChanged":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 4572
    .restart local v3    # "line":I
    .restart local v4    # "offsetChanged":Z
    :cond_6
    const/high16 v0, -0x41000000    # -0.5f

    goto :goto_2
.end method

.method public recalHandleView()V
    .locals 3

    .prologue
    .line 4841
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 4842
    .local v0, "handleHeight":I
    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 4843
    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 4845
    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 4827
    const/4 v0, 0x1

    return v0
.end method

.method removeNewActionPopupHiderCallback()V
    .locals 2

    .prologue
    .line 4519
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4520
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4522
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 4425
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4434
    :goto_0
    return-void

    .line 4427
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 4430
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4431
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4433
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    goto :goto_0
.end method

.method showActionPopupWindow(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 4452
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 4453
    new-instance v0, Landroid/widget/Editor$ActionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 4455
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 4456
    new-instance v0, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    .line 4464
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4465
    return-void

    .line 4462
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method showNewActionPopupWindow(I)V
    .locals 3
    .param p1, "delay"    # I

    .prologue
    .line 4478
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-nez v0, :cond_0

    .line 4479
    new-instance v0, Landroid/widget/Editor$NewActionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$NewActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    .line 4481
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$NewActionPopupWindow;->show()V

    .line 4496
    return-void
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 4360
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 4361
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 4362
    .local v0, "isRtlCharAtOffset":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    .line 4363
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 4364
    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 4365
    return-void

    .line 4362
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 6
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 4589
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {p0, v2, p4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4590
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v2, :cond_5

    .line 4591
    :cond_0
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v2, :cond_3

    .line 4593
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v2, :cond_2

    .line 4594
    :cond_1
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4595
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4596
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4597
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4600
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 4602
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4603
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4604
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->removeAllNewActionPopupHider()V

    .line 4610
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4611
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int v0, p1, v2

    .line 4614
    .local v0, "positionX":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int v1, p2, v2

    .line 4616
    .local v1, "positionY":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->sendShowMessage()V

    .end local v0    # "positionX":I
    .end local v1    # "positionY":I
    :cond_4
    :goto_0
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v2, v2, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4632
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->relocateNewActionPopupWindow()V

    .line 4636
    :cond_5
    return-void

    .line 4619
    .restart local v0    # "positionX":I
    .restart local v1    # "positionY":I
    :cond_6
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->sendShowMessage()V

    goto :goto_0

    .line 4623
    .end local v0    # "positionX":I
    .end local v1    # "positionY":I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4624
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->sendHideMessage()V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method

.method private hideOptionWrapper()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v0}, Landroid/widget/Editor$OptionWrapper;->hide()Z

    :cond_0
    return-void
.end method

.method private injectPositionAtCursorOffset(I)Z
    .locals 4
    .param p1, "offset"    # I

    .prologue
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->mzGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->isOffsetOutOfVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-wide v2, v2, Landroid/widget/Editor;->mLastScrollTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/Editor;->mLastScrollTime:J

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendEmptyMessage(I)V
    .locals 1
    .param p1, "option"    # I

    .prologue
    const/16 v0, 0x2712

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v0}, Landroid/widget/Editor$OptionWrapper;->show()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v0}, Landroid/widget/Editor$OptionWrapper;->hide()Z

    goto :goto_0
.end method

.method private sendHideMessage()V
    .locals 1

    .prologue
    const/16 v0, 0x2711

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->sendEmptyMessage(I)V

    return-void
.end method

.method private sendShowMessage()V
    .locals 1

    .prologue
    const/16 v0, 0x2712

    invoke-direct {p0, v0}, Landroid/widget/Editor$HandleView;->sendEmptyMessage(I)V

    return-void
.end method

.method private showOptionWrapper()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v0}, Landroid/widget/Editor$OptionWrapper;->show()Z

    :cond_0
    return-void
.end method

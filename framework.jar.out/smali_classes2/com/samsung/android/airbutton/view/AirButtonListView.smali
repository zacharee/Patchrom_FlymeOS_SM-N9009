.class public Lcom/samsung/android/airbutton/view/AirButtonListView;
.super Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;
.source "AirButtonListView.java"


# instance fields
.field private final FLICKERING_ANIMATION_MULTIPLY:F

.field private final FLICKERING_THRESHOLD:I

.field private final MOVE_DIRECTION_DECREASE:I

.field private final MOVE_DIRECTION_INCREASE:I

.field private final VELOCITY_TO_DISTANCE_MULTIPLY:I

.field protected mAdjustedTouchDownPosition:F

.field protected mCurrentMovedDistance:F

.field private mFlickAnimator:Landroid/animation/ObjectAnimator;

.field private mFlickListener:Landroid/animation/Animator$AnimatorListener;

.field mHandler:Landroid/os/Handler;

.field mHoverEnableRunnable:Ljava/lang/Runnable;

.field protected mIsCanMoving:Z

.field protected mMaxDisplayableShapeCnt:I

.field protected mMaxDistanceCanMove:F

.field protected mMaxDistanceForAllShapes:F

.field protected mMaxDistanceOnScreen:F

.field protected mMoveDirection:I

.field protected mTotalMovedDistance:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mWindowHeight:I

.field protected mWindowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;
    .param p3, "attrs"    # Lcom/samsung/android/airbutton/Attributes;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    .line 40
    iput v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->MOVE_DIRECTION_DECREASE:I

    .line 41
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->MOVE_DIRECTION_INCREASE:I

    .line 42
    iput v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMoveDirection:I

    .line 43
    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDisplayableShapeCnt:I

    .line 44
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceOnScreen:F

    .line 45
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceForAllShapes:F

    .line 46
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceCanMove:F

    .line 48
    iput-boolean v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mIsCanMoving:Z

    .line 49
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    .line 50
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    .line 51
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    .line 58
    const/16 v2, 0xc8

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->VELOCITY_TO_DISTANCE_MULTIPLY:I

    .line 59
    const/16 v2, 0x32

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->FLICKERING_THRESHOLD:I

    .line 60
    const/high16 v2, 0x3fc00000    # 1.5f

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->FLICKERING_ANIMATION_MULTIPLY:F

    .line 61
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 62
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    .line 63
    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowWidth:I

    .line 64
    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowHeight:I

    .line 513
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHandler:Landroid/os/Handler;

    .line 514
    new-instance v2, Lcom/samsung/android/airbutton/view/AirButtonListView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/airbutton/view/AirButtonListView$1;-><init>(Lcom/samsung/android/airbutton/view/AirButtonListView;)V

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHoverEnableRunnable:Ljava/lang/Runnable;

    .line 743
    new-instance v2, Lcom/samsung/android/airbutton/view/AirButtonListView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/airbutton/view/AirButtonListView$2;-><init>(Lcom/samsung/android/airbutton/view/AirButtonListView;)V

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickListener:Landroid/animation/Animator$AnimatorListener;

    .line 75
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v2, v6, :cond_1

    .line 76
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v4, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    .line 85
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    packed-switch v2, :pswitch_data_0

    .line 96
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v2, v2, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    if-eqz v2, :cond_5

    .line 97
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    if-gt v2, v3, :cond_4

    .line 98
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDisplayableShapeCnt:I

    .line 99
    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mDisplayAdditionalViewCnt:I

    .line 100
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-boolean v5, v2, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    .line 110
    :goto_2
    new-instance v2, Landroid/animation/ObjectAnimator;

    invoke-direct {v2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    .line 111
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 112
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    const-string/jumbo v3, "totalFlickDistance"

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 116
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 117
    .local v1, "wM":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 118
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 120
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowWidth:I

    .line 121
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowHeight:I

    .line 122
    return-void

    .line 77
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v1    # "wM":Landroid/view/WindowManager;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v2, v4, :cond_2

    .line 78
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v6, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    goto :goto_0

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v7, :cond_3

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 80
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v7, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    goto/16 :goto_0

    .line 81
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v2, v7, :cond_0

    .line 82
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v3, 0x4

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    goto/16 :goto_0

    .line 88
    :pswitch_0
    iput v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMoveDirection:I

    goto/16 :goto_1

    .line 92
    :pswitch_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMoveDirection:I

    goto/16 :goto_1

    .line 102
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDisplayableShapeCnt:I

    .line 103
    iput v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mDisplayAdditionalViewCnt:I

    goto/16 :goto_2

    .line 106
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDisplayableShapeCnt:I

    goto/16 :goto_2

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private adjustAllViewPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 463
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 465
    .local v0, "adjustDistance":I
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 466
    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustAllViewPosition(II)V

    .line 469
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustAllViewPosition(II)V

    goto :goto_0
.end method

.method private adjustAlpha()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide v6, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 482
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 483
    .local v3, "startPos":F
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float v1, v3, v4

    .line 485
    .local v1, "endPos":F
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mStartViewIdx:I

    .local v2, "idx":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mEndViewIdx:I

    if-gt v2, v4, :cond_3

    .line 486
    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v0, v4, v3

    .line 487
    .local v0, "alpha":F
    cmpl-float v4, v0, v8

    if-eqz v4, :cond_0

    .line 488
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 490
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 491
    const/high16 v0, 0x3f800000    # 1.0f

    .line 493
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_2

    .line 494
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 485
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    .end local v0    # "alpha":F
    :cond_3
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mEndViewIdx:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalViewCnt:I

    if-ge v4, v5, :cond_5

    .line 498
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mEndViewIdx:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v0, v1, v4

    .line 499
    .restart local v0    # "alpha":F
    cmpl-float v4, v0, v8

    if-eqz v4, :cond_4

    .line 500
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 502
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mEndViewIdx:I

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_5

    .line 503
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mEndViewIdx:I

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 505
    .end local v0    # "alpha":F
    :cond_5
    return-void
.end method

.method private getTouchDownPosition()F
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 672
    :cond_0
    iget v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTouchDownX:I

    int-to-float v0, v0

    .line 674
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTouchDownY:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getTouchMovePosition(Landroid/view/MotionEvent;)F
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 685
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 686
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 688
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getTouchUpPosition()F
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 679
    :cond_0
    iget v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTouchUpX:I

    int-to-float v0, v0

    .line 681
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTouchUpY:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method private handleMove(F)V
    .locals 6
    .param p1, "movePosition"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 635
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDisplayableShapeCnt:I

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    if-eq v2, v3, :cond_0

    .line 668
    :goto_0
    return-void

    .line 638
    :cond_0
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    sub-float v2, p1, v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    .line 639
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    add-float v1, v2, v3

    .line 641
    .local v1, "currentTotalMovingDistance":F
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMoveDirection:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 642
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    .line 643
    float-to-int v2, p1

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    .line 645
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 646
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 660
    :cond_1
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 661
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    int-to-float v2, v2

    div-float v2, v1, v2

    float-to-int v0, v2

    .line 663
    .local v0, "currentStartViewIdx":I
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mStartViewIdx:I

    if-eq v0, v2, :cond_2

    .line 664
    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->setStartViewIdx(I)V

    .line 666
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustAlpha()V

    .line 667
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustAllViewPosition()V

    goto :goto_0

    .line 647
    .end local v0    # "currentStartViewIdx":I
    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceCanMove:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 648
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMoveDirection:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 649
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceCanMove:F

    neg-float v2, v2

    add-float v1, v2, v5

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    .line 653
    :goto_2
    iput v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    .line 654
    float-to-int v2, p1

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    .line 656
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 657
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    goto :goto_1

    .line 651
    :cond_4
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceCanMove:F

    sub-float v1, v2, v5

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    goto :goto_2
.end method

.method private setTouchDownPosition(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 692
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 693
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTouchDownX:I

    .line 696
    :goto_0
    return-void

    .line 695
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTouchDownY:I

    goto :goto_0
.end method

.method private startFlickering(FF)Z
    .locals 9
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 777
    const/4 v2, 0x0

    .line 778
    .local v2, "velocity":F
    const/4 v1, 0x0

    .line 779
    .local v1, "flickDistance":F
    const/4 v0, 0x0

    .line 781
    .local v0, "duration":I
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 782
    :cond_0
    move v2, p1

    .line 786
    :goto_0
    const/high16 v5, 0x43480000    # 200.0f

    mul-float v1, v2, v5

    .line 788
    cmpl-float v5, v1, v8

    if-eqz v5, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x42480000    # 50.0f

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    :cond_1
    move v3, v4

    .line 799
    :goto_1
    return v3

    .line 784
    :cond_2
    move v2, p2

    goto :goto_0

    .line 791
    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 793
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 794
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 795
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 796
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v8, v6, v4

    aput v1, v6, v3

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 797
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1
.end method


# virtual methods
.method protected adjustAllViewPosition(II)V
    .locals 5
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 472
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mEndViewIdx:I

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mDisplayAdditionalViewCnt:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalViewCnt:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalViewCnt:I

    add-int/lit8 v0, v2, -0x1

    .line 475
    .local v0, "endViewIdx":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mStartViewIdx:I

    .local v1, "viewIdx":I
    :goto_1
    if-gt v1, v0, :cond_1

    .line 476
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 477
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    add-int/2addr v3, p2

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 472
    .end local v0    # "endViewIdx":I
    .end local v1    # "viewIdx":I
    :cond_0
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mEndViewIdx:I

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mDisplayAdditionalViewCnt:I

    add-int v0, v2, v3

    goto :goto_0

    .line 479
    .restart local v0    # "endViewIdx":I
    .restart local v1    # "viewIdx":I
    :cond_1
    return-void
.end method

.method protected adjustMenuItemXPosition()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 309
    const/4 v4, 0x0

    .line 310
    .local v4, "totalWidgetWidth":I
    const/4 v1, -0x1

    .line 312
    .local v1, "outOfXBoundaryItemCnt":I
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    if-eq v6, v9, :cond_4

    .line 313
    const/4 v0, -0x1

    .line 315
    .local v0, "outOfXBoundary":I
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v7}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v7

    mul-int v4, v6, v7

    .line 316
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->x:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowWidth:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mStartViewIdx:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v0, v6, v7

    .line 318
    if-gez v0, :cond_1

    .line 367
    .end local v0    # "outOfXBoundary":I
    :cond_0
    :goto_0
    return-void

    .line 321
    .restart local v0    # "outOfXBoundary":I
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    div-int v1, v0, v6

    .line 322
    add-int/lit8 v1, v1, 0x1

    .line 324
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v6}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 325
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v6}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 327
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v1, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    .line 328
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget-object v8, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v8, v8, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v9, v9, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 329
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iput v7, v6, Lcom/samsung/android/airbutton/Attributes;->x:I

    .line 363
    .end local v0    # "outOfXBoundary":I
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 364
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v6, v6, v7

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10800d0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 331
    :cond_4
    const/4 v2, -0x1

    .line 332
    .local v2, "outOfxBoundaryItemIdx":I
    const/4 v3, 0x0

    .line 334
    .local v3, "outOfxBoundaryTotalWidth":I
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->x:I

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v4, v6, v7

    .line 335
    const/4 v5, 0x0

    .local v5, "viewIdx":I
    :goto_2
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalViewCnt:I

    add-int/lit8 v6, v6, -0x1

    if-gt v5, v6, :cond_5

    .line 336
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->density:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 337
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowWidth:I

    if-lt v4, v6, :cond_7

    .line 338
    move v2, v5

    .line 343
    :cond_5
    if-eq v2, v9, :cond_3

    .line 344
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalViewCnt:I

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v2

    add-int/lit8 v1, v6, 0x1

    .line 345
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalViewCnt:I

    add-int/lit8 v6, v6, -0x1

    if-le v1, v6, :cond_6

    .line 346
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalViewCnt:I

    add-int/lit8 v1, v6, -0x1

    .line 348
    :cond_6
    move v5, v2

    :goto_3
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalViewCnt:I

    add-int/lit8 v6, v6, -0x1

    if-gt v5, v6, :cond_8

    .line 349
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->density:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 348
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 335
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 352
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v1, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    .line 353
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    sub-int/2addr v7, v3

    iput v7, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 356
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mStartViewIdx:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_3

    .line 357
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mStartViewIdx:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0xa

    iput v7, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 358
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iput v7, v6, Lcom/samsung/android/airbutton/Attributes;->x:I

    goto/16 :goto_1

    .line 365
    .end local v2    # "outOfxBoundaryItemIdx":I
    .end local v3    # "outOfxBoundaryTotalWidth":I
    .end local v5    # "viewIdx":I
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 366
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v6, v6, v7

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10800d2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method protected adjustViewDelta(I)V
    .locals 8
    .param p1, "viewIdx"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 370
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 371
    const-string v0, "AirButtonListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustViewDelta: viewIdx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v0, v6, :cond_e

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v5, :cond_4

    .line 380
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    aput v1, v0, p1

    .line 395
    :cond_2
    :goto_1
    if-nez p1, :cond_a

    .line 396
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v3, :cond_8

    .line 397
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    aput v1, v0, p1

    .line 457
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 459
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->adjustViewDelta(I)V

    goto :goto_0

    .line 381
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 382
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    aput v4, v0, p1

    goto :goto_1

    .line 384
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    .line 386
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    add-int/2addr v0, v1

    if-gez v0, :cond_7

    .line 387
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    sub-int/2addr v0, v2

    :goto_3
    aput v0, v1, p1

    goto :goto_1

    :cond_6
    const/16 v0, 0xa

    goto :goto_3

    .line 388
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    if-le v0, v1, :cond_2

    .line 389
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->parentViewWidth:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    sub-int/2addr v1, v2

    aput v1, v0, p1

    .line 390
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    add-int/2addr v0, v1

    if-gez v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    const/16 v1, 0xa

    aput v1, v0, p1

    goto/16 :goto_1

    .line 398
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v6, :cond_9

    .line 399
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    aput v4, v0, p1

    goto/16 :goto_2

    .line 401
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    .line 402
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->y:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowHeight:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 403
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    .line 406
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    if-ne v0, v7, :cond_c

    .line 407
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v0, v3, :cond_b

    .line 408
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    .line 410
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    .line 412
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v0, v3, :cond_d

    .line 413
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    .line 415
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    add-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    .line 422
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v3, :cond_10

    .line 423
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    aput v1, v0, p1

    .line 432
    :cond_f
    :goto_4
    if-nez p1, :cond_14

    .line 433
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v5, :cond_12

    .line 434
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    aput v1, v0, p1

    goto/16 :goto_2

    .line 424
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v6, :cond_11

    .line 425
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    aput v4, v0, p1

    goto :goto_4

    .line 427
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    .line 428
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->y:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowHeight:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_f

    .line 429
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto :goto_4

    .line 435
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    .line 436
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    aput v4, v0, p1

    goto/16 :goto_2

    .line 438
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    .line 439
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    add-int/2addr v0, v1

    if-gez v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    rsub-int/lit8 v1, v1, 0xa

    aput v1, v0, p1

    goto/16 :goto_2

    .line 443
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    if-ne v0, v7, :cond_16

    .line 444
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v0, v5, :cond_15

    .line 445
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->density:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    .line 447
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->density:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    .line 449
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v0, v5, :cond_17

    .line 450
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    .line 452
    :cond_17
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    add-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 523
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 525
    .local v0, "bResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/airbutton/view/AirButtonListView;->finish(ZZ)V

    .line 531
    :cond_0
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->dispatchWindowFocusChanged(Z)V

    .line 272
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget v0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mUspLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->onFinishing()V

    .line 274
    :cond_0
    return-void
.end method

.method protected generateAndPlayFinishAnimation()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 180
    sget v7, Lcom/samsung/android/airbutton/view/AirButtonListView;->mUspLevel:I

    if-ne v7, v13, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->playCloseSound()V

    .line 183
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 184
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 186
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mStartViewIdx:I

    .line 188
    .local v1, "animationBaseItemIdx":I
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    if-eqz v7, :cond_2

    .line 189
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    .line 191
    :cond_2
    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mEndViewIdx:I

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mDisplayAdditionalViewCnt:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalViewCnt:I

    if-lt v7, v8, :cond_4

    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalViewCnt:I

    add-int/lit8 v3, v7, -0x1

    .line 193
    .local v3, "endViewIdx":I
    :goto_0
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mStartViewIdx:I

    .local v6, "viewIdx":I
    :goto_1
    if-gt v6, v3, :cond_7

    .line 195
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v7, v7, v6

    const-string/jumbo v8, "x"

    new-array v9, v13, [F

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v10

    aput v10, v9, v11

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v10

    aput v10, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 202
    .local v4, "moveAnimationX":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v7, v7, v6

    const-string/jumbo v8, "y"

    new-array v9, v13, [F

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v10

    aput v10, v9, v11

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v10

    aput v10, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 209
    .local v5, "moveAnimationY":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v7, v7, v6

    const-string v8, "alpha"

    new-array v9, v13, [F

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v10

    aput v10, v9, v11

    const/4 v10, 0x0

    aput v10, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 216
    .local v0, "alphaAnimation":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 218
    .local v2, "animators":Landroid/animation/AnimatorSet;
    sget v7, Lcom/samsung/android/airbutton/view/AirButtonListView;->mUspLevel:I

    if-ne v7, v14, :cond_5

    .line 219
    const-wide/16 v8, 0xa0

    invoke-virtual {v2, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 224
    :goto_2
    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mEndViewIdx:I

    if-ne v6, v7, :cond_3

    .line 225
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFinishAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 227
    :cond_3
    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mSelectedViewIdx:I

    if-ne v6, v7, :cond_6

    .line 228
    new-array v7, v12, [Landroid/animation/Animator;

    aput-object v0, v7, v11

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 232
    :goto_3
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 193
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 191
    .end local v0    # "alphaAnimation":Landroid/animation/ObjectAnimator;
    .end local v2    # "animators":Landroid/animation/AnimatorSet;
    .end local v3    # "endViewIdx":I
    .end local v4    # "moveAnimationX":Landroid/animation/ObjectAnimator;
    .end local v5    # "moveAnimationY":Landroid/animation/ObjectAnimator;
    .end local v6    # "viewIdx":I
    :cond_4
    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mEndViewIdx:I

    iget v8, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mDisplayAdditionalViewCnt:I

    add-int v3, v7, v8

    goto/16 :goto_0

    .line 221
    .restart local v0    # "alphaAnimation":Landroid/animation/ObjectAnimator;
    .restart local v2    # "animators":Landroid/animation/AnimatorSet;
    .restart local v3    # "endViewIdx":I
    .restart local v4    # "moveAnimationX":Landroid/animation/ObjectAnimator;
    .restart local v5    # "moveAnimationY":Landroid/animation/ObjectAnimator;
    .restart local v6    # "viewIdx":I
    :cond_5
    const-wide/16 v8, 0x140

    invoke-virtual {v2, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_2

    .line 230
    :cond_6
    new-array v7, v14, [Landroid/animation/Animator;

    aput-object v4, v7, v11

    aput-object v5, v7, v12

    aput-object v0, v7, v13

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3

    .line 234
    .end local v0    # "alphaAnimation":Landroid/animation/ObjectAnimator;
    .end local v2    # "animators":Landroid/animation/AnimatorSet;
    .end local v4    # "moveAnimationX":Landroid/animation/ObjectAnimator;
    .end local v5    # "moveAnimationY":Landroid/animation/ObjectAnimator;
    :cond_7
    return-void
.end method

.method protected generateAndPlayStartAnimation()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 139
    sget v6, Lcom/samsung/android/airbutton/view/AirButtonListView;->mUspLevel:I

    if-ne v6, v10, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->playOpenSound()V

    .line 142
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    .line 144
    .local v1, "animationBaseItemIdx":I
    const/4 v5, 0x0

    .local v5, "viewIdx":I
    :goto_0
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mEndViewIdx:I

    if-gt v5, v6, :cond_2

    .line 146
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v5

    const-string/jumbo v7, "x"

    new-array v8, v10, [F

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v9

    aput v9, v8, v11

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v9

    aput v9, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 153
    .local v3, "moveAnimationX":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v5

    const-string/jumbo v7, "y"

    new-array v8, v10, [F

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v9

    aput v9, v8, v11

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v9

    aput v9, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 160
    .local v4, "moveAnimationY":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v5

    const-string v7, "alpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 167
    .local v0, "alphaAnimation":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 168
    .local v2, "animators":Landroid/animation/AnimatorSet;
    const-wide/16 v6, 0x140

    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 170
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mEndViewIdx:I

    if-ne v5, v6, :cond_1

    .line 171
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    :cond_1
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v11

    aput-object v4, v6, v12

    aput-object v0, v6, v10

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 174
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 144
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "alphaAnimation":Landroid/animation/ObjectAnimator;
    .end local v2    # "animators":Landroid/animation/AnimatorSet;
    .end local v3    # "moveAnimationX":Landroid/animation/ObjectAnimator;
    .end local v4    # "moveAnimationY":Landroid/animation/ObjectAnimator;
    :cond_2
    return-void

    .line 160
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected generateAndPlayYPositionAdjustAnimation()V
    .locals 8

    .prologue
    .line 238
    const/4 v1, 0x0

    .local v1, "viewIdx":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mEndViewIdx:I

    if-gt v1, v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, v1

    const-string/jumbo v3, "y"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    aget v7, v7, v1

    add-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 247
    .local v0, "moveAnimationY":Landroid/animation/ObjectAnimator;
    mul-int/lit8 v2, v1, 0x28

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 248
    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 250
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mEndViewIdx:I

    if-ne v1, v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 253
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v0    # "moveAnimationY":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method protected initAllViewDelta()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 293
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustMenuItemXPosition()V

    .line 296
    :cond_0
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mEndViewIdx:I

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mDisplayAdditionalViewCnt:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalViewCnt:I

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalViewCnt:I

    add-int/lit8 v0, v2, -0x1

    .line 298
    .local v0, "endViewIdx":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mStartViewIdx:I

    .local v1, "viewIdx":I
    :goto_1
    if-gt v1, v0, :cond_3

    .line 299
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseX:[I

    aget v2, v2, v1

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewBaseY:[I

    aget v2, v2, v1

    if-eq v2, v4, :cond_2

    .line 298
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 296
    .end local v0    # "endViewIdx":I
    .end local v1    # "viewIdx":I
    :cond_1
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mEndViewIdx:I

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mDisplayAdditionalViewCnt:I

    add-int v0, v2, v3

    goto :goto_0

    .line 302
    .restart local v0    # "endViewIdx":I
    .restart local v1    # "viewIdx":I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustViewDelta(I)V

    goto :goto_2

    .line 305
    :cond_3
    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustAllViewPosition(II)V

    .line 306
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 129
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    return-void
.end method

.method protected onTouchDown(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 535
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v1, v1, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    if-nez v1, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mSelectedViewIdx:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 541
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 542
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 544
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHoverEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 546
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getTouchDownPosition()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    .line 547
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalViewCnt:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceForAllShapes:F

    .line 548
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceOnScreen:F

    .line 550
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 552
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowHeight:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 553
    .local v0, "actualDistanceOnScreen":F
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceOnScreen:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceOnScreen:F

    .line 556
    .end local v0    # "actualDistanceOnScreen":F
    :cond_3
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceForAllShapes:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceOnScreen:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceCanMove:F

    .line 558
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHoverEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 559
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mIsHoverEventEnabled:Z

    goto :goto_0
.end method

.method protected onTouchMove(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 595
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v1, v1, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    if-nez v1, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mSelectedViewIdx:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 601
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mIsCanMoving:Z

    if-nez v1, :cond_2

    .line 602
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v4, v1

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTouchDownX:I

    int-to-double v6, v1

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTouchDownY:I

    int-to-double v8, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getDistance(DDDD)D

    move-result-wide v2

    double-to-int v0, v2

    .line 604
    .local v0, "mMoveDistance":I
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mIsCanMoving:Z

    if-nez v1, :cond_0

    sget v1, Lcom/samsung/android/airbutton/view/AirButtonListView;->TOUCH_PRESS_DISTANCE_LIMIT_PIXEL:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 605
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mIsCanMoving:Z

    .line 606
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonListView;->setTouchDownPosition(Landroid/view/MotionEvent;)V

    .line 612
    .end local v0    # "mMoveDistance":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getTouchMovePosition(Landroid/view/MotionEvent;)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/airbutton/view/AirButtonListView;->handleMove(F)V

    .line 615
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_3

    .line 616
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 618
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method protected onTouchUp(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 563
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v2, v2, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    if-nez v2, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mSelectedViewIdx:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 569
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    .line 570
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    .line 571
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getTouchUpPosition()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    .line 573
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHoverEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 574
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHoverEnableRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 576
    iput-boolean v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mIsCanMoving:Z

    .line 579
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_0

    .line 580
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 581
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 582
    .local v0, "velocityX":F
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 584
    .local v1, "velocityY":F
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/airbutton/view/AirButtonListView;->startFlickering(FF)Z

    move-result v2

    if-ne v2, v6, :cond_2

    .line 585
    iput-boolean v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mIsTouchPressEnabled:Z

    .line 586
    iput-boolean v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->misFlickering:Z

    .line 589
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 590
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 626
    const/4 v0, 0x1

    return v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 632
    return-void
.end method

.method protected setEndViewIdx()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    if-eqz v0, :cond_0

    .line 282
    invoke-super {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->setEndViewIdx()V

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    iget v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalViewCnt:I

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mEndViewIdx:I

    goto :goto_0
.end method

.method public setTotalFlickDistance(F)V
    .locals 3
    .param p1, "totalFlickDistance"    # F

    .prologue
    .line 763
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v1, :cond_0

    .line 774
    :goto_0
    return-void

    .line 766
    :cond_0
    const/4 v0, 0x0

    .line 768
    .local v0, "currentMovePosition":F
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 769
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTouchUpX:I

    int-to-float v1, v1

    add-float v0, v1, p1

    .line 773
    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->handleMove(F)V

    goto :goto_0

    .line 771
    :cond_2
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTouchUpY:I

    int-to-float v1, v1

    add-float v0, v1, p1

    goto :goto_1
.end method

.method protected showHoverEnterAnimation(I)V
    .locals 3
    .param p1, "viewIdx"    # I

    .prologue
    const/4 v1, 0x1

    .line 700
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    if-ne v0, v1, :cond_4

    .line 701
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    if-ne p1, v0, :cond_2

    .line 702
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v1, :cond_1

    .line 703
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 705
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v1, :cond_3

    .line 708
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 710
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 713
    :cond_4
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->showHoverEnterAnimation(I)V

    goto :goto_0
.end method

.method protected showHoverExitAnimation(I)V
    .locals 3
    .param p1, "viewIdx"    # I

    .prologue
    const/4 v1, 0x1

    .line 720
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    if-ne v0, v1, :cond_4

    .line 721
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    if-ne p1, v0, :cond_2

    .line 722
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v1, :cond_1

    .line 723
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 725
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 727
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v1, :cond_3

    .line 728
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 730
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 733
    :cond_4
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->showHoverExitAnimation(I)V

    goto :goto_0
.end method

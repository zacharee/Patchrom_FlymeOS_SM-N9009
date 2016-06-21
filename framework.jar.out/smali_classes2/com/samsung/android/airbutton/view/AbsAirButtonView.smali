.class public abstract Lcom/samsung/android/airbutton/view/AbsAirButtonView;
.super Landroid/widget/FrameLayout;
.source "AbsAirButtonView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;
    }
.end annotation


# static fields
.field protected static final HOVER_DISABLE_TIME:I = 0x1f4

.field public static final INVALID_IDX:I = -0x1

.field public static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AirButtonWidget"

.field protected static final TOUCH_PRESS_DISTANCE_LIMIT:I = 0x1e

.field protected static TOUCH_PRESS_DISTANCE_LIMIT_PIXEL:I = 0x0

.field protected static final TOUCH_PRESS_TIME_LIMIT:I = 0x12c

.field protected static mIm:Landroid/hardware/input/InputManager;

.field protected static mUspLevel:I


# instance fields
.field protected mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

.field protected mAddedViewIdx:I

.field protected mAttrs:Lcom/samsung/android/airbutton/Attributes;

.field protected mDisplayAdditionalViewCnt:I

.field protected mEndViewIdx:I

.field protected mFocusedViewIdx:I

.field protected mIsHoverEventEnabled:Z

.field protected mIsKeyEventEnabled:Z

.field protected mIsReservedToFinish:Z

.field protected mIsReservedToResetPosition:Z

.field protected mIsStartUp:Z

.field protected mIsTouchAtAirButtonView:Z

.field protected mIsTouchEventEnabled:Z

.field protected mIsTouchPressEnabled:Z

.field protected mIsViewInitialized:[Z

.field protected mMaxMenuItemCnt:I

.field protected mOldStartViewIdx:I

.field protected mOnHoverListener:Landroid/view/View$OnHoverListener;

.field protected mOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mSelectedViewIdx:I

.field protected mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

.field protected mStartViewIdx:I

.field protected mTotalViewCnt:I

.field protected mTouchDownStartTime:J

.field protected mTouchDownX:I

.field protected mTouchDownY:I

.field protected mTouchUpX:I

.field protected mTouchUpY:I

.field protected mViewBaseX:[I

.field protected mViewBaseY:[I

.field protected mViewList:[Landroid/view/View;

.field protected mWidgetCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

.field protected misFlickering:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mUspLevel:I

    .line 75
    sput v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->TOUCH_PRESS_DISTANCE_LIMIT_PIXEL:I

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIm:Landroid/hardware/input/InputManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;
    .param p3, "attrs"    # Lcom/samsung/android/airbutton/Attributes;

    .prologue
    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    .line 44
    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 45
    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mWidgetCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    .line 52
    iput-boolean v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsStartUp:Z

    .line 53
    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    .line 54
    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsViewInitialized:[Z

    .line 55
    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    .line 56
    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    .line 57
    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    .line 58
    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOldStartViewIdx:I

    .line 59
    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    .line 60
    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    .line 61
    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    .line 63
    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mFocusedViewIdx:I

    .line 64
    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAddedViewIdx:I

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mMaxMenuItemCnt:I

    .line 66
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToResetPosition:Z

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownStartTime:J

    .line 77
    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownX:I

    .line 78
    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownY:I

    .line 79
    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpX:I

    .line 80
    iput v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpY:I

    .line 81
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsKeyEventEnabled:Z

    .line 82
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsHoverEventEnabled:Z

    .line 83
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchEventEnabled:Z

    .line 84
    iput-boolean v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchPressEnabled:Z

    .line 85
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->misFlickering:Z

    .line 86
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToFinish:Z

    .line 87
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchAtAirButtonView:Z

    .line 88
    iput-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    .line 290
    new-instance v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView$2;-><init>(Lcom/samsung/android/airbutton/view/AbsAirButtonView;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 352
    new-instance v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView$3;-><init>(Lcom/samsung/android/airbutton/view/AbsAirButtonView;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    .line 98
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    .line 100
    iput-object p3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 101
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-direct {v0, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    .line 102
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, v4}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->resetVariables(Z)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    new-instance v1, Lcom/samsung/android/airbutton/view/AbsAirButtonView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView$1;-><init>(Lcom/samsung/android/airbutton/view/AbsAirButtonView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->setOnSideButtonClickedListener(Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;)V

    .line 110
    invoke-virtual {p0, v4}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setChildrenDrawingOrderEnabled(Z)V

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->initWithAdapter()V

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->initWithAttributes()V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mUspLevel:I

    .line 118
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setLayoutDirection(I)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/airbutton/view/AbsAirButtonView;ILandroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/view/AbsAirButtonView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->isEventIncludedView(ILandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private initWithAdapter()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 122
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    .line 123
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 124
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mMaxMenuItemCnt:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mMaxMenuItemCnt:I

    :goto_0
    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    .line 126
    :cond_0
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    .line 127
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsViewInitialized:[Z

    .line 128
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    .line 129
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    .line 131
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-ge v0, v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsViewInitialized:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 133
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aput v3, v1, v0

    .line 134
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    aput v3, v1, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "idx":I
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    goto :goto_0

    .line 136
    .restart local v0    # "idx":I
    :cond_2
    return-void
.end method

.method private initWithAttributes()V
    .locals 2

    .prologue
    .line 139
    const/high16 v0, 0x41f00000    # 30.0f

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->TOUCH_PRESS_DISTANCE_LIMIT_PIXEL:I

    .line 140
    return-void
.end method

.method private isEventIncludedView(ILandroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "viewIdx"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide v10, 0x3fb999999999999aL    # 0.1

    const/4 v4, 0x0

    .line 303
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 304
    .local v2, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 305
    .local v3, "y":F
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    .line 306
    .local v0, "endIdx":I
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    .line 308
    .local v1, "startIdx":I
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v5, v5, p1

    if-nez v5, :cond_0

    .line 348
    :goto_0
    return v4

    .line 311
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 312
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    .line 313
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    .line 316
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    if-le v5, v6, :cond_4

    iget v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    if-gtz v5, :cond_2

    iget v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    float-to-double v6, v5

    cmpg-double v5, v6, v10

    if-gez v5, :cond_4

    .line 318
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    float-to-double v6, v5

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_3

    .line 319
    add-int/lit8 v0, v0, 0x1

    .line 320
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    float-to-double v6, v5

    cmpg-double v5, v6, v10

    if-gez v5, :cond_4

    .line 321
    add-int/lit8 v1, v1, 0x1

    .line 324
    :cond_4
    sget-object v5, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIm:Landroid/hardware/input/InputManager;

    if-nez v5, :cond_5

    .line 325
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIm:Landroid/hardware/input/InputManager;

    .line 333
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpl-float v5, v2, v5

    if-lez v5, :cond_7

    .line 334
    :cond_6
    const-string v5, "AbsAirButtonView"

    const-string v6, "isEVentIncludedView(cyy): return false1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 336
    :cond_7
    if-ne v0, p1, :cond_8

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v3, v5

    if-gez v5, :cond_8

    .line 337
    const-string v5, "AbsAirButtonView"

    const-string v6, "isEVentIncludedView(cyy): return false2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 339
    :cond_8
    if-ne v1, p1, :cond_9

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpl-float v5, v3, v5

    if-lez v5, :cond_9

    .line 340
    const-string v5, "AbsAirButtonView"

    const-string v6, "isEVentIncludedView(cyy): return false3"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 342
    :cond_9
    sget-object v5, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIm:Landroid/hardware/input/InputManager;

    if-eqz v5, :cond_a

    sget-object v5, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIm:Landroid/hardware/input/InputManager;

    const/4 v6, -0x1

    const/16 v7, -0x100

    const/16 v8, 0x140

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v5

    if-nez v5, :cond_a

    .line 344
    const-string v5, "AbsAirButtonView"

    const-string v6, "isEventIncludeView(cyy): return false4"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 347
    :cond_a
    const-string v4, "AbsAirButtonView"

    const-string v5, "isEVentIncludedView(cyy): return true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v4, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method protected addViewIfNeeded(I)V
    .locals 2
    .param p1, "viewIdx"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getView(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, p1

    .line 391
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 393
    iput p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAddedViewIdx:I

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->addView(Landroid/view/View;)V

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 399
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 402
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 404
    :cond_2
    return-void
.end method

.method protected adjustViewDelta(I)V
    .locals 2
    .param p1, "viewIdx"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsViewInitialized:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 455
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 233
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsKeyEventEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v1, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onHover(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 236
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsKeyEventEnabled:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onFinishing()V

    .line 228
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected finish(ZZ)V
    .locals 2
    .param p1, "isSendItemSelectedNoti"    # Z
    .param p2, "isFinishAirButton"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mWidgetCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mWidgetCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;->onFinished(IZZ)V

    .line 145
    :cond_0
    return-void
.end method

.method protected getDistance(DDDD)D
    .locals 7
    .param p1, "pointX1"    # D
    .param p3, "pointY1"    # D
    .param p5, "pointX2"    # D
    .param p7, "pointY2"    # D

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 417
    sub-double v0, p5, p1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v2, p7, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract initAllViewDelta()V
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 155
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 179
    return-void
.end method

.method protected onFinishing()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 458
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->finish(ZZ)V

    .line 459
    return-void
.end method

.method protected abstract onHoverEnter(I)V
.end method

.method protected abstract onHoverExit(I)V
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 159
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 161
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onStart()V

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onLayoutChanged()V

    goto :goto_0
.end method

.method protected onLayoutChanged()V
    .locals 0

    .prologue
    .line 451
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method protected onTouchDown(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 463
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 241
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchEventEnabled:Z

    if-nez v1, :cond_0

    .line 242
    const/4 v1, 0x0

    .line 287
    :goto_0
    return v1

    .line 244
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 287
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 246
    :pswitch_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchPressEnabled:Z

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownX:I

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownY:I

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownStartTime:J

    .line 251
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 252
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchAtAirButtonView:Z

    if-nez v1, :cond_2

    .line 253
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    .line 257
    :cond_1
    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 255
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchAtAirButtonView:Z

    goto :goto_2

    .line 260
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 263
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpX:I

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpY:I

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownStartTime:J

    sub-long v10, v2, v4

    .line 267
    .local v10, "touchPressTimeInterval":J
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchPressEnabled:Z

    if-eqz v1, :cond_3

    const-wide/16 v2, 0x12c

    cmp-long v1, v10, v2

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownX:I

    int-to-double v2, v1

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownY:I

    int-to-double v4, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-double v6, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v8, v1

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->getDistance(DDDD)D

    move-result-wide v2

    sget v1, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->TOUCH_PRESS_DISTANCE_LIMIT_PIXEL:I

    int-to-double v4, v1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_3

    .line 270
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToFinish:Z

    .line 272
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onTouchUp(Landroid/view/MotionEvent;)V

    .line 274
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->misFlickering:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToFinish:Z

    if-eqz v1, :cond_4

    .line 275
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 276
    .local v0, "audionManager":Landroid/media/AudioManager;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onFinishing()V

    .line 283
    .end local v0    # "audionManager":Landroid/media/AudioManager;
    :goto_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToFinish:Z

    goto/16 :goto_1

    .line 280
    :cond_4
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    goto :goto_3

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onTouchMove(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 464
    return-void
.end method

.method protected onTouchUp(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 465
    return-void
.end method

.method public reAdjustViewYPosition(II)V
    .locals 4
    .param p1, "yPosition"    # I
    .param p2, "parentViewHeight"    # I

    .prologue
    .line 421
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v2, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 425
    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    if-ge v2, v3, :cond_3

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    .line 427
    .local v0, "displayItemCnt":I
    :goto_1
    add-int v2, p1, p2

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    if-le v2, v3, :cond_5

    .line 429
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v2, v0

    sub-int v1, p1, v2

    .line 430
    .local v1, "yPositionTemp":I
    if-gez v1, :cond_4

    .line 431
    add-int/2addr p1, p2

    .line 439
    .end local v0    # "displayItemCnt":I
    .end local v1    # "yPositionTemp":I
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    if-eq v2, p1, :cond_0

    .line 440
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p1, v3, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    iput p1, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    .line 441
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsReservedToResetPosition:Z

    goto :goto_0

    .line 425
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v2, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    goto :goto_1

    .line 433
    .restart local v0    # "displayItemCnt":I
    .restart local v1    # "yPositionTemp":I
    :cond_4
    move p1, v1

    goto :goto_2

    .line 436
    .end local v1    # "yPositionTemp":I
    :cond_5
    add-int/2addr p1, p2

    goto :goto_2
.end method

.method protected removeViewIfNeeded(I)V
    .locals 4
    .param p1, "viewIdx"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 407
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 409
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 411
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 412
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 414
    :cond_0
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 380
    return-void
.end method

.method public setAirButtonViewCallback(Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mWidgetCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    .line 479
    return-void
.end method

.method protected setEndViewIdx()V
    .locals 2

    .prologue
    .line 210
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    .line 212
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-lt v0, v1, :cond_0

    .line 213
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    .line 214
    :cond_0
    return-void
.end method

.method protected setStartViewIdx(I)V
    .locals 3
    .param p1, "startViewIdx"    # I

    .prologue
    .line 187
    if-gez p1, :cond_0

    .line 188
    const/4 p1, 0x0

    .line 190
    :cond_0
    iput p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    .line 191
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOldStartViewIdx:I

    if-ne v1, v2, :cond_1

    .line 207
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setEndViewIdx()V

    .line 196
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-lt v1, v2, :cond_2

    .line 197
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    .line 199
    :cond_2
    const/4 v0, 0x0

    .local v0, "viewIdx":I
    :goto_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-ge v0, v1, :cond_4

    .line 200
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    if-gt v1, v0, :cond_3

    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_3

    .line 201
    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->addViewIfNeeded(I)V

    .line 199
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->removeViewIfNeeded(I)V

    goto :goto_2

    .line 206
    :cond_4
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    iput v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mOldStartViewIdx:I

    goto :goto_0
.end method

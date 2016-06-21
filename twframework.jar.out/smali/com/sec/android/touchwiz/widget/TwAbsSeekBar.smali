.class public abstract Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;
.super Lcom/sec/android/touchwiz/widget/TwProgressBar;
.source "TwAbsSeekBar.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NO_ALPHA:I = 0xff

.field private static final mScafe:Ljava/lang/String;


# instance fields
.field private TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

.field private final debug:Z

.field private mDisabledAlpha:F

.field private mHoverUIEnabled:I

.field private mHoveringLevel:I

.field private mIsDisableCompensationTouchArea:Z

.field private mIsTouch:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScale:F

.field private mSeekThumbFontBoldStyle:Z

.field private mSeekThumbFontColor:I

.field private mSeekThumbFontEnable:Z

.field private mSeekThumbFontPainter:Landroid/graphics/Paint;

.field private mSeekThumbFontSize:F

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbPosX:I

.field private mThumbPosY:I

.field mTouchProgressOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScafe:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScafe:Ljava/lang/String;

    const-string v1, "americano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const-string v0, "TwAbsSeekBar"

    const-string v1, "This API can be used in models based on L platform."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 113
    const v0, 0x2010006

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScafe:Ljava/lang/String;

    const-string v1, "americano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-string v0, "TwAbsSeekBar"

    const-string v1, "This API can be used in models based on L platform."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->debug:Z

    .line 56
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    .line 62
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    .line 67
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsUserSeekable:Z

    .line 73
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    .line 78
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    .line 82
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    .line 83
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontBoldStyle:Z

    .line 85
    const/high16 v4, 0x41700000    # 15.0f

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    .line 88
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    .line 91
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoverUIEnabled:I

    .line 92
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoveringLevel:I

    .line 129
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScafe:Ljava/lang/String;

    const-string v5, "americano"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 130
    const-string v4, "TwAbsSeekBar"

    const-string v5, "This API can be used in models based on L platform."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    .line 134
    sget-object v4, Ltouchwiz/R$styleable;->TwSeekBar:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 135
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 137
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2020038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getThumbOffset()I

    move-result v4

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 148
    .local v3, "thumbOffset":I
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbOffset(I)V

    .line 149
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mDisabledAlpha:F

    .line 150
    const/4 v4, 0x5

    const/high16 v5, 0x2050000

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    .line 151
    const/4 v4, 0x6

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    .line 152
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontBoldStyle:Z

    .line 153
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    .line 154
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    .line 157
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontBoldStyle:Z

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 160
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    .line 162
    return-void

    .line 140
    .end local v3    # "thumbOffset":I
    :cond_1
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 654
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 11
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "gap"    # I

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 424
    .local v3, "progress":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v4, v9, 0x2

    .line 426
    .local v4, "progressSpacing":I
    if-lez v4, :cond_0

    instance-of v9, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    if-eqz v9, :cond_1

    .line 427
    :cond_0
    const/4 v4, 0x0

    .line 429
    :cond_1
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v9, p1, v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int/2addr v9, v10

    sub-int v0, v9, v4

    .line 430
    .local v0, "available":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 431
    .local v7, "thumbWidth":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 432
    .local v5, "thumbHeight":I
    sub-int/2addr v0, v7

    .line 435
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v0, v9

    .line 437
    int-to-float v9, v0

    mul-float/2addr v9, p3

    float-to-int v9, v9

    add-int v6, v9, v4

    .line 440
    .local v6, "thumbPos":I
    const/high16 v9, -0x80000000

    if-ne p4, v9, :cond_2

    .line 441
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 442
    .local v2, "oldBounds":Landroid/graphics/Rect;
    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 443
    .local v8, "topBound":I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 450
    .end local v2    # "oldBounds":Landroid/graphics/Rect;
    .local v1, "bottomBound":I
    :goto_0
    add-int v9, v6, v7

    invoke-virtual {p2, v6, v8, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 451
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    .line 452
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    .line 453
    return-void

    .line 445
    .end local v1    # "bottomBound":I
    .end local v8    # "topBound":I
    :cond_2
    move v8, p4

    .line 446
    .restart local v8    # "topBound":I
    add-int v1, p4, v5

    .restart local v1    # "bottomBound":I
    goto :goto_0
.end method

.method private setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .param p1, "h"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "gap"    # I

    .prologue
    .line 459
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v7, p1, v7

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v0, v7, v8

    .line 460
    .local v0, "available":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 461
    .local v6, "thumbWidth":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 463
    .local v4, "thumbHeight":I
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, p3

    int-to-float v8, v0

    mul-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v8, v4, 0x2

    sub-int v5, v7, v8

    .line 466
    .local v5, "thumbPos":I
    const/high16 v7, -0x80000000

    if-ne p4, v7, :cond_0

    .line 467
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 468
    .local v2, "oldBounds":Landroid/graphics/Rect;
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 469
    .local v1, "leftBound":I
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 476
    .end local v2    # "oldBounds":Landroid/graphics/Rect;
    .local v3, "rightBound":I
    :goto_0
    add-int v7, v5, v4

    invoke-virtual {p2, v1, v5, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 478
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    .line 479
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    .line 480
    return-void

    .line 471
    .end local v1    # "leftBound":I
    .end local v3    # "rightBound":I
    :cond_0
    move v1, p4

    .line 472
    .restart local v1    # "leftBound":I
    add-int v3, p4, v6

    .restart local v3    # "rightBound":I
    goto :goto_0
.end method

.method private trackHoverEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 759
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getWidth()I

    move-result v5

    .line 760
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v1

    .line 762
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 763
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 765
    .local v7, "y":I
    const/4 v3, 0x0

    .line 766
    .local v3, "progress":F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    .line 768
    .local v2, "max":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v8

    if-nez v8, :cond_6

    .line 769
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    if-eqz v8, :cond_1

    .line 771
    if-ltz v7, :cond_0

    if-le v7, v1, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    if-ltz v7, :cond_2

    if-le v7, v1, :cond_3

    .line 777
    :cond_2
    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    .line 778
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    goto :goto_0

    .line 782
    :cond_3
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v5, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 783
    .local v0, "available":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    if-ge v6, v8, :cond_4

    .line 784
    const/4 v4, 0x0

    .line 809
    .local v4, "scale":F
    :goto_1
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    .line 810
    float-to-int v8, v3

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mHoveringLevel:I

    goto :goto_0

    .line 785
    .end local v4    # "scale":F
    :cond_4
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v8, v5, v8

    if-le v6, v8, :cond_5

    .line 786
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "scale":F
    goto :goto_1

    .line 788
    .end local v4    # "scale":F
    :cond_5
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v6, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v4, v8, v9

    .line 789
    .restart local v4    # "scale":F
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1

    .line 792
    .end local v0    # "available":I
    .end local v4    # "scale":F
    :cond_6
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    if-eqz v8, :cond_7

    .line 794
    if-ltz v6, :cond_0

    if-gt v6, v5, :cond_0

    .line 799
    :cond_7
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v8, v1, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v0, v8, v9

    .line 800
    .restart local v0    # "available":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    if-ge v7, v8, :cond_8

    .line 801
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "scale":F
    goto :goto_1

    .line 802
    .end local v4    # "scale":F
    :cond_8
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v8, v1, v8

    if-le v7, v8, :cond_9

    .line 803
    const/4 v4, 0x0

    .restart local v4    # "scale":F
    goto :goto_1

    .line 805
    .end local v4    # "scale":F
    :cond_9
    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v9, v7, v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float/2addr v9, v10

    sub-float v4, v8, v9

    .line 806
    .restart local v4    # "scale":F
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getWidth()I

    move-result v5

    .line 589
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v1

    .line 591
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 592
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 594
    .local v7, "y":I
    const/4 v3, 0x0

    .line 595
    .local v3, "progress":F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    .line 597
    .local v2, "max":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v8

    if-nez v8, :cond_4

    .line 598
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    if-eqz v8, :cond_1

    .line 600
    if-ltz v7, :cond_0

    if-le v7, v1, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v5, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 613
    .local v0, "available":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    if-ge v6, v8, :cond_2

    .line 614
    const/4 v4, 0x0

    .line 639
    .local v4, "scale":F
    :goto_1
    int-to-float v8, v2

    mul-float/2addr v8, v4

    add-float/2addr v3, v8

    .line 643
    float-to-int v8, v3

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 615
    .end local v4    # "scale":F
    :cond_2
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int v8, v5, v8

    if-le v6, v8, :cond_3

    .line 616
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "scale":F
    goto :goto_1

    .line 618
    .end local v4    # "scale":F
    :cond_3
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v8, v6, v8

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v4, v8, v9

    .line 619
    .restart local v4    # "scale":F
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1

    .line 622
    .end local v0    # "available":I
    .end local v4    # "scale":F
    :cond_4
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsDisableCompensationTouchArea:Z

    if-eqz v8, :cond_5

    .line 624
    if-ltz v6, :cond_0

    if-gt v6, v5, :cond_0

    .line 629
    :cond_5
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v8, v1, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v0, v8, v9

    .line 630
    .restart local v0    # "available":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    if-ge v7, v8, :cond_6

    .line 631
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "scale":F
    goto :goto_1

    .line 632
    .end local v4    # "scale":F
    :cond_6
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int v8, v1, v8

    if-le v7, v8, :cond_7

    .line 633
    const/4 v4, 0x0

    .restart local v4    # "scale":F
    goto :goto_1

    .line 635
    .end local v4    # "scale":F
    :cond_7
    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v9, v7, v9

    int-to-float v9, v9

    int-to-float v10, v0

    div-float/2addr v9, v10

    sub-float v4, v8, v9

    .line 636
    .restart local v4    # "scale":F
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mTouchProgressOffset:F

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 5

    .prologue
    .line 315
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->drawableStateChanged()V

    .line 317
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 318
    .local v1, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xff

    :goto_0
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 323
    .local v0, "bgDrawble":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getDrawableState()[I

    move-result-object v2

    .line 325
    .local v2, "state":[I
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 328
    .end local v2    # "state":[I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getDrawableState()[I

    move-result-object v2

    .line 330
    .restart local v2    # "state":[I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 332
    .end local v2    # "state":[I
    :cond_2
    return-void

    .line 319
    .end local v0    # "bgDrawble":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/high16 v3, 0x437f0000    # 255.0f

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSeekThumbFontColor()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    return v0
.end method

.method public getSeekThumbFontSize()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    float-to-int v0, v0

    return v0
.end method

.method public getThumbCenterPosX()I
    .locals 3

    .prologue
    .line 380
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 382
    .local v0, "thumbCenterPosX":I
    return v0
.end method

.method public getThumbCenterPosY()I
    .locals 3

    .prologue
    .line 391
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 393
    .local v0, "thumbCenterPosY":I
    return v0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbWidth()I
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 298
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    .line 300
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 489
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v0

    .line 490
    .local v0, "height":I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    .line 491
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 494
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 495
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 497
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgress()I

    move-result v1

    .line 500
    .local v1, "progress":I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 501
    .local v7, "thumbWidth":I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 502
    .local v5, "thumbHeight":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 503
    .local v6, "thumbText":Ljava/lang/CharSequence;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 505
    .local v2, "rectText":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 506
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 507
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v8, v9, v10, v11, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 509
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v8

    if-nez v8, :cond_2

    .line 510
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float v3, v8, v9

    .line 511
    .local v3, "textX":F
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v9, v0, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v4, v8, v9

    .line 517
    .local v4, "textY":F
    :goto_0
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v3, v4, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 520
    .end local v1    # "progress":I
    .end local v2    # "rectText":Landroid/graphics/Rect;
    .end local v3    # "textX":F
    .end local v4    # "textY":F
    .end local v5    # "thumbHeight":I
    .end local v6    # "thumbText":Ljava/lang/CharSequence;
    .end local v7    # "thumbWidth":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :cond_1
    monitor-exit p0

    return-void

    .line 513
    .restart local v1    # "progress":I
    .restart local v2    # "rectText":Landroid/graphics/Rect;
    .restart local v5    # "thumbHeight":I
    .restart local v6    # "thumbText":Ljava/lang/CharSequence;
    .restart local v7    # "thumbWidth":I
    :cond_2
    :try_start_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosX:I

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float v3, v8, v9

    .line 514
    .restart local v3    # "textX":F
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbPosY:I

    int-to-float v8, v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, v2, Landroid/graphics/Rect;->top:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v9, v9

    sub-float v4, v8, v9

    .restart local v4    # "textY":F
    goto :goto_0

    .line 487
    .end local v0    # "height":I
    .end local v1    # "progress":I
    .end local v2    # "rectText":Landroid/graphics/Rect;
    .end local v3    # "textX":F
    .end local v4    # "textY":F
    .end local v5    # "thumbHeight":I
    .end local v6    # "thumbText":Ljava/lang/CharSequence;
    .end local v7    # "thumbWidth":I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method onHoverChanged(III)V
    .locals 0
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 756
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 673
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 677
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgress()I

    move-result v0

    .line 679
    .local v0, "progress":I
    packed-switch p1, :pswitch_data_0

    .line 705
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 681
    :pswitch_0
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 682
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    .line 683
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 687
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 688
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    .line 689
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 693
    :pswitch_2
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 694
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    .line 695
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 699
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 700
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgress(IZ)V

    .line 701
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 679
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 529
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 531
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 532
    .local v3, "thumbHeight":I
    :goto_0
    const/4 v2, 0x0

    .line 533
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 534
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 535
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mMinWidth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 536
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mMinHeight:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 537
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 539
    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 540
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 542
    invoke-static {v2, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->resolveSize(II)I

    move-result v4

    invoke-static {v1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->resolveSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    monitor-exit p0

    return-void

    .line 531
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    .end local v3    # "thumbHeight":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 529
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    const/high16 v2, -0x80000000

    .line 336
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 337
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressWidth()I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 348
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    .line 350
    :cond_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getHeight()I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 357
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 358
    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_1

    const/4 v4, 0x0

    .line 359
    .local v4, "thumbHeight":I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v1

    .line 360
    .local v1, "max":I
    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgress()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v2, v5, v6

    .line 361
    .local v2, "scale":F
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressWidth()I

    move-result p1

    .line 363
    if-eqz v3, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressBarMode()I

    move-result v5

    if-nez v5, :cond_3

    .line 365
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingTop:I

    sub-int v5, p2, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    div-int/lit8 v0, v5, 0x2

    .line 366
    .local v0, "gap":I
    invoke-direct {p0, p1, v3, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 372
    .end local v0    # "gap":I
    :cond_0
    :goto_2
    return-void

    .line 358
    .end local v1    # "max":I
    .end local v2    # "scale":F
    .end local v4    # "thumbHeight":I
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_0

    .line 360
    .restart local v1    # "max":I
    .restart local v4    # "thumbHeight":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 368
    .restart local v2    # "scale":F
    :cond_3
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingLeft:I

    sub-int v5, p1, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mPaddingRight:I

    sub-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    .line 369
    .restart local v0    # "gap":I
    invoke-direct {p0, p2, v3, v2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setThumbVerticalPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method

.method onStartTrackingHover(III)V
    .locals 0
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 750
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 0

    .prologue
    .line 660
    return-void
.end method

.method onStopTrackingHover()V
    .locals 0

    .prologue
    .line 753
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 0

    .prologue
    .line 667
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 548
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsUserSeekable:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 584
    :goto_0
    return v0

    .line 552
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 554
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    .line 555
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    .line 556
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStartTrackingTouch()V

    .line 557
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 558
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    goto :goto_0

    .line 562
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 563
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 567
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 568
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingTouch()V

    .line 569
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    .line 570
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    .line 574
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    goto :goto_0

    .line 578
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onStopTrackingTouch()V

    .line 579
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setPressed(Z)V

    .line 580
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mIsTouch:Z

    .line 581
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    goto :goto_0

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setHoverPopupType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 826
    return-void
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .param p1, "increment"    # I

    .prologue
    .line 214
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1    # "increment":I
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    .line 215
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setMax(I)V

    .line 235
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 238
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_1
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSeekThumbFontColor(I)V
    .locals 0
    .param p1, "resourceID"    # I

    .prologue
    .line 273
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontColor:I

    .line 274
    return-void
.end method

.method public setSeekThumbFontEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontEnable:Z

    .line 294
    return-void
.end method

.method public setSeekThumbFontSize(I)V
    .locals 2
    .param p1, "fontSize"    # I

    .prologue
    .line 249
    if-gez p1, :cond_0

    .line 250
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->TWSEEKTHUMB_DEFAULT_FONT_SIZE:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mSeekThumbFontSize:F

    goto :goto_0
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 174
    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 180
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    .line 182
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 183
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    .line 184
    return-void
.end method

.method public setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumbOffset:I

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->invalidate()V

    .line 203
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

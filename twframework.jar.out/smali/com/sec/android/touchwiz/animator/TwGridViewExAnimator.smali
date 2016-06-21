.class public Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
.super Landroid/animation/ValueAnimator;
.source "TwGridViewExAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$1;,
        Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;
    }
.end annotation


# static fields
.field public static final ANI_TYPE_ALPHA:I = 0x4

.field public static final ANI_TYPE_BOTTOM:I = 0x8

.field public static final ANI_TYPE_HEIGHT:I = 0x6

.field public static final ANI_TYPE_NONE:I = -0x1

.field public static final ANI_TYPE_RIGHT:I = 0x7

.field public static final ANI_TYPE_SCALEX:I = 0x2

.field public static final ANI_TYPE_SCALEY:I = 0x3

.field public static final ANI_TYPE_TRANSX:I = 0x0

.field public static final ANI_TYPE_TRANSY:I = 0x1

.field public static final ANI_TYPE_WIDTH:I = 0x5

.field private static final MIN_DURATION:J = 0x0L

.field public static final TAG:Ljava/lang/String; = "GridViewExAnimator"


# instance fields
.field private mAniType:I

.field private mCurrentProgress:F

.field private mCurrentValuef:F

.field private mEndValuef:F

.field private mId:I

.field private mIsNeedToInavalidate:Z

.field private mListener:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;

.field private mOriginStartDelay:J

.field private mStartValuef:F

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(ILandroid/view/View;FF)V
    .locals 3
    .param p1, "aType"    # I
    .param p2, "aTargetView"    # Landroid/view/View;
    .param p3, "aStart"    # F
    .param p4, "aEnd"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mAniType:I

    .line 28
    iput v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mId:I

    .line 30
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mStartValuef:F

    .line 31
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mEndValuef:F

    .line 32
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentValuef:F

    .line 34
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentProgress:F

    .line 37
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;-><init>(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mListener:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;

    .line 38
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mIsNeedToInavalidate:Z

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mOriginStartDelay:J

    .line 106
    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mAniType:I

    .line 107
    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mTargetView:Landroid/view/View;

    .line 108
    iput p3, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mStartValuef:F

    .line 109
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mStartValuef:F

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentValuef:F

    .line 110
    iput p4, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mEndValuef:F

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p3, v0, v2

    const/4 v1, 0x1

    aput p4, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setFloatValues([F)V

    .line 113
    new-instance v0, Landroid/view/animation/interpolator/SineIn33;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineIn33;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mListener:Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator$GridAnimatorListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 121
    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 11
    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentProgress:F

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .param p1, "x1"    # F

    .prologue
    .line 11
    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentValuef:F

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    .prologue
    .line 11
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mAniType:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mIsNeedToInavalidate:Z

    return v0
.end method

.method public static createAlphaAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 4
    .param p0, "aView"    # Landroid/view/View;
    .param p1, "aDuration"    # I
    .param p2, "aPrevValue"    # F
    .param p3, "aNextValue"    # F

    .prologue
    .line 44
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    .line 45
    .local v0, "aAni":Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 46
    return-object v0
.end method

.method public static createBottomAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 4
    .param p0, "aView"    # Landroid/view/View;
    .param p1, "aDuration"    # I
    .param p2, "aPrevValue"    # F
    .param p3, "aNextValue"    # F

    .prologue
    .line 99
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    .line 100
    .local v0, "aAni":Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 101
    return-object v0
.end method

.method public static createHeightAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 4
    .param p0, "aView"    # Landroid/view/View;
    .param p1, "aDuration"    # I
    .param p2, "aPrevValue"    # F
    .param p3, "aNextValue"    # F

    .prologue
    .line 85
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    .line 86
    .local v0, "aAni":Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 87
    return-object v0
.end method

.method public static createRightAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 4
    .param p0, "aView"    # Landroid/view/View;
    .param p1, "aDuration"    # I
    .param p2, "aPrevValue"    # F
    .param p3, "aNextValue"    # F

    .prologue
    .line 92
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    .line 93
    .local v0, "aAni":Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 94
    return-object v0
.end method

.method public static createScaleXAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 4
    .param p0, "aView"    # Landroid/view/View;
    .param p1, "aDuration"    # I
    .param p2, "aPrevValue"    # F
    .param p3, "aNextValue"    # F

    .prologue
    .line 51
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    .line 52
    .local v0, "aAni":Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    return-object v0
.end method

.method public static createScaleYAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 4
    .param p0, "aView"    # Landroid/view/View;
    .param p1, "aDuration"    # I
    .param p2, "aPrevValue"    # F
    .param p3, "aNextValue"    # F

    .prologue
    .line 58
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    .line 59
    .local v0, "aAni":Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    return-object v0
.end method

.method public static createTransXAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 4
    .param p0, "aView"    # Landroid/view/View;
    .param p1, "aDuration"    # I
    .param p2, "aPrevValue"    # F
    .param p3, "aNextValue"    # F

    .prologue
    .line 65
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    .line 66
    .local v0, "aAni":Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public static createTransYAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 4
    .param p0, "aView"    # Landroid/view/View;
    .param p1, "aDuration"    # I
    .param p2, "aPrevValue"    # F
    .param p3, "aNextValue"    # F

    .prologue
    .line 71
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    .line 72
    .local v0, "aAni":Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    return-object v0
.end method

.method public static createWidthAnimation(Landroid/view/View;IFF)Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    .locals 4
    .param p0, "aView"    # Landroid/view/View;
    .param p1, "aDuration"    # I
    .param p2, "aPrevValue"    # F
    .param p3, "aNextValue"    # F

    .prologue
    .line 78
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;-><init>(ILandroid/view/View;FF)V

    .line 79
    .local v0, "aAni":Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 80
    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mId:I

    return v0
.end method

.method public requesetInvalidateOnUpdateView(Z)V
    .locals 0
    .param p1, "udpate"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mIsNeedToInavalidate:Z

    .line 136
    return-void
.end method

.method public reversePoint()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 175
    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mStartValuef:F

    .line 176
    .local v2, "aStartValue":F
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentValuef:F

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mStartValuef:F

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setFloatValues([F)V

    .line 177
    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mEndValuef:F

    iput v3, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mStartValuef:F

    .line 178
    iput v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mEndValuef:F

    .line 180
    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentProgress:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->getDuration()J

    move-result-wide v4

    long-to-float v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentProgress:F

    mul-float/2addr v3, v4

    float-to-long v0, v3

    .line 183
    .local v0, "aNewDuration":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    .line 184
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 187
    :goto_0
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setCurrentPlayTime(J)V

    .line 189
    .end local v0    # "aNewDuration":J
    :cond_0
    return-void

    .line 186
    .restart local v0    # "aNewDuration":J
    :cond_1
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public setCurrentPlayTime(J)V
    .locals 5
    .param p1, "playTime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 148
    iget-wide v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mOriginStartDelay:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 150
    iget-wide v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mOriginStartDelay:J

    sub-long/2addr v0, p1

    invoke-super {p0, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 151
    invoke-super {p0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-super {p0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 156
    iget-wide v0, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mOriginStartDelay:J

    sub-long v0, p1, v0

    invoke-super {p0, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "aId"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mId:I

    .line 126
    return-void
.end method

.method public setStartDelay(J)V
    .locals 1
    .param p1, "startDelay"    # J

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mOriginStartDelay:J

    .line 142
    invoke-super {p0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 143
    return-void
.end method

.method public setStartPoint()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 161
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentValuef:F

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mEndValuef:F

    aput v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setFloatValues([F)V

    .line 162
    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->mCurrentProgress:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-long v0, v2

    .line 165
    .local v0, "aNewDuration":J
    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    .line 166
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 169
    :goto_0
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setCurrentPlayTime(J)V

    .line 171
    .end local v0    # "aNewDuration":J
    :cond_0
    return-void

    .line 168
    .restart local v0    # "aNewDuration":J
    :cond_1
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/touchwiz/animator/TwGridViewExAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

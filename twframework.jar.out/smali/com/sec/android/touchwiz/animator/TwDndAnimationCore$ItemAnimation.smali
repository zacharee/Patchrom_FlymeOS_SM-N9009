.class abstract Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
.super Ljava/lang/Object;
.source "TwDndAnimationCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ItemAnimation"
.end annotation


# instance fields
.field mDuration:I

.field mProgress:F

.field mStartTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method computeAnimation(J)V
    .locals 5
    .param p1, "curUpTime"    # J

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 59
    iget-wide v2, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;->mStartTime:J

    sub-long v0, p1, v2

    .line 60
    .local v0, "elapsed":J
    long-to-float v2, v0

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;->mDuration:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;->mProgress:F

    .line 61
    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;->mProgress:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 62
    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;->mProgress:F

    .line 63
    :cond_0
    return-void
.end method

.method getDuration()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;->mDuration:I

    return v0
.end method

.method getProgress()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;->mProgress:F

    return v0
.end method

.method abstract getTransformation(Landroid/view/animation/Transformation;)V
.end method

.method isFinished()Z
    .locals 6

    .prologue
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 73
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;->mStartTime:J

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;->mDuration:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

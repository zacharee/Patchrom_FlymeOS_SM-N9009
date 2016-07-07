.class public Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
.super Landroid/animation/ValueAnimator;
.source "TwPropertyAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;
    }
.end annotation


# static fields
.field public static final ANI_TYPE_ALPHA:I = 0x5

.field public static final ANI_TYPE_BOTTOM:I = 0x8

.field public static final ANI_TYPE_NONE:I = 0x0

.field public static final ANI_TYPE_RIGHT:I = 0x7

.field public static final ANI_TYPE_SCALEX:I = 0x3

.field public static final ANI_TYPE_SCALEY:I = 0x4

.field public static final ANI_TYPE_TRANSX:I = 0x1

.field public static final ANI_TYPE_TRANSY:I = 0x2

.field private static final KEY_FRAME_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GridViewEx"


# instance fields
.field private mCurrentValuef:F

.field private mOriginStartDelay:J

.field private mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

.field private mViews:[Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mCurrentValuef:F

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mOriginStartDelay:J

    .line 28
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    .line 29
    new-array v0, v2, [Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setFloatValues([F)V

    .line 34
    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 35
    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36
    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public addProperty(Landroid/view/View;IFF)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "property"    # I
    .param p3, "start"    # F
    .param p4, "end"    # F

    .prologue
    const/4 v4, 0x0

    .line 52
    if-nez p1, :cond_0

    .line 54
    const-string v5, "GridViewEx"

    const-string v6, "addPropery : view is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return v4

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 60
    .local v0, "holder":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 62
    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    aget-object v5, v5, v2

    if-ne p1, v5, :cond_2

    .line 64
    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    aget-object v0, v5, v2

    .line 69
    :cond_1
    if-nez v0, :cond_7

    .line 71
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    .end local v0    # "holder":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;
    invoke-direct {v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;-><init>()V

    .line 72
    .restart local v0    # "holder":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;
    invoke-virtual {v0, p2, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addProperty(IFF)Z

    move-result v5

    if-nez v5, :cond_3

    .line 74
    const-string v5, "GridViewEx"

    const-string v6, "addPropery : Invalid property type"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 79
    :cond_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [Landroid/view/View;

    .line 80
    .local v3, "views":[Landroid/view/View;
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 82
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 85
    :cond_4
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    array-length v4, v4

    aput-object p1, v3, v4

    .line 86
    iput-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    .line 89
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    .line 90
    .local v1, "holers":[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;
    const/4 v2, 0x0

    :goto_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 92
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    aget-object v4, v4, v2

    aput-object v4, v1, v2

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 95
    :cond_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    array-length v4, v4

    aput-object v0, v1, v4

    .line 96
    iput-object v1, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    .line 107
    .end local v1    # "holers":[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;
    .end local v3    # "views":[Landroid/view/View;
    :cond_6
    const/4 v4, 0x1

    goto :goto_0

    .line 100
    :cond_7
    invoke-virtual {v0, p2, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addProperty(IFF)Z

    move-result v5

    if-nez v5, :cond_6

    .line 102
    const-string v5, "GridViewEx"

    const-string v6, "addPropery : Invalid property type"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 297
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 302
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 307
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 312
    .local v1, "propertyCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    aget-object v2, v2, v0

    # getter for: Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->access$000(Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;)[I

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    const-string v2, "AnimationProperty"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Property count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 42
    .local v0, "curValue":F
    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mCurrentValuef:F

    .line 44
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mProperties:[Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mViews:[Landroid/view/View;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->updateProperty(Landroid/view/View;F)Z

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public reversePoint()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 144
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mCurrentValuef:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v5, v2, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setFloatValues([F)V

    .line 146
    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mCurrentValuef:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mCurrentValuef:F

    mul-float/2addr v2, v3

    float-to-long v0, v2

    .line 149
    .local v0, "aNewDuration":J
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setCurrentPlayTime(J)V

    .line 152
    .end local v0    # "aNewDuration":J
    :cond_0
    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 5
    .param p1, "playTime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 120
    iget-wide v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mOriginStartDelay:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 122
    iget-wide v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mOriginStartDelay:J

    sub-long/2addr v0, p1

    invoke-super {p0, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 123
    invoke-super {p0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-super {p0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 128
    iget-wide v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mOriginStartDelay:J

    sub-long v0, p1, v0

    invoke-super {p0, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0
.end method

.method public setStartDelay(J)V
    .locals 1
    .param p1, "startDelay"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mOriginStartDelay:J

    .line 114
    invoke-super {p0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 115
    return-void
.end method

.method public setStartPoint()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 133
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mCurrentValuef:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v5, v2, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setFloatValues([F)V

    .line 134
    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mCurrentValuef:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->mCurrentValuef:F

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    float-to-long v0, v2

    .line 137
    .local v0, "aNewDuration":J
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 138
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setCurrentPlayTime(J)V

    .line 140
    .end local v0    # "aNewDuration":J
    :cond_0
    return-void
.end method

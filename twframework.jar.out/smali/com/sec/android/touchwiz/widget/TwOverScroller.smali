.class public Lcom/sec/android/touchwiz/widget/TwOverScroller;
.super Ljava/lang/Object;
.source "TwOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

.field private final mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F
    .param p5, "flywheel"    # Z

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 105
    if-nez p2, :cond_0

    .line 106
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwScroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwScroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 110
    :goto_0
    iput-boolean p3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mFlywheel:Z

    .line 111
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    .line 112
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    .line 123
    return-void

    .line 108
    :cond_0
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->finish()V

    .line 704
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->finish()V

    .line 705
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 9

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 362
    const/4 v6, 0x0

    .line 493
    :goto_0
    return v6

    .line 365
    :cond_0
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 493
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 367
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 370
    .local v4, "time":J
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$600(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 372
    .local v2, "elapsedTime":J
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$500(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    .line 373
    .local v0, "duration":I
    int-to-long v6, v0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 374
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v7, v2

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-interface {v6, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 375
    .local v1, "q":F
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v6, v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->updateScroll(F)V

    .line 376
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v6, v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_1

    .line 384
    .end local v1    # "q":F
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    goto :goto_1

    .line 389
    .end local v0    # "duration":I
    .end local v2    # "elapsedTime":J
    .end local v4    # "time":J
    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$000(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 390
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_3

    .line 391
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 410
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->finish()V

    .line 439
    :cond_3
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$000(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 440
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_1

    .line 441
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 460
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->finish()V

    goto :goto_1

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .param p1, "extend"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->extendDuration(I)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->extendDuration(I)V

    .line 318
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 556
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIIIII)V

    .line 557
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 8
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)F

    move-result v6

    .line 591
    .local v6, "oldVelocityX":F
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)F

    move-result v7

    .line 592
    .local v7, "oldVelocityY":F
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 594
    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    .line 595
    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    .line 599
    .end local v6    # "oldVelocityX":F
    .end local v7    # "oldVelocityY":F
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mMode:I

    .line 600
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->fling(IIIII)V

    .line 601
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->fling(IIIII)V

    .line 616
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2
    .param p1, "finished"    # Z

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # setter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v1, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$002(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;Z)Z

    move-result v1

    # setter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$002(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;Z)Z

    .line 211
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 237
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)F

    move-result v2

    mul-float v0, v1, v2

    .line 238
    .local v0, "squaredNorm":F
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 239
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public getCurrVelocity(Z)F
    .locals 1
    .param p1, "isYVelocity"    # Z

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)F

    move-result v0

    .line 246
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$200(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)F

    move-result v0

    goto :goto_0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$100(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$100(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$500(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$500(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$400(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$400(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$300(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$300(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$000(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$000(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverScrolled()Z
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$000(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$700(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$000(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$700(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 741
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$400(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$300(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v0, v2, v3

    .line 742
    .local v0, "dx":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$400(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$300(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v1, v2, v3

    .line 743
    .local v1, "dy":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .prologue
    .line 640
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 641
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .prologue
    .line 665
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 666
    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .param p1, "newX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 336
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .param p1, "newY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 354
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->setFriction(F)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->setFriction(F)V

    .line 178
    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwScroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwScroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public springBack(IIIIII)Z
    .locals 4
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .prologue
    const/4 v2, 0x1

    .line 546
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mMode:I

    .line 549
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->springback(III)Z

    move-result v0

    .line 550
    .local v0, "spingbackX":Z
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->springback(III)Z

    move-result v1

    .line 551
    .local v1, "spingbackY":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 511
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIIII)V

    .line 512
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 528
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mMode:I

    .line 529
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->startScroll(III)V

    .line 530
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->startScroll(III)V

    .line 531
    return-void
.end method

.method public timePassed()I
    .locals 8

    .prologue
    .line 732
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 733
    .local v2, "time":J
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerX:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$600(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwOverScroller;->mScrollerY:Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;->access$600(Lcom/sec/android/touchwiz/widget/TwOverScroller$SplineOverScroller;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 734
    .local v0, "startTime":J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method

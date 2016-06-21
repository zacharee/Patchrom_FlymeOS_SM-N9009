.class public Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;
.super Ljava/lang/Object;
.source "TwPropertyAnimationFactory.java"


# instance fields
.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    return-void
.end method

.method private findMatchAnimator(JJLandroid/graphics/Interpolator;)Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    .locals 7
    .param p1, "duration"    # J
    .param p3, "startDelay"    # J
    .param p5, "interpolator"    # Landroid/graphics/Interpolator;

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v0, v2

    .line 189
    :goto_0
    return-object v0

    .line 181
    :cond_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    .line 183
    .local v0, "animator":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->getDuration()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->getStartDelay()J

    move-result-wide v4

    cmp-long v3, v4, p3

    if-nez v3, :cond_1

    goto :goto_0

    .end local v0    # "animator":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    :cond_2
    move-object v0, v2

    .line 189
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    return-void
.end method

.method public createAlphaAnimation(Landroid/view/View;IFF)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "start"    # F
    .param p4, "end"    # F

    .prologue
    .line 38
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createAlphaAnimation(Landroid/view/View;IFFJ)Z

    move-result v0

    return v0
.end method

.method public createAlphaAnimation(Landroid/view/View;IFFJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "start"    # F
    .param p4, "end"    # F
    .param p5, "startDelay"    # J

    .prologue
    .line 43
    int-to-long v2, p2

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->findMatchAnimator(JJLandroid/graphics/Interpolator;)Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    move-result-object v0

    .line 44
    .local v0, "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    .end local v0    # "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    invoke-direct {v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;-><init>()V

    .line 47
    .restart local v0    # "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addProperty(Landroid/view/View;IFF)Z

    .line 51
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 52
    invoke-virtual {v0, p5, p6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setStartDelay(J)V

    .line 53
    const/4 v1, 0x1

    return v1
.end method

.method public createBottomAnimation(Landroid/view/View;IFF)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "start"    # F
    .param p4, "end"    # F

    .prologue
    .line 158
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createBottomAnimation(Landroid/view/View;IFFJ)Z

    move-result v0

    return v0
.end method

.method public createBottomAnimation(Landroid/view/View;IFFJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "start"    # F
    .param p4, "end"    # F
    .param p5, "startDelay"    # J

    .prologue
    .line 163
    int-to-long v2, p2

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->findMatchAnimator(JJLandroid/graphics/Interpolator;)Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    move-result-object v0

    .line 164
    .local v0, "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    .end local v0    # "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    invoke-direct {v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;-><init>()V

    .line 167
    .restart local v0    # "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addProperty(Landroid/view/View;IFF)Z

    .line 171
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 172
    invoke-virtual {v0, p5, p6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setStartDelay(J)V

    .line 173
    const/4 v1, 0x1

    return v1
.end method

.method public createRightAnimation(Landroid/view/View;IFF)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "start"    # F
    .param p4, "end"    # F

    .prologue
    .line 138
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createRightAnimation(Landroid/view/View;IFFJ)Z

    move-result v0

    return v0
.end method

.method public createRightAnimation(Landroid/view/View;IFFJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "start"    # F
    .param p4, "end"    # F
    .param p5, "startDelay"    # J

    .prologue
    .line 143
    int-to-long v2, p2

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->findMatchAnimator(JJLandroid/graphics/Interpolator;)Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    move-result-object v0

    .line 144
    .local v0, "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    .end local v0    # "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    invoke-direct {v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;-><init>()V

    .line 147
    .restart local v0    # "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addProperty(Landroid/view/View;IFF)Z

    .line 151
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 152
    invoke-virtual {v0, p5, p6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setStartDelay(J)V

    .line 153
    const/4 v1, 0x1

    return v1
.end method

.method public createScaleXAnimation(Landroid/view/View;IFF)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "start"    # F
    .param p4, "end"    # F

    .prologue
    .line 58
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createScaleXAnimation(Landroid/view/View;IFFJ)Z

    move-result v0

    return v0
.end method

.method public createScaleXAnimation(Landroid/view/View;IFFJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "start"    # F
    .param p4, "end"    # F
    .param p5, "startDelay"    # J

    .prologue
    .line 63
    int-to-long v2, p2

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->findMatchAnimator(JJLandroid/graphics/Interpolator;)Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    move-result-object v0

    .line 64
    .local v0, "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    .end local v0    # "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    invoke-direct {v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;-><init>()V

    .line 67
    .restart local v0    # "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addProperty(Landroid/view/View;IFF)Z

    .line 71
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 72
    invoke-virtual {v0, p5, p6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setStartDelay(J)V

    .line 73
    const/4 v1, 0x1

    return v1
.end method

.method public createScaleYAnimation(Landroid/view/View;IFF)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "start"    # F
    .param p4, "end"    # F

    .prologue
    .line 78
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createScaleYAnimation(Landroid/view/View;IFFJ)Z

    move-result v0

    return v0
.end method

.method public createScaleYAnimation(Landroid/view/View;IFFJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "start"    # F
    .param p4, "end"    # F
    .param p5, "startDelay"    # J

    .prologue
    .line 83
    int-to-long v2, p2

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->findMatchAnimator(JJLandroid/graphics/Interpolator;)Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    move-result-object v0

    .line 84
    .local v0, "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    .end local v0    # "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    invoke-direct {v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;-><init>()V

    .line 87
    .restart local v0    # "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addProperty(Landroid/view/View;IFF)Z

    .line 91
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 92
    invoke-virtual {v0, p5, p6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setStartDelay(J)V

    .line 93
    const/4 v1, 0x1

    return v1
.end method

.method public createTransXAnimation(Landroid/view/View;IFF)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "start"    # F
    .param p4, "end"    # F

    .prologue
    .line 98
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createTransXAnimation(Landroid/view/View;IFFJ)Z

    move-result v0

    return v0
.end method

.method public createTransXAnimation(Landroid/view/View;IFFJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "start"    # F
    .param p4, "end"    # F
    .param p5, "startDelay"    # J

    .prologue
    const/4 v7, 0x1

    .line 103
    int-to-long v2, p2

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->findMatchAnimator(JJLandroid/graphics/Interpolator;)Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    move-result-object v0

    .line 104
    .local v0, "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    .end local v0    # "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    invoke-direct {v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;-><init>()V

    .line 107
    .restart local v0    # "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    invoke-virtual {v0, p1, v7, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addProperty(Landroid/view/View;IFF)Z

    .line 111
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 112
    invoke-virtual {v0, p5, p6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setStartDelay(J)V

    .line 113
    return v7
.end method

.method public createTransYAnimation(Landroid/view/View;IFF)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "start"    # F
    .param p4, "end"    # F

    .prologue
    .line 118
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->createTransYAnimation(Landroid/view/View;IFFJ)Z

    move-result v0

    return v0
.end method

.method public createTransYAnimation(Landroid/view/View;IFFJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "start"    # F
    .param p4, "end"    # F
    .param p5, "startDelay"    # J

    .prologue
    .line 123
    int-to-long v2, p2

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->findMatchAnimator(JJLandroid/graphics/Interpolator;)Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    move-result-object v0

    .line 124
    .local v0, "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;

    .end local v0    # "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    invoke-direct {v0}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;-><init>()V

    .line 127
    .restart local v0    # "animtor":Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->addProperty(Landroid/view/View;IFF)Z

    .line 131
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 132
    invoke-virtual {v0, p5, p6}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;->setStartDelay(J)V

    .line 133
    const/4 v1, 0x1

    return v1
.end method

.method public getCurrentAnimationList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "aniList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 31
    .local v1, "animator":Landroid/animation/Animator;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    .end local v1    # "animator":Landroid/animation/Animator;
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimationFactory;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

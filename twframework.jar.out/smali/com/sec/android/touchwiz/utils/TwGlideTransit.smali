.class public Lcom/sec/android/touchwiz/utils/TwGlideTransit;
.super Lcom/sec/android/touchwiz/utils/TwTransit;
.source "TwGlideTransit.java"


# static fields
.field private static final DURATION:J = 0x2eeL

.field private static final REVERSE_DURATION:J = 0x2eeL

.field private static final TWTRANSIT_ID_CONTENT_IMAGE:Ljava/lang/String; = "TwTransitIDContentImage"

.field private static final TWTRANSIT_ID_CONTENT_TEXT:Ljava/lang/String; = "TwTransitIDContentText"


# instance fields
.field mProgress:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/utils/TwTransit;-><init>(Landroid/app/Activity;)V

    .line 97
    return-void
.end method


# virtual methods
.method public bindActionBarLogoOut(Landroid/content/Intent;Landroid/view/View;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 106
    const-string v0, "TwTransitIdActionBarLogo"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TwTransitActionNone"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindOut(Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    .line 107
    const-string v0, "TwTransitTypeGlide"

    invoke-static {p1, v0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->setType(Landroid/content/Intent;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public bindActionBarSubTitleOut(Landroid/content/Intent;Landroid/view/View;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 128
    const-string v0, "TwTransitIdActionBarSubTitle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TwTransitActionNone"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindOut(Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    .line 129
    const-string v0, "TwTransitTypeGlide"

    invoke-static {p1, v0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->setType(Landroid/content/Intent;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public bindActionBarTitleOut(Landroid/content/Intent;Landroid/view/View;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 117
    const-string v0, "TwTransitIdActionBarTitle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TwTransitActionNone"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindOut(Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    .line 118
    const-string v0, "TwTransitTypeGlide"

    invoke-static {p1, v0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->setType(Landroid/content/Intent;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public bindContentImageIn(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 167
    const-string v0, "TwTransitIDContentImage"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TwTransitActionScale"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "TwTransitActionTranslate"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindIn(Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public bindContentImageOut(Landroid/content/Intent;Landroid/view/View;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 150
    const-string v0, "TwTransitIDContentImage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TwTransitActionNone"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindOut(Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    .line 151
    const-string v0, "TwTransitTypeGlide"

    invoke-static {p1, v0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->setType(Landroid/content/Intent;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public bindContentTextIn(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 159
    const-string v0, "TwTransitIDContentText"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TwTransitActionAlpha"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "TwTransitActionScale"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "TwTransitActionTranslate"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindIn(Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public bindContentTextOut(Landroid/content/Intent;Landroid/view/View;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 139
    const-string v0, "TwTransitIDContentText"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TwTransitActionNone"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindOut(Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    .line 140
    const-string v0, "TwTransitTypeGlide"

    invoke-static {p1, v0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->setType(Landroid/content/Intent;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method protected bindImplicitIn()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 187
    const-string v0, "TwTransitIdActionBarLogo"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "TwTransitActionScale"

    aput-object v2, v1, v3

    const-string v2, "TwTransitActionTranslate"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v6, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindIn(Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    .line 188
    const-string v0, "TwTransitIdActionBarTitle"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "TwTransitActionAlpha"

    aput-object v2, v1, v3

    const-string v2, "TwTransitActionScale"

    aput-object v2, v1, v4

    const-string v2, "TwTransitActionTranslate"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v6, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindIn(Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    .line 189
    const-string v0, "TwTransitIdActionBarSubTitle"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "TwTransitActionAlpha"

    aput-object v2, v1, v3

    const-string v2, "TwTransitActionScale"

    aput-object v2, v1, v4

    const-string v2, "TwTransitActionTranslate"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v6, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->bindIn(Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method protected bindImplicitOut()V
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->bindImplicitOut()V

    goto :goto_0
.end method

.method protected createMainViewAnimatorIn(Landroid/app/Activity;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .local p3, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    const-wide/16 v4, 0x2ee

    const/4 v3, 0x2

    .line 600
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 602
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->isTransitCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 604
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 605
    const-string v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 616
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 617
    new-instance v2, Lcom/sec/android/touchwiz/utils/TwGlideTransit$1;

    invoke-direct {v2, p0, p2}, Lcom/sec/android/touchwiz/utils/TwGlideTransit$1;-><init>(Lcom/sec/android/touchwiz/utils/TwGlideTransit;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 627
    return-object v1

    .line 607
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 608
    const-string v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_0

    .line 612
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 613
    const-string v2, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_0

    .line 605
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 608
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 613
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected createMainViewAnimatorOut(Landroid/app/Activity;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 379
    .local p3, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 380
    .local v5, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v8, 0x0

    .line 382
    .local v8, "interpolator":Landroid/animation/TimeInterpolator;
    const-wide/16 v0, 0x96

    .line 383
    .local v0, "DELAY":J
    const-wide/16 v6, 0x0

    .line 384
    .local v6, "delay":J
    instance-of v9, p2, Landroid/widget/TextView;

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 386
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/View;->setAlpha(F)V

    .line 387
    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 388
    .local v2, "aniAlpha":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->isTransitCanceled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 389
    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    .end local v8    # "interpolator":Landroid/animation/TimeInterpolator;
    const/high16 v9, 0x40400000    # 3.0f

    invoke-direct {v8, v9}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 390
    .restart local v8    # "interpolator":Landroid/animation/TimeInterpolator;
    const/4 v9, 0x1

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 420
    .end local v2    # "aniAlpha":Landroid/animation/ObjectAnimator;
    :cond_0
    :goto_0
    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 421
    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 423
    return-object v5

    .line 392
    .restart local v2    # "aniAlpha":Landroid/animation/ObjectAnimator;
    :cond_1
    const-string v9, "scaleX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 393
    .local v3, "aniScaleX":Landroid/animation/ObjectAnimator;
    const-string v9, "scaleY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_2

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 394
    .local v4, "aniScaleY":Landroid/animation/ObjectAnimator;
    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 395
    const-wide/16 v10, 0x2

    mul-long v6, v0, v10

    .line 396
    new-instance v8, Landroid/view/animation/interpolator/QuintOut80;

    .end local v8    # "interpolator":Landroid/animation/TimeInterpolator;
    invoke-direct {v8}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    .restart local v8    # "interpolator":Landroid/animation/TimeInterpolator;
    goto :goto_0

    .line 401
    .end local v2    # "aniAlpha":Landroid/animation/ObjectAnimator;
    .end local v3    # "aniScaleX":Landroid/animation/ObjectAnimator;
    .end local v4    # "aniScaleY":Landroid/animation/ObjectAnimator;
    :cond_2
    instance-of v9, p2, Landroid/widget/ImageView;

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 403
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/View;->setAlpha(F)V

    .line 404
    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_3

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 405
    .restart local v2    # "aniAlpha":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->isTransitCanceled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 406
    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    .end local v8    # "interpolator":Landroid/animation/TimeInterpolator;
    const/high16 v9, 0x40400000    # 3.0f

    invoke-direct {v8, v9}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 407
    .restart local v8    # "interpolator":Landroid/animation/TimeInterpolator;
    const/4 v9, 0x1

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 409
    :cond_3
    const-string v9, "scaleX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_4

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 410
    .restart local v3    # "aniScaleX":Landroid/animation/ObjectAnimator;
    const-string v9, "scaleY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_5

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 411
    .restart local v4    # "aniScaleY":Landroid/animation/ObjectAnimator;
    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v4, v9, v10

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 412
    const-wide/16 v10, 0x2

    mul-long v6, v0, v10

    .line 413
    new-instance v8, Landroid/view/animation/interpolator/QuintOut80;

    .end local v8    # "interpolator":Landroid/animation/TimeInterpolator;
    invoke-direct {v8}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    .restart local v8    # "interpolator":Landroid/animation/TimeInterpolator;
    goto/16 :goto_0

    .line 387
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 392
    :array_1
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 393
    :array_2
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 404
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 409
    :array_4
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 410
    :array_5
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected createMainWindowAnimatorIn(Landroid/app/Activity;)Landroid/animation/AnimatorSet;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 572
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 574
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 575
    .local v1, "decorView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    new-array v2, v3, [Landroid/animation/Animator;

    const-string v3, "alpha"

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 585
    :goto_0
    return-object v0

    .line 582
    :cond_0
    new-array v2, v3, [Landroid/animation/Animator;

    const-string v3, "alpha"

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 577
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 582
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected createMainWindowAnimatorOut(Landroid/app/Activity;)Landroid/animation/AnimatorSet;
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const-wide/16 v8, 0x12c

    const/4 v7, 0x2

    .line 349
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 351
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 352
    .local v1, "decorView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/view/View;->setPivotX(F)V

    .line 353
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/view/View;->setPivotY(F)V

    .line 355
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->isTransitCanceled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 356
    const-string v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 357
    .local v2, "decorViewAnim1":Landroid/animation/ObjectAnimator;
    const-string v5, "scaleX"

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 358
    .local v3, "decorViewAnim2":Landroid/animation/ObjectAnimator;
    const-string v5, "scaleY"

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 359
    .local v4, "decorViewAnim3":Landroid/animation/ObjectAnimator;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    aput-object v4, v5, v7

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 364
    .end local v2    # "decorViewAnim1":Landroid/animation/ObjectAnimator;
    .end local v3    # "decorViewAnim2":Landroid/animation/ObjectAnimator;
    .end local v4    # "decorViewAnim3":Landroid/animation/ObjectAnimator;
    :goto_0
    return-object v0

    .line 361
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 356
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 357
    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data

    .line 358
    :array_2
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected createOverlayViewAnimatorIn(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
    .locals 26
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayWindow"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 449
    .local p4, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    .line 451
    .local v15, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-object v15

    .line 455
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getParcelables()Ljava/util/HashMap;

    move-result-object v22

    .line 456
    .local v22, "parcelables":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Landroid/os/Parcelable;>;"
    if-eqz v22, :cond_0

    .line 460
    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/widget/TextView;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 462
    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;

    .line 464
    .local v20, "fromTextInfo":Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    .line 466
    .local v17, "density":F
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 467
    .local v4, "glideTextView":Landroid/widget/TextView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    move-object/from16 v0, v20

    iget v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mPaddingLeft:I

    move-object/from16 v0, v20

    iget v3, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mPaddingTop:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mPaddingRight:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mPaddingBottom:I

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 469
    move-object/from16 v0, v20

    iget v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mSize:F

    div-float v2, v2, v17

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v2, p3

    .line 470
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 471
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mText:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    move-object/from16 v0, v20

    iget v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mGravity:I

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v2, p3

    .line 473
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v20

    iget v3, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mFontStyle:I

    invoke-virtual {v4, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 474
    move-object/from16 v0, v20

    iget v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mTextScaleX:F

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 476
    new-instance v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 477
    .local v24, "targetOverlayTextView":Landroid/widget/TextView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v2, p3

    .line 479
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    div-float v2, v2, v17

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v2, p3

    .line 480
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v2, p3

    .line 481
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v2, p3

    .line 482
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getGravity()I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v2, p3

    .line 483
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v2, p3

    .line 484
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 486
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 487
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 489
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getBoundsInfo(Landroid/view/View;)Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    move-result-object v25

    .line 491
    .local v25, "toBounds":Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_c

    .line 492
    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 493
    .local v11, "action":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 491
    :cond_2
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 495
    :cond_3
    const-string v2, "TwTransitActionAlpha"

    if-ne v11, v2, :cond_4

    .line 496
    const-string v3, "TwTransitActionAlpha"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v12

    .line 501
    .local v12, "aniAlpha":Landroid/animation/AnimatorSet;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    const/4 v3, 0x1

    const-string v6, "TwTransitActionAlpha"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, v24

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    .line 503
    .end local v12    # "aniAlpha":Landroid/animation/AnimatorSet;
    :cond_4
    const-string v2, "TwTransitActionScale"

    if-ne v11, v2, :cond_5

    .line 504
    const-string v3, "TwTransitActionScale"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, v20

    move-object/from16 v6, v25

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v13

    .line 505
    .local v13, "aniScale":Landroid/animation/AnimatorSet;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 510
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    const/4 v3, 0x1

    const-string v6, "TwTransitActionScale"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, v24

    move-object/from16 v8, v20

    move-object/from16 v9, v25

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    .line 512
    .end local v13    # "aniScale":Landroid/animation/AnimatorSet;
    :cond_5
    const-string v2, "TwTransitActionTranslate"

    if-ne v11, v2, :cond_2

    .line 513
    const-string v3, "TwTransitActionTranslate"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, v20

    move-object/from16 v6, v25

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v14

    .line 514
    .local v14, "aniTranslation":Landroid/animation/AnimatorSet;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 519
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    const/4 v3, 0x1

    const-string v6, "TwTransitActionTranslate"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, v24

    move-object/from16 v8, v20

    move-object/from16 v9, v25

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_2

    .line 525
    .end local v4    # "glideTextView":Landroid/widget/TextView;
    .end local v11    # "action":Ljava/lang/String;
    .end local v14    # "aniTranslation":Landroid/animation/AnimatorSet;
    .end local v17    # "density":F
    .end local v20    # "fromTextInfo":Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;
    .end local v21    # "i":I
    .end local v24    # "targetOverlayTextView":Landroid/widget/TextView;
    .end local v25    # "toBounds":Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    :cond_6
    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 526
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 527
    .local v7, "glideImageView":Landroid/widget/ImageView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v2, p3

    .line 529
    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 530
    .local v18, "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v18, Landroid/graphics/drawable/BitmapDrawable;

    .end local v18    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    .line 531
    .local v16, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_7

    .line 533
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 534
    .local v23, "scaledBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 537
    .end local v23    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    .line 538
    .local v19, "fromBounds":Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getBoundsInfo(Landroid/view/View;)Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    move-result-object v25

    .line 543
    .restart local v25    # "toBounds":Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 545
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_3
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_c

    .line 546
    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 547
    .restart local v11    # "action":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 545
    :cond_8
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 549
    :cond_9
    const-string v2, "TwTransitActionAlpha"

    if-ne v11, v2, :cond_a

    .line 550
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    const-string v6, "TwTransitActionAlpha"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    .line 551
    :cond_a
    const-string v2, "TwTransitActionScale"

    if-ne v11, v2, :cond_b

    .line 552
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    const-string v6, "TwTransitActionScale"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, v19

    move-object/from16 v9, v25

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    .line 553
    :cond_b
    const-string v2, "TwTransitActionTranslate"

    if-ne v11, v2, :cond_8

    .line 554
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    const-string v6, "TwTransitActionTranslate"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v8, v19

    move-object/from16 v9, v25

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    .line 560
    .end local v7    # "glideImageView":Landroid/widget/ImageView;
    .end local v11    # "action":Ljava/lang/String;
    .end local v16    # "bitmap":Landroid/graphics/Bitmap;
    .end local v19    # "fromBounds":Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    .end local v21    # "i":I
    .end local v25    # "toBounds":Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    :cond_c
    new-instance v2, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_0
.end method

.method protected createOverlayViewAnimatorOut(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
    .locals 24
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayWindow"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 241
    .local p4, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 243
    .local v12, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getParcelables()Ljava/util/HashMap;

    move-result-object v20

    .line 244
    .local v20, "parcelables":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Landroid/os/Parcelable;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->mBoundsInfo:Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->mTextInfo:Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->mBoundsInfoActionList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->mTextInfoActionList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-object v12

    .line 248
    :cond_1
    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/widget/TextView;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->mTextInfo:Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;

    move-object/from16 v17, v0

    .line 252
    .local v17, "fromTextInfo":Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v14, v2, Landroid/util/DisplayMetrics;->density:F

    .line 254
    .local v14, "density":F
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 255
    .local v18, "glideTextView":Landroid/widget/TextView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mPaddingLeft:I

    move-object/from16 v0, v17

    iget v3, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mPaddingTop:I

    move-object/from16 v0, v17

    iget v5, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mPaddingRight:I

    move-object/from16 v0, v17

    iget v6, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mPaddingBottom:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 257
    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mSize:F

    div-float/2addr v2, v14

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v2, p3

    .line 258
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mText:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mGravity:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v2, p3

    .line 261
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v17

    iget v3, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mFontStyle:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 262
    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mTextScaleX:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 264
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 265
    .local v4, "targetOverlayTextView":Landroid/widget/TextView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v2, p3

    .line 267
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    div-float/2addr v2, v14

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v2, p3

    .line 268
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v2, p3

    .line 269
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v2, p3

    .line 270
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getGravity()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v2, p3

    .line 271
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v2, p3

    .line 272
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 274
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 275
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 277
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getBoundsInfo(Landroid/view/View;)Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    move-result-object v22

    .line 279
    .local v22, "toBounds":Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->mTextInfoActionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_c

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->mTextInfoActionList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 281
    .local v11, "action":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->isTransitCanceled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 284
    const-string v2, "TwTransitActionAlpha"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 285
    const/4 v2, 0x2

    new-array v0, v2, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/4 v8, 0x0

    const-string v3, "TwTransitActionAlpha"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v23, v8

    const/4 v2, 0x1

    const-string v6, "TwTransitActionAlpha"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, v18

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v23, v2

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 279
    :cond_2
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 287
    :cond_3
    const-string v2, "TwTransitActionScale"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 288
    const/4 v2, 0x2

    new-array v0, v2, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/4 v2, 0x0

    const-string v6, "TwTransitActionScale"

    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, v18

    move-object/from16 v8, v17

    move-object/from16 v9, v22

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v8, 0x1

    const-string v3, "TwTransitActionScale"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, v22

    move-object/from16 v6, v17

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v23, v8

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    .line 290
    :cond_4
    const-string v2, "TwTransitActionTranslate"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 291
    const/4 v2, 0x2

    new-array v0, v2, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/4 v2, 0x0

    const-string v6, "TwTransitActionTranslate"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, v18

    move-object/from16 v8, v22

    move-object/from16 v9, v17

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v23, v2

    const/4 v8, 0x1

    const-string v3, "TwTransitActionTranslate"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, v22

    move-object/from16 v6, v17

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    aput-object v2, v23, v8

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    .line 296
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 297
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_2

    .line 302
    .end local v4    # "targetOverlayTextView":Landroid/widget/TextView;
    .end local v11    # "action":Ljava/lang/String;
    .end local v14    # "density":F
    .end local v17    # "fromTextInfo":Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;
    .end local v18    # "glideTextView":Landroid/widget/TextView;
    .end local v19    # "i":I
    .end local v22    # "toBounds":Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    :cond_6
    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 303
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 304
    .local v7, "glideImageView":Landroid/widget/ImageView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v2, p3

    .line 306
    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 307
    .local v15, "drawable":Landroid/graphics/drawable/Drawable;
    check-cast v15, Landroid/graphics/drawable/BitmapDrawable;

    .end local v15    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 308
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_7

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v5, 0x0

    invoke-static {v13, v2, v3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 310
    .local v21, "scaledBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 313
    .end local v21    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->mBoundsInfo:Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    move-object/from16 v16, v0

    .line 314
    .local v16, "fromBounds":Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getBoundsInfo(Landroid/view/View;)Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    move-result-object v22

    .line 316
    .restart local v22    # "toBounds":Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 318
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->mBoundsInfoActionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_c

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->mBoundsInfoActionList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 320
    .restart local v11    # "action":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->isTransitCanceled()Z

    move-result v2

    if-nez v2, :cond_b

    .line 323
    const-string v2, "TwTransitActionAlpha"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 324
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    const-string v6, "TwTransitActionAlpha"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 318
    :cond_8
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 325
    :cond_9
    const-string v2, "TwTransitActionScale"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 326
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    const-string v6, "TwTransitActionScale"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, v22

    move-object/from16 v9, v16

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    .line 327
    :cond_a
    const-string v2, "TwTransitActionTranslate"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 328
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    const-string v6, "TwTransitActionTranslate"

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, v22

    move-object/from16 v9, v16

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    .line 331
    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_4

    .line 337
    .end local v7    # "glideImageView":Landroid/widget/ImageView;
    .end local v11    # "action":Ljava/lang/String;
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "fromBounds":Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    .end local v19    # "i":I
    .end local v22    # "toBounds":Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    :cond_c
    new-instance v2, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_0
.end method

.method protected createOverlayWindowAnimatorIn(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayWindow"    # Landroid/view/ViewGroup;

    .prologue
    .line 435
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/utils/TwTransit;->createOverlayWindowAnimatorIn(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method protected createOverlayWindowAnimatorOut(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayWindow"    # Landroid/view/ViewGroup;

    .prologue
    .line 227
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/utils/TwTransit;->createOverlayWindowAnimatorOut(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method protected needToCreateOverlayWindowIn()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 211
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :cond_0
    return v1
.end method

.method protected needToCreateOverlayWindowOut()Z
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwGlideTransit;->getReverseAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateStransitProgressValue(Landroid/animation/Animator;Ljava/lang/String;)F
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 632
    const/4 v0, 0x0

    .line 634
    .local v0, "progress":F
    const-string v1, "alpha"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return v0

    .line 638
    :cond_1
    const-string v1, "scaleX"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "scaleY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 642
    const-string v1, "translationX"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "translationY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.class public Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;
.super Lcom/sec/android/touchwiz/utils/TwTransit;
.source "TwScaleUpTransit.java"


# static fields
.field private static final DURATION:J = 0x215L

.field private static final TWTRANSIT_ACTION_SCALE_UP:Ljava/lang/String; = "TwTransitActionScaleUp"

.field private static final TWTRANSIT_ID_SCALE_UP:Ljava/lang/String; = "TwTransitIDScaleUp"


# instance fields
.field private mOldPivotX:F

.field private mOldPivotY:F

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/utils/TwTransit;-><init>(Landroid/app/Activity;)V

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    .line 79
    return-void
.end method


# virtual methods
.method protected bindImplicitIn()V
    .locals 5

    .prologue
    .line 105
    const-string v0, "TwTransitIDScaleUp"

    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TwTransitActionScaleUp"

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->bindIn(Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method protected bindImplicitOut()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->bindImplicitOut()V

    .line 98
    return-void
.end method

.method protected createMainViewAnimatorIn(Landroid/app/Activity;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
    .locals 1
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
    .line 323
    .local p3, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/utils/TwTransit;->createMainViewAnimatorIn(Landroid/app/Activity;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method protected createMainViewAnimatorOut(Landroid/app/Activity;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
    .locals 1
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
    .line 211
    .local p3, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/utils/TwTransit;->createMainViewAnimatorOut(Landroid/app/Activity;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method protected createMainWindowAnimatorIn(Landroid/app/Activity;)Landroid/animation/AnimatorSet;
    .locals 26
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 247
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 248
    .local v7, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 250
    .local v8, "animatorSubSet":Landroid/animation/AnimatorSet;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->getParcelables()Ljava/util/HashMap;

    move-result-object v13

    .line 251
    .local v13, "parcelables":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Landroid/os/Parcelable;>;"
    if-nez v13, :cond_0

    .line 308
    :goto_0
    return-object v7

    .line 255
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    .line 256
    .local v10, "fromBounds":Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->getBoundsInfo(Landroid/view/View;)Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    move-result-object v18

    .line 258
    .local v18, "toBounds":Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 259
    .local v14, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v9, v0, Landroid/util/DisplayMetrics;->density:F

    .line 262
    .local v9, "density":F
    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v17, v21, v9

    .line 264
    .local v17, "statusBarHeight":F
    iget v0, v10, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mX:F

    move/from16 v21, v0

    iget v0, v10, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mWidth:F

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v11, v21, v22

    .line 265
    .local v11, "fromPivotX":F
    iget v0, v10, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mY:F

    move/from16 v21, v0

    iget v0, v10, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mHeight:F

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v12, v21, v22

    .line 266
    .local v12, "fromPivotY":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mX:F

    move/from16 v21, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mWidth:F

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v19, v21, v22

    .line 267
    .local v19, "toPivotX":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mY:F

    move/from16 v21, v0

    add-float v21, v21, v17

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mHeight:F

    move/from16 v22, v0

    sub-float v22, v22, v17

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v20, v21, v22

    .line 269
    .local v20, "toPivotY":F
    iget v0, v10, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mWidth:F

    move/from16 v21, v0

    iget v0, v10, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v10, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingRight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mWidth:F

    move/from16 v22, v0

    div-float v16, v21, v22

    .line 270
    .local v16, "scaledWidth":F
    iget v0, v10, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mHeight:F

    move/from16 v21, v0

    iget v0, v10, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingTop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v10, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingBottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mHeight:F

    move/from16 v22, v0

    div-float v15, v21, v22

    .line 272
    .local v15, "scaledHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->getReverseAnimationEnabled()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->isTransitCanceled()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "scaleX"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v16, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-wide/16 v22, 0x215

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 276
    .local v2, "anim1":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "scaleY"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v15, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-wide/16 v22, 0x215

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 277
    .local v3, "anim2":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "translationX"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mOldPivotX:F

    move/from16 v25, v0

    aput v25, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-wide/16 v22, 0x215

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 278
    .local v4, "anim3":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "translationY"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mOldPivotY:F

    move/from16 v25, v0

    aput v25, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-wide/16 v22, 0x215

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 279
    .local v5, "anim4":Landroid/animation/ObjectAnimator;
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v2, v21, v22

    const/16 v22, 0x1

    aput-object v3, v21, v22

    const/16 v22, 0x2

    aput-object v4, v21, v22

    const/16 v22, 0x3

    aput-object v5, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "alpha"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aput v25, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-wide/16 v22, 0xb1

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 282
    .local v6, "animAlpha":Landroid/animation/ObjectAnimator;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v8, v21, v22

    const/16 v22, 0x1

    aput-object v6, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 306
    .end local v6    # "animAlpha":Landroid/animation/ObjectAnimator;
    :goto_1
    new-instance v21, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct/range {v21 .. v21}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_0

    .line 285
    .end local v2    # "anim1":Landroid/animation/ObjectAnimator;
    .end local v3    # "anim2":Landroid/animation/ObjectAnimator;
    .end local v4    # "anim3":Landroid/animation/ObjectAnimator;
    .end local v5    # "anim4":Landroid/animation/ObjectAnimator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "scaleX"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    aput v25, v23, v24

    const/16 v24, 0x1

    aput v16, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-wide/16 v22, 0x215

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 286
    .restart local v2    # "anim1":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "scaleY"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    aput v25, v23, v24

    const/16 v24, 0x1

    aput v15, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-wide/16 v22, 0x215

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 287
    .restart local v3    # "anim2":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "translationX"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aput v25, v23, v24

    const/16 v24, 0x1

    sub-float v25, v11, v19

    aput v25, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-wide/16 v22, 0x215

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 288
    .restart local v4    # "anim3":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "translationY"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    aput v25, v23, v24

    const/16 v24, 0x1

    sub-float v25, v12, v20

    aput v25, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-wide/16 v22, 0x215

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 289
    .restart local v5    # "anim4":Landroid/animation/ObjectAnimator;
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v2, v21, v22

    const/16 v22, 0x1

    aput-object v3, v21, v22

    const/16 v22, 0x2

    aput-object v4, v21, v22

    const/16 v22, 0x3

    aput-object v5, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "alpha"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_0

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-wide/16 v22, 0xb1

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 292
    .restart local v6    # "animAlpha":Landroid/animation/ObjectAnimator;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v8, v21, v22

    const/16 v22, 0x1

    aput-object v6, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto/16 :goto_1

    .line 296
    .end local v2    # "anim1":Landroid/animation/ObjectAnimator;
    .end local v3    # "anim2":Landroid/animation/ObjectAnimator;
    .end local v4    # "anim3":Landroid/animation/ObjectAnimator;
    .end local v5    # "anim4":Landroid/animation/ObjectAnimator;
    .end local v6    # "animAlpha":Landroid/animation/ObjectAnimator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "scaleX"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v16, v23, v24

    const/16 v24, 0x1

    const/high16 v25, 0x3f800000    # 1.0f

    aput v25, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-wide/16 v22, 0x215

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 297
    .restart local v2    # "anim1":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "scaleY"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v15, v23, v24

    const/16 v24, 0x1

    const/high16 v25, 0x3f800000    # 1.0f

    aput v25, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-wide/16 v22, 0x215

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 298
    .restart local v3    # "anim2":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "translationX"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    sub-float v25, v11, v19

    aput v25, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0x0

    aput v25, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-wide/16 v22, 0x215

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 299
    .restart local v4    # "anim3":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    const-string v22, "translationY"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    sub-float v25, v12, v20

    aput v25, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0x0

    aput v25, v23, v24

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    const-wide/16 v22, 0x215

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 300
    .restart local v5    # "anim4":Landroid/animation/ObjectAnimator;
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v2, v21, v22

    const/16 v22, 0x1

    aput-object v3, v21, v22

    const/16 v22, 0x2

    aput-object v4, v21, v22

    const/16 v22, 0x3

    aput-object v5, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 302
    sub-float v21, v11, v19

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mOldPivotX:F

    .line 303
    sub-float v21, v12, v20

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->mOldPivotY:F

    goto/16 :goto_1

    .line 291
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected createMainWindowAnimatorOut(Landroid/app/Activity;)Landroid/animation/AnimatorSet;
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const-wide/16 v12, 0x215

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 159
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 161
    .local v3, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 163
    .local v4, "decorView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->getReverseAnimationEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->isTransitCanceled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    const-string v5, "alpha"

    new-array v6, v10, [F

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x10a

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 167
    .local v0, "anim1":Landroid/animation/ObjectAnimator;
    const-string v5, "scaleX"

    new-array v6, v10, [F

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 168
    .local v1, "anim2":Landroid/animation/ObjectAnimator;
    const-string v5, "scaleY"

    new-array v6, v10, [F

    aput v11, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 169
    .local v2, "anim3":Landroid/animation/ObjectAnimator;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v9

    aput-object v1, v5, v10

    aput-object v2, v5, v8

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 184
    :goto_0
    new-instance v5, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v5}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    new-instance v5, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit$1;

    invoke-direct {v5, p0, v4}, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit$1;-><init>(Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    return-object v3

    .line 171
    .end local v0    # "anim1":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim2":Landroid/animation/ObjectAnimator;
    .end local v2    # "anim3":Landroid/animation/ObjectAnimator;
    :cond_0
    const-string v5, "alpha"

    new-array v6, v8, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x10a

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 172
    .restart local v0    # "anim1":Landroid/animation/ObjectAnimator;
    const-string v5, "scaleX"

    new-array v6, v8, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 173
    .restart local v1    # "anim2":Landroid/animation/ObjectAnimator;
    const-string v5, "scaleY"

    new-array v6, v8, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 174
    .restart local v2    # "anim3":Landroid/animation/ObjectAnimator;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v9

    aput-object v1, v5, v10

    aput-object v2, v5, v8

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 178
    .end local v0    # "anim1":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim2":Landroid/animation/ObjectAnimator;
    .end local v2    # "anim3":Landroid/animation/ObjectAnimator;
    :cond_1
    const-string v5, "alpha"

    new-array v6, v8, [F

    fill-array-data v6, :array_3

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x10a

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 179
    .restart local v0    # "anim1":Landroid/animation/ObjectAnimator;
    const-string v5, "scaleX"

    new-array v6, v8, [F

    fill-array-data v6, :array_4

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 180
    .restart local v1    # "anim2":Landroid/animation/ObjectAnimator;
    const-string v5, "scaleY"

    new-array v6, v8, [F

    fill-array-data v6, :array_5

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 181
    .restart local v2    # "anim3":Landroid/animation/ObjectAnimator;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v9

    aput-object v1, v5, v10

    aput-object v2, v5, v8

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 171
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 172
    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 173
    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 178
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 179
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 180
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method protected createOverlayViewAnimatorIn(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
    .locals 1
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
    .line 237
    .local p4, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/utils/TwTransit;->createOverlayViewAnimatorIn(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method protected createOverlayViewAnimatorOut(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
    .locals 1
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
    .line 149
    .local p4, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/utils/TwTransit;->createOverlayViewAnimatorOut(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method protected createOverlayWindowAnimatorIn(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayWindow"    # Landroid/view/ViewGroup;

    .prologue
    .line 223
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/utils/TwTransit;->createOverlayWindowAnimatorIn(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method protected createOverlayWindowAnimatorOut(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayWindow"    # Landroid/view/ViewGroup;

    .prologue
    .line 135
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/utils/TwTransit;->createOverlayWindowAnimatorOut(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method protected needToCreateOverlayWindowIn()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method protected needToCreateOverlayWindowOut()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public setScaleUp(Landroid/content/Intent;Landroid/view/View;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 88
    const-string v0, "TwTransitIDScaleUp"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TwTransitActionScaleUp"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->bindOut(Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V

    .line 89
    const-string v0, "TwTransitTypeScaleUp"

    invoke-static {p1, v0}, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->setType(Landroid/content/Intent;Ljava/lang/String;)V

    .line 90
    return-void
.end method

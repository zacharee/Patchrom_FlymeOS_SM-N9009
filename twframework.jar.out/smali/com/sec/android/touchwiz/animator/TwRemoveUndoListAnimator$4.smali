.class Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;
.super Ljava/lang/Object;
.source "TwRemoveUndoListAnimator.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDownX:F

.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAdjustedVelocityX([F)F
    .locals 8
    .param p1, "mHistoricalVelocities"    # [F

    .prologue
    const/4 v5, 0x0

    .line 329
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocityIndex:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1700(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v6

    if-nez v6, :cond_0

    .line 346
    :goto_0
    return v5

    .line 331
    :cond_0
    const/4 v2, 0x0

    .line 332
    .local v2, "totalVelocity":F
    const/4 v3, 0x0

    .line 334
    .local v3, "totalWeight":I
    const/4 v0, 0x1

    .line 335
    .local v0, "currentWeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->HISTORICAL_VELOCITY_COUNT:I
    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1800()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 336
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocityIndex:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1700(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v6, v1

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->HISTORICAL_VELOCITY_COUNT:I
    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1800()I

    move-result v7

    rem-int/2addr v6, v7

    aget v4, p1, v6

    .line 337
    .local v4, "vel":F
    cmpl-float v6, v4, v5

    if-nez v6, :cond_2

    .line 335
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 339
    :cond_2
    int-to-float v6, v0

    mul-float/2addr v6, v4

    add-float/2addr v2, v6

    .line 340
    add-int/2addr v3, v0

    .line 342
    const/4 v6, 0x1

    if-le v0, v6, :cond_1

    .line 343
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 346
    .end local v4    # "vel":F
    :cond_3
    int-to-float v5, v3

    div-float v5, v2, v5

    goto :goto_0
.end method

.method private onActionUp(Landroid/view/MotionEvent;Landroid/view/View;I)V
    .locals 23
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "viewForeground"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwiping:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$300(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v20

    .line 248
    .local v20, "translationX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float v22, v4, v20

    .line 249
    .local v22, "x":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->mDownX:F

    sub-float v12, v22, v4

    .line 250
    .local v12, "deltaX":F
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 252
    .local v13, "deltaXAbs":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v21

    .line 254
    .local v21, "width":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocities:[F
    invoke-static {v4}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1600(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)[F

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->getAdjustedVelocityX([F)F

    move-result v10

    .line 256
    .local v10, "adjustedVelocityX":F
    move/from16 v0, v21

    int-to-float v4, v0

    cmpl-float v4, v20, v4

    if-lez v4, :cond_0

    .line 257
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v20, v0

    .line 265
    :cond_0
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mScaledTouchSlop:I
    invoke-static {v5}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1900(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 267
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    sub-int v19, v21, v4

    .line 268
    .local v19, "remainingDistance":I
    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->VELOCITY_UNITS:I
    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1500()I

    move-result v4

    mul-int v4, v4, v19

    int-to-float v4, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v14, v4

    .line 271
    .local v14, "duration":J
    const-wide/16 v4, 0x1c2

    cmp-long v4, v14, v4

    if-lez v4, :cond_1

    .line 272
    const-wide/16 v14, 0x1c2

    .line 274
    :cond_1
    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v4

    move/from16 v0, v21

    int-to-float v5, v0

    mul-float v9, v4, v5

    .line 275
    .local v9, "endX":F
    const/16 v16, 0x0

    .line 276
    .local v16, "endAlpha":F
    const/4 v6, 0x1

    .line 293
    .end local v19    # "remainingDistance":I
    .local v6, "remove":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v4}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnabled(Z)V

    .line 295
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v7, 0x0

    aput v16, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 296
    .local v17, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v7, 0x0

    aput v9, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    .line 298
    .local v18, "pvhTranslationX":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 299
    .local v11, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v11, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 300
    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->sDecel:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2000()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 301
    new-instance v4, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$1;-><init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;ZLandroid/view/View;IF)V

    invoke-virtual {v11, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;
    invoke-static {v4}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 315
    new-instance v4, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v21

    move/from16 v3, p3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4$2;-><init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;Landroid/view/View;II)V

    invoke-virtual {v11, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 323
    :cond_2
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->start()V

    .line 325
    .end local v6    # "remove":Z
    .end local v9    # "endX":F
    .end local v10    # "adjustedVelocityX":F
    .end local v11    # "animator":Landroid/animation/ObjectAnimator;
    .end local v12    # "deltaX":F
    .end local v13    # "deltaXAbs":F
    .end local v14    # "duration":J
    .end local v16    # "endAlpha":F
    .end local v17    # "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v18    # "pvhTranslationX":Landroid/animation/PropertyValuesHolder;
    .end local v20    # "translationX":F
    .end local v21    # "width":I
    .end local v22    # "x":F
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->resetTouchState()V

    .line 326
    return-void

    .line 278
    .restart local v10    # "adjustedVelocityX":F
    .restart local v12    # "deltaX":F
    .restart local v13    # "deltaXAbs":F
    .restart local v20    # "translationX":F
    .restart local v21    # "width":I
    .restart local v22    # "x":F
    :cond_4
    move/from16 v0, v21

    int-to-float v4, v0

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    cmpl-float v4, v13, v4

    if-lez v4, :cond_5

    .line 280
    const/high16 v4, 0x43e10000    # 450.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move/from16 v0, v21

    int-to-float v8, v0

    div-float/2addr v7, v8

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v14, v4

    .line 281
    .restart local v14    # "duration":J
    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v4

    move/from16 v0, v21

    int-to-float v5, v0

    mul-float v9, v4, v5

    .line 282
    .restart local v9    # "endX":F
    const/16 v16, 0x0

    .line 283
    .restart local v16    # "endAlpha":F
    const/4 v6, 0x1

    .restart local v6    # "remove":Z
    goto/16 :goto_0

    .line 286
    .end local v6    # "remove":Z
    .end local v9    # "endX":F
    .end local v14    # "duration":J
    .end local v16    # "endAlpha":F
    :cond_5
    const/high16 v4, 0x43e10000    # 450.0f

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    move/from16 v0, v21

    int-to-float v5, v0

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v14, v4

    .line 287
    .restart local v14    # "duration":J
    const/4 v9, 0x0

    .line 288
    .restart local v9    # "endX":F
    const/high16 v16, 0x3f800000    # 1.0f

    .line 289
    .restart local v16    # "endAlpha":F
    const/4 v6, 0x0

    .restart local v6    # "remove":Z
    goto/16 :goto_0
.end method

.method private resetTouchState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 350
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemPressed:Z
    invoke-static {v1, v3}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1202(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z

    .line 351
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->INVALID_POINTER_ID:I
    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2200()I

    move-result v2

    # setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mActivePointerId:I
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1302(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)I

    .line 352
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 353
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1102(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocities:[F
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1600(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)[F

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocities:[F
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1600(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)[F

    move-result-object v1

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocityIndex:I
    invoke-static {v1, v3}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1702(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)I

    .line 359
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "viewForeground"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 156
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwListView;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v8

    .line 160
    :cond_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->getPositionForView(Landroid/view/View;)I

    move-result v5

    .line 163
    .local v5, "position":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    .line 165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 166
    .local v0, "actionIndex":I
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 171
    .local v2, "currentPointerId":I
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwiping:Z
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$300(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwipingPosition:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v10

    if-ne v10, v5, :cond_0

    .line 175
    :cond_2
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/view/VelocityTracker;

    move-result-object v10

    if-nez v10, :cond_3

    .line 176
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    # setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v10, v11}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1102(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 177
    :cond_3
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/view/VelocityTracker;

    move-result-object v10

    invoke-virtual {v10, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 179
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move v8, v9

    .line 240
    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemPressed:Z
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1200(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 185
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 189
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    # setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mActivePointerId:I
    invoke-static {v10, v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1302(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)I

    .line 190
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemPressed:Z
    invoke-static {v8, v9}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1202(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z

    .line 191
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->mDownX:F

    goto :goto_1

    .line 194
    :pswitch_2
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemPressed:Z
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1200(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_0

    .line 198
    :pswitch_3
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mActivePointerId:I
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1300(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v8

    if-ne v2, v8, :cond_4

    .line 200
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v10

    add-float v7, v8, v10

    .line 201
    .local v7, "x":F
    iget v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->mDownX:F

    sub-float v3, v7, v8

    .line 202
    .local v3, "deltaX":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 204
    .local v4, "deltaXAbs":F
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwiping:Z
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$300(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 205
    iget v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->mDownX:F

    sub-float v8, v7, v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 206
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v4, v10

    sub-float v1, v8, v10

    .line 207
    .local v1, "alphaForeground":F
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v3, v8

    .line 210
    .local v6, "sweepProgress":F
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 211
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    move-result-object v8

    invoke-interface {v8, v5, v6}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;->onSweep(IF)V

    .line 213
    :cond_5
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/view/VelocityTracker;

    move-result-object v8

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->VELOCITY_UNITS:I
    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1500()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 214
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocities:[F
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1600(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)[F

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # operator++ for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mHistoricalVelocityIndex:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1708(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v10

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->HISTORICAL_VELOCITY_COUNT:I
    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1800()I

    move-result v11

    rem-int/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v11}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1100(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Landroid/view/VelocityTracker;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v11

    aput v11, v8, v10

    goto/16 :goto_1

    .line 215
    .end local v1    # "alphaForeground":F
    .end local v6    # "sweepProgress":F
    :cond_6
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mScaledTouchSlop:I
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1900(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v4, v8

    if-lez v8, :cond_4

    .line 216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->mDownX:F

    .line 217
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwiping:Z
    invoke-static {v8, v9}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$302(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z

    .line 218
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwipingPosition:I
    invoke-static {v8, v5}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1002(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;I)I

    .line 219
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 220
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 221
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mOnSweepListener:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v8, v5, v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$OnSweepListener;->onSweepStart(IF)V

    goto/16 :goto_1

    .line 226
    .end local v3    # "deltaX":F
    .end local v4    # "deltaXAbs":F
    .end local v7    # "x":F
    :pswitch_4
    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # invokes: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->showForeground(Landroid/view/View;)V
    invoke-static {v9, p1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$900(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/View;)V

    .line 227
    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z
    invoke-static {v9, v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$102(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z

    .line 228
    iget-object v9, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mSwiping:Z
    invoke-static {v9, v8}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$302(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z

    .line 229
    invoke-direct {p0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->resetTouchState()V

    goto/16 :goto_0

    .line 233
    :pswitch_5
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mActivePointerId:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1300(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)I

    move-result v10

    if-ne v2, v10, :cond_4

    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemPressed:Z
    invoke-static {v10}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$1200(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 234
    invoke-direct {p0, p2, p1, v5}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$4;->onActionUp(Landroid/view/MotionEvent;Landroid/view/View;I)V

    goto/16 :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

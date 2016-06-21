.class Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;
.super Ljava/lang/Object;
.source "TwRemoveUndoListAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->animateRemoval(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Landroid/view/ViewTreeObserver;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 18

    .prologue
    .line 468
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v15}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v7

    .line 469
    .local v7, "firstVisiblePosition":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->val$observer:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 470
    const/4 v6, 0x1

    .line 471
    .local v6, "firstAnimation":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v15}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v12

    .line 472
    .local v12, "listCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v12, :cond_3

    .line 473
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v15}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v15

    invoke-virtual {v15, v8}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 474
    .local v3, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v15}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v15

    add-int v16, v8, v7

    invoke-interface/range {v15 .. v16}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    .line 475
    .local v10, "itemId":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemIdTopMap:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 476
    .local v13, "startTop":Ljava/lang/Integer;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v14

    .line 478
    .local v14, "top":I
    new-instance v9, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$1;-><init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;)V

    .line 485
    .local v9, "lastAnimationEndRunnable":Ljava/lang/Runnable;
    if-eqz v13, :cond_1

    .line 486
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eq v15, v14, :cond_0

    .line 487
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sub-int v5, v15, v14

    .line 488
    .local v5, "delta":I
    int-to-float v15, v5

    invoke-virtual {v3, v15}, Landroid/view/View;->setTranslationY(F)V

    .line 489
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const-wide/16 v16, 0x96

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->sAccelDecel:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2500()Landroid/view/animation/Interpolator;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 493
    if-eqz v6, :cond_0

    .line 494
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 495
    const/4 v6, 0x0

    .line 472
    .end local v5    # "delta":I
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 504
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v16

    add-int v4, v15, v16

    .line 505
    .local v4, "childHeight":I
    if-lez v8, :cond_2

    .end local v4    # "childHeight":I
    :goto_2
    add-int v15, v14, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 506
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sub-int v5, v15, v14

    .line 507
    .restart local v5    # "delta":I
    int-to-float v15, v5

    invoke-virtual {v3, v15}, Landroid/view/View;->setTranslationY(F)V

    .line 508
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const-wide/16 v16, 0x96

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->sAccelDecel:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2500()Landroid/view/animation/Interpolator;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 512
    if-eqz v6, :cond_0

    .line 513
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    invoke-virtual {v15, v9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 514
    const/4 v6, 0x0

    goto :goto_1

    .line 505
    .end local v5    # "delta":I
    .restart local v4    # "childHeight":I
    :cond_2
    neg-int v4, v4

    goto :goto_2

    .line 519
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childHeight":I
    .end local v9    # "lastAnimationEndRunnable":Ljava/lang/Runnable;
    .end local v10    # "itemId":J
    .end local v13    # "startTop":Ljava/lang/Integer;
    .end local v14    # "top":I
    :cond_3
    if-eqz v6, :cond_4

    .line 520
    const/4 v15, 0x2

    new-array v15, v15, [F

    fill-array-data v15, :array_0

    invoke-static {v15}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 521
    .local v2, "anim":Landroid/animation/ValueAnimator;
    new-instance v15, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$2;-><init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;)V

    invoke-virtual {v2, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 529
    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->sAccelDecel:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2500()Landroid/view/animation/Interpolator;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 530
    new-instance v15, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$3;-><init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;)V

    invoke-virtual {v2, v15}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 537
    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 538
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 540
    .end local v2    # "anim":Landroid/animation/ValueAnimator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mItemIdTopMap:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2400(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    .line 541
    const/4 v15, 0x1

    return v15

    .line 520
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

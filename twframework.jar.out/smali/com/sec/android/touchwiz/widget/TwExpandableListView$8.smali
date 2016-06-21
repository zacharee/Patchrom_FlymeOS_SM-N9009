.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;->startCollapseAllAnimation([ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

.field final synthetic val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$animations:Ljava/util/ArrayList;

.field final synthetic val$expanded:[Z

.field final synthetic val$lastGroupIdBefore:I

.field final synthetic val$lastPositionBottomBefore:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Ljava/lang/Runnable;II[ZLjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->val$lastGroupIdBefore:I

    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->val$lastPositionBottomBefore:I

    iput-object p5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->val$expanded:[Z

    iput-object p6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->val$animations:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 25

    .prologue
    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v8

    .line 1584
    .local v8, "childCount":I
    if-nez v8, :cond_0

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/Runnable;->run()V

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v21, v0

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->resetCollapseAnimationState()V
    invoke-static/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    .line 1587
    const/16 v21, 0x1

    .line 1658
    :goto_0
    return v21

    .line 1590
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->val$lastGroupIdBefore:I

    move/from16 v22, v0

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getAbsoluteFlatPosition(I)I
    invoke-static/range {v21 .. v22}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4800(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)I

    move-result v18

    .line 1591
    .local v18, "previousLastGroupPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->val$lastPositionBottomBefore:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getBottom()I

    move-result v23

    sub-int v22, v22, v23

    # setter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I
    invoke-static/range {v21 .. v22}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2902(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)I

    .line 1593
    const/16 v6, 0x2bc

    .line 1597
    .local v6, "animationDuration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v9

    .line 1598
    .local v9, "firstVisiblePos":I
    const/4 v4, 0x1

    .line 1599
    .local v4, "allCollapsed":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v8, :cond_6

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v21, v0

    add-int v22, v11, v9

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z
    invoke-static/range {v21 .. v22}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)Z

    move-result v12

    .line 1601
    .local v12, "isHeaderOrFooter":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1602
    .local v7, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v16

    .line 1604
    .local v16, "packedPos":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v21, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .line 1605
    .local v15, "oldViewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    if-eqz v15, :cond_3

    .line 1606
    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->top:I

    move/from16 v21, v0

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v14, v21, v22

    .line 1610
    .local v14, "offset":I
    :goto_2
    invoke-static/range {v16 .. v17}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionGroup(J)I

    move-result v10

    .line 1611
    .local v10, "groupId":I
    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->val$lastGroupIdBefore:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-gt v10, v0, :cond_1

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v21, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;

    move-result-object v21

    aget-object v21, v21, v10

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;->setFinishY(I)V

    .line 1614
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v21, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1615
    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->val$expanded:[Z

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_2

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->val$expanded:[Z

    move-object/from16 v21, v0

    aget-boolean v21, v21, v10

    if-nez v21, :cond_4

    const/16 v21, 0x1

    :goto_3
    and-int v4, v4, v21

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->val$expanded:[Z

    move-object/from16 v21, v0

    aget-boolean v21, v21, v10

    if-eqz v21, :cond_2

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->startIndicatorAnimation(Landroid/view/View;ZI)V
    invoke-static {v0, v7, v1, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZI)V

    .line 1622
    :cond_2
    if-nez v14, :cond_5

    .line 1599
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 1608
    .end local v10    # "groupId":I
    .end local v14    # "offset":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v21, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I
    invoke-static/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v14

    .restart local v14    # "offset":I
    goto :goto_2

    .line 1616
    .restart local v10    # "groupId":I
    :cond_4
    const/16 v21, 0x0

    goto :goto_3

    .line 1624
    :cond_5
    int-to-float v0, v14

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1625
    sget-object v21, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v7, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    .line 1626
    .local v20, "translateAnim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->val$animations:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1629
    .end local v7    # "child":Landroid/view/View;
    .end local v10    # "groupId":I
    .end local v12    # "isHeaderOrFooter":Z
    .end local v14    # "offset":I
    .end local v15    # "oldViewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    .end local v16    # "packedPos":J
    .end local v20    # "translateAnim":Landroid/animation/ObjectAnimator;
    :cond_6
    new-instance v13, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8$1;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;)V

    .line 1642
    .local v13, "listener":Landroid/animation/Animator$AnimatorListener;
    if-eqz v4, :cond_7

    .line 1643
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1644
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 1646
    :cond_7
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    fill-array-data v21, :array_0

    invoke-static/range {v21 .. v21}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 1647
    .local v5, "anim":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->val$animations:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1650
    new-instance v19, Landroid/animation/AnimatorSet;

    invoke-direct/range {v19 .. v19}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1651
    .local v19, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->val$animations:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1652
    int-to-long v0, v6

    move-wide/from16 v22, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1653
    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3700()Landroid/view/animation/Interpolator;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1654
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1655
    invoke-virtual/range {v19 .. v19}, Landroid/animation/AnimatorSet;->start()V

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v21, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/util/LongSparseArray;->clear()V

    .line 1658
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 1646
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

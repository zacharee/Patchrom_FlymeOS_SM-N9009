.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;->startCollapseAnimation(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

.field final synthetic val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$collapsedGroupFlatPosBefore:I

.field final synthetic val$collapsedGroupTopBefore:I

.field final synthetic val$firstVisiblePosBefore:I

.field final synthetic val$groupCountBefore:I

.field final synthetic val$groupPosBefore:I

.field final synthetic val$listTotalChildrenCountBefore:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Ljava/lang/Runnable;IIIIII)V
    .locals 0

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->val$groupPosBefore:I

    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->val$collapsedGroupFlatPosBefore:I

    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->val$groupCountBefore:I

    iput p6, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->val$firstVisiblePosBefore:I

    iput p7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->val$listTotalChildrenCountBefore:I

    iput p8, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->val$collapsedGroupTopBefore:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 29

    .prologue
    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v9

    .line 1384
    .local v9, "childCount":I
    if-nez v9, :cond_0

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->resetCollapseAnimationState()V
    invoke-static/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/Runnable;->run()V

    .line 1387
    const/16 v25, 0x1

    .line 1492
    :goto_0
    return v25

    .line 1390
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandCollapseDuration()I

    move-result v6

    .line 1393
    .local v6, "animationDuration":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1394
    .local v7, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v14

    .line 1396
    .local v14, "firstVisiblePosAfter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->val$groupPosBefore:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatListPosition(J)I

    move-result v11

    .line 1397
    .local v11, "collapsedGroupFlatPosAfter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    sub-int v26, v11, v14

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1398
    .local v10, "collapsedGroupAfter":Landroid/view/View;
    if-nez v10, :cond_1

    .line 1401
    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2800()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "startCollapseAnimation() BEFORE: groupPos="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->val$groupPosBefore:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", flatPos="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->val$collapsedGroupFlatPosBefore:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", groupCount="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->val$groupCountBefore:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", firstPos="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->val$firstVisiblePosBefore:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", totalListChildrenCount="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->val$listTotalChildrenCountBefore:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "; "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "AFTER: flatPos="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", groupCount="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v27, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", firstPos="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", totalListChildrenCount="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->resetCollapseAnimationState()V
    invoke-static/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/Runnable;->run()V

    .line 1409
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 1411
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 1413
    .local v13, "collapsedGroupTopAfter":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->val$collapsedGroupTopBefore:I

    move/from16 v25, v0

    sub-int v12, v13, v25

    .line 1414
    .local v12, "collapsedGroupShift":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v9, :cond_8

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1416
    .local v8, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    add-int v26, v16, v14

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v20

    .line 1417
    .local v20, "packedPos":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .line 1420
    .local v18, "oldViewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    if-eqz v18, :cond_2

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1423
    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->top:I

    move/from16 v25, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v26

    sub-int v17, v25, v26

    .line 1441
    .local v17, "offset":I
    :goto_2
    if-nez v17, :cond_6

    .line 1414
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1425
    .end local v17    # "offset":I
    :cond_2
    invoke-static/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionGroup(J)I

    move-result v15

    .line 1426
    .local v15, "groupPosAfter":I
    const/16 v25, -0x3

    move/from16 v0, v25

    if-ne v15, v0, :cond_3

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I
    invoke-static/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v25

    sub-int v17, v25, v12

    .restart local v17    # "offset":I
    goto :goto_2

    .line 1429
    .end local v17    # "offset":I
    :cond_3
    const/16 v25, -0x2

    move/from16 v0, v25

    if-ne v15, v0, :cond_4

    .line 1431
    neg-int v0, v12

    move/from16 v17, v0

    .restart local v17    # "offset":I
    goto :goto_2

    .line 1432
    .end local v17    # "offset":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->val$groupPosBefore:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-le v15, v0, :cond_5

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I
    invoke-static/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v25

    sub-int v17, v25, v12

    .restart local v17    # "offset":I
    goto :goto_2

    .line 1437
    .end local v17    # "offset":I
    :cond_5
    neg-int v0, v12

    move/from16 v17, v0

    .restart local v17    # "offset":I
    goto :goto_2

    .line 1443
    .end local v15    # "groupPosAfter":I
    :cond_6
    add-int v25, v16, v14

    move/from16 v0, v25

    if-ne v0, v11, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getSelectorRectAnim(I)Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)Landroid/animation/Animator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1448
    :cond_7
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1449
    sget-object v25, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v28, v26, v27

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v8, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 1450
    .local v22, "translateAnim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1453
    .end local v8    # "child":Landroid/view/View;
    .end local v17    # "offset":I
    .end local v18    # "oldViewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    .end local v20    # "packedPos":J
    .end local v22    # "translateAnim":Landroid/animation/ObjectAnimator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->startIndicatorAnimation(Landroid/view/View;ZI)V
    invoke-static {v0, v10, v1, v6}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZI)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/util/LongSparseArray;->size()I

    move-result v24

    .line 1457
    .local v24, "viewSnapshotsCount":I
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .line 1460
    .local v23, "viewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->createViewSnapshotAnimation(ILcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    invoke-static {v0, v12, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;ILcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1461
    .local v5, "animBounds":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViews:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1457
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1464
    .end local v5    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v23    # "viewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    :cond_9
    if-lez v24, :cond_a

    .line 1465
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    fill-array-data v25, :array_0

    invoke-static/range {v25 .. v25}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 1466
    .local v4, "anim":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1467
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    .end local v4    # "anim":Landroid/animation/ValueAnimator;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v26, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsedGroupTopStart:I
    invoke-static/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4700(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v26

    add-int v26, v26, v12

    # setter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsedGroupTopEnd:I
    invoke-static/range {v25 .. v26}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4602(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)I

    .line 1471
    new-instance v19, Landroid/animation/AnimatorSet;

    invoke-direct/range {v19 .. v19}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1472
    .local v19, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1473
    int-to-long v0, v6

    move-wide/from16 v26, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1474
    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3700()Landroid/view/animation/Interpolator;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1475
    new-instance v25, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7$1;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1489
    invoke-virtual/range {v19 .. v19}, Landroid/animation/AnimatorSet;->start()V

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$7;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v25, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/util/LongSparseArray;->clear()V

    .line 1492
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1465
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

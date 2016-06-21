.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;->startExpandAnimation(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

.field final synthetic val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$groupPos:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Ljava/lang/Runnable;I)V
    .locals 0

    .prologue
    .line 979
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->val$groupPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 35

    .prologue
    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v10

    .line 986
    .local v10, "childCount":I
    if-nez v10, :cond_0

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->resetExpandAnimationState()V
    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/lang/Runnable;->run()V

    .line 989
    const/16 v31, 0x1

    .line 1102
    :goto_0
    return v31

    .line 992
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->val$groupPos:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v12

    .line 993
    .local v12, "expGroupPackedPosition":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->val$groupPos:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    .line 994
    .local v20, "nextExpGroupPackedPosition":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatListPosition(J)I

    move-result v11

    .line 995
    .local v11, "expGroupFlatPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatListPosition(J)I

    move-result v18

    .line 997
    .local v18, "nextExpGroupFlatPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v15

    .line 998
    .local v15, "firstVisiblePos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    sub-int v32, v11, v15

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 999
    .local v14, "expandedGroup":Landroid/view/View;
    if-nez v14, :cond_1

    .line 1002
    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2800()Ljava/lang/String;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "startExpandAnimation() groupPos="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->val$groupPos:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", firstPos="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", expGroupFlatPos="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->resetExpandAnimationState()V
    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/lang/Runnable;->run()V

    .line 1007
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 1010
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    sub-int v32, v18, v15

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 1012
    .local v19, "nextExpandedGroup":Landroid/view/View;
    if-nez v19, :cond_3

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    invoke-virtual/range {v32 .. v33}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getBottom()I

    move-result v32

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1014
    .local v17, "listBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v32

    sub-int v32, v17, v32

    # setter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I
    invoke-static/range {v31 .. v32}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2902(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)I

    .line 1019
    .end local v17    # "listBottom":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;
    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/RectF;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getX()F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;
    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/RectF;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getX()F

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;
    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/RectF;

    move-result-object v31

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;
    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/RectF;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v32, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;
    invoke-static/range {v32 .. v32}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/RectF;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandCollapseDuration()I

    move-result v7

    .line 1028
    .local v7, "animationDuration":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    .local v8, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v10, :cond_7

    .line 1032
    add-int v26, v16, v15

    .line 1033
    .local v26, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1035
    .local v9, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v24

    .line 1036
    .local v24, "packedPos":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .line 1038
    .local v22, "oldViewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    if-eqz v22, :cond_5

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1040
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v31

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->top:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 1031
    :cond_2
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1016
    .end local v7    # "animationDuration":I
    .end local v8    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v9    # "child":Landroid/view/View;
    .end local v16    # "i":I
    .end local v22    # "oldViewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    .end local v24    # "packedPos":J
    .end local v26    # "position":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v32

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v33

    sub-int v32, v32, v33

    # setter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I
    invoke-static/range {v31 .. v32}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2902(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)I

    goto/16 :goto_1

    .line 1042
    .restart local v7    # "animationDuration":I
    .restart local v8    # "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v9    # "child":Landroid/view/View;
    .restart local v16    # "i":I
    .restart local v22    # "oldViewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    .restart local v24    # "packedPos":J
    .restart local v26    # "position":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I
    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1043
    sget-object v31, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    aput v34, v32, v33

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v9, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v28

    .line 1044
    .local v28, "translateAnim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1047
    .end local v28    # "translateAnim":Landroid/animation/ObjectAnimator;
    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v31

    if-eqz v31, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v31

    if-eqz v31, :cond_2

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatPositionForConnector(I)I
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)I

    move-result v4

    .line 1050
    .local v4, "adjustedPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;
    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getUnflattenedPos(I)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    move-result-object v23

    .line 1051
    .local v23, "pos":Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v31

    if-eqz v31, :cond_6

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->val$groupPos:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_6

    .line 1058
    new-instance v29, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;-><init>(Landroid/view/View;)V

    .line 1059
    .local v29, "viewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;
    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Ljava/util/ArrayList;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1062
    .end local v29    # "viewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    :cond_6
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_3

    .line 1066
    .end local v4    # "adjustedPosition":I
    .end local v9    # "child":Landroid/view/View;
    .end local v22    # "oldViewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    .end local v23    # "pos":Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;
    .end local v24    # "packedPos":J
    .end local v26    # "position":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->startIndicatorAnimation(Landroid/view/View;ZI)V
    invoke-static {v0, v14, v1, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZI)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/util/LongSparseArray;->size()I

    move-result v30

    .line 1070
    .local v30, "viewSnapshotsCount":I
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .line 1073
    .restart local v29    # "viewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v32, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I
    invoke-static/range {v32 .. v32}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v32

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v29

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->createViewSnapshotAnimation(ILcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;ILcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1075
    .local v6, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViews:Ljava/util/ArrayList;
    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Ljava/util/ArrayList;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1079
    .end local v6    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v29    # "viewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    :cond_8
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    fill-array-data v31, :array_0

    invoke-static/range {v31 .. v31}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 1080
    .local v5, "anim":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1081
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    new-instance v27, Landroid/animation/AnimatorSet;

    invoke-direct/range {v27 .. v27}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1084
    .local v27, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1085
    int-to-long v0, v7

    move-wide/from16 v32, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1086
    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3700()Landroid/view/animation/Interpolator;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1087
    new-instance v31, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5$1;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1100
    invoke-virtual/range {v27 .. v27}, Landroid/animation/AnimatorSet;->start()V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$5;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v31, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v31 .. v31}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/util/LongSparseArray;->clear()V

    .line 1102
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 1079
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

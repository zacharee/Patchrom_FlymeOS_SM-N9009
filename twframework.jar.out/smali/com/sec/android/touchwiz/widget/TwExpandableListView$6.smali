.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;->startExpandAllAnimation([ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

.field final synthetic val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$expanded:[Z


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Ljava/lang/Runnable;[Z)V
    .locals 0

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->val$expanded:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 44

    .prologue
    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v10

    .line 1134
    .local v10, "childCount":I
    if-nez v10, :cond_0

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->resetExpandAnimationState()V
    invoke-static/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/lang/Runnable;->run()V

    .line 1137
    const/16 v40, 0x1

    .line 1277
    :goto_0
    return v40

    .line 1140
    :cond_0
    const/16 v7, 0x2bc

    .line 1144
    .local v7, "animationDuration":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    .local v8, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFirstVisiblePosition()I

    move-result v12

    .line 1149
    .local v12, "firstVisiblePos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getLastNonFooterPosition()I
    invoke-static/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v22

    .line 1150
    .local v22, "lastValidPos":I
    move/from16 v0, v22

    if-ge v0, v12, :cond_1

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/lang/Runnable;->run()V

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->resetExpandAnimationState()V
    invoke-static/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    .line 1153
    const/16 v40, 0x1

    goto :goto_0

    .line 1156
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v20

    .line 1157
    .local v20, "lastPosPackedPos":J
    invoke-static/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionGroup(J)I

    move-result v17

    .line 1158
    .local v17, "lastGroupId":I
    add-int/lit8 v40, v17, 0x1

    move/from16 v0, v40

    new-array v13, v0, [I

    .line 1159
    .local v13, "groupOffsets":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    add-int/lit8 v41, v17, 0x1

    move/from16 v0, v41

    new-array v0, v0, [Landroid/graphics/RectF;

    move-object/from16 v41, v0

    # setter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;
    invoke-static/range {v40 .. v41}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4002(Lcom/sec/android/touchwiz/widget/TwExpandableListView;[Landroid/graphics/RectF;)[Landroid/graphics/RectF;

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    add-int/lit8 v41, v17, 0x1

    move/from16 v0, v41

    new-array v0, v0, [Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;

    move-object/from16 v41, v0

    # setter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpandingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;
    invoke-static/range {v40 .. v41}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4102(Lcom/sec/android/touchwiz/widget/TwExpandableListView;[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;)[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildCount()I

    move-result v42

    add-int/lit8 v42, v42, -0x1

    invoke-virtual/range {v41 .. v42}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getBottom()I

    move-result v41

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 1164
    .local v25, "listBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .line 1165
    .local v24, "lastVisPrevViewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    if-nez v24, :cond_4

    .line 1167
    invoke-static/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v18

    .line 1168
    .local v18, "lastGroupPosPackedPos":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .line 1169
    .local v23, "lastVisGroupPrevViewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->bottom:I

    move/from16 v41, v0

    sub-int v41, v25, v41

    # setter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I
    invoke-static/range {v40 .. v41}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2902(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)I

    .line 1174
    .end local v18    # "lastGroupPosPackedPos":J
    .end local v23    # "lastVisGroupPrevViewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    :goto_1
    const/4 v4, 0x1

    .line 1176
    .local v4, "allExpanded":Z
    const/16 v33, 0x0

    .local v33, "position":I
    :goto_2
    move/from16 v0, v33

    if-ge v0, v10, :cond_a

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1179
    .local v9, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v34

    .line 1180
    .local v34, "packedPos":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .line 1182
    .local v32, "oldViewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    invoke-static/range {v34 .. v35}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionType(J)I

    move-result v40

    if-nez v40, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v33

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isHeaderOrFooterPosition(I)Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)Z

    move-result v40

    if-nez v40, :cond_5

    const/16 v16, 0x1

    .line 1184
    .local v16, "isGroup":Z
    :goto_3
    invoke-static/range {v34 .. v35}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionGroup(J)I

    move-result v14

    .line 1186
    .local v14, "groupPos":I
    if-eqz v32, :cond_8

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1188
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v40

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->top:I

    move/from16 v41, v0

    sub-int v31, v40, v41

    .line 1189
    .local v31, "offset":I
    if-eqz v16, :cond_2

    .line 1190
    aput v31, v13, v14

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;
    invoke-static/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)[Landroid/graphics/RectF;

    move-result-object v40

    new-instance v41, Landroid/graphics/RectF;

    invoke-direct/range {v41 .. v41}, Landroid/graphics/RectF;-><init>()V

    aput-object v41, v40, v14

    .line 1193
    add-int/lit8 v40, v14, 0x1

    invoke-static/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v28

    .line 1194
    .local v28, "nextExpGroupPackedPosition":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatListPosition(J)I

    move-result v27

    .line 1196
    .local v27, "nextExpGroupFlatPos":I
    move/from16 v0, v27

    if-lt v0, v10, :cond_6

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getHeight()I

    move-result v30

    .line 1202
    .local v30, "nextGroupTop":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->val$expanded:[Z

    move-object/from16 v40, v0

    aget-boolean v40, v40, v14

    and-int v4, v4, v40

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->val$expanded:[Z

    move-object/from16 v40, v0

    aget-boolean v40, v40, v14

    if-nez v40, :cond_2

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->startIndicatorAnimation(Landroid/view/View;ZI)V
    invoke-static {v0, v9, v1, v7}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/view/View;ZI)V

    .line 1205
    new-instance v11, Landroid/graphics/RectF;

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->left:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->right:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v43, v0

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1206
    .local v11, "endRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpandingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;
    invoke-static/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;

    move-result-object v40

    new-instance v41, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->bottom:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v43, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleAreas:[Landroid/graphics/RectF;
    invoke-static/range {v43 .. v43}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)[Landroid/graphics/RectF;

    move-result-object v43

    aget-object v43, v43, v14

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v11, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;-><init>(ILandroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v41, v40, v14

    .line 1209
    .end local v11    # "endRect":Landroid/graphics/RectF;
    .end local v27    # "nextExpGroupFlatPos":I
    .end local v28    # "nextExpGroupPackedPosition":J
    .end local v30    # "nextGroupTop":I
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v40

    move-object/from16 v0, v32

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->top:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_7

    .line 1176
    .end local v31    # "offset":I
    :cond_3
    :goto_5
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_2

    .line 1171
    .end local v4    # "allExpanded":Z
    .end local v9    # "child":Landroid/view/View;
    .end local v14    # "groupPos":I
    .end local v16    # "isGroup":Z
    .end local v32    # "oldViewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    .end local v33    # "position":I
    .end local v34    # "packedPos":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->bottom:I

    move/from16 v41, v0

    sub-int v41, v25, v41

    # setter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I
    invoke-static/range {v40 .. v41}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2902(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)I

    goto/16 :goto_1

    .line 1182
    .restart local v4    # "allExpanded":Z
    .restart local v9    # "child":Landroid/view/View;
    .restart local v32    # "oldViewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    .restart local v33    # "position":I
    .restart local v34    # "packedPos":J
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1199
    .restart local v14    # "groupPos":I
    .restart local v16    # "isGroup":Z
    .restart local v27    # "nextExpGroupFlatPos":I
    .restart local v28    # "nextExpGroupPackedPosition":J
    .restart local v31    # "offset":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getTop()I

    move-result v30

    .restart local v30    # "nextGroupTop":I
    goto/16 :goto_4

    .line 1211
    .end local v27    # "nextExpGroupFlatPos":I
    .end local v28    # "nextExpGroupPackedPosition":J
    .end local v30    # "nextGroupTop":I
    :cond_7
    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1212
    sget-object v40, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0x0

    aput v43, v41, v42

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v9, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v37

    .line 1213
    .local v37, "translateAnim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1216
    .end local v31    # "offset":I
    .end local v37    # "translateAnim":Landroid/animation/ObjectAnimator;
    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v40

    if-eqz v40, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v40

    if-eqz v40, :cond_3

    .line 1219
    if-eqz v16, :cond_9

    new-instance v40, Ljava/lang/RuntimeException;

    const-string v41, "How on Earth this is possible?"

    invoke-direct/range {v40 .. v41}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1225
    :cond_9
    new-instance v38, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    move-object/from16 v0, v38

    invoke-direct {v0, v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;-><init>(Landroid/view/View;)V

    .line 1226
    .local v38, "viewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;
    invoke-static/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Ljava/util/ArrayList;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    aget v41, v13, v14

    move/from16 v0, v41

    neg-int v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v38

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->createViewSnapshotAnimationReverse(ILcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;ILcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1230
    .local v6, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1235
    .end local v6    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v9    # "child":Landroid/view/View;
    .end local v14    # "groupPos":I
    .end local v16    # "isGroup":Z
    .end local v32    # "oldViewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    .end local v34    # "packedPos":J
    .end local v38    # "viewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/util/LongSparseArray;->size()I

    move-result v39

    .line 1237
    .local v39, "viewSnapshotsCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_6
    move/from16 v0, v39

    if-ge v15, v0, :cond_b

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .line 1240
    .restart local v38    # "viewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v41, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I
    invoke-static/range {v41 .. v41}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v41

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v38

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->createViewSnapshotAnimation(ILcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;ILcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1242
    .restart local v6    # "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViews:Ljava/util/ArrayList;
    invoke-static/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Ljava/util/ArrayList;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 1246
    .end local v6    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v38    # "viewInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    :cond_b
    new-instance v26, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6$1;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;)V

    .line 1260
    .local v26, "listener":Landroid/animation/Animator$AnimatorListener;
    if-eqz v4, :cond_c

    .line 1263
    const/16 v40, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1264
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 1266
    :cond_c
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [F

    move-object/from16 v40, v0

    fill-array-data v40, :array_0

    invoke-static/range {v40 .. v40}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 1267
    .local v5, "anim":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1268
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    new-instance v36, Landroid/animation/AnimatorSet;

    invoke-direct/range {v36 .. v36}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1271
    .local v36, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1272
    int-to-long v0, v7

    move-wide/from16 v40, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1273
    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_COLLAPSE_INTERPOLATOR:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3700()Landroid/view/animation/Interpolator;

    move-result-object v40

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1274
    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1275
    invoke-virtual/range {v36 .. v36}, Landroid/animation/AnimatorSet;->start()V

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v40, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mViewSnapshots:Landroid/util/LongSparseArray;
    invoke-static/range {v40 .. v40}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/util/LongSparseArray;->clear()V

    .line 1277
    const/16 v40, 0x0

    goto/16 :goto_0

    .line 1266
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

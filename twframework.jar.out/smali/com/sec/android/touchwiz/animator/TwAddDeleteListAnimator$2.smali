.class Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;
.super Ljava/lang/Object;
.source "TwAddDeleteListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->prepareDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$childCountBefore:I

.field final synthetic val$deletedItemPosHash:Ljava/util/HashSet;

.field final synthetic val$deletedItems:Ljava/util/ArrayList;

.field final synthetic val$firstVisiblePosBefore:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;Landroid/widget/ListAdapter;IILjava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    iput p3, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->val$firstVisiblePosBefore:I

    iput p4, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->val$childCountBefore:I

    iput-object p5, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 54

    .prologue
    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v49, v0

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static/range {v49 .. v49}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v28

    .line 171
    .local v28, "listview":Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v11

    .line 172
    .local v11, "childCountAfter":I
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v17

    .line 173
    .local v17, "firstVisiblePosAfter":I
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/touchwiz/widget/TwListView;->getLastVisiblePosition()I

    move-result v26

    .line 174
    .local v26, "lastVisiblePosAfter":I
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v20

    .line 175
    .local v20, "headerViewsCount":I
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v19

    .line 176
    .local v19, "footerViewsCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 177
    .local v6, "adapterCount":I
    const/16 v44, 0x0

    .line 178
    .local v44, "translationY":F
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v9, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/16 v42, 0x0

    .line 182
    .local v42, "singleItemHeight":I
    const/16 v27, 0x0

    .line 183
    .local v27, "left":I
    const/16 v48, 0x0

    .line 184
    .local v48, "width":I
    move/from16 v0, v20

    if-le v11, v0, :cond_1

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v49, v0

    # invokes: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getChildMaxHeight()I
    invoke-static/range {v49 .. v49}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)I

    move-result v49

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v50

    add-int v42, v49, v50

    .line 186
    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getLeft()I

    move-result v27

    .line 187
    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getWidth()I

    move-result v48

    .line 192
    :goto_0
    const/16 v29, 0x1

    .line 193
    .local v29, "newItemsComingFromTop":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->val$firstVisiblePosBefore:I

    move/from16 v49, v0

    sub-int v30, v49, v17

    .line 194
    .local v30, "newItemsComingFromTopCount":I
    move/from16 v31, v30

    .line 195
    .local v31, "newItemsFromTopRemaining":I
    add-int/lit8 v49, v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->val$childCountBefore:I

    move/from16 v50, v0

    sub-int v50, v50, v11

    add-int v34, v49, v50

    .line 197
    .local v34, "newlyAppearingViewOldPositionFromBottom":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    if-ge v0, v11, :cond_7

    .line 198
    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 199
    .local v10, "child":Landroid/view/View;
    add-int v37, v22, v17

    .line 200
    .local v37, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v24

    .line 201
    .local v24, "itemId":J
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v33, v0

    .line 202
    .local v33, "newY":F
    const/16 v47, 0x0

    .line 203
    .local v47, "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    const-wide/16 v50, -0x1

    cmp-long v49, v24, v50

    if-nez v49, :cond_3

    .line 204
    move/from16 v0, v37

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 205
    add-int/lit8 v49, v37, 0x1

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 210
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    .end local v47    # "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    check-cast v47, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;

    .line 215
    .restart local v47    # "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    :goto_3
    if-eqz v47, :cond_5

    .line 216
    invoke-virtual/range {v47 .. v47}, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 217
    const/16 v29, 0x0

    .line 220
    move-object/from16 v0, v47

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    cmpl-float v49, v49, v33

    if-nez v49, :cond_4

    .line 197
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 189
    .end local v10    # "child":Landroid/view/View;
    .end local v22    # "i":I
    .end local v24    # "itemId":J
    .end local v29    # "newItemsComingFromTop":Z
    .end local v30    # "newItemsComingFromTopCount":I
    .end local v31    # "newItemsFromTopRemaining":I
    .end local v33    # "newY":F
    .end local v34    # "newlyAppearingViewOldPositionFromBottom":I
    .end local v37    # "position":I
    .end local v47    # "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    :cond_1
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/touchwiz/widget/TwListView;->getWidth()I

    move-result v48

    goto/16 :goto_0

    .line 206
    .restart local v10    # "child":Landroid/view/View;
    .restart local v22    # "i":I
    .restart local v24    # "itemId":J
    .restart local v29    # "newItemsComingFromTop":Z
    .restart local v30    # "newItemsComingFromTopCount":I
    .restart local v31    # "newItemsFromTopRemaining":I
    .restart local v33    # "newY":F
    .restart local v34    # "newlyAppearingViewOldPositionFromBottom":I
    .restart local v37    # "position":I
    .restart local v47    # "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    :cond_2
    sub-int v49, v6, v19

    move/from16 v0, v37

    move/from16 v1, v49

    if-lt v0, v1, :cond_0

    .line 207
    add-int v49, v37, v19

    sub-int v49, v49, v6

    add-int/lit8 v18, v49, 0x1

    .line 208
    .local v18, "footerId":I
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v24, v0

    goto :goto_2

    .line 212
    .end local v18    # "footerId":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    .end local v47    # "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    check-cast v47, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;

    .restart local v47    # "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    goto :goto_3

    .line 222
    :cond_4
    move-object/from16 v0, v47

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v44, v49, v33

    .line 238
    :goto_5
    move/from16 v0, v44

    invoke-virtual {v10, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 239
    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v51, v0

    sget-object v52, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v53, 0x0

    invoke-virtual/range {v51 .. v53}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, v49

    invoke-static {v10, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 241
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 227
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    :cond_5
    if-lez v31, :cond_6

    if-eqz v29, :cond_6

    .line 228
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v41, v0

    .line 229
    .local v41, "rowShift":I
    add-int/lit8 v31, v31, -0x1

    .line 235
    :goto_6
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v49

    mul-int v50, v41, v42

    add-int v36, v49, v50

    .line 236
    .local v36, "oldY":I
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v44, v49, v33

    goto :goto_5

    .line 231
    .end local v36    # "oldY":I
    .end local v41    # "rowShift":I
    :cond_6
    sub-int v41, v34, v37

    .line 232
    .restart local v41    # "rowShift":I
    add-int/lit8 v34, v34, 0x1

    goto :goto_6

    .line 246
    .end local v10    # "child":Landroid/view/View;
    .end local v24    # "itemId":J
    .end local v33    # "newY":F
    .end local v37    # "position":I
    .end local v41    # "rowShift":I
    .end local v47    # "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 247
    .local v15, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;>;>;"
    const/16 v45, 0x0

    .line 249
    .local v45, "updateListenerAdded":Z
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_d

    .line 250
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/Map$Entry;

    .line 251
    .local v35, "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface/range {v35 .. v35}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;

    .line 253
    .restart local v47    # "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v43, Landroid/graphics/Rect;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v49, v0

    add-int v50, v27, v48

    move-object/from16 v0, v47

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move/from16 v51, v0

    move-object/from16 v0, v43

    move/from16 v1, v27

    move/from16 v2, v49

    move/from16 v3, v50

    move/from16 v4, v51

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 255
    .local v43, "startValue":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    invoke-virtual/range {v49 .. v51}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getNewPosition(ILjava/util/ArrayList;)I

    move-result v32

    .line 260
    .local v32, "newPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    move-object/from16 v49, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    .line 263
    .local v23, "isDeletedItem":Z
    sub-int v12, v32, v17

    .line 267
    .local v12, "destinationViewIndex":I
    if-ltz v12, :cond_8

    if-lt v12, v11, :cond_c

    .line 269
    :cond_8
    if-nez v11, :cond_b

    .line 270
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/touchwiz/widget/TwListView;->getPaddingTop()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v16, v0

    .line 274
    .local v16, "firstChildTop":F
    :goto_8
    move-object/from16 v0, v47

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v44, v16, v49

    .line 275
    neg-int v0, v12

    move/from16 v49, v0

    mul-int v49, v49, v42

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v44, v44, v49

    .line 281
    .end local v16    # "firstChildTop":F
    :goto_9
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, v43

    invoke-direct {v13, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 282
    .local v13, "endValue":Landroid/graphics/Rect;
    const/16 v49, 0x0

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v50, v0

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 284
    if-eqz v23, :cond_9

    .line 286
    const/high16 v49, 0x3f800000    # 1.0f

    sget v50, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    sub-float v49, v49, v50

    const/high16 v50, 0x40000000    # 2.0f

    div-float v49, v49, v50

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    mul-float v49, v49, v50

    move/from16 v0, v49

    float-to-int v0, v0

    move/from16 v21, v0

    .line 287
    .local v21, "horizOffset":I
    const/high16 v49, 0x3f800000    # 1.0f

    sget v50, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    sub-float v49, v49, v50

    const/high16 v50, 0x40000000    # 2.0f

    div-float v49, v49, v50

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    mul-float v49, v49, v50

    move/from16 v0, v49

    float-to-int v0, v0

    move/from16 v46, v0

    .line 288
    .local v46, "vertOffset":I
    new-instance v14, Landroid/graphics/Rect;

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v49, v0

    add-int v49, v49, v21

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v50, v0

    add-int v50, v50, v46

    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v51, v0

    sub-int v51, v51, v21

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v52, v0

    sub-int v52, v52, v46

    move/from16 v0, v49

    move/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v52

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v13    # "endValue":Landroid/graphics/Rect;
    .local v14, "endValue":Landroid/graphics/Rect;
    move-object v13, v14

    .line 292
    .end local v14    # "endValue":Landroid/graphics/Rect;
    .end local v21    # "horizOffset":I
    .end local v46    # "vertOffset":I
    .restart local v13    # "endValue":Landroid/graphics/Rect;
    :cond_9
    const-string v49, "bounds"

    sget-object v50, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v43, v51, v52

    const/16 v52, 0x1

    aput-object v13, v51, v52

    invoke-static/range {v49 .. v51}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v39

    .line 294
    .local v39, "pvhBounds":Landroid/animation/PropertyValuesHolder;
    const-string v49, "alpha"

    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [I

    move-object/from16 v50, v0

    fill-array-data v50, :array_0

    invoke-static/range {v49 .. v50}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v38

    .line 295
    .local v38, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v49, v0

    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput-object v39, v50, v51

    const/16 v51, 0x1

    aput-object v38, v50, v51

    invoke-static/range {v49 .. v50}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 297
    .restart local v7    # "anim":Landroid/animation/ObjectAnimator;
    if-nez v45, :cond_a

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 299
    const/16 v45, 0x1

    .line 301
    :cond_a
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 272
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    .end local v13    # "endValue":Landroid/graphics/Rect;
    .end local v38    # "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v39    # "pvhBounds":Landroid/animation/PropertyValuesHolder;
    :cond_b
    const/16 v49, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getTop()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v16, v0

    .restart local v16    # "firstChildTop":F
    goto/16 :goto_8

    .line 277
    .end local v16    # "firstChildTop":F
    :cond_c
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getTop()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v40, v0

    .line 278
    .local v40, "referenceY":F
    move-object/from16 v0, v47

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v44, v40, v49

    goto/16 :goto_9

    .line 304
    .end local v12    # "destinationViewIndex":I
    .end local v23    # "isDeletedItem":Z
    .end local v32    # "newPosition":I
    .end local v35    # "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v40    # "referenceY":F
    .end local v43    # "startValue":Landroid/graphics/Rect;
    .end local v47    # "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedHashMap;->clear()V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedHashMap;->clear()V

    .line 307
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 308
    .local v8, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 309
    new-instance v49, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2$1;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2$1;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;)V

    move-object/from16 v0, v49

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 328
    sget-object v49, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v49

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    sget v49, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->TRANSLATION_DURATION:I

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v0, v50

    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 330
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 331
    return-void

    .line 294
    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

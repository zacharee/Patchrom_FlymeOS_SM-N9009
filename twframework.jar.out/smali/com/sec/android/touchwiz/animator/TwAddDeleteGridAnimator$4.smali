.class Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;
.super Ljava/lang/Object;
.source "TwAddDeleteGridAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->prepareInsert(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$insertedItemPositions:Ljava/util/ArrayList;

.field final synthetic val$upcomingViewsStartCoords:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p3, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->val$insertedItemPositions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 45

    .prologue
    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v40, v0

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;
    invoke-static/range {v40 .. v40}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/widget/TwGridView;

    move-result-object v15

    .line 435
    .local v15, "gridView":Lcom/sec/android/touchwiz/widget/TwGridView;
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGridView;->getFirstVisiblePosition()I

    move-result v14

    .line 436
    .local v14, "firstVisiblePos":I
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v11

    .line 437
    .local v11, "childCount":I
    const/16 v34, 0x0

    .line 438
    .local v34, "translationX":F
    const/16 v35, 0x0

    .line 439
    .local v35, "translationY":F
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v9, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGridView;->getNumColumns()I

    move-result v24

    .line 442
    .local v24, "numColumns":I
    const/16 v32, 0x0

    .line 443
    .local v32, "singleRowHeight":I
    move/from16 v0, v24

    if-le v11, v0, :cond_0

    .line 444
    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getTop()I

    move-result v40

    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getTop()I

    move-result v41

    sub-int v32, v40, v41

    .line 447
    :cond_0
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v11, :cond_4

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v40, v0

    add-int v41, v16, v14

    invoke-interface/range {v40 .. v41}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v18

    .line 449
    .local v18, "itemId":J
    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 452
    .local v10, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    move-object/from16 v40, v0

    add-int v41, v16, v14

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [F

    .line 454
    .local v33, "startPos":[F
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v22, v0

    .line 455
    .local v22, "newX":F
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v23, v0

    .line 457
    .local v23, "newY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v40, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;

    .line 458
    .local v38, "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    if-eqz v38, :cond_2

    .line 459
    invoke-virtual/range {v38 .. v38}, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 461
    move-object/from16 v0, v38

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    cmpl-float v40, v40, v22

    if-nez v40, :cond_1

    move-object/from16 v0, v38

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    cmpl-float v40, v40, v23

    if-nez v40, :cond_1

    .line 447
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 464
    :cond_1
    move-object/from16 v0, v38

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    sub-float v34, v40, v22

    .line 465
    move-object/from16 v0, v38

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    sub-float v35, v40, v23

    .line 466
    move/from16 v0, v34

    invoke-virtual {v10, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 467
    move/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 468
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v42, v0

    sget-object v43, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v42

    aput-object v42, v40, v41

    const/16 v41, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v42, v0

    sget-object v43, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v42

    aput-object v42, v40, v41

    move-object/from16 v0, v40

    invoke-static {v10, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 471
    .local v6, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 472
    .end local v6    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    if-eqz v33, :cond_3

    .line 474
    const/16 v40, 0x0

    aget v40, v33, v40

    sub-float v34, v40, v22

    .line 475
    const/16 v40, 0x1

    aget v40, v33, v40

    sub-float v35, v40, v23

    .line 477
    move/from16 v0, v34

    invoke-virtual {v10, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 478
    move/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 479
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/view/View;->setAlpha(F)V

    .line 480
    sget v40, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/view/View;->setScaleX(F)V

    .line 481
    sget v40, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/view/View;->setScaleY(F)V

    .line 482
    const/16 v40, 0x5

    move/from16 v0, v40

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v42, v0

    sget-object v43, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v42

    aput-object v42, v40, v41

    const/16 v41, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v42, v0

    sget-object v43, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v42

    aput-object v42, v40, v41

    const/16 v41, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v42, v0

    sget-object v43, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v44, 0x3f800000    # 1.0f

    invoke-virtual/range {v42 .. v44}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v42

    aput-object v42, v40, v41

    const/16 v41, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v42, v0

    sget-object v43, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/high16 v44, 0x3f800000    # 1.0f

    invoke-virtual/range {v42 .. v44}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v42

    aput-object v42, v40, v41

    const/16 v41, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v42, v0

    sget-object v43, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v44, 0x3f800000    # 1.0f

    invoke-virtual/range {v42 .. v44}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v42

    aput-object v42, v40, v41

    move-object/from16 v0, v40

    invoke-static {v10, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 488
    .restart local v6    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 491
    .end local v6    # "anim":Landroid/animation/ObjectAnimator;
    :cond_3
    add-int v12, v16, v14

    .line 492
    .local v12, "currentPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->val$insertedItemPositions:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v0, v12, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getShiftCount(ILjava/util/ArrayList;)I

    move-result v31

    .line 493
    .local v31, "shiftCount":I
    sub-int v25, v12, v31

    .line 495
    .local v25, "oldPos":I
    div-int v26, v25, v24

    .line 496
    .local v26, "oldPosRowId":I
    div-int v20, v12, v24

    .line 497
    .local v20, "newPosRowId":I
    sub-int v30, v20, v26

    .line 498
    .local v30, "rowShift":I
    rem-int v40, v25, v24

    move/from16 v0, v40

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getLeft()I

    move-result v28

    .line 499
    .local v28, "oldX":I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v40

    mul-int v41, v30, v32

    sub-int v29, v40, v41

    .line 500
    .local v29, "oldY":I
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v40, v0

    sub-float v34, v40, v22

    .line 501
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v40, v0

    sub-float v35, v40, v23

    .line 502
    move/from16 v0, v34

    invoke-virtual {v10, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 503
    move/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 504
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v42, v0

    sget-object v43, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v42

    aput-object v42, v40, v41

    const/16 v41, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v42, v0

    sget-object v43, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v44, 0x0

    invoke-virtual/range {v42 .. v44}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v42

    aput-object v42, v40, v41

    move-object/from16 v0, v40

    invoke-static {v10, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 507
    .restart local v6    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 513
    .end local v6    # "anim":Landroid/animation/ObjectAnimator;
    .end local v10    # "child":Landroid/view/View;
    .end local v12    # "currentPos":I
    .end local v18    # "itemId":J
    .end local v20    # "newPosRowId":I
    .end local v22    # "newX":F
    .end local v23    # "newY":F
    .end local v25    # "oldPos":I
    .end local v26    # "oldPosRowId":I
    .end local v28    # "oldX":I
    .end local v29    # "oldY":I
    .end local v30    # "rowShift":I
    .end local v31    # "shiftCount":I
    .end local v33    # "startPos":[F
    .end local v38    # "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 516
    .local v13, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;>;>;"
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGridView;->getLastVisiblePosition()I

    move-result v17

    .line 518
    .local v17, "lastVisiblePosition":I
    move/from16 v12, v17

    .line 519
    .restart local v12    # "currentPos":I
    const/16 v36, 0x0

    .line 520
    .local v36, "updateListenerAdded":Z
    :cond_5
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_6

    .line 521
    add-int/lit8 v12, v12, 0x1

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->val$insertedItemPositions:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_5

    .line 526
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/Map$Entry;

    .line 527
    .local v37, "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;

    .line 528
    .local v39, "viewinfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    move-object/from16 v0, v39

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v40, v0

    div-int v26, v40, v24

    .line 529
    .restart local v26    # "oldPosRowId":I
    div-int v20, v12, v24

    .line 533
    .restart local v20    # "newPosRowId":I
    sub-int v30, v20, v26

    .line 535
    .restart local v30    # "rowShift":I
    rem-int v40, v12, v24

    move/from16 v0, v40

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getLeft()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v22, v0

    .line 536
    .restart local v22    # "newX":F
    move-object/from16 v0, v39

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v40, v0

    mul-int v41, v30, v32

    add-int v40, v40, v41

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v23, v0

    .line 538
    .restart local v23    # "newY":F
    new-instance v27, Landroid/graphics/Rect;

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v40, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v41, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->right:I

    move/from16 v42, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move/from16 v43, v0

    move-object/from16 v0, v27

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 539
    .local v27, "oldViewBounds":Landroid/graphics/Rect;
    new-instance v21, Landroid/graphics/Rect;

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v40, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v41, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    add-float v42, v42, v22

    move/from16 v0, v42

    float-to-int v0, v0

    move/from16 v42, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v43, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v44

    add-int v43, v43, v44

    move-object/from16 v0, v21

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 542
    .local v21, "newViewBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v40, v0

    const-string v41, "bounds"

    sget-object v42, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aput-object v27, v43, v44

    const/16 v44, 0x1

    aput-object v21, v43, v44

    invoke-static/range {v40 .. v43}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 545
    .local v7, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    if-nez v36, :cond_5

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 548
    const/16 v36, 0x1

    goto/16 :goto_2

    .line 551
    .end local v7    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v20    # "newPosRowId":I
    .end local v21    # "newViewBounds":Landroid/graphics/Rect;
    .end local v22    # "newX":F
    .end local v23    # "newY":F
    .end local v26    # "oldPosRowId":I
    .end local v27    # "oldViewBounds":Landroid/graphics/Rect;
    .end local v30    # "rowShift":I
    .end local v37    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v39    # "viewinfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/LinkedHashMap;->clear()V

    .line 552
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 553
    .local v8, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 554
    sget-object v40, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 555
    new-instance v40, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4$1;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4$1;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;)V

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 574
    sget v40, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->TRANSLATION_DURATION:I

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 575
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 576
    return-void
.end method

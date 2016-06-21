.class Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;
.super Ljava/lang/Object;
.source "TwAddDeleteListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->prepareInsert(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$insertedItems:Ljava/util/ArrayList;

.field final synthetic val$upcomingViewsStartCoords:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p3, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 48

    .prologue
    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v43, v0

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static/range {v43 .. v43}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v26

    .line 490
    .local v26, "listview":Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v15

    .line 491
    .local v15, "firstVisiblePos":I
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v20

    .line 492
    .local v20, "headerViewsCount":I
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v18

    .line 493
    .local v18, "footerViewsCount":I
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v12

    .line 494
    .local v12, "childCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 495
    .local v6, "adapterCount":I
    const/16 v37, 0x0

    .line 496
    .local v37, "translationY":F
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v10, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/16 v35, 0x0

    .line 500
    .local v35, "singleItemHeight":I
    const/16 v25, 0x0

    .line 501
    .local v25, "left":I
    const/16 v42, 0x0

    .line 502
    .local v42, "width":I
    move/from16 v0, v20

    if-le v12, v0, :cond_1

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v43, v0

    # invokes: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getChildMaxHeight()I
    invoke-static/range {v43 .. v43}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)I

    move-result v43

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v44

    add-int v35, v43, v44

    .line 504
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getLeft()I

    move-result v25

    .line 505
    const/16 v43, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getWidth()I

    move-result v42

    .line 510
    :goto_0
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v0, v12, :cond_7

    .line 511
    add-int v32, v21, v15

    .line 512
    .local v32, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v22

    .line 513
    .local v22, "itemId":J
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 514
    .local v11, "child":Landroid/view/View;
    const/16 v40, 0x0

    .line 516
    .local v40, "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v28, v0

    .line 517
    .local v28, "newY":F
    const-wide/16 v44, -0x1

    cmp-long v43, v22, v44

    if-nez v43, :cond_4

    .line 518
    add-int v43, v32, v18

    sub-int v43, v43, v6

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 519
    .local v16, "footerId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v43, v0

    move-wide/from16 v0, v16

    neg-long v0, v0

    move-wide/from16 v44, v0

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    .end local v40    # "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    check-cast v40, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;

    .line 520
    .restart local v40    # "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    if-nez v40, :cond_2

    .line 522
    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$300()Ljava/lang/String;

    move-result-object v43

    const-string v44, "AFTER header/footer SOMETHING WENT WRONG, in the new layout, header/footer is appearing that was not present before!"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .end local v16    # "footerId":J
    :cond_0
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 507
    .end local v11    # "child":Landroid/view/View;
    .end local v21    # "i":I
    .end local v22    # "itemId":J
    .end local v28    # "newY":F
    .end local v32    # "position":I
    .end local v40    # "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    :cond_1
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwListView;->getWidth()I

    move-result v42

    goto :goto_0

    .line 526
    .restart local v11    # "child":Landroid/view/View;
    .restart local v16    # "footerId":J
    .restart local v21    # "i":I
    .restart local v22    # "itemId":J
    .restart local v28    # "newY":F
    .restart local v32    # "position":I
    .restart local v40    # "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    :cond_2
    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 527
    move-object/from16 v0, v40

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    cmpl-float v43, v43, v28

    if-nez v43, :cond_3

    .line 529
    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$300()Ljava/lang/String;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "AFTER header/footer something strange is happening, the coordinates are same after layout, viewInfo.top="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v40

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", newY="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 533
    :cond_3
    move-object/from16 v0, v40

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    sub-float v37, v43, v28

    .line 534
    move/from16 v0, v37

    invoke-virtual {v11, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 535
    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v45, v0

    sget-object v46, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, v43

    invoke-static {v11, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 537
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 541
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    .end local v16    # "footerId":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    move-object/from16 v43, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    .line 543
    .local v36, "startPos":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v43, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    .end local v40    # "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    check-cast v40, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;

    .line 544
    .restart local v40    # "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    if-eqz v40, :cond_5

    .line 545
    invoke-virtual/range {v40 .. v40}, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 547
    move-object/from16 v0, v40

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    cmpl-float v43, v43, v28

    if-eqz v43, :cond_0

    .line 550
    move-object/from16 v0, v40

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v43, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    sub-float v37, v43, v28

    .line 551
    move/from16 v0, v37

    invoke-virtual {v11, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 552
    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v45, v0

    sget-object v46, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, v43

    invoke-static {v11, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 554
    .restart local v7    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 555
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    :cond_5
    if-eqz v36, :cond_6

    .line 557
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    sub-float v37, v43, v28

    .line 559
    move/from16 v0, v37

    invoke-virtual {v11, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 560
    const/16 v43, 0x0

    move/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/view/View;->setAlpha(F)V

    .line 561
    sget v43, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    move/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/view/View;->setScaleX(F)V

    .line 562
    sget v43, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    move/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/view/View;->setScaleY(F)V

    .line 563
    const/16 v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v45, v0

    sget-object v46, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v45, v0

    sget-object v46, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/high16 v47, 0x3f800000    # 1.0f

    invoke-virtual/range {v45 .. v47}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v45, v0

    sget-object v46, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/high16 v47, 0x3f800000    # 1.0f

    invoke-virtual/range {v45 .. v47}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v45, v0

    sget-object v46, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v47, 0x3f800000    # 1.0f

    invoke-virtual/range {v45 .. v47}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, v43

    invoke-static {v11, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 568
    .restart local v7    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 571
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    :cond_6
    add-int v13, v21, v15

    .line 572
    .local v13, "currentPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v13, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getShiftCount(ILjava/util/ArrayList;)I

    move-result v34

    .line 573
    .local v34, "shiftCount":I
    sub-int v29, v13, v34

    .line 575
    .local v29, "oldPos":I
    sub-int v33, v13, v29

    .line 576
    .local v33, "rowShift":I
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v43

    mul-int v44, v33, v35

    sub-int v31, v43, v44

    .line 577
    .local v31, "oldY":I
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v43, v0

    sub-float v37, v43, v28

    .line 578
    move/from16 v0, v37

    invoke-virtual {v11, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 579
    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v45, v0

    sget-object v46, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v47, 0x0

    invoke-virtual/range {v45 .. v47}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, v43

    invoke-static {v11, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 581
    .restart local v7    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 585
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    .end local v11    # "child":Landroid/view/View;
    .end local v13    # "currentPos":I
    .end local v22    # "itemId":J
    .end local v28    # "newY":F
    .end local v29    # "oldPos":I
    .end local v31    # "oldY":I
    .end local v32    # "position":I
    .end local v33    # "rowShift":I
    .end local v34    # "shiftCount":I
    .end local v36    # "startPos":Ljava/lang/Integer;
    .end local v40    # "viewInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->clear()V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 592
    .local v14, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;>;>;"
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwListView;->getLastVisiblePosition()I

    move-result v24

    .line 593
    .local v24, "lastVisiblePosition":I
    const/16 v38, 0x0

    .line 595
    .local v38, "updateListenerAdded":Z
    move/from16 v13, v24

    .line 596
    .restart local v13    # "currentPos":I
    :cond_8
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_9

    .line 597
    add-int/lit8 v13, v13, 0x1

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_8

    .line 602
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/util/Map$Entry;

    .line 603
    .local v39, "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface/range {v39 .. v39}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;

    .line 605
    .local v41, "viewinfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    move-object/from16 v0, v41

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v43, v0

    sub-int v33, v13, v43

    .line 606
    .restart local v33    # "rowShift":I
    move-object/from16 v0, v41

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v43, v0

    mul-int v44, v33, v35

    add-int v28, v43, v44

    .line 608
    .local v28, "newY":I
    new-instance v30, Landroid/graphics/Rect;

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v43, v0

    add-int v44, v25, v42

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move/from16 v45, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    move/from16 v2, v43

    move/from16 v3, v44

    move/from16 v4, v45

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 609
    .local v30, "oldViewBounds":Landroid/graphics/Rect;
    new-instance v27, Landroid/graphics/Rect;

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v43

    add-int v43, v43, v25

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v44

    add-int v44, v44, v28

    move-object/from16 v0, v27

    move/from16 v1, v25

    move/from16 v2, v28

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 610
    .local v27, "newViewBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v43, v0

    const-string v44, "bounds"

    sget-object v45, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v30, v46, v47

    const/16 v47, 0x1

    aput-object v27, v46, v47

    invoke-static/range {v43 .. v46}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 613
    .local v8, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    if-nez v38, :cond_8

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 616
    const/16 v38, 0x1

    goto/16 :goto_3

    .line 622
    .end local v8    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v27    # "newViewBounds":Landroid/graphics/Rect;
    .end local v28    # "newY":I
    .end local v30    # "oldViewBounds":Landroid/graphics/Rect;
    .end local v33    # "rowShift":I
    .end local v39    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v41    # "viewinfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 624
    .local v19, "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;>;>;"
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_b

    .line 625
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/util/Map$Entry;

    .line 626
    .restart local v39    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface/range {v39 .. v39}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;

    .line 628
    .restart local v41    # "viewinfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    move-object/from16 v0, v41

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v44

    mul-int v44, v44, v35

    add-int v28, v43, v44

    .line 630
    .restart local v28    # "newY":I
    new-instance v30, Landroid/graphics/Rect;

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v43, v0

    add-int v44, v25, v42

    move-object/from16 v0, v41

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move/from16 v45, v0

    move-object/from16 v0, v30

    move/from16 v1, v25

    move/from16 v2, v43

    move/from16 v3, v44

    move/from16 v4, v45

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 631
    .restart local v30    # "oldViewBounds":Landroid/graphics/Rect;
    new-instance v27, Landroid/graphics/Rect;

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v43

    add-int v43, v43, v25

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v44

    add-int v44, v44, v28

    move-object/from16 v0, v27

    move/from16 v1, v25

    move/from16 v2, v28

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 632
    .restart local v27    # "newViewBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v43, v0

    const-string v44, "bounds"

    sget-object v45, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v30, v46, v47

    const/16 v47, 0x1

    aput-object v27, v46, v47

    invoke-static/range {v43 .. v46}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 635
    .restart local v8    # "animBounds":Landroid/animation/ObjectAnimator;
    if-nez v38, :cond_a

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 638
    :cond_a
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 641
    .end local v8    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v27    # "newViewBounds":Landroid/graphics/Rect;
    .end local v28    # "newY":I
    .end local v30    # "oldViewBounds":Landroid/graphics/Rect;
    .end local v39    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v41    # "viewinfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/LinkedHashMap;->clear()V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/LinkedHashMap;->clear()V

    .line 644
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 645
    .local v9, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 646
    sget-object v43, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v43

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 647
    new-instance v43, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4$1;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4$1;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;)V

    move-object/from16 v0, v43

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 666
    sget v43, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->TRANSLATION_DURATION:I

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 667
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 668
    return-void
.end method

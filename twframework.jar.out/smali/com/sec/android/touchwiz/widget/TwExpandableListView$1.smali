.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$ItemDecorator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final WRAPPING_VIEW_ID:I = 0x7ffffc17


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adjustDivider(Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;Z)V
    .locals 6
    .param p1, "holder"    # Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;
    .param p2, "isLastChild"    # Z

    .prologue
    const/4 v0, 0x0

    .line 580
    iget-object v5, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;->dividerView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v5, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 584
    .local v3, "itemViewLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpListDividerHeight:[I
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)[I

    move-result-object v5

    aget v1, v5, v0

    .line 585
    .local v1, "dividerHeight":I
    if-eqz p2, :cond_2

    const/16 v2, 0x8

    .line 586
    .local v2, "dividerVisibility":I
    :goto_1
    if-eqz p2, :cond_3

    .line 589
    .local v0, "bottomMargin":I
    :goto_2
    iget-object v5, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;->dividerView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 593
    iget-object v5, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;

    if-eqz v5, :cond_0

    .line 594
    iget-object v5, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 598
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    div-int/lit8 v5, v0, 0x2

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .end local v0    # "bottomMargin":I
    .end local v2    # "dividerVisibility":I
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move v2, v0

    .line 585
    goto :goto_1

    .restart local v2    # "dividerVisibility":I
    :cond_3
    move v0, v1

    .line 586
    goto :goto_2
.end method

.method private initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "lp"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorGravity:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 575
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorPaddingLeft:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 576
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorPaddingRight:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 577
    return-void
.end method


# virtual methods
.method public onItemDecorate(Landroid/view/View;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/view/View;
    .locals 21
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "pos"    # Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;

    .prologue
    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-nez v19, :cond_1

    move-object/from16 v6, p2

    .line 569
    :cond_0
    :goto_0
    return-object v6

    .line 464
    :cond_1
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->flatListPos:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/4 v12, 0x1

    .line 465
    .local v12, "isLastChild":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpListDividerHeight:[I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)[I

    move-result-object v19

    const/16 v20, 0x0

    aget v4, v19, v20

    .line 467
    .local v4, "dividerHeight":I
    if-eqz p1, :cond_7

    move-object/from16 v19, p1

    check-cast v19, Landroid/view/ViewGroup;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_7

    .line 468
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v19

    const v20, 0x7ffffc17

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 469
    :cond_2
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "convertView is neither null nor the wrapping FrameLayout"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 464
    .end local v4    # "dividerHeight":I
    .end local v12    # "isLastChild":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 472
    .restart local v4    # "dividerHeight":I
    .restart local v12    # "isLastChild":Z
    :cond_4
    const v19, 0x7a0a1eff

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;

    .line 473
    .local v7, "holder":Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;
    iget-object v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 474
    iget-object v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->setIndicatorPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)V

    .line 475
    iget-object v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->refreshDrawableState()V

    .line 476
    iget-object v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_CONTENT_DESCRIPTION:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Ljava/lang/String;

    move-result-object v19

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 478
    .local v14, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 480
    .end local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->adjustDivider(Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;Z)V

    move-object/from16 v6, p1

    .line 481
    goto/16 :goto_0

    .line 476
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_CONTENT_DESCRIPTION:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 484
    .end local v7    # "holder":Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;
    :cond_7
    new-instance v6, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 485
    .local v6, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v7, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;)V

    .line 486
    .restart local v7    # "holder":Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;
    const v19, 0x7a0a1eff

    move/from16 v0, v19

    invoke-virtual {v6, v0, v7}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 488
    const v19, 0x7ffffc17

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 489
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 490
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;->itemView:Landroid/view/View;

    .line 491
    const/4 v9, 0x0

    .line 493
    .local v9, "indicatorImgView":Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v16

    .line 494
    .local v16, "t":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 495
    .local v2, "b":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBottom:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$800(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v15

    .line 496
    .local v15, "myB":I
    const/4 v10, 0x0

    .line 497
    .local v10, "indicatorLeft":I
    const/4 v11, 0x0

    .line 500
    .local v11, "indicatorRight":I
    if-ltz v2, :cond_0

    move/from16 v0, v16

    if-gt v0, v15, :cond_0

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->isLayoutRtl()Z

    move-result v13

    .line 505
    .local v13, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getWidth()I

    move-result v18

    .line 507
    .local v18, "width":I
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->type:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorLeft:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$1000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v10

    .line 510
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorRight:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$1100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$1200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v11

    .line 517
    :goto_4
    if-eqz v13, :cond_c

    .line 518
    move/from16 v17, v10

    .line 519
    .local v17, "temp":I
    sub-int v10, v18, v11

    .line 520
    sub-int v11, v18, v17

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mPaddingRight:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$1300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v19

    sub-int v10, v10, v19

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mPaddingRight:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$1400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v19

    sub-int v11, v11, v19

    .line 529
    .end local v17    # "temp":I
    :goto_5
    if-eq v10, v11, :cond_8

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getIndicator(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$1700(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 534
    .local v8, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_8

    .line 536
    new-instance v9, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;

    .end local v9    # "indicatorImgView":Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;-><init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/content/Context;)V

    .line 537
    .restart local v9    # "indicatorImgView":Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->position:Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->setIndicatorPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)V

    .line 539
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->refreshDrawableState()V

    .line 542
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 543
    .restart local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 544
    invoke-virtual {v9, v14}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 547
    iput-object v9, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;

    .line 548
    iget-object v0, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->COLLAPSE_CONTENT_DESCRIPTION:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Ljava/lang/String;

    move-result-object v19

    :goto_6
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 553
    .end local v8    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_8
    if-lez v4, :cond_0

    .line 554
    new-instance v5, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$1900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 555
    .local v5, "dividerView":Landroid/view/View;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 557
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-direct {v14, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 558
    .restart local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v19, 0x50

    move/from16 v0, v19

    iput v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 559
    invoke-virtual {v5, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getDivider(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 562
    .local v3, "dividerDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 563
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 564
    iput-object v5, v7, Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;->dividerView:Landroid/view/View;

    .line 566
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->adjustDivider(Lcom/sec/android/touchwiz/widget/TwExpandableListView$DecoratedItemViewHolder;Z)V

    goto/16 :goto_0

    .line 508
    .end local v3    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "dividerView":Landroid/view/View;
    .end local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorLeft:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v10

    goto/16 :goto_3

    .line 510
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mChildIndicatorRight:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$1100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v11

    goto/16 :goto_4

    .line 513
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorLeft:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$1000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v10

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mIndicatorRight:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$1200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v11

    goto/16 :goto_4

    .line 525
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mPaddingLeft:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$1500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v19

    add-int v10, v10, v19

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mPaddingLeft:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$1600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v19

    add-int v11, v11, v19

    goto/16 :goto_5

    .line 548
    .restart local v8    # "indicator":Landroid/graphics/drawable/Drawable;
    .restart local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->EXPAND_CONTENT_DESCRIPTION:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_6
.end method

.method public unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 604
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 613
    .end local p1    # "convertView":Landroid/view/View;
    :cond_0
    :goto_0
    return-object p1

    .line 606
    .restart local p1    # "convertView":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7ffffc17

    if-ne v0, v1, :cond_0

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 608
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "convertView":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method

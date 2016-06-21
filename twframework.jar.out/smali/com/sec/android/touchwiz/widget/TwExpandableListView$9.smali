.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V
    .locals 0

    .prologue
    .line 1698
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 14
    .param p1, "anim"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1703
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    .line 1704
    .local v3, "fraction":F
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViews:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1705
    .local v5, "ghostViewCount":I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1707
    .local v4, "ghostExpandingViewsCount":I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3800(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 1708
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/RectF;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->top:F

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v3

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    .line 1724
    :cond_0
    :goto_0
    add-int v10, v5, v4

    if-nez v10, :cond_6

    .line 1739
    :goto_1
    return-void

    .line 1709
    :cond_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3800(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 1710
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/RectF;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsedGroupTopStart:I
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4700(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsedGroupTopEnd:I
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v12

    iget-object v13, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsedGroupTopStart:I
    invoke-static {v13}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4700(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v3

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->top:F

    .line 1711
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/RectF;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViewsVisibleArea:Landroid/graphics/RectF;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->top:F

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mTranslationOffset:I
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v3

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 1712
    :cond_2
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3800(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_4

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpandingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 1713
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mExpandingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4100(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;

    move-result-object v0

    .local v0, "arr$":[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_0

    aget-object v2, v0, v7

    .line 1714
    .local v2, "expRect":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;
    if-nez v2, :cond_3

    .line 1713
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1715
    :cond_3
    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;->update(F)V

    goto :goto_3

    .line 1717
    .end local v0    # "arr$":[Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;
    .end local v2    # "expRect":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_4
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3800(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_0

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1718
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mCollapsingRects:[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4900(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;

    move-result-object v0

    .local v0, "arr$":[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;
    array-length v8, v0

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_4
    if-ge v7, v8, :cond_0

    aget-object v1, v0, v7

    .line 1719
    .local v1, "collapsingRect":Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;
    if-nez v1, :cond_5

    .line 1718
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1720
    :cond_5
    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;->update(F)V

    goto :goto_5

    .line 1729
    .end local v0    # "arr$":[Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;
    .end local v1    # "collapsingRect":Lcom/sec/android/touchwiz/widget/TwExpandableListView$CollapsingRect;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_6
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBitmapUpdateBounds:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$5000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 1730
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    if-ge v6, v5, :cond_7

    .line 1731
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostViews:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .line 1732
    .local v9, "vInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBitmapUpdateBounds:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$5000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/Rect;

    move-result-object v10

    iget-object v11, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1730
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1734
    .end local v9    # "vInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    :cond_7
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v4, :cond_8

    .line 1735
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mGhostExpandCollapseChildViews:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3300(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;

    .line 1736
    .restart local v9    # "vInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBitmapUpdateBounds:Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$5000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/Rect;

    move-result-object v10

    iget-object v11, v9, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1734
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1738
    .end local v9    # "vInfo":Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
    :cond_8
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$9;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mBitmapUpdateBounds:Landroid/graphics/Rect;
    invoke-static {v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$5000(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1
.end method

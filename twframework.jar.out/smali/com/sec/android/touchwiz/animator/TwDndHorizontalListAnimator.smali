.class public Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;
.super Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;
.source "TwDndHorizontalListAnimator.java"

# interfaces
.implements Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwHorizontalDndListView"


# instance fields
.field private mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

.field mNonMovableItems:Landroid/util/SparseIntArray;

.field private final mScrollBarSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwHorizontalListView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 94
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    .line 96
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mScrollBarSize:I

    .line 103
    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    .line 104
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setDndListAnimator(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndAnimationCore:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->setAnimationListener(Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    return-object v0
.end method

.method private addNewTranslation(II)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "totalHeight"    # I

    .prologue
    const/4 v4, 0x0

    .line 596
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    move-result-object v0

    .line 597
    .local v0, "a":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    instance-of v3, v0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 598
    check-cast v1, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    .line 603
    .local v1, "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    :goto_0
    const/4 v2, 0x0

    .line 604
    .local v2, "xCurrentOffset":I
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 605
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getCurrentTranslateX()F

    move-result v3

    float-to-int v2, v3

    .line 607
    :cond_0
    sub-int v3, p2, v2

    invoke-virtual {v1, p2, v3, v4, v4}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 608
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 609
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 613
    :goto_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1, v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;)V

    .line 614
    return-void

    .line 600
    .end local v1    # "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    .end local v2    # "xCurrentOffset":I
    :cond_1
    new-instance v1, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    invoke-direct {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;-><init>()V

    .restart local v1    # "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    goto :goto_0

    .line 611
    .restart local v2    # "xCurrentOffset":I
    :cond_2
    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->setStartAndDuration(I)V

    goto :goto_1
.end method

.method private addReturningTranslation(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 583
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    move-result-object v0

    .line 584
    .local v0, "ia":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    instance-of v3, v0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    if-nez v3, :cond_0

    .line 592
    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    .line 588
    check-cast v1, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    .line 589
    .local v1, "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getCurrentTranslateX()F

    move-result v3

    float-to-int v2, v3

    .line 590
    .local v2, "xCurrentOffset":I
    neg-int v3, v2

    invoke-virtual {v1, v4, v3, v4, v4}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 591
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    goto :goto_0
.end method

.method private checkDndGrabHandle(III)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "itemPosition"    # I

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->activatedByLongPress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const/4 v2, 0x1

    .line 157
    :goto_0
    return v2

    .line 147
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 149
    .local v0, "childRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p3, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 154
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 157
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    goto :goto_0
.end method

.method private checkStartDnd(III)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "itemPosition"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->checkDndGrabHandle(III)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    const/4 v0, 0x0

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    invoke-interface {v1, p3}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrag(I)Z

    move-result v0

    .line 136
    .local v0, "allowDrag":Z
    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0, p3}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->speakNotDraggableForAccessibility(I)V

    goto :goto_0
.end method

.method private drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "childRect"    # Landroid/graphics/Rect;
    .param p3, "isDraggedItem"    # Z
    .param p4, "isAllowDragItem"    # Z

    .prologue
    .line 731
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 732
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 734
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 735
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    sget-object v0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->PRESSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 736
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragHandleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 737
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 739
    :cond_0
    return-void

    .line 735
    :cond_1
    sget-object v0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method private drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 769
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 770
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v2, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 771
    .local v0, "index":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    .line 772
    .local v1, "pos":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->isHeaderOrFooterViewPos(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 773
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 774
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    invoke-interface {v4, v1}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrag(I)Z

    move-result v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    .line 777
    .end local v0    # "index":I
    .end local v1    # "pos":I
    :cond_0
    return-void
.end method

.method private findDragItemPosition(I)I
    .locals 6
    .param p1, "x"    # I

    .prologue
    .line 539
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v0

    .line 540
    .local v0, "childCount":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    .line 541
    .local v1, "firstVisiblePosition":I
    if-lez v0, :cond_1

    .line 542
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 543
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 544
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 545
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 546
    add-int v4, v2, v1

    .line 550
    .end local v2    # "i":I
    .end local v3    # "v":Landroid/view/View;
    :goto_1
    return v4

    .line 542
    .restart local v2    # "i":I
    .restart local v3    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    .end local v2    # "i":I
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private findMovedItemPosition(I)I
    .locals 9
    .param p1, "x"    # I

    .prologue
    .line 554
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v0

    .line 555
    .local v0, "childCount":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    .line 556
    .local v1, "firstVisiblePosition":I
    if-lez v0, :cond_2

    .line 557
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 559
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstDragPos:I

    sub-int/2addr v6, v1

    if-ne v2, v6, :cond_1

    .line 557
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 563
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v6, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 564
    .local v4, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 566
    const/4 v5, 0x0

    .line 567
    .local v5, "xPosAdjust":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    add-int v7, v2, v1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    move-result-object v3

    .line 568
    .local v3, "ia":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    instance-of v6, v3, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    if-eqz v6, :cond_0

    .line 569
    check-cast v3, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    .end local v3    # "ia":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getDestOffsetX()I

    move-result v5

    .line 573
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    sub-int v7, p1, v5

    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 574
    add-int v6, v2, v1

    .line 578
    .end local v2    # "i":I
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "xPosAdjust":I
    :goto_1
    return v6

    :cond_2
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "childRect"    # Landroid/graphics/Rect;
    .param p2, "outGrabHandleRect"    # Landroid/graphics/Rect;

    .prologue
    .line 714
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 716
    .local v1, "drawableWidth":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 717
    .local v0, "drawableHeight":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 718
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 719
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 720
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 722
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0xa

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 723
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0xa

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 725
    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragGrabHandlePosGravity:I

    invoke-static {v2, v1, v0, p1, p2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 728
    .end local v0    # "drawableHeight":I
    .end local v1    # "drawableWidth":I
    :cond_0
    return-void
.end method

.method private initDrag(I)Z
    .locals 4
    .param p1, "itemPosition"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 258
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragView:Landroid/view/View;

    .line 260
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 293
    :goto_0
    return v0

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setEnableHoverDrawable(Z)V

    .line 266
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchMode:I

    .line 267
    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstDragPos:I

    .line 268
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstDragPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragPos:I

    .line 270
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->speakDragStartForAccessibility(I)V

    .line 274
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mUserSetDragItemBitmap:Z

    if-nez v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragView:Landroid/view/View;

    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 282
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->setDragViewAlpha(I)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 285
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchX:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchOffsetX:I

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->startSelectHighlightingAnimation(Landroid/view/View;)V

    .line 288
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    if-eqz v0, :cond_4

    .line 289
    const-string v0, "TwHorizontalDndListView"

    const-string v2, "dndListener.OnDragAndDropStart()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStart()V

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    move v0, v1

    .line 293
    goto :goto_0
.end method

.method private initDragIfNecessary(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->isDndMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 244
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchX:I

    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchY:I

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->checkStartDnd(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->initDrag(I)Z

    move-result v0

    .line 253
    :goto_0
    return v0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->resetDndState()V

    .line 253
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeaderOrFooterViewPos(I)Z
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 780
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    .line 781
    :cond_0
    const/4 v0, 0x1

    .line 783
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 345
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 346
    .local v3, "pointerIndex":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    .line 347
    const/4 v3, 0x0

    .line 348
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mActivePointerId:I

    .line 351
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchX:I

    .line 352
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchY:I

    .line 353
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 354
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchX:I

    iget v7, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstTouchX:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 355
    .local v0, "distance":I
    int-to-float v6, v0

    const/high16 v7, 0x41700000    # 15.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 356
    iput-boolean v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListItemSelectionAnimating:Z

    .line 360
    .end local v0    # "distance":I
    :cond_1
    iput v11, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchMode:I

    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, "needScroll":Z
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getPaddingLeft()I

    move-result v1

    .line 364
    .local v1, "left":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v6, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 365
    .local v5, "temp":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 366
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    .line 368
    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getLeft()I

    move-result v7

    sub-int v4, v6, v7

    .line 369
    .local v4, "right":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 370
    if-eqz v5, :cond_3

    .line 371
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    .line 373
    :cond_3
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchX:I

    if-gt v6, v4, :cond_4

    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchX:I

    if-ge v6, v1, :cond_7

    .line 374
    :cond_4
    const/4 v2, 0x1

    .line 375
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndAutoScrollMode:I

    if-nez v6, :cond_5

    .line 378
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 380
    :cond_5
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchX:I

    if-le v6, v4, :cond_6

    .line 381
    iput v11, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndAutoScrollMode:I

    .line 383
    :cond_6
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchX:I

    if-ge v6, v1, :cond_7

    .line 384
    const/4 v6, 0x1

    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndAutoScrollMode:I

    .line 388
    :cond_7
    if-nez v2, :cond_8

    .line 389
    iput v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndAutoScrollMode:I

    .line 392
    :cond_8
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndAutoScrollMode:I

    if-nez v6, :cond_9

    .line 393
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 396
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->reorderIfNeeded()V

    .line 397
    return-void
.end method

.method private onTouchUpCancel(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 421
    const/4 v10, -0x1

    iput v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mActivePointerId:I

    .line 422
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFirstVisiblePosition()I

    move-result v6

    .line 424
    .local v6, "firstVisiblePosition":I
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->resetDndState()V

    .line 426
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    if-eqz v10, :cond_0

    .line 427
    const-string v10, "TwHorizontalDndListView"

    const-string v11, "dndListener.OnDragAndDropStop() DND_TOUCH_STATUS_START"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    invoke-interface {v10}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStop()V

    .line 431
    :cond_0
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchMode:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    .line 524
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstDragPos:I

    sub-int/2addr v11, v6

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 434
    .local v2, "dragView":Landroid/view/View;
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragPos:I

    sub-int/2addr v11, v6

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 435
    .local v4, "dropView":Landroid/view/View;
    if-eqz v2, :cond_2

    if-nez v4, :cond_8

    .line 440
    :cond_2
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchX:I

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchOffsetX:I

    sub-int v3, v10, v11

    .line 441
    .local v3, "draggedBitmapLeft":I
    if-eqz v4, :cond_4

    const/4 v5, 0x1

    .line 442
    .local v5, "dropViewVisible":Z
    :goto_1
    if-eqz v5, :cond_5

    .line 443
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v1, v10, v3

    .line 456
    .local v1, "distance":I
    :goto_2
    const-string v10, "TwHorizontalDndListView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dndListener.onTouchUp() dragView == null, distance="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x1

    aput v1, v10, v11

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 458
    .local v9, "va":Landroid/animation/ValueAnimator;
    new-instance v10, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;

    invoke-direct {v10, p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;-><init>(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 465
    new-instance v10, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$2;

    invoke-direct {v10, p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$2;-><init>(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 481
    const-wide/16 v10, 0xd2

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 482
    sget-object v10, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 483
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 521
    .end local v1    # "distance":I
    .end local v3    # "draggedBitmapLeft":I
    .end local v5    # "dropViewVisible":Z
    .end local v9    # "va":Landroid/animation/ValueAnimator;
    :cond_3
    :goto_3
    const/4 v10, 0x0

    iput v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndAutoScrollMode:I

    .line 522
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    iget-object v11, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 523
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    goto :goto_0

    .line 441
    .restart local v3    # "draggedBitmapLeft":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 447
    .restart local v5    # "dropViewVisible":Z
    :cond_5
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragPos:I

    if-ge v10, v6, :cond_6

    .line 448
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v3, v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v10, v11

    neg-int v1, v10

    .restart local v1    # "distance":I
    goto :goto_2

    .line 449
    .end local v1    # "distance":I
    :cond_6
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_7

    .line 450
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    iget-object v11, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v1, v10, v3

    .restart local v1    # "distance":I
    goto/16 :goto_2

    .line 452
    .end local v1    # "distance":I
    :cond_7
    const-string v10, "TwHorizontalDndListView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mListView.getChildCount()="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 484
    .end local v3    # "draggedBitmapLeft":I
    .end local v5    # "dropViewVisible":Z
    :cond_8
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListItemSelectionAnimating:Z

    if-eqz v10, :cond_9

    .line 487
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->resetDndState()V

    .line 488
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    if-eqz v10, :cond_3

    .line 489
    const-string v10, "TwHorizontalDndListView"

    const-string v11, "dndListener.OnDragAndDropStop() mListItemSelectionAnimating is true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    invoke-interface {v10}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStop()V

    goto/16 :goto_3

    .line 493
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v7, v10, v11

    .line 494
    .local v7, "offsetX":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v10

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchX:I

    iget v12, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v11, v12

    sub-int v0, v10, v11

    .line 496
    .local v0, "deltaX":I
    new-instance v8, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    invoke-direct {v8}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;-><init>()V

    .line 498
    .local v8, "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v7, v0, v10, v11}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 499
    const v10, 0x3f333333    # 0.7f

    invoke-virtual {v8, v10}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 501
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstDragPos:I

    invoke-virtual {v10, v11, v8}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;)V

    .line 502
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->start()V

    .line 504
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstDragPos:I

    sub-int/2addr v10, v6

    iput v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mRetainFirstDragViewPos:I

    .line 508
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setEnabled(Z)V

    .line 513
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDropDonePending:Z

    .line 517
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->resetDndTouchValuesAndBitmap()V

    .line 518
    const-string v10, "TwHorizontalDndListView"

    const-string v11, "onTouchUp() start last animation"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private recalculateOffset(II)V
    .locals 13
    .param p1, "prevPos"    # I
    .param p2, "newPos"    # I

    .prologue
    .line 617
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getDividerHeight()I

    move-result v4

    .line 618
    .local v4, "dividerWidth":I
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFirstVisiblePosition()I

    move-result v5

    .line 619
    .local v5, "firstVisiblePosition":I
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int v2, v10, v4

    .line 620
    .local v2, "childWidth":I
    if-le p2, p1, :cond_5

    .line 621
    add-int/lit8 v7, p1, 0x1

    .local v7, "i":I
    :goto_0
    if-gt v7, p2, :cond_b

    .line 622
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstDragPos:I

    if-le v7, v10, :cond_3

    .line 623
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstDragPos:I

    invoke-interface {v10, v11, v7}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrop(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 625
    move v9, v2

    .line 626
    .local v9, "totalWidth":I
    move v3, v7

    .line 627
    .local v3, "currentIdx":I
    :goto_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_0

    .line 628
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_1

    .line 631
    :cond_0
    neg-int v10, v9

    invoke-direct {p0, v7, v10}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->addNewTranslation(II)V

    .line 621
    .end local v3    # "currentIdx":I
    .end local v9    # "totalWidth":I
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 633
    :cond_2
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 634
    .local v6, "fixedView":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 639
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 642
    .end local v6    # "fixedView":Landroid/view/View;
    :cond_3
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 643
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_4

    .line 644
    const-string v10, "TwHorizontalDndListView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "recalculateOffset(\'dragging down\') no such item, i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 647
    :cond_4
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->getViewCenterX(Landroid/view/View;)I

    move-result v0

    .line 648
    .local v0, "centerX":I
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->findMovedItemPosition(I)I

    move-result v8

    .line 649
    .local v8, "movedPos":I
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->addReturningTranslation(I)V

    goto :goto_2

    .line 653
    .end local v0    # "centerX":I
    .end local v1    # "child":Landroid/view/View;
    .end local v7    # "i":I
    .end local v8    # "movedPos":I
    :cond_5
    add-int/lit8 v7, p1, -0x1

    .restart local v7    # "i":I
    :goto_3
    if-lt v7, p2, :cond_b

    .line 654
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstDragPos:I

    if-ge v7, v10, :cond_9

    .line 655
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstDragPos:I

    invoke-interface {v10, v11, v7}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrop(II)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 657
    move v9, v2

    .line 658
    .restart local v9    # "totalWidth":I
    move v3, v7

    .line 659
    .restart local v3    # "currentIdx":I
    :goto_4
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_6

    .line 660
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_4

    .line 663
    :cond_6
    invoke-direct {p0, v7, v9}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->addNewTranslation(II)V

    .line 653
    .end local v3    # "currentIdx":I
    .end local v9    # "totalWidth":I
    :cond_7
    :goto_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 664
    :cond_8
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    const/4 v11, -0x1

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    .line 665
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 666
    .restart local v6    # "fixedView":Landroid/view/View;
    if-eqz v6, :cond_7

    .line 671
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5

    .line 674
    .end local v6    # "fixedView":Landroid/view/View;
    :cond_9
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 675
    .restart local v1    # "child":Landroid/view/View;
    if-nez v1, :cond_a

    .line 676
    const-string v10, "TwHorizontalDndListView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "recalculateOffset(\'dragging up\') no such item, i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 679
    :cond_a
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->getViewCenterX(Landroid/view/View;)I

    move-result v0

    .line 680
    .restart local v0    # "centerX":I
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->findMovedItemPosition(I)I

    move-result v8

    .line 681
    .restart local v8    # "movedPos":I
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->addReturningTranslation(I)V

    goto :goto_5

    .line 685
    .end local v0    # "centerX":I
    .end local v1    # "child":Landroid/view/View;
    .end local v8    # "movedPos":I
    :cond_b
    return-void
.end method

.method private startSelectHighlightingAnimation(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 297
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 298
    .local v0, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 299
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListItemSelectionAnimating:Z

    .line 301
    new-instance v1, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    .line 302
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;->setStartAndDuration(I)V

    .line 303
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstDragPos:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;)V

    .line 304
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->start()V

    .line 305
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    .line 788
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 789
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getPaddingTop()I

    move-result v1

    .line 790
    .local v1, "draggedItemY":I
    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchX:I

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchOffsetX:I

    sub-int v0, v2, v3

    .line 792
    .local v0, "draggedItemX":I
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 805
    .end local v0    # "draggedItemX":I
    .end local v1    # "draggedItemY":I
    :cond_0
    :goto_0
    return-void

    .line 795
    .restart local v0    # "draggedItemX":I
    .restart local v1    # "draggedItemY":I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewBitmapTranslateX:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v4, v1

    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 798
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 799
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewBitmapTranslateX:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 800
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 801
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 803
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2, v6, v6}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    goto :goto_0
.end method

.method public getDndOnItemLongClickListener()Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;
    .locals 0

    .prologue
    .line 239
    return-object p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 173
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 225
    :cond_0
    :goto_0
    return v2

    .line 175
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_1

    .line 179
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 182
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    .line 183
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mActivePointerId:I

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchX:I

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchY:I

    .line 186
    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchX:I

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstTouchX:I

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->isDndMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getCount()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 190
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchX:I

    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchY:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->pointToPosition(II)I

    move-result v1

    .line 191
    .local v1, "itemPosition":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->activatedByLongPress()Z

    move-result v4

    if-nez v4, :cond_0

    .line 197
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchX:I

    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchY:I

    invoke-direct {p0, v4, v5, v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->checkStartDnd(III)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->initDrag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->resetDndState()V

    goto :goto_0

    .line 209
    .end local v1    # "itemPosition":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->isDndMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchMode:I

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getCount()I

    move-result v4

    if-le v4, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->activatedByLongPress()Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 213
    goto/16 :goto_0

    .line 218
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->isDndMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchMode:I

    if-eqz v3, :cond_0

    .line 219
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemAnimatorEnd()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 690
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListItemSelectionAnimating:Z

    if-eqz v0, :cond_1

    .line 691
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListItemSelectionAnimating:Z

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDropDonePending:Z

    if-eqz v0, :cond_0

    .line 696
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDropDonePending:Z

    .line 698
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    if-eqz v0, :cond_2

    .line 699
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstDragPos:I

    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->dropDone(II)V

    .line 700
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragPos:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->speakDragReleaseForAccessibility(I)V

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->removeAll()V

    .line 704
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->resetDndPositionValues()V

    .line 705
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    if-eqz v0, :cond_3

    .line 706
    const-string v0, "TwHorizontalDndListView"

    const-string v1, "dndListener.OnDragAndDropStop() from onItemAnimatorEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStop()V

    .line 709
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "parent":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->initDragIfNecessary(I)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->isDndMode()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchMode:I

    if-nez v5, :cond_2

    :cond_0
    move v4, v1

    .line 340
    :cond_1
    :goto_0
    :pswitch_0
    return v4

    .line 313
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 315
    .local v0, "action":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 325
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 320
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 329
    :pswitch_4
    const v5, 0xff00

    and-int/2addr v5, v0

    shr-int/lit8 v3, v5, 0x8

    .line 330
    .local v3, "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 331
    .local v2, "pointerId":I
    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mActivePointerId:I

    if-ne v2, v5, :cond_1

    .line 334
    if-nez v3, :cond_3

    move v1, v4

    .line 335
    .local v1, "newPointerIndex":I
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mActivePointerId:I

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 762
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 763
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mCanvasSaveCount:I

    if-lez v0, :cond_0

    .line 764
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mCanvasSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 766
    :cond_0
    return-void
.end method

.method public preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/4 v3, 0x0

    .line 743
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v4, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 744
    .local v1, "index":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFirstVisiblePosition()I

    move-result v4

    add-int v2, v1, v4

    .line 746
    .local v2, "pos":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->isDndMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstDragPos:I

    if-ne v2, v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDropDonePending:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListItemSelectionAnimating:Z

    if-nez v4, :cond_0

    .line 757
    :goto_0
    return v3

    .line 750
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    move-result-object v0

    .line 751
    .local v0, "ia":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    iput v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mCanvasSaveCount:I

    .line 752
    if-eqz v0, :cond_1

    .line 753
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;->getTransformation(Landroid/view/animation/Transformation;)V

    .line 754
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mCanvasSaveCount:I

    .line 755
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 757
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method reorderIfNeeded()V
    .locals 5

    .prologue
    .line 401
    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragPos:I

    .line 403
    .local v2, "prevDestPosition":I
    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchX:I

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndTouchOffsetX:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 404
    .local v0, "adjustedX":I
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->findDragItemPosition(I)I

    move-result v1

    .line 405
    .local v1, "dragPos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstDragPos:I

    invoke-interface {v3, v4, v1}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragPos:I

    .line 410
    :cond_0
    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragPos:I

    if-eq v2, v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListItemSelectionAnimating:Z

    if-nez v3, :cond_1

    .line 411
    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragPos:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->recalculateOffset(II)V

    .line 412
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->start()V

    .line 415
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragPos:I

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 416
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    .line 418
    :cond_3
    return-void
.end method

.method resetDndPositionValues()V
    .locals 2

    .prologue
    .line 534
    invoke-super {p0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->resetDndPositionValues()V

    .line 535
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setEnableHoverDrawable(Z)V

    .line 536
    return-void
.end method

.method resetDndTouchValuesAndBitmap()V
    .locals 1

    .prologue
    .line 528
    invoke-super {p0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->resetDndTouchValuesAndBitmap()V

    .line 529
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 530
    return-void
.end method

.method public setDndController(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;)V
    .locals 1
    .param p1, "dndController"    # Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$HeaderFooterDndController;-><init>(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    goto :goto_0
.end method

.method public startDrag()Z
    .locals 4

    .prologue
    .line 162
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-nez v1, :cond_0

    .line 163
    const/4 v1, 0x0

    .line 166
    :goto_0
    return v1

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->pointToPosition(II)I

    move-result v0

    .line 166
    .local v0, "position":I
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->initDragIfNecessary(I)Z

    move-result v1

    goto :goto_0
.end method

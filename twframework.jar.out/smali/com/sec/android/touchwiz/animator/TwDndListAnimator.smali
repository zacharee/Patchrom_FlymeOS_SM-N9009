.class public Lcom/sec/android/touchwiz/animator/TwDndListAnimator;
.super Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;
.source "TwDndListAnimator.java"

# interfaces
.implements Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwDndListView"


# instance fields
.field private mListView:Lcom/sec/android/touchwiz/widget/TwListView;

.field mNonMovableItems:Landroid/util/SparseIntArray;

.field private final mScrollBarSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Lcom/sec/android/touchwiz/widget/TwListView;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 94
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    .line 96
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mScrollBarSize:I

    .line 103
    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    .line 104
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListView;->setDndListAnimator(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndAnimationCore:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->setAnimationListener(Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    return-object v0
.end method

.method private addNewTranslation(II)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "totalHeight"    # I

    .prologue
    const/4 v4, 0x0

    .line 597
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    move-result-object v0

    .line 598
    .local v0, "a":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    instance-of v3, v0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 599
    check-cast v1, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    .line 604
    .local v1, "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    :goto_0
    const/4 v2, 0x0

    .line 605
    .local v2, "yCurrentOffset":I
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 606
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v3

    float-to-int v2, v3

    .line 608
    :cond_0
    sub-int v3, p2, v2

    invoke-virtual {v1, v4, v4, p2, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 609
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 610
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getProgress()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 614
    :goto_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1, v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;)V

    .line 615
    return-void

    .line 601
    .end local v1    # "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    .end local v2    # "yCurrentOffset":I
    :cond_1
    new-instance v1, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    invoke-direct {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;-><init>()V

    .restart local v1    # "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    goto :goto_0

    .line 612
    .restart local v2    # "yCurrentOffset":I
    :cond_2
    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->setStartAndDuration(I)V

    goto :goto_1
.end method

.method private addReturningTranslation(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 584
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v3, p1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    move-result-object v0

    .line 585
    .local v0, "ia":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    instance-of v3, v0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    if-nez v3, :cond_0

    .line 593
    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    .line 589
    check-cast v1, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    .line 590
    .local v1, "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getCurrentTranslateY()F

    move-result v3

    float-to-int v2, v3

    .line 591
    .local v2, "yCurrentOffset":I
    neg-int v3, v2

    invoke-virtual {v1, v4, v4, v4, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 592
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
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->activatedByLongPress()Z

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
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p3, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 154
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 157
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->checkDndGrabHandle(III)Z

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
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    invoke-interface {v1, p3}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrag(I)Z

    move-result v0

    .line 136
    .local v0, "allowDrag":Z
    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0, p3}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->speakNotDraggableForAccessibility(I)V

    goto :goto_0
.end method

.method private drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "childRect"    # Landroid/graphics/Rect;
    .param p3, "isDraggedItem"    # Z
    .param p4, "isAllowDragItem"    # Z

    .prologue
    .line 747
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 748
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 750
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 751
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    sget-object v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->PRESSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 752
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragHandleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 753
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 755
    :cond_0
    return-void

    .line 751
    :cond_1
    sget-object v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method private drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 786
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 787
    .local v0, "index":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v2

    add-int v1, v0, v2

    .line 788
    .local v1, "pos":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isHeaderOrFooterViewPos(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 789
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 790
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    invoke-interface {v4, v1}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrag(I)Z

    move-result v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    .line 793
    .end local v0    # "index":I
    .end local v1    # "pos":I
    :cond_0
    return-void
.end method

.method private findDragItemPosition(I)I
    .locals 6
    .param p1, "y"    # I

    .prologue
    .line 540
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v0

    .line 541
    .local v0, "childCount":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v1

    .line 542
    .local v1, "firstVisiblePosition":I
    if-lez v0, :cond_1

    .line 543
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 544
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 545
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 546
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v4, v5, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 547
    add-int v4, v2, v1

    .line 551
    .end local v2    # "i":I
    .end local v3    # "v":Landroid/view/View;
    :goto_1
    return v4

    .line 543
    .restart local v2    # "i":I
    .restart local v3    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    .end local v2    # "i":I
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private findMovedItemPosition(I)I
    .locals 9
    .param p1, "y"    # I

    .prologue
    .line 555
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v0

    .line 556
    .local v0, "childCount":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v1

    .line 557
    .local v1, "firstVisiblePosition":I
    if-lez v0, :cond_2

    .line 558
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 560
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    sub-int/2addr v6, v1

    if-ne v2, v6, :cond_1

    .line 558
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 564
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v6, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 565
    .local v4, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 567
    const/4 v5, 0x0

    .line 568
    .local v5, "yPosAdjust":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    add-int v7, v2, v1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    move-result-object v3

    .line 569
    .local v3, "ia":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    instance-of v6, v3, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    if-eqz v6, :cond_0

    .line 570
    check-cast v3, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    .end local v3    # "ia":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->getDestOffsetY()I

    move-result v5

    .line 574
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    sub-int v8, p1, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 575
    add-int v6, v2, v1

    .line 579
    .end local v2    # "i":I
    .end local v4    # "v":Landroid/view/View;
    .end local v5    # "yPosAdjust":I
    :goto_1
    return v6

    :cond_2
    const/4 v6, -0x1

    goto :goto_1
.end method

.method private getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "childRect"    # Landroid/graphics/Rect;
    .param p2, "outGrabHandleRect"    # Landroid/graphics/Rect;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 717
    .local v1, "drawableWidth":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 718
    .local v2, "drawableHeight":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->isLayoutRtl()Z

    move-result v6

    .line 720
    .local v6, "isLayoutRtl":Z
    if-eqz v6, :cond_1

    .line 721
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 722
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 723
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 724
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 726
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 727
    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 729
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePosGravity:I

    const/4 v5, 0x1

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 744
    .end local v1    # "drawableWidth":I
    .end local v2    # "drawableHeight":I
    .end local v6    # "isLayoutRtl":Z
    :cond_0
    :goto_0
    return-void

    .line 732
    .restart local v1    # "drawableWidth":I
    .restart local v2    # "drawableHeight":I
    .restart local v6    # "isLayoutRtl":Z
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 733
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 734
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 735
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 737
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 738
    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 740
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePosGravity:I

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method private initDrag(I)Z
    .locals 4
    .param p1, "itemPosition"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 258
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragView:Landroid/view/View;

    .line 260
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 293
    :goto_0
    return v0

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnableHoverDrawable(Z)V

    .line 266
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchMode:I

    .line 267
    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    .line 268
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    .line 270
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->speakDragStartForAccessibility(I)V

    .line 274
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mUserSetDragItemBitmap:Z

    if-nez v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragView:Landroid/view/View;

    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 282
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmapAlpha:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDragViewAlpha(I)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 285
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchOffsetY:I

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->startSelectHighlightingAnimation(Landroid/view/View;)V

    .line 288
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    if-eqz v0, :cond_4

    .line 289
    const-string v0, "TwDndListView"

    const-string v2, "dndListener.OnDragAndDropStart()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStart()V

    .line 292
    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    move v0, v1

    .line 293
    goto :goto_0
.end method

.method private initDragIfNecessary(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->activatedByLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 244
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchX:I

    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->checkStartDnd(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->initDrag(I)Z

    move-result v0

    .line 253
    :goto_0
    return v0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->resetDndState()V

    .line 253
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeaderOrFooterViewPos(I)Z
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 796
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    .line 797
    :cond_0
    const/4 v0, 0x1

    .line 799
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
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mActivePointerId:I

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

    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mActivePointerId:I

    .line 351
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchX:I

    .line 352
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    .line 353
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 354
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    iget v7, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstTouchY:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 355
    .local v1, "distance":I
    int-to-float v6, v1

    const/high16 v7, 0x41700000    # 15.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 356
    iput-boolean v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListItemSelectionAnimating:Z

    .line 360
    .end local v1    # "distance":I
    :cond_1
    iput v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchMode:I

    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, "needScroll":Z
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getPaddingTop()I

    move-result v5

    .line 364
    .local v5, "top":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v6, v10}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 365
    .local v4, "temp":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 366
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 368
    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwListView;->getBottom()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getTop()I

    move-result v7

    sub-int v0, v6, v7

    .line 369
    .local v0, "bottom":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 370
    if-eqz v4, :cond_3

    .line 371
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v0, v6

    .line 373
    :cond_3
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    if-gt v6, v0, :cond_4

    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    if-ge v6, v5, :cond_7

    .line 374
    :cond_4
    const/4 v2, 0x1

    .line 375
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndAutoScrollMode:I

    if-nez v6, :cond_5

    .line 378
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;

    const-wide/16 v8, 0x96

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwListView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 380
    :cond_5
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    if-le v6, v0, :cond_6

    .line 381
    iput v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndAutoScrollMode:I

    .line 383
    :cond_6
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    if-ge v6, v5, :cond_7

    .line 384
    const/4 v6, 0x1

    iput v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndAutoScrollMode:I

    .line 388
    :cond_7
    if-nez v2, :cond_8

    .line 389
    iput v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndAutoScrollMode:I

    .line 392
    :cond_8
    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndAutoScrollMode:I

    if-nez v6, :cond_9

    .line 393
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 396
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->reorderIfNeeded()V

    .line 397
    return-void
.end method

.method private onTouchUpCancel(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 421
    const/4 v10, -0x1

    iput v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mActivePointerId:I

    .line 422
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v6

    .line 424
    .local v6, "firstVisiblePosition":I
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->resetDndState()V

    .line 426
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    if-eqz v10, :cond_0

    .line 427
    const-string v10, "TwDndListView"

    const-string v11, "dndListener.onDragAndDropStop() DND_TOUCH_STATUS_START"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    invoke-interface {v10}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStop()V

    .line 431
    :cond_0
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchMode:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    .line 525
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v10

    if-nez v10, :cond_2

    .line 434
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->resetDndState()V

    goto :goto_0

    .line 437
    :cond_2
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    sub-int/2addr v11, v6

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 438
    .local v2, "dragView":Landroid/view/View;
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    sub-int/2addr v11, v6

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 439
    .local v4, "dropView":Landroid/view/View;
    if-eqz v2, :cond_3

    if-nez v4, :cond_8

    .line 444
    :cond_3
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchOffsetY:I

    sub-int v3, v10, v11

    .line 445
    .local v3, "draggedBitmapTop":I
    if-eqz v4, :cond_5

    const/4 v5, 0x1

    .line 446
    .local v5, "dropViewVisible":Z
    :goto_1
    if-eqz v5, :cond_6

    .line 447
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v1, v10, v3

    .line 457
    .local v1, "distance":I
    :goto_2
    const-string v10, "TwDndListView"

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

    .line 458
    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x1

    aput v1, v10, v11

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 459
    .local v9, "va":Landroid/animation/ValueAnimator;
    new-instance v10, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;

    invoke-direct {v10, p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$1;-><init>(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 466
    new-instance v10, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$2;

    invoke-direct {v10, p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$2;-><init>(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 482
    const-wide/16 v10, 0xd2

    invoke-virtual {v9, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 483
    sget-object v10, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 484
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 522
    .end local v1    # "distance":I
    .end local v3    # "draggedBitmapTop":I
    .end local v5    # "dropViewVisible":Z
    .end local v9    # "va":Landroid/animation/ValueAnimator;
    :cond_4
    :goto_3
    const/4 v10, 0x0

    iput v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndAutoScrollMode:I

    .line 523
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 524
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    goto/16 :goto_0

    .line 445
    .restart local v3    # "draggedBitmapTop":I
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 451
    .restart local v5    # "dropViewVisible":Z
    :cond_6
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    if-ge v10, v6, :cond_7

    .line 452
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v3, v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    add-int/2addr v10, v11

    neg-int v1, v10

    .restart local v1    # "distance":I
    goto :goto_2

    .line 454
    .end local v1    # "distance":I
    :cond_7
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v1, v10, v3

    .restart local v1    # "distance":I
    goto/16 :goto_2

    .line 485
    .end local v1    # "distance":I
    .end local v3    # "draggedBitmapTop":I
    .end local v5    # "dropViewVisible":Z
    :cond_8
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListItemSelectionAnimating:Z

    if-eqz v10, :cond_9

    .line 488
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->resetDndState()V

    .line 489
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    if-eqz v10, :cond_4

    .line 490
    const-string v10, "TwDndListView"

    const-string v11, "dndListener.OnDragAndDropStop() mListItemSelectionAnimating is true"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    invoke-interface {v10}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStop()V

    goto :goto_3

    .line 494
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v7, v10, v11

    .line 495
    .local v7, "offsetY":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v10

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    iget v12, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v11, v12

    sub-int v0, v10, v11

    .line 497
    .local v0, "deltaY":I
    new-instance v8, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;

    invoke-direct {v8}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;-><init>()V

    .line 499
    .local v8, "t":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11, v7, v0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->translate(IIII)V

    .line 500
    const v10, 0x3f333333    # 0.7f

    invoke-virtual {v8, v10}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;->setStartAndDuration(F)V

    .line 502
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    invoke-virtual {v10, v11, v8}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;)V

    .line 503
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->start()V

    .line 505
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    sub-int/2addr v10, v6

    iput v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mRetainFirstDragViewPos:I

    .line 509
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnabled(Z)V

    .line 514
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDropDonePending:Z

    .line 518
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->resetDndTouchValuesAndBitmap()V

    .line 519
    const-string v10, "TwDndListView"

    const-string v11, "onTouchUp() start last animation"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private recalculateOffset(II)V
    .locals 13
    .param p1, "prevPos"    # I
    .param p2, "newPos"    # I

    .prologue
    .line 618
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwListView;->getDividerHeight()I

    move-result v4

    .line 619
    .local v4, "dividerHeight":I
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v5

    .line 620
    .local v5, "firstVisiblePosition":I
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int v2, v10, v4

    .line 621
    .local v2, "childHeight":I
    if-le p2, p1, :cond_5

    .line 622
    add-int/lit8 v7, p1, 0x1

    .local v7, "i":I
    :goto_0
    if-gt v7, p2, :cond_b

    .line 623
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    if-le v7, v10, :cond_3

    .line 624
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    invoke-interface {v10, v11, v7}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrop(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 626
    move v9, v2

    .line 627
    .local v9, "totalHeight":I
    move v3, v7

    .line 628
    .local v3, "currentIdx":I
    :goto_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_0

    .line 629
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_1

    .line 632
    :cond_0
    neg-int v10, v9

    invoke-direct {p0, v7, v10}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->addNewTranslation(II)V

    .line 622
    .end local v3    # "currentIdx":I
    .end local v9    # "totalHeight":I
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 634
    :cond_2
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 635
    .local v6, "fixedView":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 640
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 643
    .end local v6    # "fixedView":Landroid/view/View;
    :cond_3
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 644
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_4

    .line 645
    const-string v10, "TwDndListView"

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

    .line 648
    :cond_4
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    .line 649
    .local v0, "centerY":I
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->findMovedItemPosition(I)I

    move-result v8

    .line 650
    .local v8, "movedPos":I
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->addReturningTranslation(I)V

    goto :goto_2

    .line 654
    .end local v0    # "centerY":I
    .end local v1    # "child":Landroid/view/View;
    .end local v7    # "i":I
    .end local v8    # "movedPos":I
    :cond_5
    add-int/lit8 v7, p1, -0x1

    .restart local v7    # "i":I
    :goto_3
    if-lt v7, p2, :cond_b

    .line 655
    iget v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    if-ge v7, v10, :cond_9

    .line 656
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget v11, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    invoke-interface {v10, v11, v7}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrop(II)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 658
    move v9, v2

    .line 659
    .restart local v9    # "totalHeight":I
    move v3, v7

    .line 660
    .restart local v3    # "currentIdx":I
    :goto_4
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_6

    .line 661
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_4

    .line 664
    :cond_6
    invoke-direct {p0, v7, v9}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->addNewTranslation(II)V

    .line 654
    .end local v3    # "currentIdx":I
    .end local v9    # "totalHeight":I
    :cond_7
    :goto_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 665
    :cond_8
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    const/4 v11, -0x1

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    .line 666
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 667
    .restart local v6    # "fixedView":Landroid/view/View;
    if-eqz v6, :cond_7

    .line 672
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5

    .line 675
    .end local v6    # "fixedView":Landroid/view/View;
    :cond_9
    iget-object v10, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    sub-int v11, v7, v5

    invoke-virtual {v10, v11}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 676
    .restart local v1    # "child":Landroid/view/View;
    if-nez v1, :cond_a

    .line 677
    const-string v10, "TwDndListView"

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

    .line 680
    :cond_a
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->getViewCenterY(Landroid/view/View;)I

    move-result v0

    .line 681
    .restart local v0    # "centerY":I
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->findMovedItemPosition(I)I

    move-result v8

    .line 682
    .restart local v8    # "movedPos":I
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->addReturningTranslation(I)V

    goto :goto_5

    .line 686
    .end local v0    # "centerY":I
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

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListItemSelectionAnimating:Z

    .line 301
    new-instance v1, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    .line 302
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;->setStartAndDuration(I)V

    .line 303
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->putItemAnimation(ILcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;)V

    .line 304
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

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

    .line 804
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 805
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getPaddingLeft()I

    move-result v0

    .line 806
    .local v0, "draggedItemX":I
    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchOffsetY:I

    sub-int v1, v2, v3

    .line 808
    .local v1, "draggedItemY":I
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListItemSelectionAnimating:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 826
    .end local v0    # "draggedItemX":I
    .end local v1    # "draggedItemY":I
    :cond_0
    :goto_0
    return-void

    .line 811
    .restart local v0    # "draggedItemX":I
    .restart local v1    # "draggedItemY":I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmapTranslateY:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 814
    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragGrabHandlePosGravity:I

    and-int/lit8 v2, v2, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 815
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getPaddingRight()I

    move-result v3

    neg-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 819
    :goto_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmapTranslateY:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 821
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 822
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 824
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2, v6, v6}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    goto :goto_0

    .line 817
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_1
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
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_1

    .line 179
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 182
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    .line 183
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mActivePointerId:I

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchX:I

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    .line 186
    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    iput v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstTouchY:I

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 190
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchX:I

    iget v6, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwListView;->pointToPosition(II)I

    move-result v1

    .line 191
    .local v1, "itemPosition":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->activatedByLongPress()Z

    move-result v4

    if-nez v4, :cond_0

    .line 197
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchX:I

    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    invoke-direct {p0, v4, v5, v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->checkStartDnd(III)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->initDrag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->resetDndState()V

    goto :goto_0

    .line 209
    .end local v1    # "itemPosition":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchMode:I

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v4

    if-le v4, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->activatedByLongPress()Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 213
    goto/16 :goto_0

    .line 218
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchMode:I

    if-eqz v3, :cond_0

    .line 219
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

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

    .line 691
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListItemSelectionAnimating:Z

    if-eqz v0, :cond_1

    .line 692
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListItemSelectionAnimating:Z

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDropDonePending:Z

    if-eqz v0, :cond_0

    .line 697
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDropDonePending:Z

    .line 699
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    if-eqz v0, :cond_2

    .line 700
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->dropDone(II)V

    .line 701
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->speakDragReleaseForAccessibility(I)V

    .line 704
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->removeAll()V

    .line 705
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->resetDndPositionValues()V

    .line 706
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    if-eqz v0, :cond_3

    .line 707
    const-string v0, "TwDndListView"

    const-string v1, "dndListener.OnDragAndDropStop() from onItemAnimatorEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStop()V

    .line 710
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnabled(Z)V

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
    invoke-direct {p0, p3}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->initDragIfNecessary(I)Z

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
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchMode:I

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
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 320
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->onTouchMove(Landroid/view/MotionEvent;)V

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
    iget v5, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mActivePointerId:I

    if-ne v2, v5, :cond_1

    .line 334
    if-nez v3, :cond_3

    move v1, v4

    .line 335
    .local v1, "newPointerIndex":I
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mActivePointerId:I

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
    .line 778
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->drawDragHandlerIfNeeded(Landroid/graphics/Canvas;Landroid/view/View;J)V

    .line 779
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mCanvasSaveCount:I

    if-lez v0, :cond_0

    .line 780
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mCanvasSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 782
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

    .line 759
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 760
    .local v1, "index":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v4

    add-int v2, v1, v4

    .line 762
    .local v2, "pos":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    if-ne v2, v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDropDonePending:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListItemSelectionAnimating:Z

    if-nez v4, :cond_0

    .line 773
    :goto_0
    return v3

    .line 766
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->getItemAnimation(I)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    move-result-object v0

    .line 767
    .local v0, "ia":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    iput v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mCanvasSaveCount:I

    .line 768
    if-eqz v0, :cond_1

    .line 769
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;->getTransformation(Landroid/view/animation/Transformation;)V

    .line 770
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mCanvasSaveCount:I

    .line 771
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 773
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method reorderIfNeeded()V
    .locals 5

    .prologue
    .line 401
    iget v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    .line 403
    .local v2, "prevDestPosition":I
    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchY:I

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndTouchOffsetY:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 404
    .local v0, "adjustedY":I
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->findDragItemPosition(I)I

    move-result v1

    .line 405
    .local v1, "dragPos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget v4, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mFirstDragPos:I

    invoke-interface {v3, v4, v1}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    .line 410
    :cond_0
    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    if-eq v2, v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListItemSelectionAnimating:Z

    if-nez v3, :cond_1

    .line 411
    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->recalculateOffset(II)V

    .line 412
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->start()V

    .line 415
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragPos:I

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 416
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 418
    :cond_3
    return-void
.end method

.method resetDndPositionValues()V
    .locals 2

    .prologue
    .line 535
    invoke-super {p0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->resetDndPositionValues()V

    .line 536
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnableHoverDrawable(Z)V

    .line 537
    return-void
.end method

.method resetDndTouchValuesAndBitmap()V
    .locals 1

    .prologue
    .line 529
    invoke-super {p0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->resetDndTouchValuesAndBitmap()V

    .line 530
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mNonMovableItems:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 531
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

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;-><init>(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    goto :goto_0
.end method

.method public startDrag()Z
    .locals 4

    .prologue
    .line 162
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    if-nez v1, :cond_0

    .line 163
    const/4 v1, 0x0

    .line 166
    :goto_0
    return v1

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mTempEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->pointToPosition(II)I

    move-result v0

    .line 166
    .local v0, "position":I
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->initDragIfNecessary(I)Z

    move-result v1

    goto :goto_0
.end method

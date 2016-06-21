.class Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;
.super Ljava/lang/Object;
.source "TwCoverflowLayoutController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mFinalFlingX:I

.field private mLastFlingX:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)V
    .locals 2

    .prologue
    .line 706
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 708
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

    .prologue
    .line 700
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 2
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    const/4 v1, 0x1

    .line 767
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 769
    if-eqz p1, :cond_0

    .line 770
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # invokes: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->scrollIntoSlots()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$500(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)V

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$200(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 772
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # invokes: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->finishOverScrollMode()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$600(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)V

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnFling:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$702(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;Z)Z

    .line 775
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->refreshCaching()V

    .line 776
    return-void
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 712
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 779
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 780
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->endFling(Z)V

    .line 816
    :goto_0
    return-void

    .line 784
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # setter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mShouldStopFling:Z
    invoke-static {v4, v6}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$802(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;Z)Z

    .line 786
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 787
    .local v2, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 788
    .local v1, "more":Z
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 790
    .local v3, "x":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mLastFlingX:I

    sub-int v0, v4, v3

    .line 792
    .local v0, "delta":I
    if-lez v0, :cond_3

    .line 793
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 798
    :goto_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->trackMotionScroll(I)V

    .line 800
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$200(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)Z

    move-result v4

    if-ne v4, v7, :cond_1

    .line 801
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    div-int/lit8 v5, v0, 0x4

    # invokes: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->trackMotionOverScroll(I)V
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$900(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;I)V

    .line 804
    :cond_1
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mShouldStopFling:Z
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$800(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 805
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mLastFlingX:I

    .line 806
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->post(Ljava/lang/Runnable;)Z

    .line 815
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    goto :goto_0

    .line 795
    :cond_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    neg-int v4, v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 808
    :cond_4
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->endFling(Z)V

    .line 810
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 811
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    .line 812
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # setter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mScrollState:I
    invoke-static {v4, v6}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$1002(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;I)I

    goto :goto_2
.end method

.method public startUsingDistance(II)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "annimationDuration"    # I

    .prologue
    const/4 v1, 0x0

    .line 751
    if-nez p1, :cond_0

    .line 759
    :goto_0
    return-void

    .line 754
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->startCommon()V

    .line 756
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mLastFlingX:I

    .line 757
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    move v2, v1

    move v4, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 758
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 11
    .param p1, "initialVelocity"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 715
    if-nez p1, :cond_0

    .line 748
    :goto_0
    return-void

    .line 718
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->startCommon()V

    .line 720
    if-gez p1, :cond_2

    move v1, v6

    .line 721
    .local v1, "initialX":I
    :goto_1
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mLastFlingX:I

    .line 722
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 723
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 725
    if-lez p1, :cond_4

    .line 726
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$300(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mFinalFlingX:I

    .line 728
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$400(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)I

    move-result v10

    .line 729
    .local v10, "childSpace":I
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mFinalFlingX:I

    div-int v9, v0, v10

    .line 730
    .local v9, "childGraduation":I
    mul-int v0, v9, v10

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$300(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)I

    move-result v2

    neg-int v2, v2

    div-int/2addr v2, v10

    mul-int/2addr v2, v10

    if-eq v0, v2, :cond_3

    .line 731
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    mul-int v2, v9, v10

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$300(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 747
    .end local v9    # "childGraduation":I
    .end local v10    # "childSpace":I
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v1    # "initialX":I
    :cond_2
    move v1, v2

    .line 720
    goto :goto_1

    .line 733
    .restart local v1    # "initialX":I
    .restart local v9    # "childGraduation":I
    .restart local v10    # "childSpace":I
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # invokes: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->scrollIntoSlots()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$500(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)V

    goto :goto_2

    .line 735
    .end local v9    # "childGraduation":I
    .end local v10    # "childSpace":I
    :cond_4
    if-gez p1, :cond_1

    .line 736
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$300(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mFinalFlingX:I

    .line 738
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$400(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)I

    move-result v10

    .line 739
    .restart local v10    # "childSpace":I
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mFinalFlingX:I

    div-int v9, v0, v10

    .line 740
    .restart local v9    # "childGraduation":I
    mul-int v0, v9, v10

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$300(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)I

    move-result v2

    neg-int v2, v2

    div-int/2addr v2, v10

    mul-int/2addr v2, v10

    if-eq v0, v2, :cond_5

    .line 741
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    mul-int v2, v9, v10

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$300(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_2

    .line 743
    :cond_5
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # invokes: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->scrollIntoSlots()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$500(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)V

    goto :goto_2
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    .line 762
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 763
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->endFling(Z)V

    .line 764
    return-void
.end method

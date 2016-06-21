.class Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;
.super Ljava/lang/Object;
.source "TwBrowserLayoutController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingThread"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)V
    .locals 2

    .prologue
    .line 359
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    .line 361
    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 2
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    const/4 v1, 0x1

    .line 449
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 451
    if-eqz p1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$800(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # invokes: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->finishOverScrollMode()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$900(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->refreshCaching()V

    .line 460
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnFling:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$1002(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Z)Z

    .line 462
    return-void
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 466
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v1

    .line 468
    .local v1, "itemCount":I
    if-nez v1, :cond_0

    .line 469
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->endFling(Z)V

    .line 517
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # setter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mShouldStopFling:Z
    invoke-static {v5, v8}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$1102(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Z)Z

    .line 475
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 476
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->endFling(Z)V

    goto :goto_0

    .line 480
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    .line 481
    .local v3, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    .line 482
    .local v2, "more":Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 484
    .local v4, "x":I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mLastFlingX:I

    sub-int v0, v5, v4

    .line 486
    .local v0, "delta":I
    if-lez v0, :cond_4

    .line 487
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 496
    :goto_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->trackMotionScroll(I)V

    .line 498
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$800(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)Z

    move-result v5

    if-ne v5, v7, :cond_2

    .line 499
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    div-int/lit8 v6, v0, 0x5

    # invokes: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->trackMotionOverScroll(I)V
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$1200(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;I)V

    .line 501
    :cond_2
    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mShouldStopFling:Z
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$1100(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 502
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mLastFlingX:I

    .line 503
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->post(Ljava/lang/Runnable;)Z

    .line 516
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    goto/16 :goto_0

    .line 491
    :cond_4
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 507
    :cond_5
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->endFling(Z)V

    .line 509
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 510
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-interface {v5, v6, v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    .line 511
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # setter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mScrollState:I
    invoke-static {v5, v8}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$1302(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;I)I

    goto :goto_2
.end method

.method public startUsingDistance(II)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 432
    if-nez p1, :cond_0

    .line 441
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->startCommon()V

    .line 437
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mLastFlingX:I

    .line 438
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    move v2, v1

    move v4, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 440
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 15
    .param p1, "initialVelocity"    # I

    .prologue
    .line 370
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDeltaX:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$000(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I

    move-result v0

    if-nez v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->startCommon()V

    .line 375
    const v6, 0x7fffffff

    .line 376
    .local v6, "maxX":I
    if-gez p1, :cond_4

    move v1, v6

    .line 377
    .local v1, "initialX":I
    :goto_1
    const/4 v12, 0x0

    .line 378
    .local v12, "gap":I
    const/4 v9, 0x0

    .line 380
    .local v9, "centerView":Landroid/view/View;
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mLastFlingX:I

    .line 381
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 382
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move/from16 v3, p1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 385
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # invokes: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->judgeFocusIndex()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$100(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusIndex:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$200(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 389
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    .line 392
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # invokes: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getCenterOfView(Landroid/view/View;)I
    invoke-static {v0, v9}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$300(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Landroid/view/View;)I

    move-result v13

    .line 394
    .local v13, "selectedCenter":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # invokes: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getCenterOfGallery()I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$400(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I

    move-result v14

    .line 396
    .local v14, "targetCenter":I
    sub-int v12, v13, v14

    .line 398
    if-lez p1, :cond_5

    .line 399
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    sub-int/2addr v2, v12

    int-to-float v2, v2

    # setter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinalXpos:F
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$502(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;F)F

    .line 401
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$600(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$700(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I

    move-result v2

    add-int v11, v0, v2

    .line 402
    .local v11, "childSpace":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinalXpos:F
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$500(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)F

    move-result v0

    int-to-float v2, v11

    div-float/2addr v0, v2

    float-to-int v10, v0

    .line 404
    .local v10, "childGraduation":I
    if-nez v10, :cond_2

    .line 406
    add-int/lit8 v10, v10, 0x1

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    mul-int v2, v10, v11

    add-int/2addr v2, v12

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 428
    .end local v10    # "childGraduation":I
    .end local v11    # "childSpace":I
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 376
    .end local v1    # "initialX":I
    .end local v9    # "centerView":Landroid/view/View;
    .end local v12    # "gap":I
    .end local v13    # "selectedCenter":I
    .end local v14    # "targetCenter":I
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 412
    .restart local v1    # "initialX":I
    .restart local v9    # "centerView":Landroid/view/View;
    .restart local v12    # "gap":I
    .restart local v13    # "selectedCenter":I
    .restart local v14    # "targetCenter":I
    :cond_5
    if-gez p1, :cond_3

    .line 413
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    sub-int/2addr v2, v12

    sub-int/2addr v2, v6

    int-to-float v2, v2

    # setter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinalXpos:F
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$502(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;F)F

    .line 415
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$600(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$700(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I

    move-result v2

    add-int v11, v0, v2

    .line 416
    .restart local v11    # "childSpace":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinalXpos:F
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$500(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)F

    move-result v0

    int-to-float v2, v11

    div-float/2addr v0, v2

    float-to-int v10, v0

    .line 418
    .restart local v10    # "childGraduation":I
    if-nez v10, :cond_6

    .line 420
    add-int/lit8 v10, v10, -0x1

    .line 423
    :cond_6
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;

    mul-int v2, v10, v11

    add-int/2addr v2, v12

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_2
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    .line 444
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 445
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->endFling(Z)V

    .line 446
    return-void
.end method

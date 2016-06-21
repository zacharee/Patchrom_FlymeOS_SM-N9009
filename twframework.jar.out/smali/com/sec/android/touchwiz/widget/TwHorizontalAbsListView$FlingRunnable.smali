.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingX:I

.field private final mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 2

    .prologue
    .line 6459
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6433
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable$1;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 6460
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    .line 6468
    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;)Lcom/sec/android/touchwiz/widget/TwOverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;

    .prologue
    .line 6422
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .param p1, "delta"    # I

    .prologue
    .line 6512
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->notifyHorizontalEdgeReached(III)V

    .line 6513
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getOverScrollMode()I

    move-result v0

    .line 6514
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->contentFits()Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6516
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v3, 0x6

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6517
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 6518
    .local v1, "vel":I
    if-lez p1, :cond_2

    .line 6519
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2900(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    .line 6529
    .end local v1    # "vel":I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 6530
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6531
    return-void

    .line 6521
    .restart local v1    # "vel":I
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3000(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    goto :goto_0

    .line 6524
    .end local v1    # "vel":I
    :cond_3
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v3, -0x1

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6525
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1

    .line 6526
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->stop()V

    goto :goto_0
.end method

.method endFling()V
    .locals 2

    .prologue
    .line 6543
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6545
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6546
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6548
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6549
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->clearScrollingCache()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3100(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    .line 6550
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 6552
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6553
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 6554
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2402(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 6556
    :cond_0
    return-void
.end method

.method flywheelTouch()V
    .locals 4

    .prologue
    .line 6559
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6560
    return-void
.end method

.method public run()V
    .locals 29

    .prologue
    .line 6564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 6566
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 6696
    :cond_0
    :goto_0
    return-void

    .line 6570
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6575
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    if-eqz v2, :cond_1

    .line 6576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->layoutChildren()V

    .line 6579
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mItemCount:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 6580
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 6584
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v26, v0

    .line 6585
    .local v26, "scroller":Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v22

    .line 6586
    .local v22, "more":Z
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrX()I

    move-result v28

    .line 6590
    .local v28, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    sub-int v19, v2, v28

    .line 6593
    .local v19, "delta":I
    if-lez v19, :cond_6

    .line 6595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    iput v4, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    .line 6596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 6597
    .local v20, "firstView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 6600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingRight:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3200(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingLeft:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 6614
    .end local v20    # "firstView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 6615
    .local v23, "motionView":Landroid/view/View;
    const/16 v25, 0x0

    .line 6616
    .local v25, "oldLeft":I
    if-eqz v23, :cond_4

    .line 6617
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v25

    .line 6621
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v14

    .line 6622
    .local v14, "atEdge":Z
    if-eqz v14, :cond_7

    if-eqz v19, :cond_7

    const/4 v15, 0x1

    .line 6624
    .local v15, "atEnd":Z
    :goto_2
    if-eqz v15, :cond_8

    .line 6625
    if-eqz v23, :cond_5

    .line 6627
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v2, v25

    sub-int v2, v19, v2

    neg-int v3, v2

    .line 6628
    .local v3, "overshoot":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3600(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOverflingDistance:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v2 .. v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;IIIIIIIIZ)Z

    .line 6631
    .end local v3    # "overshoot":I
    :cond_5
    if-eqz v22, :cond_0

    .line 6632
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_0

    .line 6603
    .end local v14    # "atEdge":Z
    .end local v15    # "atEnd":Z
    .end local v23    # "motionView":Landroid/view/View;
    .end local v25    # "oldLeft":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    .line 6604
    .local v24, "offsetToLast":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    add-int v4, v4, v24

    iput v4, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    .line 6606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 6607
    .local v21, "lastView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 6610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingRight:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPaddingLeft:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3500(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_1

    .line 6622
    .end local v21    # "lastView":Landroid/view/View;
    .end local v24    # "offsetToLast":I
    .restart local v14    # "atEdge":Z
    .restart local v23    # "motionView":Landroid/view/View;
    .restart local v25    # "oldLeft":I
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 6637
    .restart local v15    # "atEnd":Z
    :cond_8
    if-eqz v22, :cond_a

    if-nez v15, :cond_a

    .line 6638
    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 6639
    :cond_9
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    .line 6640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6656
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mJumpScrollToTopState:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v2

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3900()I

    move-result v4

    if-ne v2, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    if-nez v2, :cond_0

    if-nez v19, :cond_0

    if-nez v22, :cond_0

    .line 6659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$4000()I

    move-result v4

    # setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mJumpScrollToTopState:I
    invoke-static {v2, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$3802(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)I

    .line 6660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnJumpScrollToFinished()V
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$4100(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    goto/16 :goto_0

    .line 6642
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->endFling()V

    goto :goto_3

    .line 6667
    .end local v14    # "atEdge":Z
    .end local v15    # "atEnd":Z
    .end local v19    # "delta":I
    .end local v22    # "more":Z
    .end local v23    # "motionView":Landroid/view/View;
    .end local v25    # "oldLeft":I
    .end local v26    # "scroller":Lcom/sec/android/touchwiz/widget/TwOverScroller;
    .end local v28    # "x":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v26, v0

    .line 6668
    .restart local v26    # "scroller":Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 6669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$4200(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v7

    .line 6670
    .local v7, "scrollX":I
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrX()I

    move-result v18

    .line 6671
    .local v18, "currX":I
    sub-int v5, v18, v7

    .line 6672
    .local v5, "deltaX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v11, v2, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mOverflingDistance:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    # invokes: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v4 .. v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$4300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 6674
    if-gtz v7, :cond_d

    if-lez v18, :cond_d

    const/16 v17, 0x1

    .line 6675
    .local v17, "crossRight":Z
    :goto_4
    if-ltz v7, :cond_e

    if-gez v18, :cond_e

    const/16 v16, 0x1

    .line 6676
    .local v16, "crossLeft":Z
    :goto_5
    if-nez v17, :cond_b

    if-eqz v16, :cond_f

    .line 6677
    :cond_b
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v27, v0

    .line 6678
    .local v27, "velocity":I
    if-eqz v16, :cond_c

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    .line 6681
    :cond_c
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 6682
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 6674
    .end local v16    # "crossLeft":Z
    .end local v17    # "crossRight":Z
    .end local v27    # "velocity":I
    :cond_d
    const/16 v17, 0x0

    goto :goto_4

    .line 6675
    .restart local v17    # "crossRight":Z
    :cond_e
    const/16 v16, 0x0

    goto :goto_5

    .line 6684
    .restart local v16    # "crossLeft":Z
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 6687
    .end local v16    # "crossLeft":Z
    .end local v17    # "crossRight":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 6688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 6691
    .end local v5    # "deltaX":I
    .end local v7    # "scrollX":I
    .end local v18    # "currX":I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 6564
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .param p1, "initialVelocity"    # I

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 6471
    if-gez p1, :cond_1

    move v1, v6

    .line 6472
    .local v1, "initialX":I
    :goto_0
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    .line 6473
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6474
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIII)V

    .line 6476
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v2, 0x4

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6477
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6486
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6487
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const-string v2, "TwHorizontalAbsListView-fling"

    invoke-static {v2}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v2

    # setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2402(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 6489
    :cond_0
    return-void

    .end local v1    # "initialX":I
    :cond_1
    move v1, v2

    .line 6471
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v2, 0x0

    .line 6503
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6504
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v1

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v9

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIIIII)V

    .line 6506
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6507
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 6508
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6509
    return-void
.end method

.method startScroll(IIZ)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v2, 0x0

    .line 6534
    if-gez p1, :cond_0

    const v1, 0x7fffffff

    .line 6535
    .local v1, "initialX":I
    :goto_0
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    .line 6536
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    if-eqz p3, :cond_1

    sget-object v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6537
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move v3, p1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIIII)V

    .line 6538
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v2, 0x4

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6539
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6540
    return-void

    .end local v1    # "initialX":I
    :cond_0
    move v1, v2

    .line 6534
    goto :goto_0

    .line 6536
    .restart local v1    # "initialX":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 6492
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollX:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$2500(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6493
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6494
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->invalidate()V

    .line 6495
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6500
    :goto_0
    return-void

    .line 6497
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 6498
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$FlingRunnable;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method

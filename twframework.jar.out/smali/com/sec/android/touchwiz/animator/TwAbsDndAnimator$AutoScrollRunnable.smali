.class Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;
.super Ljava/lang/Object;
.source "TwAbsDndAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScrollRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;
    .param p2, "x1"    # Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$1;

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;-><init>(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 454
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mListItemSelectionAnimating:Z

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "delta":I
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndAutoScrollMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 458
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    iget v0, v1, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mAutoScrollTopDelta:I

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndAutoScrollMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 461
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    iget v0, v1, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mAutoScrollBottomDelta:I

    .line 463
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    iget-object v1, v1, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mAutoScrollListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndAutoScrollListener;

    if-eqz v1, :cond_2

    .line 468
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    iget-object v1, v1, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mAutoScrollListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndAutoScrollListener;

    invoke-interface {v1, v0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndAutoScrollListener;->onAutoScroll(I)V

    .line 470
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->reorderIfNeeded()V

    .line 471
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndAutoScrollMode:I

    if-eqz v1, :cond_3

    .line 472
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;)Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 474
    :cond_3
    return-void
.end method

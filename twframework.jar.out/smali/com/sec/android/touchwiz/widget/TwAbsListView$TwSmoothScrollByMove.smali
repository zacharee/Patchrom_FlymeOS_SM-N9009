.class Lcom/sec/android/touchwiz/widget/TwAbsListView$TwSmoothScrollByMove;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwSmoothScrollByMove"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0

    .prologue
    .line 6878
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwSmoothScrollByMove;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p2, "x1"    # Lcom/sec/android/touchwiz/widget/TwAbsListView$1;

    .prologue
    .line 6878
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwSmoothScrollByMove;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6880
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwSmoothScrollByMove;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-result-object v1

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->access$2000(Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;)Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6881
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwSmoothScrollByMove;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6889
    :goto_0
    return-void

    .line 6884
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwSmoothScrollByMove;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$4700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6885
    .local v0, "remain":I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwSmoothScrollByMove;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollBy(II)V

    .line 6888
    .end local v0    # "remain":I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwSmoothScrollByMove;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

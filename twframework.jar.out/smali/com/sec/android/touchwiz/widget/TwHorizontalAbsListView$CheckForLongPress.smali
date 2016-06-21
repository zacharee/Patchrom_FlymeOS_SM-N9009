.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;
.super Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$WindowRunnnable;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 1

    .prologue
    .line 3758
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$WindowRunnnable;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    .param p2, "x1"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;

    .prologue
    .line 3758
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3761
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v5, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    .line 3762
    .local v5, "motionPosition":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3763
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3764
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v4, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    .line 3765
    .local v4, "longPressPosition":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3767
    .local v2, "longPressId":J
    const/4 v1, 0x0

    .line 3768
    .local v1, "handled":Z
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v6, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    if-nez v6, :cond_0

    .line 3769
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v6, v0, v4, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 3771
    :cond_0
    if-eqz v1, :cond_2

    .line 3772
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v7, -0x1

    iput v7, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 3773
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v6, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setPressed(Z)V

    .line 3774
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3779
    .end local v1    # "handled":Z
    .end local v2    # "longPressId":J
    .end local v4    # "longPressPosition":I
    :cond_1
    :goto_0
    return-void

    .line 3776
    .restart local v1    # "handled":Z
    .restart local v2    # "longPressId":J
    .restart local v4    # "longPressPosition":I
    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v7, 0x2

    iput v7, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    goto :goto_0
.end method

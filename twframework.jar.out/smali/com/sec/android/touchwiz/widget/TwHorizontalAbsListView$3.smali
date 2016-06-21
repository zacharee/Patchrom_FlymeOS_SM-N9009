.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$3;
.super Ljava/lang/Object;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onTouchUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;)V
    .locals 0

    .prologue
    .line 5650
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$3;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$3;->val$performClick:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5653
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$1702(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 5654
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 5655
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$3;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 5656
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setPressed(Z)V

    .line 5657
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mForcedClick:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsDetaching:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$1800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5658
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$3;->val$performClick:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PerformClick;->run()V

    .line 5660
    :cond_1
    return-void
.end method

.class Lcom/sec/android/touchwiz/widget/TwAbsListView$3;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;->onTouchUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;)V
    .locals 0

    .prologue
    .line 5711
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;->val$performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5714
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1602(Lcom/sec/android/touchwiz/widget/TwAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 5715
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5716
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 5717
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 5718
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsDetaching:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5719
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;->val$performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->run()V

    .line 5721
    :cond_0
    return-void
.end method

.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$8$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;)V
    .locals 0

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8$1;->this$1:Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1637
    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "expand animation finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8$1;->this$1:Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1639
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8$1;->this$1:Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->resetCollapseAnimationState()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$4400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V

    .line 1640
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1632
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8$1;->this$1:Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$8;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    const/4 v1, 0x5

    # setter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAnimationState:I
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$3802(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)I

    .line 1633
    return-void
.end method

.class Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwAddDeleteGridAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 566
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 567
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/widget/TwGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invalidate()V

    .line 568
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/widget/TwGridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setEnabled(Z)V

    .line 569
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;->onAnimationEnd(Z)V

    .line 572
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/widget/TwGridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setEnabled(Z)V

    .line 560
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;->onAnimationStart(Z)V

    .line 563
    :cond_0
    return-void
.end method

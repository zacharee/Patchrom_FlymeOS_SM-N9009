.class Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwAddDeleteListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 658
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 659
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 660
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnabled(Z)V

    .line 661
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;->onAnimationEnd(Z)V

    .line 664
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnabled(Z)V

    .line 652
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4$1;->this$1:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;->onAnimationStart(Z)V

    .line 655
    :cond_0
    return-void
.end method

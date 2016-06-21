.class Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$1;
.super Ljava/lang/Object;
.source "TwCoverflowLayoutController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->finishOverScrollMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 592
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 586
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # setter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$202(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;Z)Z

    .line 587
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    # setter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnAnimation:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$102(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;Z)Z

    .line 588
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 582
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnAnimation:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->access$102(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;Z)Z

    .line 578
    return-void
.end method

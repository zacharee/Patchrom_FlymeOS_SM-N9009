.class Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$1;
.super Ljava/lang/Object;
.source "TwBrowserLayoutController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->finishOverScrollMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 839
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 831
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # setter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnAnimation:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$1402(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Z)Z

    .line 832
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    # setter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$802(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Z)Z

    .line 833
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 826
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnAnimation:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->access$1402(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Z)Z

    .line 820
    return-void
.end method

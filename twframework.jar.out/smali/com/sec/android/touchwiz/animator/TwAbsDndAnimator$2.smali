.class Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwAbsDndAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->setDndMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

.field final synthetic val$fadeOut:Z


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;Z)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    iput-boolean p2, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$2;->val$fadeOut:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$2;->val$fadeOut:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->setDndModeInternal(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->access$200(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;Z)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    const/16 v1, 0xff

    iput v1, v0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragHandleAlpha:I

    .line 230
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 231
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 223
    return-void
.end method

.class Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwDndGridAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    if-eq v0, v1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mFirstDragPos:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget v2, v2, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->dropDone(II)V

    .line 381
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragPos:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->speakDragReleaseForAccessibility(I)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->removeAll()V

    .line 384
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->resetDndState()V

    .line 385
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    if-eqz v0, :cond_1

    .line 386
    const-string v0, "TwDndGridView"

    const-string v1, "dndListener.OnDragAndDropStop() from AnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStop()V

    .line 389
    :cond_1
    return-void
.end method

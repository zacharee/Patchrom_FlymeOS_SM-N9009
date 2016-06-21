.class Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwDndHorizontalListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget v0, v0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstDragPos:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragPos:I

    if-eq v0, v1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mFirstDragPos:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget v2, v2, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragPos:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->dropDone(II)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget v1, v1, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragPos:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->speakDragReleaseForAccessibility(I)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->removeAll()V

    .line 474
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->resetDndState()V

    .line 475
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    if-eqz v0, :cond_1

    .line 476
    const-string v0, "TwHorizontalDndListView"

    const-string v1, "dndListener.OnDragAndDropStop() from onAnimationEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;->onDragAndDropStop()V

    .line 479
    :cond_1
    return-void
.end method

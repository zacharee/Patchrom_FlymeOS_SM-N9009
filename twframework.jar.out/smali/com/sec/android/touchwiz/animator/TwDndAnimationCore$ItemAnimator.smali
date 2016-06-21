.class Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;
.super Ljava/lang/Object;
.source "TwDndAnimationCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemAnimator"
.end annotation


# instance fields
.field private mAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAnimating:Z

.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;)V
    .locals 1

    .prologue
    .line 288
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method getItemAnimation(I)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    return-object v0
.end method

.method putItemAnimation(ILcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "a"    # Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    return-void
.end method

.method removeAll()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 327
    return-void
.end method

.method removeItemAnimation(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 320
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 342
    .local v2, "curTime":J
    const/4 v0, 0x1

    .line 344
    .local v0, "allFinished":Z
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 345
    .local v7, "size":I
    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 346
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 347
    .local v6, "position":I
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;

    .line 348
    .local v5, "ia":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    if-nez v5, :cond_0

    .line 345
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {v5, v2, v3}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;->computeAnimation(J)V

    .line 350
    invoke-virtual {v5}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;->isFinished()Z

    move-result v1

    .line 351
    .local v1, "finished":Z
    and-int/2addr v0, v1

    goto :goto_1

    .line 354
    .end local v1    # "finished":Z
    .end local v5    # "ia":Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    .end local v6    # "position":I
    :cond_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->mView:Landroid/view/View;
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->access$000(Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 355
    if-nez v0, :cond_3

    .line 356
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->mView:Landroid/view/View;
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->access$000(Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 365
    :cond_2
    :goto_2
    return-void

    .line 358
    :cond_3
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->mIsAnimating:Z

    if-eqz v8, :cond_2

    .line 359
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->mIsAnimating:Z

    .line 361
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->mItemAnimationListener:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->access$100(Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 362
    iget-object v8, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->mItemAnimationListener:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;
    invoke-static {v8}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->access$100(Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;->onItemAnimatorEnd()V

    goto :goto_2
.end method

.method start()V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->mIsAnimating:Z

    .line 336
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->this$0:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->access$000(Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 337
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->run()V

    .line 338
    return-void
.end method

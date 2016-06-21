.class Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;
.super Ljava/lang/Object;
.source "TwDndHorizontalListAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 458
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 461
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mDragViewBitmapTranslateX:I

    .line 462
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    .line 463
    return-void
.end method

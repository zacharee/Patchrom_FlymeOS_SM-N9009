.class Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;
.super Ljava/lang/Object;
.source "TwDndGridAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$distX:I

.field final synthetic val$distY:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;II)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iput p2, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->val$distX:I

    iput p3, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->val$distY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->val$distX:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewBitmapTranslateX:I

    .line 371
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->val$distY:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mDragViewBitmapTranslateY:I

    .line 372
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;)Lcom/sec/android/touchwiz/widget/TwGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invalidate()V

    .line 373
    return-void
.end method

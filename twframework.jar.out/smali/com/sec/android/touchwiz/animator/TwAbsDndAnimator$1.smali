.class Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$1;
.super Ljava/lang/Object;
.source "TwAbsDndAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 207
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    iput-boolean p2, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$1;->val$fadeOut:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 210
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 211
    .local v0, "fraction":F
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$1;->val$fadeOut:Z

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragHandleAlpha:I

    .line 216
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->access$100(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 217
    return-void

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    mul-float v2, v3, v0

    float-to-int v2, v2

    iput v2, v1, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragHandleAlpha:I

    goto :goto_0
.end method

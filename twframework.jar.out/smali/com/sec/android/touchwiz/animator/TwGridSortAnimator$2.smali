.class Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwGridSortAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->sortTheGrid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$isLastChild:Z


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;ZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;

    iput-boolean p2, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$2;->val$isLastChild:Z

    iput-object p3, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$2;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$2;->val$child:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 119
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$2;->val$isLastChild:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mOnSortListener:Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$OnSortListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$OnSortListener;->onSort()V

    .line 121
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invalidate()V

    .line 123
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$2$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$2$1;-><init>(Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 132
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$2;->val$isLastChild:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$2;->this$0:Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setEnabled(Z)V

    .line 113
    :cond_0
    return-void
.end method

.class public Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;
.super Ljava/lang/Object;
.source "TwGridSortAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$OnSortListener;
    }
.end annotation


# static fields
.field private static DELAY_BETWEEN_ANIMATIONS:I

.field private static final FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static FADE_IN_TRANSLATE_ANIMATION_DURATION:I

.field private static FADE_OUT_ANIMATION_DURATION:I

.field private static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field final mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

.field mOnSortListener:Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$OnSortListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x96

    sput v0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->FADE_OUT_ANIMATION_DURATION:I

    .line 58
    const/16 v0, 0x190

    sput v0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->FADE_IN_TRANSLATE_ANIMATION_DURATION:I

    .line 59
    const/16 v0, 0x46

    sput v0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->DELAY_BETWEEN_ANIMATIONS:I

    .line 61
    new-instance v0, Landroid/view/animation/interpolator/QuintOut80;

    invoke-direct {v0}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 62
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwGridView;Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$OnSortListener;)V
    .locals 2
    .param p1, "list"    # Lcom/sec/android/touchwiz/widget/TwGridView;
    .param p2, "onSortListener"    # Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$OnSortListener;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constructor arguments should be non-null references."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    .line 73
    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mOnSortListener:Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$OnSortListener;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->startFadeInTranslateAnim()V

    return-void
.end method

.method private startFadeInTranslateAnim()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 139
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v1

    .line 140
    .local v1, "childCount":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->getNumColumns()I

    move-result v3

    .line 141
    .local v3, "columnCount":I
    const/4 v2, 0x0

    .line 142
    .local v2, "childHeight":I
    if-lez v1, :cond_0

    .line 143
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 145
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 146
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v6, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, "child":Landroid/view/View;
    rem-int v4, v5, v3

    .line 148
    .local v4, "columnIndex":I
    int-to-float v6, v2

    neg-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 149
    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget v7, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->FADE_IN_TRANSLATE_ANIMATION_DURATION:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget v7, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->DELAY_BETWEEN_ANIMATIONS:I

    mul-int/2addr v7, v4

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v7, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 158
    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_1

    .line 159
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$3;

    invoke-direct {v7, p0}, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$3;-><init>(Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 145
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "columnIndex":I
    :cond_2
    if-nez v1, :cond_3

    .line 169
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v6, v11}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 171
    :cond_3
    return-void
.end method


# virtual methods
.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 186
    return-void
.end method

.method public sortTheGrid()V
    .locals 8

    .prologue
    .line 80
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v1

    .line 82
    .local v1, "childCount":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 84
    :cond_0
    if-nez v1, :cond_2

    .line 87
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mOnSortListener:Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$OnSortListener;

    invoke-interface {v4}, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$OnSortListener;->onSort()V

    .line 88
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->invalidate()V

    .line 90
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$1;

    invoke-direct {v5, p0}, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$1;-><init>(Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 136
    :cond_1
    return-void

    .line 102
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 103
    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_3

    const/4 v3, 0x1

    .line 104
    .local v3, "isLastChild":Z
    :goto_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget v5, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->FADE_OUT_ANIMATION_DURATION:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$2;

    invoke-direct {v5, p0, v3, v0}, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$2;-><init>(Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;ZLandroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "isLastChild":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

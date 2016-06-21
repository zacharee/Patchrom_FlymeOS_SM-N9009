.class public Lcom/sec/android/touchwiz/animator/TwListSortAnimator;
.super Ljava/lang/Object;
.source "TwListSortAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/animator/TwListSortAnimator$OnSortListener;
    }
.end annotation


# static fields
.field private static final ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static DELAY_BETWEEN_ANIMATIONS:I

.field private static FADE_IN_TRANSLATE_ANIMATION_DURATION:I

.field private static FADE_OUT_ANIMATION_DURATION:I


# instance fields
.field mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field final mListView:Lcom/sec/android/touchwiz/widget/TwListView;

.field mOnSortListener:Lcom/sec/android/touchwiz/animator/TwListSortAnimator$OnSortListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x96

    sput v0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->FADE_OUT_ANIMATION_DURATION:I

    .line 58
    const/16 v0, 0x12c

    sput v0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->FADE_IN_TRANSLATE_ANIMATION_DURATION:I

    .line 59
    const/16 v0, 0x64

    sput v0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->DELAY_BETWEEN_ANIMATIONS:I

    .line 61
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 62
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwListView;Lcom/sec/android/touchwiz/animator/TwListSortAnimator$OnSortListener;)V
    .locals 2
    .param p1, "list"    # Lcom/sec/android/touchwiz/widget/TwListView;
    .param p2, "onSortListener"    # Lcom/sec/android/touchwiz/animator/TwListSortAnimator$OnSortListener;

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
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    .line 73
    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mOnSortListener:Lcom/sec/android/touchwiz/animator/TwListSortAnimator$OnSortListener;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/animator/TwListSortAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwListSortAnimator;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->startFadeInTranslateAnim()V

    return-void
.end method

.method private startFadeInTranslateAnim()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 138
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v1

    .line 139
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 140
    .local v2, "childHeight":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v4

    if-le v1, v4, :cond_0

    .line 141
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 143
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 144
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4, v3}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, "child":Landroid/view/View;
    int-to-float v4, v2

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 146
    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    .line 147
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget v5, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->FADE_IN_TRANSLATE_ANIMATION_DURATION:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget v5, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->DELAY_BETWEEN_ANIMATIONS:I

    mul-int/2addr v5, v3

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 155
    add-int/lit8 v4, v1, -0x1

    if-ne v3, v4, :cond_1

    .line 156
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/sec/android/touchwiz/animator/TwListSortAnimator$3;

    invoke-direct {v5, p0}, Lcom/sec/android/touchwiz/animator/TwListSortAnimator$3;-><init>(Lcom/sec/android/touchwiz/animator/TwListSortAnimator;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 143
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    if-nez v1, :cond_3

    .line 166
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, v9}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 168
    :cond_3
    return-void
.end method


# virtual methods
.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 183
    return-void
.end method

.method public sortTheList()V
    .locals 8

    .prologue
    .line 80
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v1

    .line 82
    .local v1, "childCount":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 84
    :cond_0
    if-nez v1, :cond_2

    .line 86
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mOnSortListener:Lcom/sec/android/touchwiz/animator/TwListSortAnimator$OnSortListener;

    invoke-interface {v4}, Lcom/sec/android/touchwiz/animator/TwListSortAnimator$OnSortListener;->onSort()V

    .line 87
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->invalidate()V

    .line 89
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/sec/android/touchwiz/animator/TwListSortAnimator$1;

    invoke-direct {v5, p0}, Lcom/sec/android/touchwiz/animator/TwListSortAnimator$1;-><init>(Lcom/sec/android/touchwiz/animator/TwListSortAnimator;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 135
    :cond_1
    return-void

    .line 101
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 102
    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_3

    const/4 v3, 0x1

    .line 103
    .local v3, "isLastChild":Z
    :goto_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget v5, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->FADE_OUT_ANIMATION_DURATION:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/sec/android/touchwiz/animator/TwListSortAnimator;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/sec/android/touchwiz/animator/TwListSortAnimator$2;

    invoke-direct {v5, p0, v3, v0}, Lcom/sec/android/touchwiz/animator/TwListSortAnimator$2;-><init>(Lcom/sec/android/touchwiz/animator/TwListSortAnimator;ZLandroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "isLastChild":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

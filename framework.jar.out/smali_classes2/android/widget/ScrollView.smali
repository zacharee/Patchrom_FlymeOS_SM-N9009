.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$HoverScrollHandler;,
        Landroid/widget/ScrollView$FlymeInjector;,
        Landroid/widget/ScrollView$MzDelaySpringBack;,
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_SPEED_FASTER:F = 30.0f

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field private static final MSG_HOVERSCROLL_MOVE_FASTER:I = 0x2

.field private static final MSG_HOVERSCROLL_MOVE_TO_END:I = 0x3

.field private static final MSG_QC_HIDE:I = 0x0

.field private static final QC_BOTTOM:I = 0x4

.field private static final QC_LEFT:I = 0x1

.field private static final QC_RIGHT:I = 0x3

.field private static final QC_STATE_NONE:I = 0x0

.field private static final QC_STATE_PRESSED:I = 0x2

.field private static final QC_STATE_SHOWN:I = 0x1

.field private static final QC_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ScrollView"

.field private static final THRESHOLD_RATIO_Y:I = 0x50


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private QC_ICON_HIDE_DELAY:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field mCurrentOverScrollDistance:I

.field mDelaySpringBack:Ljava/lang/Runnable;

.field mDelaySpringBackEnabled:Z

.field mFling:Z

.field mHoldDistance:I

.field mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

.field mHoldIndicatorOffset:I

.field mIsListAtWindowTop:Z

.field mListWindowTop:I

.field mRestoreOffset:I

.field protected mShouldDelaySpringBack:Z

.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mHapticNewScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mIgnoreDelaychildPrerssed:Z

.field private mIsBeingDragged:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mIsQCShown:Z

.field private mLastHapticScrollY:I

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedsHoverScroll:Z

.field private mNestedYOffset:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field protected mPixelThresholdY:I

.field private mPreviousTextViewScroll:Z

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCLocation:I

.field private mQCRect:Landroid/graphics/Rect;

.field private mQCstate:I

.field private mSavedState:Landroid/widget/ScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 313
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, #android:attr@scrollViewStyle#t

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v5, -0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 324
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 108
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 113
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 124
    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 131
    iput-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 138
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 155
    iput-boolean v8, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 168
    iput v5, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 182
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mHapticNewScroll:Z

    .line 188
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollOffset:[I

    .line 189
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    .line 198
    iput-object v3, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 199
    iput-object v3, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 221
    iput v4, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    .line 223
    iput v4, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    .line 229
    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    .line 231
    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    .line 233
    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 235
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    .line 237
    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 239
    iput v5, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 244
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 246
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    .line 248
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    .line 260
    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    .line 265
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 270
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    .line 280
    const/16 v1, 0xf

    iput v1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    .line 282
    const/16 v1, 0x1e

    iput v1, p0, Landroid/widget/ScrollView;->QC_ICON_HIDE_DELAY:I

    .line 284
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 2629
    iput v4, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 2806
    iput v5, p0, Landroid/widget/ScrollView;->mQCLocation:I

    .line 2807
    iput v4, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 2808
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    .line 325
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    .line 327
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 330
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 332
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 333
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ScrollView;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 435
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 436
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 438
    .local v1, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 440
    .end local v1    # "childHeight":I
    :cond_0
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    .line 2523
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    .line 2539
    :cond_0
    const/4 p0, 0x0

    .line 2549
    .end local p0    # "n":I
    :cond_1
    :goto_0
    return p0

    .line 2541
    .restart local p0    # "n":I
    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 2547
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private doScrollToBottomEnd()V
    .locals 1

    .prologue
    .line 2927
    invoke-virtual {p0}, Landroid/widget/ScrollView;->computeVerticalScrollRange()I

    move-result v0

    .line 2928
    .local v0, "scrollRange":I
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 2929
    return-void
.end method

.method private doScrollToTopEnd()V
    .locals 2

    .prologue
    .line 2922
    invoke-virtual {p0}, Landroid/widget/ScrollView;->computeVerticalScrollOffset()I

    move-result v0

    .line 2923
    .local v0, "scrollOffset":I
    neg-int v1, v0

    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 2924
    return-void
.end method

.method private doScrollY(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1856
    if-eqz p1, :cond_0

    .line 1857
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1858
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1863
    :cond_0
    :goto_0
    return-void

    .line 1860
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2902
    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-ne v2, v5, :cond_3

    .line 2903
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2904
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2905
    .local v0, "restoreCount":I
    const/4 v2, 0x0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2907
    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-ne v2, v4, :cond_2

    .line 2908
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2913
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2915
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    .line 2919
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :goto_1
    return-void

    .line 2909
    .restart local v0    # "restoreCount":I
    .restart local v1    # "scrollY":I
    :cond_2
    iget v2, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-ne v2, v5, :cond_1

    .line 2910
    iget-object v2, p0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2917
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    goto :goto_1
.end method

.method private endDrag()V
    .locals 1

    .prologue
    .line 2382
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 2384
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 2386
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 2387
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2388
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2391
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 2392
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2393
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2395
    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1602
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1603
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1612
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 1614
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1615
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1616
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1617
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1618
    .local v9, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1620
    .local v6, "viewBottom":I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 1626
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 1629
    .local v8, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_2

    .line 1631
    move-object v1, v5

    .line 1632
    move v3, v8

    .line 1615
    .end local v8    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1626
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 1634
    .restart local v8    # "viewIsFullyContained":Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 1639
    .local v7, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1640
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1646
    move-object v1, v5

    goto :goto_2

    .line 1634
    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 1649
    .restart local v7    # "viewIsCloserToBoundary":Z
    :cond_6
    if-eqz v8, :cond_7

    .line 1651
    move-object v1, v5

    .line 1652
    const/4 v3, 0x1

    goto :goto_2

    .line 1653
    :cond_7
    if-eqz v7, :cond_0

    .line 1658
    move-object v1, v5

    goto :goto_2

    .line 1665
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewBottom":I
    .end local v7    # "viewIsCloserToBoundary":Z
    .end local v8    # "viewIsFullyContained":Z
    .end local v9    # "viewTop":I
    :cond_8
    return-object v1
.end method

.method private flingWithNestedDispatch(I)V
    .locals 4
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 2371
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v1, :cond_0

    if-lez p1, :cond_3

    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v2

    if-lt v1, v2, :cond_1

    if-gez p1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 2373
    .local v0, "canFling":Z
    :goto_0
    int-to-float v1, p1

    invoke-virtual {p0, v3, v1}, Landroid/widget/ScrollView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2374
    int-to-float v1, p1

    invoke-virtual {p0, v3, v1, v0}, Landroid/widget/ScrollView;->dispatchNestedFling(FFZ)Z

    .line 2375
    if-eqz v0, :cond_2

    .line 2376
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 2379
    :cond_2
    return-void

    .line 2371
    .end local v0    # "canFling":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1576
    const/4 v1, 0x0

    .line 1577
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1578
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1579
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1582
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2648
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 2778
    :cond_0
    :goto_0
    return-void

    .line 2650
    :pswitch_0
    const/4 v6, 0x0

    iput v6, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 2651
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 2654
    :pswitch_1
    const/4 v2, 0x0

    .line 2655
    .local v2, "offset":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v4

    .line 2657
    .local v4, "range":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    .line 2658
    iget-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iput-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    .line 2660
    iget-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:J

    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollTimeInterval:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 2663
    const/4 v6, 0x1

    iget v7, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    iget-object v8, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 2666
    iget-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v8, 0x2

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    iget-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v8, 0x4

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 2667
    iget v6, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    int-to-double v8, v7

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    double-to-int v7, v8

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 2674
    :cond_1
    :goto_1
    iget v6, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 2675
    iget v6, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v2, v6, -0x1

    .line 2684
    :goto_2
    if-gez v2, :cond_5

    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v6, :cond_5

    .line 2686
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2687
    iget-object v6, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v7, 0x1

    iget v8, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2668
    :cond_2
    iget-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v8, 0x4

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    iget-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v8, 0x5

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 2669
    iget v6, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    int-to-double v8, v7

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v8, v10

    double-to-int v7, v8

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_1

    .line 2670
    :cond_3
    iget-wide v6, p0, Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:J

    const-wide/16 v8, 0x5

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 2671
    iget v6, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    iget v7, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    int-to-double v8, v7

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v8, v10

    double-to-int v7, v8

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_1

    .line 2677
    :cond_4
    iget v6, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    mul-int/lit8 v2, v6, 0x1

    goto :goto_2

    .line 2688
    :cond_5
    if-lez v2, :cond_6

    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v6, v4, :cond_6

    .line 2690
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2691
    iget-object v6, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v7, 0x1

    iget v8, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2694
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v3

    .line 2695
    .local v3, "overscrollMode":I
    if-eqz v3, :cond_7

    const/4 v6, 0x1

    if-ne v3, v6, :cond_c

    if-lez v4, :cond_c

    :cond_7
    const/4 v0, 0x1

    .line 2698
    .local v0, "canOverscroll":Z
    :goto_3
    if-eqz v0, :cond_b

    iget-boolean v6, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v6, :cond_b

    .line 2699
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_8

    .line 2700
    iget v6, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_d

    .line 2701
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2702
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_8

    .line 2703
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2712
    :cond_8
    :goto_4
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_a

    .line 2713
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 2715
    :cond_a
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 2718
    :cond_b
    if-nez v0, :cond_0

    iget-boolean v6, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v6, :cond_0

    .line 2719
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 2695
    .end local v0    # "canOverscroll":Z
    :cond_c
    const/4 v0, 0x0

    goto :goto_3

    .line 2705
    .restart local v0    # "canOverscroll":Z
    :cond_d
    iget v6, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 2706
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2707
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_8

    .line 2708
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_4

    .line 2725
    .end local v0    # "canOverscroll":Z
    .end local v2    # "offset":I
    .end local v3    # "overscrollMode":I
    .end local v4    # "range":I
    :pswitch_2
    const/4 v6, 0x1

    const/high16 v7, 0x41f00000    # 30.0f

    iget-object v8, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    .line 2728
    iget v6, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_10

    iget v6, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    neg-int v1, v6

    .line 2729
    .local v1, "distanceToMove":I
    :goto_5
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    .line 2731
    .local v5, "scrollaleRange":I
    if-gez v1, :cond_e

    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v6, :cond_f

    :cond_e
    if-lez v1, :cond_11

    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v6, v5, :cond_11

    .line 2733
    :cond_f
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 2734
    iget-object v6, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v7, 0x2

    iget v8, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2728
    .end local v1    # "distanceToMove":I
    .end local v5    # "scrollaleRange":I
    :cond_10
    iget v1, p0, Landroid/widget/ScrollView;->mHoverScrollSpeed:I

    goto :goto_5

    .line 2737
    .restart local v1    # "distanceToMove":I
    .restart local v5    # "scrollaleRange":I
    :cond_11
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v3

    .line 2738
    .restart local v3    # "overscrollMode":I
    if-eqz v3, :cond_12

    const/4 v6, 0x1

    if-ne v3, v6, :cond_17

    if-lez v5, :cond_17

    :cond_12
    const/4 v0, 0x1

    .line 2741
    .restart local v0    # "canOverscroll":Z
    :goto_6
    if-eqz v0, :cond_16

    iget-boolean v6, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v6, :cond_16

    .line 2742
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_13

    .line 2743
    iget v6, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_18

    .line 2744
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2745
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_13

    .line 2746
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2755
    :cond_13
    :goto_7
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_15

    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_15

    .line 2756
    :cond_14
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 2758
    :cond_15
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 2761
    :cond_16
    if-nez v0, :cond_0

    iget-boolean v6, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v6, :cond_0

    .line 2762
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 2738
    .end local v0    # "canOverscroll":Z
    :cond_17
    const/4 v0, 0x0

    goto :goto_6

    .line 2748
    .restart local v0    # "canOverscroll":Z
    :cond_18
    iget v6, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_13

    .line 2749
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2750
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_13

    .line 2751
    iget-object v6, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_7

    .line 2768
    .end local v0    # "canOverscroll":Z
    .end local v1    # "distanceToMove":I
    .end local v3    # "overscrollMode":I
    .end local v5    # "scrollaleRange":I
    :pswitch_3
    iget v6, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_19

    .line 2769
    invoke-direct {p0}, Landroid/widget/ScrollView;->doScrollToTopEnd()V

    goto/16 :goto_0

    .line 2770
    :cond_19
    iget v6, p0, Landroid/widget/ScrollView;->mQCLocation:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 2771
    invoke-direct {p0}, Landroid/widget/ScrollView;->doScrollToBottomEnd()V

    goto/16 :goto_0

    .line 2648
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 753
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 754
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 755
    .local v1, "scrollY":I
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 756
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 761
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollY":I
    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 766
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 770
    :goto_0
    return-void

    .line 768
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 383
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 384
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 385
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 386
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    .line 387
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 388
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    invoke-static/range {p0 .. p0}, Landroid/widget/ScrollView$FlymeInjector;->initFlymeExtFields(Landroid/widget/ScrollView;)V

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 774
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 776
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1835
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isQCSupported()Z
    .locals 2

    .prologue
    .line 2811
    sget v0, Landroid/widget/ScrollView;->sSpenUspLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 2812
    const/4 v0, 0x1

    .line 2814
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 2339
    if-ne p0, p1, :cond_1

    .line 2344
    :cond_0
    :goto_0
    return v1

    .line 2343
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2344
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .prologue
    .line 1843
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1844
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1846
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1401
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1402
    .local v1, "pointerId":I
    iget v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1406
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1407
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1408
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1409
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1410
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1413
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1406
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 781
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 783
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1748
    const/4 v3, 0x1

    .line 1750
    .local v3, "handled":Z
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 1751
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 1752
    .local v1, "containerTop":I
    add-int v0, v1, v4

    .line 1753
    .local v0, "containerBottom":I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    .line 1755
    .local v6, "up":Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1756
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    .line 1757
    move-object v5, p0

    .line 1760
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1761
    const/4 v3, 0x0

    .line 1767
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1769
    :cond_1
    return v3

    .line 1753
    .end local v5    # "newFocused":Landroid/view/View;
    .end local v6    # "up":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1763
    .restart local v5    # "newFocused":Landroid/view/View;
    .restart local v6    # "up":Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1764
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1763
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2084
    if-eqz p1, :cond_0

    .line 2085
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2088
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2090
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 2092
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    .line 2093
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2096
    .end local v0    # "scrollDelta":I
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2107
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 2108
    .local v0, "delta":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 2109
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 2110
    if-eqz p2, :cond_2

    .line 2111
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2116
    :cond_0
    :goto_1
    return v1

    .end local v1    # "scroll":Z
    :cond_1
    move v1, v2

    .line 2108
    goto :goto_0

    .line 2113
    .restart local v1    # "scroll":Z
    :cond_2
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method

.method private setupQuickController(I)V
    .locals 19
    .param p1, "where"    # I

    .prologue
    .line 2818
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v13

    .line 2819
    .local v13, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    .line 2820
    .local v9, "h":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v14, v13, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v7, v14, v15

    .line 2821
    .local v7, "contentW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    div-int/lit8 v15, v7, 0x2

    add-int v5, v14, v15

    .line 2823
    .local v5, "centerX":I
    const/4 v4, 0x0

    .line 2824
    .local v4, "btnW":I
    const/4 v3, 0x0

    .line 2826
    .local v3, "btnH":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/ScrollView;->mQCLocation:I

    .line 2827
    .local v11, "oldLocation":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mQCLocation:I

    .line 2829
    const/4 v6, 0x1

    .line 2830
    .local v6, "checkBoundary":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 2831
    .local v2, "basePkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v14, "cocktailbarservice"

    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2834
    const/4 v6, 0x0

    .line 2839
    :cond_0
    if-eqz v6, :cond_2

    .line 2840
    const/4 v14, 0x2

    new-array v10, v14, [I

    fill-array-data v10, :array_0

    .line 2841
    .local v10, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 2842
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 2845
    .local v8, "dm":Landroid/util/DisplayMetrics;
    const/4 v14, 0x0

    aget v14, v10, v14

    if-gez v14, :cond_1

    .line 2846
    const/4 v14, 0x0

    aget v14, v10, v14

    neg-int v12, v14

    .line 2847
    .local v12, "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    if-le v12, v14, :cond_1

    .line 2848
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int v14, v12, v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v5, v14

    .line 2853
    .end local v12    # "overlappedW":I
    :cond_1
    const/4 v14, 0x0

    aget v14, v10, v14

    add-int/2addr v14, v13

    iget v15, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v14, v15, :cond_2

    .line 2854
    const/4 v14, 0x0

    aget v14, v10, v14

    add-int/2addr v14, v13

    iget v15, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v12, v14, v15

    .line 2855
    .restart local v12    # "overlappedW":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    if-le v12, v14, :cond_2

    .line 2856
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v14, v12, v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v5, v14

    .line 2861
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    .end local v10    # "locOnScr":[I
    .end local v12    # "overlappedW":I
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 2897
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2898
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2899
    return-void

    .line 2863
    :pswitch_0
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 2867
    :pswitch_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mQCLocation:I

    if-eq v14, v11, :cond_3

    .line 2868
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, #android:drawable@list_menu_controller_up#t

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 2869
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, #android:drawable@list_menu_controller_up_pressed#t

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 2872
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 2873
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 2874
    new-instance v14, Landroid/graphics/Rect;

    div-int/lit8 v15, v4, 0x2

    sub-int v15, v5, v15

    const/16 v16, 0x0

    div-int/lit8 v17, v4, 0x2

    add-int v17, v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v15, v0, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 2878
    :pswitch_2
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 2882
    :pswitch_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mQCLocation:I

    if-eq v14, v11, :cond_4

    .line 2883
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, #android:drawable@list_menu_controller_down#t

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 2884
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, #android:drawable@list_menu_controller_down_pressed#t

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 2887
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 2888
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 2889
    new-instance v14, Landroid/graphics/Rect;

    div-int/lit8 v15, v4, 0x2

    sub-int v15, v5, v15

    sub-int v16, v9, v3

    div-int/lit8 v17, v4, 0x2

    add-int v17, v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v15, v0, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 2840
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 2861
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPointerIcon(I)Z
    .locals 4
    .param p1, "iconId"    # I

    .prologue
    .line 2782
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p1, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2784
    const/4 v1, 0x1

    .line 2787
    :goto_0
    return v1

    .line 2785
    :catch_0
    move-exception v0

    .line 2786
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change PointerIcon to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 397
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 402
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 406
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 407
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 411
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 424
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 425
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 429
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 415
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 416
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 1781
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1782
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1784
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1786
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1788
    .local v3, "maxJump":I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1789
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1790
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1791
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1792
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1793
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1815
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1822
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1823
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1824
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 1825
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1827
    .end local v2    # "descendantFocusability":I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1796
    .end local v6    # "scrollDelta":I
    :cond_3
    move v6, v3

    .line 1798
    .restart local v6    # "scrollDelta":I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1799
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    .line 1809
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1812
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_0

    .line 1800
    :cond_5
    if-ne p1, v10, :cond_4

    .line 1801
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1802
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1803
    .local v1, "daBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v5, v8, v9

    .line 1804
    .local v5, "screenBottom":I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1805
    sub-int v6, v1, v5

    goto :goto_1

    .line 1812
    .end local v1    # "daBottom":I
    .end local v5    # "screenBottom":I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 2023
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2040
    iget v3, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 2041
    .local v3, "oldX":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2042
    .local v4, "oldY":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 2043
    .local v12, "x":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 2045
    .local v13, "y":I
    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_2

    .line 2046
    :cond_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 2047
    .local v6, "range":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v11

    .line 2048
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_1

    if-ne v11, v10, :cond_4

    if-lez v6, :cond_4

    .line 2051
    .local v10, "canOverscroll":Z
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/widget/ScrollView$FlymeInjector;->mzComputeScroll1(Landroid/widget/ScrollView;)V

    sub-int v1, v12, v3

    sub-int v2, v13, v4

    iget v8, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    invoke-static/range {p0 .. p0}, Landroid/widget/ScrollView$FlymeInjector;->mzComputeScroll2(Landroid/widget/ScrollView;)V

    if-eqz v10, :cond_2

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    if-gez v13, :cond_5

    if-ltz v4, :cond_5

    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2066
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2068
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2076
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_3
    :goto_2
    return-void

    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v6    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_4
    move v10, v5

    .line 2048
    goto :goto_0

    .line 2059
    .restart local v10    # "canOverscroll":Z
    :cond_5
    if-le v13, v6, :cond_2

    if-gt v4, v6, :cond_2

    .line 2060
    iget-object v0, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .line 2071
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_6
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_3

    .line 2072
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2073
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_2
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 2128
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 2182
    :cond_0
    :goto_0
    return v6

    .line 2130
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    .line 2131
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    .line 2132
    .local v5, "screenTop":I
    add-int v4, v5, v3

    .line 2134
    .local v4, "screenBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 2137
    .local v2, "fadingEdge":I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 2138
    add-int/2addr v5, v2

    .line 2142
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 2143
    sub-int/2addr v4, v2

    .line 2146
    :cond_3
    const/4 v6, 0x0

    .line 2148
    .local v6, "scrollYDelta":I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    .line 2153
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 2155
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 2162
    :goto_1
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2163
    .local v0, "bottom":I
    sub-int v1, v0, v4

    .line 2164
    .local v1, "distanceToBottom":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2166
    goto :goto_0

    .line 2158
    .end local v0    # "bottom":I
    .end local v1    # "distanceToBottom":I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 2166
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 2171
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 2173
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 2180
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 2176
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1988
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1968
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 1969
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 1970
    .local v0, "contentHeight":I
    if-nez v1, :cond_0

    .line 1983
    .end local v0    # "contentHeight":I
    :goto_0
    return v0

    .line 1974
    .restart local v0    # "contentHeight":I
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1975
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1976
    .local v4, "scrollY":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1977
    .local v2, "overscrollBottom":I
    if-gez v4, :cond_2

    .line 1978
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 1983
    goto :goto_0

    .line 1979
    :cond_2
    if-le v4, v2, :cond_1

    .line 1980
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 980
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 983
    .local v2, "action":I
    const/16 v14, 0x9

    if-ne v2, v14, :cond_5

    .line 984
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    .line 986
    .local v11, "toolType":I
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 989
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->isHoveringUIEnabled()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    if-nez v14, :cond_1

    .line 990
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 994
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-eqz v14, :cond_3

    const/4 v14, 0x2

    if-ne v11, v14, :cond_3

    .line 996
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "pen_hovering"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    const/4 v6, 0x1

    .line 998
    .local v6, "isHoveringOn":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "pen_hovering_list_scroll"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    const/4 v5, 0x1

    .line 1001
    .local v5, "isHoverListScrollOn":Z
    :goto_1
    if-eqz v6, :cond_2

    if-nez v5, :cond_3

    .line 1002
    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 1007
    .end local v5    # "isHoverListScrollOn":Z
    .end local v6    # "isHoveringOn":Z
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-eqz v14, :cond_5

    const/4 v14, 0x3

    if-ne v11, v14, :cond_5

    .line 1008
    const/4 v8, 0x0

    .line 1009
    .local v8, "isMouseHoveringOn":Z
    const/4 v7, 0x0

    .line 1011
    .local v7, "isMouseHoverListScrollOn":Z
    if-eqz v8, :cond_4

    if-nez v7, :cond_5

    .line 1012
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    .line 1018
    .end local v7    # "isMouseHoverListScrollOn":Z
    .end local v8    # "isMouseHoveringOn":Z
    .end local v11    # "toolType":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mNeedsHoverScroll:Z

    if-nez v14, :cond_8

    .line 1019
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 1199
    :goto_2
    return v14

    .line 996
    .restart local v11    # "toolType":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_0

    .line 998
    .restart local v6    # "isHoveringOn":Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 1023
    .end local v6    # "isHoveringOn":Z
    .end local v11    # "toolType":I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 1024
    .local v12, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 1025
    .local v13, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    .line 1026
    .local v3, "childCount":I
    const/4 v4, 0x0

    .line 1027
    .local v4, "contentBottom":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v10

    .line 1030
    .local v10, "range":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v14, :cond_9

    .line 1031
    new-instance v14, Landroid/widget/ScrollView$HoverScrollHandler;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    .line 1034
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-lez v14, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    if-gtz v14, :cond_b

    .line 1035
    :cond_a
    const/4 v14, 0x1

    const/high16 v15, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    .line 1039
    const/4 v14, 0x1

    const/high16 v15, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    .line 1044
    :cond_b
    if-eqz v3, :cond_c

    .line 1045
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 1048
    :cond_c
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1a

    const/4 v9, 0x1

    .line 1050
    .local v9, "isPossibleTooltype":Z
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v13, v14, :cond_d

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v14, v4, v14

    if-lt v13, v14, :cond_11

    :cond_d
    if-lez v12, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v14

    if-gt v12, v14, :cond_11

    if-eqz v10, :cond_11

    if-ltz v13, :cond_e

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v13, v14, :cond_e

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mScrollY:I

    if-gtz v14, :cond_e

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v14, :cond_11

    :cond_e
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v14, v4, v14

    if-lt v13, v14, :cond_f

    if-gt v13, v4, :cond_f

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mScrollY:I

    if-lt v14, v10, :cond_f

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-nez v14, :cond_11

    :cond_f
    if-eqz v9, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_11

    :cond_10
    if-eqz v9, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->isLockScreenMode()Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 1056
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 1057
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1058
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    .line 1061
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 1062
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1065
    :cond_13
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v13, v14, :cond_14

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v14, v4, v14

    if-lt v13, v14, :cond_15

    :cond_14
    if-lez v12, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v14

    if-le v12, v14, :cond_16

    .line 1066
    :cond_15
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 1069
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_17

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_18

    .line 1070
    :cond_17
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    .line 1072
    :cond_18
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1073
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 1074
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1077
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mQCstate:I

    if-eqz v14, :cond_19

    .line 1078
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/ScrollView;->mQCstate:I

    .line 1079
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1082
    :cond_19
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    goto/16 :goto_2

    .line 1048
    .end local v9    # "isPossibleTooltype":Z
    :cond_1a
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1085
    .restart local v9    # "isPossibleTooltype":Z
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v14, :cond_1c

    .line 1086
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 1088
    :cond_1c
    packed-switch v2, :pswitch_data_0

    .line 1199
    :cond_1d
    :goto_4
    :pswitch_0
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 1090
    :pswitch_1
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1092
    if-ltz v13, :cond_1e

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v13, v14, :cond_1e

    .line 1094
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_1d

    .line 1095
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1097
    const/16 v14, 0xb

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    .line 1099
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1100
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1103
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->isQCSupported()Z

    move-result v14

    if-eqz v14, :cond_1d

    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 1104
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/ScrollView;->setupQuickController(I)V

    .line 1105
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/ScrollView;->mQCstate:I

    goto :goto_4

    .line 1108
    :cond_1e
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v14, v4, v14

    if-lt v13, v14, :cond_1d

    if-gt v13, v4, :cond_1d

    .line 1110
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_1d

    .line 1111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1113
    const/16 v14, 0xf

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    .line 1115
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1116
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1119
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->isQCSupported()Z

    move-result v14

    if-eqz v14, :cond_1d

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 1120
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/ScrollView;->setupQuickController(I)V

    .line 1121
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/ScrollView;->mQCstate:I

    goto/16 :goto_4

    .line 1129
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v14, :cond_1f

    .line 1130
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1131
    const/16 v14, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1132
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    goto/16 :goto_2

    .line 1135
    :cond_1f
    if-ltz v13, :cond_22

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v13, v14, :cond_22

    .line 1137
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_1d

    .line 1138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1140
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v14, :cond_20

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_21

    .line 1141
    :cond_20
    const/16 v14, 0xb

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    .line 1144
    :cond_21
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1145
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1148
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->isQCSupported()Z

    move-result v14

    if-eqz v14, :cond_1d

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mQCstate:I

    if-nez v14, :cond_1d

    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 1149
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/ScrollView;->setupQuickController(I)V

    .line 1150
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/ScrollView;->mQCstate:I

    goto/16 :goto_4

    .line 1153
    :cond_22
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v14, v4, v14

    if-lt v13, v14, :cond_1d

    if-gt v13, v4, :cond_1d

    .line 1155
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v14

    if-nez v14, :cond_1d

    .line 1156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1158
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_24

    .line 1159
    :cond_23
    const/16 v14, 0xf

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    .line 1162
    :cond_24
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 1163
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 1166
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->isQCSupported()Z

    move-result v14

    if-eqz v14, :cond_1d

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mQCstate:I

    if-nez v14, :cond_1d

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 1167
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/ScrollView;->setupQuickController(I)V

    .line 1168
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/ScrollView;->mQCstate:I

    goto/16 :goto_4

    .line 1176
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_25

    .line 1177
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 1180
    :cond_25
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/ScrollView;->showPointerIcon(I)Z

    .line 1182
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 1183
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 1184
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 1185
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 1188
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_26

    .line 1191
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->QC_ICON_HIDE_DELAY:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1194
    :cond_26
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    goto/16 :goto_2

    .line 1088
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 519
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 526
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 527
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 528
    .local v7, "y":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 529
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 530
    .local v2, "contentBottom":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    .line 531
    .local v5, "range":I
    const/4 v4, 0x0

    .line 532
    .local v4, "needToScroll":Z
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v4

    .line 535
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    if-nez v8, :cond_0

    .line 536
    new-instance v8, Landroid/widget/ScrollView$HoverScrollHandler;

    invoke-direct {v8, p0}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    iput-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    .line 539
    :cond_0
    iget v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-lez v8, :cond_1

    iget v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    if-gtz v8, :cond_2

    .line 540
    :cond_1
    const/4 v8, 0x1

    const/high16 v9, 0x41c80000    # 25.0f

    iget-object v10, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    .line 544
    const/4 v8, 0x1

    const/high16 v9, 0x41c80000    # 25.0f

    iget-object v10, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    .line 549
    :cond_2
    if-eqz v1, :cond_3

    .line 550
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 553
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    const/4 v3, 0x1

    .line 555
    .local v3, "isPossibleTooltype":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 558
    .local v0, "action":I
    if-nez v0, :cond_c

    .line 559
    iget v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 560
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mIsQCShown:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/widget/ScrollView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 561
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 562
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 564
    :cond_4
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 565
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 568
    :cond_5
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 570
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 571
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 572
    const/4 v8, 0x1

    .line 691
    :goto_1
    return v8

    .line 553
    .end local v0    # "action":I
    .end local v3    # "isPossibleTooltype":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .line 575
    .restart local v0    # "action":I
    .restart local v3    # "isPossibleTooltype":Z
    :cond_7
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 603
    :cond_8
    iget v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-le v7, v8, :cond_9

    iget v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v8, v2, v8

    if-lt v7, v8, :cond_a

    :cond_9
    if-lez v6, :cond_a

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getRight()I

    move-result v8

    if-gt v6, v8, :cond_a

    if-eqz v5, :cond_a

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_11

    .line 606
    :cond_a
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 607
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 610
    :cond_b
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 611
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 612
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 613
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 615
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_1

    .line 578
    :cond_c
    const/4 v8, 0x2

    if-ne v0, v8, :cond_d

    .line 579
    iget v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    .line 581
    const/4 v8, 0x1

    goto :goto_1

    .line 583
    :cond_d
    const/4 v8, 0x1

    if-eq v0, v8, :cond_e

    const/4 v8, 0x3

    if-ne v0, v8, :cond_8

    .line 584
    :cond_e
    iget v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    .line 586
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 587
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 590
    :cond_f
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 591
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 594
    :cond_10
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 597
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 598
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 599
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 618
    :cond_11
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v8, :cond_12

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 621
    :cond_12
    packed-switch v0, :pswitch_data_0

    .line 691
    :goto_2
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 625
    :pswitch_1
    if-eqz v4, :cond_19

    .line 626
    if-ltz v7, :cond_15

    iget v8, p0, Landroid/widget/ScrollView;->mHoverTopAreaHeight:I

    if-gt v7, v8, :cond_15

    .line 628
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v8, :cond_13

    .line 629
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 633
    :cond_13
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_14

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 636
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 637
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 670
    :cond_14
    :goto_3
    iput-boolean v4, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    goto :goto_2

    .line 639
    :cond_15
    iget v8, p0, Landroid/widget/ScrollView;->mHoverBottomAreaHeight:I

    sub-int v8, v2, v8

    if-lt v7, v8, :cond_17

    if-gt v7, v2, :cond_17

    .line 641
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    if-nez v8, :cond_16

    .line 642
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 646
    :cond_16
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_14

    .line 647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 649
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/ScrollView;->mHoverScrollDirection:I

    .line 650
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 653
    :cond_17
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 654
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 655
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 658
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 659
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 662
    :cond_18
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    goto :goto_3

    .line 664
    :cond_19
    iget-boolean v8, p0, Landroid/widget/ScrollView;->mPreviousTextViewScroll:Z

    if-eqz v8, :cond_14

    .line 666
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 667
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    goto :goto_3

    .line 676
    :pswitch_2
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 677
    iget-object v8, p0, Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView$HoverScrollHandler;->removeMessages(I)V

    .line 680
    :cond_1a
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverRecognitionStartTime:J

    .line 681
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/ScrollView;->mHoverScrollStartTime:J

    .line 682
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z

    .line 683
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/ScrollView;->mHoverAreaEnter:Z

    .line 685
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_1

    .line 621
    :pswitch_data_0
    .packed-switch 0xd3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2486
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2487
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_3

    .line 2488
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2489
    .local v2, "scrollY":I
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2490
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2491
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 2493
    .local v3, "width":I
    iget v4, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2494
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2495
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2496
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2498
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2500
    .end local v1    # "restoreCount":I
    .end local v3    # "width":I
    :cond_1
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2501
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2502
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 2503
    .restart local v3    # "width":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    .line 2505
    .local v0, "height":I
    neg-int v4, v3

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2507
    const/high16 v4, 0x43340000    # 180.0f

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2508
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2509
    iget-object v4, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2510
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2512
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2517
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "scrollY":I
    .end local v3    # "width":I
    :cond_3
    iget v4, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eqz v4, :cond_4

    .line 2518
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->drawQuickController(Landroid/graphics/Canvas;)V

    .line 2520
    :cond_4

    invoke-static/range {p0 .. p1}, Landroid/widget/ScrollView$FlymeInjector;->mzDraw(Landroid/widget/ScrollView;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 703
    iget-object v6, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 705
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 706
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    .line 707
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 708
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 709
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 711
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 749
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 718
    :cond_2
    const/4 v1, 0x0

    .line 719
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 720
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 749
    goto :goto_0

    .line 722
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 723
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    .line 728
    :goto_2
    if-eqz v1, :cond_3

    .line 729
    invoke-static {v4}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    goto :goto_1

    .line 725
    :cond_4
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_2

    .line 733
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 734
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    .line 739
    :goto_3
    if-eqz v1, :cond_3

    .line 740
    invoke-static {v5}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->playSoundEffect(I)V

    goto :goto_1

    .line 736
    :cond_5
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_3

    .line 744
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_4
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_4

    .line 720
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 13
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 2355
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2356
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v12, v0, v1

    .line 2357
    .local v12, "height":I
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 2359
    .local v11, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 2362
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    .line 2363
    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2366
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2368
    .end local v11    # "bottom":I
    .end local v12    # "height":I
    :cond_1
    return-void
.end method

.method public fullScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1717
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1718
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1720
    .local v2, "height":I
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1721
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1723
    if-eqz v1, :cond_0

    .line 1724
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1725
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1726
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1727
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1728
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1732
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    .line 1717
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 359
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 360
    const/4 v3, 0x0

    .line 370
    :goto_0
    return v3

    .line 363
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 364
    .local v1, "length":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 365
    .local v0, "bottomEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 366
    .local v2, "span":I
    if-ge v2, v1, :cond_1

    .line 367
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 370
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 378
    const/high16 v0, 0x3f000000    # 0.5f

    iget v1, p0, Landroid/widget/ScrollView;->mBottom:I

    iget v2, p0, Landroid/widget/ScrollView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 346
    const/4 v1, 0x0

    .line 354
    :goto_0
    return v1

    .line 349
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 350
    .local v0, "length":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 351
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 354
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    return v0
.end method

.method protected hapticScrollTo(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 1508
    iget v0, p0, Landroid/widget/ScrollView;->mLastHapticScrollY:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPixelThresholdY:I

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mLastScrollY:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, v1, :cond_0

    .line 1510
    const/16 v0, 0x5208

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->performHapticFeedback(I)Z

    .line 1511
    iput p1, p0, Landroid/widget/ScrollView;->mLastHapticScrollY:I

    .line 1512
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v0, p0, Landroid/widget/ScrollView;->mLastScrollY:I

    .line 1514
    :cond_0
    return-void
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public isLockScreenMode()Z
    .locals 7

    .prologue
    .line 927
    iget-object v5, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 928
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 929
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 931
    iget-object v5, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 932
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 933
    .local v0, "isCoverOpen":Z
    if-eqz v4, :cond_0

    .line 936
    const/4 v0, 0x1

    .line 942
    :cond_0
    const/4 v1, 0x0

    .line 943
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 945
    :goto_0
    return v1

    .line 943
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 1993
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1998
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 2001
    .local v1, "childWidthMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2003
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2004
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 2009
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2011
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 2014
    .local v1, "childWidthMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2017
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2018
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 2437
    iget-boolean v0, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 2438
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2440
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2441
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2250
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2252
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    .line 2253
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2254
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2256
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 2257
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2258
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2261
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_2

    .line 2262
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2267
    :cond_2
    iget v0, p0, Landroid/widget/ScrollView;->mQCstate:I

    if-eqz v0, :cond_3

    .line 2268
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ScrollView;->mQCstate:I

    .line 2270
    :cond_3
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 1454
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1477
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 1456
    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 1457
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 1458
    .local v4, "vscroll":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 1459
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 1460
    .local v0, "delta":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v3

    .line 1461
    .local v3, "range":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1462
    .local v2, "oldScrollY":I
    sub-int v1, v2, v0

    .line 1463
    .local v1, "newScrollY":I
    if-gez v1, :cond_2

    .line 1464
    const/4 v1, 0x0

    .line 1468
    :cond_1
    :goto_1
    if-eq v1, v2, :cond_0

    .line 1469
    iget v5, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1470
    const/4 v5, 0x1

    goto :goto_0

    .line 1465
    :cond_2
    if-le v1, v3, :cond_1

    .line 1466
    move v1, v3

    goto :goto_1

    .line 1454
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1565
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1566
    const-class v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1567
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1568
    .local v0, "scrollable":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1569
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1570
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1571
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1572
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1573
    return-void

    .line 1567
    .end local v0    # "scrollable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1547
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1548
    const-class v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1549
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1550
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .line 1551
    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    .line 1552
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1553
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v1, :cond_0

    .line 1554
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1556
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 1557
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1561
    .end local v0    # "scrollRange":I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 807
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 808
    .local v7, "action":I
    if-ne v7, v4, :cond_0

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    .line 917
    :goto_0
    return v0

    .line 815
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    .line 816
    goto :goto_0

    .line 819
    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 917
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 830
    :pswitch_1
    iget v8, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 831
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_2

    .line 836
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 837
    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_3

    .line 838
    const-string v0, "ScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 843
    :cond_3
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v11, v1

    .line 844
    .local v11, "y":I
    iget v1, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 845
    .local v12, "yDiff":I
    iget v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getNestedScrollAxes()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 846
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 847
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 848
    invoke-direct {p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 849
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 850
    iput v3, p0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 851
    iget-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_4

    .line 852
    const-string v1, "ScrollView-scroll"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_4
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_flyme_0

    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_flyme_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->springBackDelay(I)V

    goto :goto_1

    .end local v8    # "activePointerId":I
    .end local v9    # "parent":Landroid/view/ViewParent;
    .end local v10    # "pointerIndex":I
    .end local v11    # "y":I
    .end local v12    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v11, v1

    .line 864
    .restart local v11    # "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1, v11}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_5

    .line 865
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 866
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 874
    :cond_5
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 876
    iget-boolean v1, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_6

    .line 877
    iput v11, p0, Landroid/widget/ScrollView;->mLastHapticScrollY:I

    .line 880
    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 882
    invoke-direct {p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    .line 883
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 889
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_7

    move v3, v0

    :cond_7
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 890
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_8

    .line 891
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_8
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    goto/16 :goto_1

    .end local v11    # "y":I
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    iput v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-nez v0, :cond_flyme_1

    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_9
    :cond_flyme_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->stopNestedScroll()V

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    invoke-static/range {p0 .. p0}, Landroid/widget/ScrollView$FlymeInjector;->mzOnLayout1(Landroid/widget/ScrollView;)I

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 2286
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2287
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 2289
    iget-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v3, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2290
    iget-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v3}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2292
    :cond_0
    iput-object v4, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 2294
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2295
    iget-object v3, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    if-eqz v3, :cond_1

    .line 2296
    iget-object v3, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    iget v3, v3, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    iput v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2297
    iput-object v4, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 2300
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2301
    .local v0, "childHeight":I
    :goto_0
    sub-int v3, p5, p3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2305
    .local v1, "scrollRange":I
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-le v3, v1, :cond_4

    .line 2306
    iput v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2313
    .end local v0    # "childHeight":I
    .end local v1    # "scrollRange":I
    :cond_2
    :goto_1
    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v2, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    invoke-static/range {p0 .. p0}, Landroid/widget/ScrollView$FlymeInjector;->mzOnlayout2(Landroid/widget/ScrollView;)V

    .line 2314
    return-void

    :cond_3
    move v0, v2

    .line 2300
    goto :goto_0

    .line 2307
    .restart local v0    # "childHeight":I
    .restart local v1    # "scrollRange":I
    :cond_4
    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gez v3, :cond_2

    .line 2308
    iput v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 487
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 489
    iget-boolean v6, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 494
    .local v4, "heightMode":I
    if-eqz v4, :cond_0

    .line 498
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 499
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 500
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    .line 501
    .local v3, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 502
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 504
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 506
    .local v2, "childWidthMeasureSpec":I
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v6

    .line 507
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v6

    .line 508
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 511
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 2477
    if-nez p4, :cond_0

    .line 2478
    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 2479
    const/4 v0, 0x1

    .line 2481
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    .line 2465
    iget v6, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 2466
    .local v6, "oldScrollY":I
    invoke-virtual {p0, v1, p5}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 2467
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v2, v0, v6

    .line 2468
    .local v2, "myConsumed":I
    sub-int v4, p5, v2

    .line 2469
    .local v4, "myUnconsumed":I
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    .line 2470
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 2450
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 2451
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    .line 2452
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 9
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    invoke-direct {p0, p4}, Landroid/widget/ScrollView;->mzOnOverScrollled1(Z)V

    const/4 v3, 0x0

    .line 1484
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1485
    iget v7, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1486
    .local v7, "oldX":I
    iget v8, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1487
    .local v8, "oldY":I
    iput p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1488
    iput p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1489
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidateParentIfNeeded()V

    .line 1490
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v7, v8}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1491
    if-eqz p4, :cond_0

    .line 1492
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .end local v7    # "oldX":I
    .end local v8    # "oldY":I
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->mzOnOverScrolled2()V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 2210
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2211
    const/16 p1, 0x82

    .line 2216
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2221
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 2229
    :cond_1
    :goto_2
    return v1

    .line 2212
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 2213
    const/16 p1, 0x21

    goto :goto_0

    .line 2216
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 2225
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2229
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2554
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    instance-of v1, p1, Landroid/widget/ScrollView$SavedState;

    if-nez v1, :cond_1

    .line 2557
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2564
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 2560
    check-cast v0, Landroid/widget/ScrollView$SavedState;

    .line 2561
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2562
    iput-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 2563
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 2568
    iget-object v2, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-gt v2, v3, :cond_0

    .line 2571
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2576
    :goto_0
    return-object v0

    .line 2573
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2574
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ScrollView$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2575
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v2, v0, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-static/range {p0 .. p0}, Landroid/widget/ScrollView$FlymeInjector;->mzOnSizeChanged(Landroid/widget/ScrollView;)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2328
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2329
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2330
    iget-object v2, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 2331
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 2445
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 2459
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 2460
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1204
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 1206
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v31

    .line 1208
    .local v31, "vtev":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v21

    .line 1210
    .local v21, "actionMasked":I
    if-nez v21, :cond_0

    .line 1211
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 1213
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1215
    packed-switch v21, :pswitch_data_0

    .line 1391
    :cond_1
    :cond_flyme_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    .line 1392
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1394
    :cond_2
    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->recycle()V

    .line 1395
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1217
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 1218
    const/4 v2, 0x0

    goto :goto_1

    .line 1220
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_4

    .line 1221
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 1222
    .local v28, "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_4

    .line 1223
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1231
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1232
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1233
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v2, :cond_5

    .line 1234
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v2}, Landroid/os/StrictMode$Span;->finish()V

    .line 1235
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1240
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1241
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1242
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->startNestedScroll(I)Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->mzSetFieldFling()V

    goto :goto_0

    .line 1220
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 1246
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    .line 1247
    .local v22, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_7

    .line 1248
    const/16 v22, 0x0

    .line 1249
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1250
    const-string v2, "ScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in onTouchEvent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1254
    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v32, v0

    .line 1255
    .local v32, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v4, v2, v32

    .line 1256
    .local v4, "deltaY":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/widget/ScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1257
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollConsumed:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v4, v2

    .line 1258
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1259
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    .line 1261
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_a

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_a

    .line 1262
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 1263
    .restart local v28    # "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_9

    .line 1264
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1266
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-lez v4, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    sub-int/2addr v4, v2

    :goto_flyme_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->springBackDelay(I)V

    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 1275
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v2, v32, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1277
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v26, v0

    .line 1278
    .local v26, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    .line 1279
    .local v8, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v27

    .line 1280
    .local v27, "overscrollMode":I
    if-eqz v27, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_e

    if-lez v8, :cond_e

    :cond_b
    const/16 v23, 0x1

    .line 1285
    .local v23, "canOverscroll":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/ScrollView;->mzScrollIfNeeded(I)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->hasNestedScrollingParent()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_c

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 1300
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v11, v2, v26

    .line 1301
    .local v11, "scrolledDeltaY":I
    sub-int v13, v4, v11

    .line 1302
    .local v13, "unconsumedY":I
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Landroid/widget/ScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1303
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1304
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1305
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mNestedYOffset:I

    goto/16 :goto_0

    .line 1270
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .restart local v28    # "parent":Landroid/view/ViewParent;
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    add-int/2addr v4, v2

    goto/16 :goto_flyme_0

    .line 1280
    .end local v28    # "parent":Landroid/view/ViewParent;
    .restart local v8    # "range":I
    .restart local v26    # "oldY":I
    .restart local v27    # "overscrollMode":I
    :cond_e
    const/16 v23, 0x0

    goto :goto_4

    .line 1294
    .restart local v23    # "canOverscroll":Z
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_c

    .line 1295
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->hapticScrollTo(I)V

    goto :goto_5

    .line 1306
    .restart local v11    # "scrolledDeltaY":I
    .restart local v13    # "unconsumedY":I
    :cond_10
    if-eqz v23, :cond_1

    .line 1307
    add-int v29, v26, v4

    .line 1308
    .local v29, "pulledToY":I
    if-gez v29, :cond_14

    .line 1310
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_11

    .line 1311
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mHapticNewScroll:Z

    if-nez v2, :cond_11

    .line 1312
    const/16 v2, 0x5223

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->performHapticFeedback(I)Z

    .line 1313
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mHapticNewScroll:Z

    .line 1317
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1320
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1337
    :cond_12
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1339
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .line 1322
    :cond_14
    move/from16 v0, v29

    if-le v0, v8, :cond_12

    .line 1324
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_15

    .line 1325
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mHapticNewScroll:Z

    if-nez v2, :cond_15

    .line 1326
    const/16 v2, 0x5223

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->performHapticFeedback(I)Z

    .line 1327
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mHapticNewScroll:Z

    .line 1331
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_6

    .line 1346
    .end local v4    # "deltaY":I
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v22    # "activePointerIndex":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .end local v29    # "pulledToY":I
    .end local v32    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_16

    .line 1347
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mHapticNewScroll:Z

    .line 1350
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v30, v0

    .line 1352
    .local v30, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1353
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 1355
    .local v25, "initialVelocity":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;->mzOnTouchUp(I)Z

    move-result v2

    if-nez v2, :cond_flyme_0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_18

    .line 1356
    move/from16 v0, v25

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    .line 1362
    :cond_17
    :goto_7
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1363
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    .line 1357
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1359
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_7

    .line 1367
    .end local v25    # "initialVelocity":I
    .end local v30    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1368
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1369
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1371
    :cond_19
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1372
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    .line 1376
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v24

    .line 1377
    .local v24, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1378
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    goto/16 :goto_0

    .line 1382
    .end local v24    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1384
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_1b

    .line 1385
    :cond_1a
    const-string v2, "ScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in onTouchEvent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1388
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    goto/16 :goto_0

    .line 1215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-eqz v0, :cond_0

    iput v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v1, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    iput-boolean v1, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidateParentCaches()V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    :cond_0
    return-void
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1681
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1682
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1684
    .local v2, "height":I
    if-eqz v1, :cond_2

    .line 1685
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1686
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1687
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1688
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1689
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1690
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1699
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1701
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    .line 1681
    goto :goto_0

    .line 1694
    .restart local v1    # "down":Z
    .restart local v2    # "height":I
    :cond_2
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1695
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 1696
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1518
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1542
    :goto_0
    return v2

    .line 1521
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 1522
    goto :goto_0

    .line 1524
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 1542
    goto :goto_0

    .line 1526
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v1, v4, v5

    .line 1527
    .local v1, "viewportHeight":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int/2addr v4, v1

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1528
    .local v0, "targetScrollY":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, v4, :cond_2

    .line 1529
    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1532
    goto :goto_0

    .line 1534
    .end local v0    # "targetScrollY":I
    .end local v1    # "viewportHeight":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v1, v4, v5

    .line 1535
    .restart local v1    # "viewportHeight":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v4, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1536
    .restart local v0    # "targetScrollY":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, v4, :cond_3

    .line 1537
    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1540
    goto :goto_0

    .line 1524
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 2187
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 2188
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2193
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2194
    return-void

    .line 2191
    :cond_0
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 2236
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2239
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 787
    if-eqz p1, :cond_0

    .line 788
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 790
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 791
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2244
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 2245
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2246
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2405
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 2406
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2407
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    .line 2408
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    .line 2409
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v1, :cond_2

    .line 2411
    :cond_0
    iget-boolean v1, p0, Landroid/widget/ScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_1

    .line 2412
    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->hapticScrollTo(I)V

    .line 2415
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2418
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .prologue
    .line 464
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 465
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 466
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 468
    :cond_0
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .prologue
    .line 975
    iput p1, p0, Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I

    .line 976
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 955
    if-eqz p1, :cond_0

    .line 956
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    .line 960
    :goto_0
    return-void

    .line 958
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 1
    .param p1, "hoverspeed"    # I

    .prologue
    .line 967
    int-to-float v0, p1

    iput v0, p0, Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:F

    .line 968
    return-void
.end method

.method public setIgnoreDelaychildPrerssedState(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 254
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    .line 255
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 2422
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 2423
    iget-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 2424
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2425
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2426
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 2432
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2433
    return-void

    .line 2429
    :cond_1
    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 2430
    iput-object v2, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 482
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 483
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 308
    iput p1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 309
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIgnoreDelaychildPrerssed:Z

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x0

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected showEdgeEffectIfNecessary(IF)V
    .locals 8
    .param p1, "deltaY"    # I
    .param p2, "multiplicator"    # F

    .prologue
    const/4 v0, 0x1

    .line 1422
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v3

    .line 1423
    .local v3, "overscrollMode":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v4

    .line 1424
    .local v4, "range":I
    if-eqz v3, :cond_0

    if-ne v3, v0, :cond_4

    if-lez v4, :cond_4

    .line 1427
    .local v0, "canOverscroll":Z
    :cond_0
    :goto_0
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1428
    .local v2, "oldScrollY":I
    add-int v1, v2, p1

    .line 1430
    .local v1, "newScrollY":I
    if-eqz v0, :cond_3

    .line 1431
    if-gez v1, :cond_5

    .line 1432
    const-string v5, "ScrollView"

    const-string/jumbo v6, "showBlueLightIfNecessary() reached the TOP!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v6, p1

    mul-float/2addr v6, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1434
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1435
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1444
    :cond_1
    :goto_1
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1446
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1449
    :cond_3
    return-void

    .line 1424
    .end local v0    # "canOverscroll":Z
    .end local v1    # "newScrollY":I
    .end local v2    # "oldScrollY":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1437
    .restart local v0    # "canOverscroll":Z
    .restart local v1    # "newScrollY":I
    .restart local v2    # "oldScrollY":I
    :cond_5
    if-le v1, v4, :cond_1

    .line 1438
    const-string v5, "ScrollView"

    const-string/jumbo v6, "showBlueLightIfNecessary() reached the BOTTOM!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v6, p1

    mul-float/2addr v6, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1440
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1441
    iget-object v5, p0, Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    .line 1872
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1897
    :goto_0
    return-void

    .line 1876
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long v2, v6, v8

    .line 1877
    .local v2, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 1878
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v1, v6, v7

    .line 1879
    .local v1, "height":I
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1880
    .local v0, "bottom":I
    sub-int v6, v0, v1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1881
    .local v4, "maxY":I
    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1882
    .local v5, "scrollY":I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 1884
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1885
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1896
    .end local v0    # "bottom":I
    .end local v1    # "height":I
    .end local v4    # "maxY":I
    .end local v5    # "scrollY":I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/ScrollView;->mLastScroll:J

    goto :goto_0

    .line 1887
    :cond_1
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1888
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1889
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v6, :cond_2

    .line 1890
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    .line 1891
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1894
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollByWithDuration(III)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "scrollDuration"    # I

    .prologue
    const/4 v3, 0x0

    .line 1911
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1936
    :goto_0
    return-void

    .line 1915
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long v8, v0, v4

    .line 1916
    .local v8, "duration":J
    const-wide/16 v0, 0xfa

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    .line 1917
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v7, v0, v1

    .line 1918
    .local v7, "height":I
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1919
    .local v6, "bottom":I
    sub-int v0, v6, v7

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1920
    .local v10, "maxY":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1921
    .local v2, "scrollY":I
    add-int v0, v2, p2

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int p2, v0, v2

    .line 1923
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 1924
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1935
    .end local v2    # "scrollY":I
    .end local v6    # "bottom":I
    .end local v7    # "height":I
    .end local v10    # "maxY":I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/ScrollView;->mLastScroll:J

    goto :goto_0

    .line 1926
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1927
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1928
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_2

    .line 1929
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1930
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1933
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1946
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1947
    return-void
.end method

.method public final smoothScrollToWithDuration(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scrollDuration"    # I

    .prologue
    .line 1959
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1, p3}, Landroid/widget/ScrollView;->smoothScrollByWithDuration(III)V

    .line 1960
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 291
    return-void
.end method

.method private mzOnOverScrolled2()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "currentOverScrollDistance":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .local v1, "scrollY":I
    if-gez v1, :cond_2

    move v0, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/ScrollView;->mIsListAtWindowTop:Z

    if-eqz v2, :cond_3

    if-gez v0, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    if-lt v2, v3, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    :cond_1
    :goto_1
    iput v0, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    return-void

    :cond_2
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    goto :goto_1
.end method

.method private mzOnOverScrollled1(Z)V
    .locals 1
    .param p1, "clampedY"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFling:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mFling:Z

    :cond_0
    return-void
.end method

.method private mzOnTouchUp(I)Z
    .locals 8
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v0, v1, :cond_2

    iget v0, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-nez v0, :cond_1

    iput-boolean v7, p0, Landroid/widget/ScrollView;->mFling:Z

    neg-int v0, p1

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->flingWithNestedDispatch(I)V

    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->endDrag()V

    return v7

    :cond_1
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_0
.end method

.method private mzScrollIfNeeded(I)I
    .locals 9
    .param p1, "deltaY"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iget v4, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    .local v4, "scrollY":I
    iget v3, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .local v3, "overscrollDistance":I
    move v2, p1

    .local v2, "incrementalDeltaY":I
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    mul-int v6, v4, v2

    if-gez v6, :cond_6

    move v1, v2

    .local v1, "delta":I
    const/high16 v0, 0x3f800000    # 1.0f

    .local v0, "coeff":F
    if-lez v1, :cond_3

    const v6, 0x3f4ccccd    # 0.8f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    int-to-float v7, v3

    div-float/2addr v6, v7

    sub-float v0, v8, v6

    cmpg-float v6, v0, v5

    if-gez v6, :cond_0

    move v0, v5

    :cond_0
    int-to-float v5, v2

    mul-float/2addr v5, v0

    float-to-int v2, v5

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v5, v3, :cond_2

    const/4 v2, 0x0

    .end local v0    # "coeff":F
    .end local v1    # "delta":I
    :cond_2
    :goto_1
    return v2

    .restart local v0    # "coeff":F
    .restart local v1    # "delta":I
    :cond_3
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    int-to-float v7, v3

    div-float/2addr v6, v7

    sub-float v0, v8, v6

    cmpg-float v6, v0, v5

    if-gez v6, :cond_4

    move v0, v5

    :cond_4
    int-to-float v5, v2

    mul-float/2addr v5, v0

    float-to-int v2, v5

    if-nez v2, :cond_5

    const/4 v2, -0x1

    :cond_5
    goto :goto_0

    .end local v0    # "coeff":F
    .end local v1    # "delta":I
    :cond_6
    div-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method private mzSetFieldFling()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mFling:Z

    return-void
.end method

.method public dispatchStatusBarTap()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/ScrollView;->onStatusBarTapScrollTop()Z

    move-result v0

    return v0
.end method

.method public isDelayTopOverScrollEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mDelaySpringBackEnabled:Z

    return v0
.end method

.method mzGetFieldIsBeingDragged()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    return v0
.end method

.method mzGetFieldOverflingDistance()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    return v0
.end method

.method mzGetFieldOverscrollDistance()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    return v0
.end method

.method mzGetFieldScrollX()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    return v0
.end method

.method mzGetFieldmScrollY()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    return v0
.end method

.method mzGetScrollRange()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method mzInvokeMethodOnScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method mzInvokeMethodOverScrollBy(IIIIIIIIZ)Z
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    invoke-virtual/range {p0 .. p9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method mzSetFieldOverflingDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    iput p1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    return-void
.end method

.method mzSetFieldOverscrollDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    iput p1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    return-void
.end method

.method protected onStatusBarTapScrollTop()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v3, p0, Landroid/widget/ScrollView;->mScrollY:I

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    neg-int v4, v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/OverScroller;->startScroll(IIII)V

    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setDelayTopOverScrollEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mDelaySpringBackEnabled:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/meizu/widget/MzListHoldIndicator;

    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/meizu/widget/MzListHoldIndicator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    iget-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    iget v1, p0, Landroid/widget/ScrollView;->mHoldIndicatorOffset:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MzListHoldIndicator;->setExtraOffset(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    goto :goto_0
.end method

.method public setDelayTopOverScrollOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    iput p1, p0, Landroid/widget/ScrollView;->mHoldIndicatorOffset:I

    iget-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/MzListHoldIndicator;->setExtraOffset(I)V

    :cond_0
    return-void
.end method

.method public springBackDelay(I)V
    .locals 4
    .param p1, "delayTime"    # I

    .prologue
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/ScrollView;->mDelaySpringBack:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

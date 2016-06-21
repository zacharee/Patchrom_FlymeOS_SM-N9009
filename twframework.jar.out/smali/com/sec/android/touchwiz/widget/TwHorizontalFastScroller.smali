.class Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;
.super Ljava/lang/Object;
.source "TwHorizontalFastScroller.java"


# static fields
.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:I = 0x96

.field private static final DURATION_FADE_OUT:I = 0x12c

.field private static final DURATION_RESIZE:I = 0x64

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x4

.field private static final OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final PREVIEW_BOTTOM:I = 0x1

.field private static final PREVIEW_TOP:I = 0x0

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAP_TIMEOUT:J

.field private static TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlwaysShow:Z

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHeaderCount:I

.field private mHeight:I

.field private mInitialTouchX:F

.field private mLayoutFromBottom:Z

.field private final mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

.field private mListAdapter:Landroid/widget/Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/view/View;

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private mTextAppearance:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private mThumbMinHeight:I

.field private mThumbMinWidth:I

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mUpdatingLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->TAP_TIMEOUT:J

    .line 1530
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->LEFT:Landroid/util/Property;

    .line 1546
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$4;

    const-string v1, "top"

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->TOP:Landroid/util/Property;

    .line 1562
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$5;

    const-string v1, "right"

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->RIGHT:Landroid/util/Property;

    .line 1578
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)V
    .locals 6
    .param p1, "listView"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    .param p2, "styleResId"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 98
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 99
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 113
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewResId:[I

    .line 158
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mCurrentSection:I

    .line 161
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollbarPosition:I

    .line 213
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPendingDrag:J

    .line 222
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;

    invoke-direct {v3, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$1;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;)V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 232
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$2;

    invoke-direct {v3, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$2;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;)V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 240
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .line 241
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getCount()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOldItemCount:I

    .line 242
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildCount()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOldChildCount:I

    .line 244
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 245
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScaledTouchSlop:I

    .line 246
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getScrollBarStyle()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollBarStyle:I

    .line 248
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollCompleted:Z

    .line 249
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    .line 250
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mMatchDragPosition:Z

    .line 253
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 254
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 255
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 256
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 257
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    .line 258
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 260
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 261
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 263
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setStyle(I)V

    .line 265
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    .line 266
    .local v1, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 267
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 268
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 269
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 270
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 271
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 273
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->getSectionsFromIndexer()V

    .line 274
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOldChildCount:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOldItemCount:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->updateLongList(II)V

    .line 275
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getTwHorizontalScrollbarPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setScrollbarPosition(I)V

    .line 276
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->postAutoHide()V

    .line 277
    return-void

    .line 250
    .end local v1    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 1523
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 9
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1594
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1595
    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1596
    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1597
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1598
    .local v0, "bottom":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v7

    aput-object v3, v4, v8

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    return-object v4
.end method

.method private static animateScaleY(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .prologue
    .line 1516
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 593
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 594
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 595
    return-void

    .line 594
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private beginDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1306
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPendingDrag:J

    .line 1308
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V

    .line 1310
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    if-eqz v0, :cond_0

    .line 1311
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->getSectionsFromIndexer()V

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    if-eqz v0, :cond_1

    .line 1315
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1316
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 1319
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->cancelFling()V

    .line 1320
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1282
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1284
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1285
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1286
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .prologue
    .line 1294
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPendingDrag:J

    .line 1295
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 535
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 537
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 538
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 540
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 541
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 542
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 545
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 547
    return-object v1
.end method

.method private getPosFromItemCount(III)F
    .locals 18
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1201
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v15, :cond_1

    .line 1202
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->getSectionsFromIndexer()V

    .line 1205
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    array-length v15, v15

    if-lez v15, :cond_4

    const/4 v3, 0x1

    .line 1207
    .local v3, "hasSections":Z
    :goto_0
    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mMatchDragPosition:Z

    if-nez v15, :cond_5

    .line 1208
    :cond_2
    move/from16 v0, p1

    int-to-float v15, v0

    sub-int v16, p3, p2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v10, v15, v16

    .line 1274
    :cond_3
    :goto_1
    return v10

    .line 1205
    .end local v3    # "hasSections":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 1211
    .restart local v3    # "hasSections":Z
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mHeaderCount:I

    sub-int p1, p1, v15

    .line 1212
    if-gez p1, :cond_6

    .line 1213
    const/4 v10, 0x0

    goto :goto_1

    .line 1215
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mHeaderCount:I

    sub-int p3, p3, v15

    .line 1218
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1220
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    if-nez v15, :cond_8

    .line 1221
    :cond_7
    const/4 v4, 0x0

    .line 1227
    .local v4, "incrementalPos":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v12

    .line 1228
    .local v12, "section":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v15, v12}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v14

    .line 1229
    .local v14, "sectionPos":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    array-length v13, v15

    .line 1231
    .local v13, "sectionCount":I
    add-int/lit8 v15, v13, -0x1

    if-ge v12, v15, :cond_a

    .line 1233
    add-int/lit8 v15, v12, 0x1

    if-ge v15, v13, :cond_9

    .line 1234
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v16, v12, 0x1

    invoke-interface/range {v15 .. v16}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 1238
    .local v7, "nextSectionPos":I
    :goto_3
    sub-int v9, v7, v14

    .line 1245
    .end local v7    # "nextSectionPos":I
    .local v9, "positionsInSection":I
    :goto_4
    if-nez v9, :cond_b

    .line 1246
    const/4 v8, 0x0

    .line 1252
    .local v8, "posWithinSection":F
    :goto_5
    int-to-float v15, v12

    add-float/2addr v15, v8

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v10, v15, v16

    .line 1257
    .local v10, "result":F
    if-lez p1, :cond_3

    add-int v15, p1, p2

    move/from16 v0, p3

    if-ne v15, v0, :cond_3

    .line 1258
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    add-int/lit8 v16, p2, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1259
    .local v5, "lastChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingRight()I

    move-result v11

    .line 1262
    .local v11, "rightPadding":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getClipToPadding()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1263
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1264
    .local v6, "maxSize":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v15

    sub-int/2addr v15, v11

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v2, v15, v16

    .line 1269
    .local v2, "currentVisibleSize":I
    :goto_6
    if-lez v2, :cond_3

    if-lez v6, :cond_3

    .line 1270
    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v10

    int-to-float v0, v2

    move/from16 v16, v0

    int-to-float v0, v6

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v10, v15

    goto/16 :goto_1

    .line 1223
    .end local v2    # "currentVisibleSize":I
    .end local v4    # "incrementalPos":F
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v6    # "maxSize":I
    .end local v8    # "posWithinSection":F
    .end local v9    # "positionsInSection":I
    .end local v10    # "result":F
    .end local v11    # "rightPadding":I
    .end local v12    # "section":I
    .end local v13    # "sectionCount":I
    .end local v14    # "sectionPos":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingLeft()I

    move-result v15

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v4, v15, v16

    .restart local v4    # "incrementalPos":F
    goto/16 :goto_2

    .line 1236
    .restart local v12    # "section":I
    .restart local v13    # "sectionCount":I
    .restart local v14    # "sectionPos":I
    :cond_9
    add-int/lit8 v7, p3, -0x1

    .restart local v7    # "nextSectionPos":I
    goto :goto_3

    .line 1240
    .end local v7    # "nextSectionPos":I
    :cond_a
    sub-int v9, p3, v14

    .restart local v9    # "positionsInSection":I
    goto :goto_4

    .line 1248
    :cond_b
    move/from16 v0, p1

    int-to-float v15, v0

    add-float/2addr v15, v4

    int-to-float v0, v14

    move/from16 v16, v0

    sub-float v15, v15, v16

    int-to-float v0, v9

    move/from16 v16, v0

    div-float v8, v15, v16

    .restart local v8    # "posWithinSection":F
    goto/16 :goto_5

    .line 1266
    .restart local v5    # "lastChild":Landroid/view/View;
    .restart local v10    # "result":F
    .restart local v11    # "rightPadding":I
    :cond_c
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int v6, v15, v11

    .line 1267
    .restart local v6    # "maxSize":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v2, v15, v16

    .restart local v2    # "currentVisibleSize":I
    goto :goto_6
.end method

.method private getPosFromMotionEvent(F)F
    .locals 8
    .param p1, "x"    # F

    .prologue
    const/4 v5, 0x0

    .line 1184
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 1185
    .local v4, "trackImage":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v1, v6

    .line 1186
    .local v1, "min":F
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v0, v6

    .line 1187
    .local v0, "max":F
    move v2, v1

    .line 1188
    .local v2, "offset":F
    sub-float v3, v0, v1

    .line 1192
    .local v3, "range":F
    cmpg-float v6, v3, v5

    if-gtz v6, :cond_0

    .line 1196
    :goto_0
    return v5

    :cond_0
    sub-float v6, p1, v2

    div-float/2addr v6, v3

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v5, v7}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    goto :goto_0
.end method

.method private getSectionsFromIndexer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 910
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 912
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 913
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 914
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mHeaderCount:I

    .line 915
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 925
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_1

    .line 926
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 927
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 928
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    .line 933
    :goto_0
    return-void

    .line 930
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 931
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 1497
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1498
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 1500
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1501
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1502
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 1503
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1500
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1505
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1509
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1467
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isPointInsideX(F)Z

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

.method private isPointInsideX(F)Z
    .locals 4
    .param p1, "x"    # F

    .prologue
    .line 1479
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v1

    .line 1480
    .local v1, "offset":F
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float v0, v3, v1

    .line 1481
    .local v0, "left":F
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    int-to-float v3, v3

    add-float v2, v3, v1

    .line 1482
    .local v2, "right":F
    cmpl-float v3, p1, v0

    if-ltz v3, :cond_0

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isPointInsideY(F)Z
    .locals 3
    .param p1, "y"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1471
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v2, :cond_2

    .line 1472
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 1474
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1472
    goto :goto_0

    .line 1474
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private layoutThumb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 747
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 748
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 749
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 750
    return-void
.end method

.method private layoutTrack()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 757
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 758
    .local v9, "track":Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 759
    .local v6, "thumb":Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 760
    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 761
    .local v2, "containerHeight":I
    const/high16 v12, -0x80000000

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 762
    .local v3, "heightMeasureSpec":I
    invoke-static {v13, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 763
    .local v11, "widthMeasureSpec":I
    invoke-virtual {v9, v11, v3}, Landroid/view/View;->measure(II)V

    .line 765
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 766
    .local v10, "trackHeight":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v7, v12, 0x2

    .line 767
    .local v7, "thumbHalfWidth":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    add-int v8, v12, v13

    .line 768
    .local v8, "top":I
    add-int v0, v8, v10

    .line 769
    .local v0, "bottom":I
    iget v12, v1, Landroid/graphics/Rect;->left:I

    add-int v4, v12, v7

    .line 770
    .local v4, "left":I
    iget v12, v1, Landroid/graphics/Rect;->right:I

    sub-int v5, v12, v7

    .line 771
    .local v5, "right":I
    invoke-virtual {v9, v4, v8, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 772
    return-void
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 683
    if-nez p2, :cond_0

    .line 684
    const/4 v10, 0x0

    .line 685
    .local v10, "marginLeft":I
    const/4 v11, 0x0

    .line 686
    .local v11, "marginTop":I
    const/4 v9, 0x0

    .line 693
    .local v9, "marginBottom":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 694
    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 695
    .local v4, "containerHeight":I
    sub-int v15, v4, v11

    sub-int v1, v15, v9

    .line 696
    .local v1, "adjMaxHeight":I
    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 697
    .local v7, "heightMeasureSpec":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 698
    .local v14, "widthMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v7}, Landroid/view/View;->measure(II)V

    .line 701
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 702
    .local v5, "containerWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 703
    .local v6, "height":I
    div-int/lit8 v15, v5, 0xa

    add-int/2addr v15, v10

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v8, v15, v16

    .line 704
    .local v8, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int v12, v8, v15

    .line 705
    .local v12, "right":I
    sub-int v15, v4, v6

    div-int/lit8 v15, v15, 0x2

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v13, v15, v16

    .line 706
    .local v13, "top":I
    add-int v2, v8, v6

    .line 707
    .local v2, "bottom":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v13, v12, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 708
    return-void

    .line 688
    .end local v1    # "adjMaxHeight":I
    .end local v2    # "bottom":I
    .end local v3    # "container":Landroid/graphics/Rect;
    .end local v4    # "containerHeight":I
    .end local v5    # "containerWidth":I
    .end local v6    # "height":I
    .end local v7    # "heightMeasureSpec":I
    .end local v8    # "left":I
    .end local v9    # "marginBottom":I
    .end local v10    # "marginLeft":I
    .end local v11    # "marginTop":I
    .end local v12    # "right":I
    .end local v13    # "top":I
    .end local v14    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 689
    .restart local v10    # "marginLeft":I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 690
    .restart local v11    # "marginTop":I
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    .restart local v9    # "marginBottom":I
    goto :goto_0
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 608
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 609
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 610
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 611
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 613
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    .line 614
    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 618
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 635
    if-nez p3, :cond_0

    .line 636
    const/4 v9, 0x0

    .line 637
    .local v9, "marginLeft":I
    const/4 v10, 0x0

    .line 638
    .local v10, "marginTop":I
    const/4 v8, 0x0

    .line 645
    .local v8, "marginBottom":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 646
    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 648
    .local v4, "containerHeight":I
    if-nez p2, :cond_1

    .line 649
    move v11, v4

    .line 656
    .local v11, "maxHeight":I
    :goto_1
    sub-int v15, v11, v10

    sub-int v1, v15, v8

    .line 657
    .local v1, "adjMaxHeight":I
    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 658
    .local v6, "heightMeasureSpec":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 659
    .local v14, "widthMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v6}, Landroid/view/View;->measure(II)V

    .line 662
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 665
    .local v5, "height":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v15, :cond_4

    .line 666
    if-nez p2, :cond_3

    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    :goto_2
    sub-int v2, v15, v8

    .line 667
    .local v2, "bottom":I
    sub-int v13, v2, v5

    .line 674
    .local v13, "top":I
    :goto_3
    move v7, v9

    .line 675
    .local v7, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int v12, v7, v15

    .line 676
    .local v12, "right":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v7, v13, v12, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 677
    return-void

    .line 640
    .end local v1    # "adjMaxHeight":I
    .end local v2    # "bottom":I
    .end local v3    # "container":Landroid/graphics/Rect;
    .end local v4    # "containerHeight":I
    .end local v5    # "height":I
    .end local v6    # "heightMeasureSpec":I
    .end local v7    # "left":I
    .end local v8    # "marginBottom":I
    .end local v9    # "marginLeft":I
    .end local v10    # "marginTop":I
    .end local v11    # "maxHeight":I
    .end local v12    # "right":I
    .end local v13    # "top":I
    .end local v14    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 641
    .restart local v9    # "marginLeft":I
    move-object/from16 v0, p3

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 642
    .restart local v10    # "marginTop":I
    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .restart local v8    # "marginBottom":I
    goto :goto_0

    .line 650
    .restart local v3    # "container":Landroid/graphics/Rect;
    .restart local v4    # "containerHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v15, :cond_2

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v11

    .restart local v11    # "maxHeight":I
    goto :goto_1

    .line 653
    .end local v11    # "maxHeight":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int v11, v4, v15

    .restart local v11    # "maxHeight":I
    goto :goto_1

    .line 666
    .restart local v1    # "adjMaxHeight":I
    .restart local v5    # "height":I
    .restart local v6    # "heightMeasureSpec":I
    .restart local v14    # "widthMeasureSpec":I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v15

    goto :goto_2

    .line 669
    :cond_4
    if-nez p2, :cond_5

    iget v15, v3, Landroid/graphics/Rect;->top:I

    :goto_4
    add-int v13, v15, v10

    .line 670
    .restart local v13    # "top":I
    add-int v2, v13, v5

    .restart local v2    # "bottom":I
    goto :goto_3

    .line 669
    .end local v2    # "bottom":I
    .end local v13    # "top":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v15

    goto :goto_4
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2
    .param p1, "peekIfEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 441
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 442
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V

    .line 454
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resolvePadding()V

    .line 455
    return-void

    .line 444
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    if-ne v0, v1, :cond_2

    .line 445
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->postAutoHide()V

    goto :goto_0

    .line 446
    :cond_2
    if-eqz p1, :cond_0

    .line 447
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V

    .line 448
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->postAutoHide()V

    goto :goto_0

    .line 451
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->stop()V

    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    .line 881
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 882
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 883
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 3

    .prologue
    .line 807
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 808
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 809
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 810
    return-void

    .line 807
    .end local v0    # "isPressed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollTo(F)V
    .locals 23
    .param p1, "position"    # F

    .prologue
    .line 944
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollCompleted:Z

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getCount()I

    move-result v3

    .line 947
    .local v3, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 948
    .local v16, "sections":[Ljava/lang/Object;
    if-nez v16, :cond_3

    const/4 v14, 0x0

    .line 950
    .local v14, "sectionCount":I
    :goto_0
    if-eqz v16, :cond_a

    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v14, v0, :cond_a

    .line 951
    int-to-float v0, v14

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v22, v14, -0x1

    invoke-static/range {v20 .. v22}, Landroid/util/MathUtils;->constrain(III)I

    move-result v4

    .line 953
    .local v4, "exactSection":I
    move/from16 v19, v4

    .line 954
    .local v19, "targetSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    .line 955
    .local v18, "targetIndex":I
    move/from16 v15, v19

    .line 963
    .local v15, "sectionIndex":I
    move v7, v3

    .line 964
    .local v7, "nextIndex":I
    move/from16 v11, v18

    .line 965
    .local v11, "prevIndex":I
    move/from16 v13, v19

    .line 966
    .local v13, "prevSection":I
    add-int/lit8 v10, v19, 0x1

    .line 969
    .local v10, "nextSection":I
    add-int/lit8 v20, v14, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    add-int/lit8 v21, v19, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 974
    :cond_0
    move/from16 v0, v18

    if-ne v7, v0, :cond_2

    .line 976
    :cond_1
    if-lez v19, :cond_2

    .line 977
    add-int/lit8 v19, v19, -0x1

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 979
    move/from16 v0, v18

    if-eq v11, v0, :cond_4

    .line 980
    move/from16 v13, v19

    .line 981
    move/from16 v15, v19

    .line 997
    :cond_2
    :goto_1
    add-int/lit8 v8, v10, 0x1

    .line 998
    .local v8, "nextNextSection":I
    :goto_2
    if-ge v8, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    move/from16 v0, v20

    if-ne v0, v7, :cond_5

    .line 1000
    add-int/lit8 v8, v8, 0x1

    .line 1001
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 948
    .end local v4    # "exactSection":I
    .end local v7    # "nextIndex":I
    .end local v8    # "nextNextSection":I
    .end local v10    # "nextSection":I
    .end local v11    # "prevIndex":I
    .end local v13    # "prevSection":I
    .end local v14    # "sectionCount":I
    .end local v15    # "sectionIndex":I
    .end local v18    # "targetIndex":I
    .end local v19    # "targetSection":I
    :cond_3
    move-object/from16 v0, v16

    array-length v14, v0

    goto/16 :goto_0

    .line 983
    .restart local v4    # "exactSection":I
    .restart local v7    # "nextIndex":I
    .restart local v10    # "nextSection":I
    .restart local v11    # "prevIndex":I
    .restart local v13    # "prevSection":I
    .restart local v14    # "sectionCount":I
    .restart local v15    # "sectionIndex":I
    .restart local v18    # "targetIndex":I
    .restart local v19    # "targetSection":I
    :cond_4
    if-nez v19, :cond_1

    .line 986
    const/4 v15, 0x0

    .line 987
    goto :goto_1

    .line 1008
    .restart local v8    # "nextNextSection":I
    :cond_5
    int-to-float v0, v13

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v12, v20, v21

    .line 1009
    .local v12, "prevPosition":F
    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v9, v20, v21

    .line 1010
    .local v9, "nextPosition":F
    if-nez v3, :cond_7

    const v17, 0x7f7fffff    # Float.MAX_VALUE

    .line 1011
    .local v17, "snapThreshold":F
    :goto_3
    if-ne v13, v4, :cond_8

    sub-float v20, p1, v12

    cmpg-float v20, v20, v17

    if-gez v20, :cond_8

    .line 1012
    move/from16 v18, v11

    .line 1019
    :goto_4
    const/16 v20, 0x0

    add-int/lit8 v21, v3, -0x1

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v18

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v20, v0

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v18

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectionFromTop(II)V

    .line 1038
    .end local v4    # "exactSection":I
    .end local v7    # "nextIndex":I
    .end local v8    # "nextNextSection":I
    .end local v9    # "nextPosition":F
    .end local v10    # "nextSection":I
    .end local v11    # "prevIndex":I
    .end local v12    # "prevPosition":F
    .end local v13    # "prevSection":I
    .end local v17    # "snapThreshold":F
    .end local v18    # "targetIndex":I
    .end local v19    # "targetSection":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mCurrentSection:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v15, :cond_6

    .line 1039
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mCurrentSection:I

    .line 1041
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->transitionPreviewLayout(I)Z

    move-result v5

    .line 1042
    .local v5, "hasPreview":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mShowingPreview:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    if-eqz v5, :cond_c

    .line 1043
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->transitionToDragging()V

    .line 1048
    .end local v5    # "hasPreview":Z
    :cond_6
    :goto_6
    return-void

    .line 1010
    .restart local v4    # "exactSection":I
    .restart local v7    # "nextIndex":I
    .restart local v8    # "nextNextSection":I
    .restart local v9    # "nextPosition":F
    .restart local v10    # "nextSection":I
    .restart local v11    # "prevIndex":I
    .restart local v12    # "prevPosition":F
    .restart local v13    # "prevSection":I
    .restart local v18    # "targetIndex":I
    .restart local v19    # "targetSection":I
    :cond_7
    const/high16 v20, 0x3e000000    # 0.125f

    int-to-float v0, v3

    move/from16 v21, v0

    div-float v17, v20, v21

    goto :goto_3

    .line 1014
    .restart local v17    # "snapThreshold":F
    :cond_8
    sub-int v20, v7, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v21, p1, v12

    mul-float v20, v20, v21

    sub-float v21, v9, v12

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v18, v11, v20

    goto :goto_4

    .line 1024
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v18

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelection(I)V

    goto :goto_5

    .line 1027
    .end local v4    # "exactSection":I
    .end local v7    # "nextIndex":I
    .end local v8    # "nextNextSection":I
    .end local v9    # "nextPosition":F
    .end local v10    # "nextSection":I
    .end local v11    # "prevIndex":I
    .end local v12    # "prevPosition":F
    .end local v13    # "prevSection":I
    .end local v15    # "sectionIndex":I
    .end local v17    # "snapThreshold":F
    .end local v18    # "targetIndex":I
    .end local v19    # "targetSection":I
    :cond_a
    int-to-float v0, v3

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    add-int/lit8 v22, v3, -0x1

    invoke-static/range {v20 .. v22}, Landroid/util/MathUtils;->constrain(III)I

    move-result v6

    .line 1029
    .local v6, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v20, v0

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v6

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectionFromTop(II)V

    .line 1035
    :goto_7
    const/4 v15, -0x1

    .restart local v15    # "sectionIndex":I
    goto/16 :goto_5

    .line 1032
    .end local v15    # "sectionIndex":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mHeaderCount:I

    move/from16 v21, v0

    add-int v21, v21, v6

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelection(I)V

    goto :goto_7

    .line 1044
    .end local v6    # "index":I
    .restart local v5    # "hasPreview":Z
    .restart local v15    # "sectionIndex":I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mShowingPreview:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    if-nez v5, :cond_6

    .line 1045
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->transitionToVisible()V

    goto/16 :goto_6
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 775
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 777
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 778
    const/4 p1, 0x1

    .line 781
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    if-ne p1, v0, :cond_1

    .line 804
    :goto_0
    return-void

    .line 785
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 801
    :goto_1
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    .line 803
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->refreshDrawablePressedState()V

    goto :goto_0

    .line 787
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->transitionToHidden()V

    goto :goto_1

    .line 790
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->transitionToVisible()V

    goto :goto_1

    .line 793
    :pswitch_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 794
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->transitionToDragging()V

    goto :goto_1

    .line 796
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->transitionToVisible()V

    goto :goto_1

    .line 785
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 20
    .param p1, "position"    # F

    .prologue
    .line 1142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1143
    .local v1, "container":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 1144
    .local v2, "left":I
    iget v14, v1, Landroid/graphics/Rect;->right:I

    .line 1146
    .local v14, "right":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    .line 1147
    .local v17, "trackImage":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 1148
    .local v15, "thumbImage":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v0, v18

    int-to-float v5, v0

    .line 1149
    .local v5, "min":F
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v3, v0

    .line 1150
    .local v3, "max":F
    move v7, v5

    .line 1151
    .local v7, "offset":F
    sub-float v13, v3, v5

    .line 1152
    .local v13, "range":F
    mul-float v18, p1, v13

    add-float v16, v18, v7

    .line 1153
    .local v16, "thumbMiddle":F
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v16

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1157
    .local v9, "previewImage":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v8, v18, v19

    .line 1159
    .local v8, "previewHalfWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayPosition:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 1168
    const/4 v12, 0x0

    .line 1173
    .local v12, "previewPos":F
    :goto_0
    int-to-float v0, v2

    move/from16 v18, v0

    add-float v6, v18, v8

    .line 1174
    .local v6, "minP":F
    int-to-float v0, v14

    move/from16 v18, v0

    sub-float v4, v18, v8

    .line 1175
    .local v4, "maxP":F
    invoke-static {v12, v6, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v11

    .line 1176
    .local v11, "previewMiddle":F
    sub-float v10, v11, v8

    .line 1177
    .local v10, "previewLeft":F
    invoke-virtual {v9, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1181
    return-void

    .line 1161
    .end local v4    # "maxP":F
    .end local v6    # "minP":F
    .end local v10    # "previewLeft":F
    .end local v11    # "previewMiddle":F
    .end local v12    # "previewPos":F
    :pswitch_0
    move/from16 v12, v16

    .line 1162
    .restart local v12    # "previewPos":F
    goto :goto_0

    .line 1164
    .end local v12    # "previewPos":F
    :pswitch_1
    sub-float v12, v16, v8

    .line 1165
    .restart local v12    # "previewPos":F
    goto :goto_0

    .line 1159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startPendingDrag()V
    .locals 4

    .prologue
    .line 1302
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPendingDrag:J

    .line 1303
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 24
    .param p1, "sectionIndex"    # I

    .prologue
    .line 1059
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSections:[Ljava/lang/Object;

    .line 1060
    .local v13, "sections":[Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1061
    .local v19, "text":Ljava/lang/String;
    if-eqz v13, :cond_0

    if-ltz p1, :cond_0

    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 1062
    aget-object v12, v13, p1

    .line 1063
    .local v12, "section":Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 1064
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1068
    .end local v12    # "section":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1069
    .local v4, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1072
    .local v7, "preview":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mShowingPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1073
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1074
    .local v15, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 1081
    .local v17, "target":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1083
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1090
    :cond_1
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v14

    .line 1091
    .local v14, "showTarget":Landroid/animation/Animator;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 1092
    .local v6, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1095
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 1096
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1097
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 1098
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1099
    invoke-static {v7, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v9

    .line 1100
    .local v9, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v20, 0x64

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1102
    new-instance v20, Landroid/animation/AnimatorSet;

    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 1104
    .local v5, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1108
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v20

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    sub-int v8, v20, v21

    .line 1113
    .local v8, "previewHeight":I
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getHeight()I

    move-result v18

    .line 1114
    .local v18, "targetHeight":I
    move/from16 v0, v18

    if-le v0, v8, :cond_4

    .line 1115
    int-to-float v0, v8

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1116
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->animateScaleY(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1117
    .local v11, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1123
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v15}, Landroid/widget/TextView;->getHeight()I

    move-result v16

    .line 1124
    .local v16, "showingHeight":I
    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 1125
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    .line 1126
    .local v10, "scale":F
    invoke-static {v15, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->animateScaleY(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1127
    .restart local v11    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1130
    .end local v10    # "scale":F
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    .line 1132
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    const/16 v20, 0x1

    :goto_2
    return v20

    .line 1076
    .end local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v6    # "hideShowing":Landroid/animation/Animator;
    .end local v8    # "previewHeight":I
    .end local v9    # "resizePreview":Landroid/animation/Animator;
    .end local v14    # "showTarget":Landroid/animation/Animator;
    .end local v15    # "showing":Landroid/widget/TextView;
    .end local v16    # "showingHeight":I
    .end local v17    # "target":Landroid/widget/TextView;
    .end local v18    # "targetHeight":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1077
    .restart local v15    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .restart local v17    # "target":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 1119
    .restart local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .restart local v6    # "hideShowing":Landroid/animation/Animator;
    .restart local v8    # "previewHeight":I
    .restart local v9    # "resizePreview":Landroid/animation/Animator;
    .restart local v14    # "showTarget":Landroid/animation/Animator;
    .restart local v18    # "targetHeight":I
    :cond_4
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    goto :goto_1

    .line 1132
    .restart local v16    # "showingHeight":I
    :cond_5
    const/16 v20, 0x0

    goto :goto_2
.end method

.method private transitionToDragging()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x96

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 863
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 864
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 867
    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 870
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x0

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 873
    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 874
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 875
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 877
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mShowingPreview:Z

    .line 878
    return-void
.end method

.method private transitionToHidden()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x12c

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 816
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 817
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 820
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 824
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v1, v3

    .line 825
    .local v1, "offset":F
    :goto_0
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v10, [Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v9

    invoke-static {v3, v1, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 829
    .local v2, "slideOut":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 830
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v0, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 831
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 833
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mShowingPreview:Z

    .line 834
    return-void

    .line 824
    .end local v1    # "offset":F
    .end local v2    # "slideOut":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v1, v3

    goto :goto_0
.end method

.method private transitionToVisible()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 840
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 841
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 844
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v4, 0x3f800000    # 1.0f

    new-array v5, v9, [Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 846
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v11, [Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v4, v9

    invoke-static {v3, v10, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 849
    .local v1, "fadeOut":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v9, [Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    invoke-static {v3, v10, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 852
    .local v2, "slideIn":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 853
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v11, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 854
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 856
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mShowingPreview:Z

    .line 857
    return-void
.end method

.method private updateAppearance()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 280
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 281
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 284
    .local v1, "height":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 286
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 290
    :cond_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbMinWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 292
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbMinHeight:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 295
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 296
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 297
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 301
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbMinHeight:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mHeight:I

    .line 303
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 304
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewMinHeight:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 306
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTextAppearance:I

    if-eqz v3, :cond_2

    .line 307
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTextAppearance:I

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 308
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTextAppearance:I

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 311
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_3

    .line 312
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 313
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 316
    :cond_3
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTextSize:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 317
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTextSize:F

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 318
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTextSize:F

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 321
    :cond_4
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewMinWidth:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 322
    .local v2, "textMinSize":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 323
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 324
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 325
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 326
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 327
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 329
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->refreshDrawablePressedState()V

    .line 330
    return-void
.end method

.method private updateContainerRect()V
    .locals 7

    .prologue
    const/high16 v6, 0x1000000

    const/4 v4, 0x0

    .line 714
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .line 715
    .local v2, "list":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resolvePadding()V

    .line 717
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 718
    .local v0, "container":Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 719
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 720
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 721
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 723
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollBarStyle:I

    .line 724
    .local v3, "scrollbarStyle":I
    if-eq v3, v6, :cond_0

    if-nez v3, :cond_1

    .line 726
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 727
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 728
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 729
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 732
    if-ne v3, v6, :cond_1

    .line 733
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->getHeight()I

    move-result v1

    .line 734
    .local v1, "height":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 735
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v1

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 741
    .end local v1    # "height":I
    :cond_1
    :goto_0
    return-void

    .line 737
    .restart local v1    # "height":I
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iput v4, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method private updateLongList(II)V
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 523
    if-lez p1, :cond_1

    div-int v2, p2, p1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    const/4 v0, 0x1

    .line 524
    .local v0, "longList":Z
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mLongList:Z

    if-eq v2, v0, :cond_0

    .line 525
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mLongList:Z

    .line 527
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->onStateDependencyChanged(Z)V

    .line 529
    :cond_0
    return-void

    .end local v0    # "longList":Z
    :cond_1
    move v0, v1

    .line 523
    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mHeight:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1366
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1378
    :cond_0
    :goto_0
    return v3

    .line 1370
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1371
    .local v0, "actionMasked":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1374
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V

    .line 1375
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1323
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return v1

    .line 1327
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1329
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1335
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isInScrollingContainer()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1336
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->beginDrag()V

    .line 1337
    const/4 v1, 0x1

    goto :goto_0

    .line 1340
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mInitialTouchX:F

    .line 1341
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->startPendingDrag()V

    goto :goto_0

    .line 1345
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isPointInside(FF)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1346
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1347
    :cond_3
    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1348
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->beginDrag()V

    .line 1350
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mInitialTouchX:F

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1351
    .local v0, "pos":F
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->scrollTo(F)V

    .line 1353
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 1358
    .end local v0    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onItemCountChanged(II)V
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 508
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOldItemCount:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOldChildCount:I

    if-eq v2, p1, :cond_2

    .line 509
    :cond_0
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOldItemCount:I

    .line 510
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOldChildCount:I

    .line 512
    sub-int v2, p2, p1

    if-lez v2, :cond_3

    const/4 v1, 0x1

    .line 513
    .local v1, "hasMoreItems":Z
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 514
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 515
    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setThumbPos(F)V

    .line 518
    .end local v0    # "firstVisibleItem":I
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->updateLongList(II)V

    .line 520
    .end local v1    # "hasMoreItems":Z
    :cond_2
    return-void

    .line 512
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScroll(III)V
    .locals 4
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 886
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 887
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    sub-int v2, p3, p2

    if-lez v2, :cond_2

    move v0, v1

    .line 892
    .local v0, "hasMoreItems":Z
    :cond_2
    if-eqz v0, :cond_3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    if-eq v2, v3, :cond_3

    .line 893
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setThumbPos(F)V

    .line 896
    :cond_3
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollCompleted:Z

    .line 898
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mFirstVisibleItem:I

    if-eq v2, p1, :cond_0

    .line 899
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mFirstVisibleItem:I

    .line 902
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    if-eq v2, v3, :cond_0

    .line 903
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V

    .line 904
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 937
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->updateLayout()V

    .line 505
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1382
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1453
    :cond_0
    :goto_0
    return v1

    .line 1386
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1389
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->isPointInside(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1390
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isInScrollingContainer()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1391
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->beginDrag()V

    move v1, v2

    .line 1392
    goto :goto_0

    .line 1394
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mInitialTouchX:F

    .line 1395
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->startPendingDrag()V

    goto :goto_0

    .line 1400
    :pswitch_1
    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPendingDrag:J

    cmp-long v3, v4, v8

    if-ltz v3, :cond_3

    .line 1402
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->beginDrag()V

    .line 1404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1405
    .local v0, "pos":F
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setThumbPos(F)V

    .line 1406
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->scrollTo(F)V

    .line 1411
    .end local v0    # "pos":F
    :cond_3
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    if-ne v3, v6, :cond_0

    .line 1412
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    if-eqz v3, :cond_4

    .line 1416
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1417
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 1420
    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V

    .line 1421
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->postAutoHide()V

    move v1, v2

    .line 1423
    goto :goto_0

    .line 1428
    :pswitch_2
    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPendingDrag:J

    cmp-long v3, v4, v8

    if-ltz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mInitialTouchX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 1429
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->beginDrag()V

    .line 1434
    :cond_5
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mState:I

    if-ne v3, v6, :cond_0

    .line 1436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1437
    .restart local v0    # "pos":F
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setThumbPos(F)V

    .line 1440
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollCompleted:Z

    if-eqz v1, :cond_6

    .line 1441
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->scrollTo(F)V

    :cond_6
    move v1, v2

    .line 1444
    goto/16 :goto_0

    .line 1449
    .end local v0    # "pos":F
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    .line 1386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 392
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 393
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 394
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 395
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 396
    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 421
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mAlwaysShow:Z

    .line 423
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->onStateDependencyChanged(Z)V

    .line 425
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 403
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mEnabled:Z

    .line 405
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->onStateDependencyChanged(Z)V

    .line 407
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 458
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 459
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollBarStyle:I

    .line 461
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->updateLayout()V

    .line 463
    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 473
    if-nez p1, :cond_0

    .line 474
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    move p1, v3

    .line 478
    :cond_0
    :goto_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollbarPosition:I

    if-eq v4, p1, :cond_2

    .line 479
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mScrollbarPosition:I

    .line 480
    if-eq p1, v3, :cond_4

    move v4, v3

    :goto_1
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mLayoutFromBottom:Z

    .line 482
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewResId:[I

    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mLayoutFromBottom:Z

    if-eqz v6, :cond_5

    :goto_2
    aget v2, v4, v3

    .line 483
    .local v2, "previewResId":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 486
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 487
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 488
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 489
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 490
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewPadding:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 491
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 495
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->updateLayout()V

    .line 497
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v2    # "previewResId":I
    :cond_2
    return-void

    .line 474
    :cond_3
    const/4 p1, 0x2

    goto :goto_0

    :cond_4
    move v4, v5

    .line 480
    goto :goto_1

    :cond_5
    move v3, v5

    .line 482
    goto :goto_2
.end method

.method public setStyle(I)V
    .locals 9
    .param p1, "resId"    # I

    .prologue
    const/4 v8, 0x0

    .line 333
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 334
    .local v1, "context":Landroid/content/Context;
    const/4 v5, 0x0

    sget-object v6, Lcom/android/internal/R$styleable;->FastScroll:[I

    const v7, 0x10103f7

    invoke-virtual {v1, v5, v6, v7, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 336
    .local v4, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 337
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 338
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 339
    .local v3, "index":I
    packed-switch v3, :pswitch_data_0

    .line 337
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    :pswitch_0
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mOverlayPosition:I

    goto :goto_1

    .line 344
    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewResId:[I

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v5, v8

    goto :goto_1

    .line 347
    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewResId:[I

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v5, v6

    goto :goto_1

    .line 350
    :pswitch_3
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 353
    :pswitch_4
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 356
    :pswitch_5
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTextAppearance:I

    goto :goto_1

    .line 359
    :pswitch_6
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 362
    :pswitch_7
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTextSize:F

    goto :goto_1

    .line 365
    :pswitch_8
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewMinWidth:I

    goto :goto_1

    .line 368
    :pswitch_9
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewMinHeight:I

    goto :goto_1

    .line 371
    :pswitch_a
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbMinWidth:I

    goto :goto_1

    .line 374
    :pswitch_b
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mThumbMinHeight:I

    goto :goto_1

    .line 377
    :pswitch_c
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewPadding:I

    goto :goto_1

    .line 382
    .end local v3    # "index":I
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 384
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->updateAppearance()V

    .line 385
    return-void

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->setState(I)V

    .line 470
    return-void
.end method

.method public updateLayout()V
    .locals 3

    .prologue
    .line 556
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_0

    .line 583
    :goto_0
    return-void

    .line 560
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mUpdatingLayout:Z

    .line 562
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->updateContainerRect()V

    .line 564
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->layoutThumb()V

    .line 565
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->layoutTrack()V

    .line 567
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 568
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 569
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 570
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 571
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 573
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 575
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 576
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 577
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 578
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 579
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 582
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mUpdatingLayout:Z

    goto :goto_0
.end method

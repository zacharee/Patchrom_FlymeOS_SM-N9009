.class Lcom/sec/android/touchwiz/widget/TwFastScroller;
.super Ljava/lang/Object;
.source "TwFastScroller.java"


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

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

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

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private final mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

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

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->TAP_TIMEOUT:J

    .line 1536
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwFastScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->LEFT:Landroid/util/Property;

    .line 1552
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwFastScroller$4;

    const-string v1, "top"

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->TOP:Landroid/util/Property;

    .line 1568
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwFastScroller$5;

    const-string v1, "right"

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->RIGHT:Landroid/util/Property;

    .line 1584
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwFastScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V
    .locals 6
    .param p1, "listView"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p2, "styleResId"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 98
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 99
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 113
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewResId:[I

    .line 158
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mCurrentSection:I

    .line 161
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollbarPosition:I

    .line 213
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPendingDrag:J

    .line 222
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwFastScroller$1;

    invoke-direct {v3, p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller$1;-><init>(Lcom/sec/android/touchwiz/widget/TwFastScroller;)V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 232
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwFastScroller$2;

    invoke-direct {v3, p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller$2;-><init>(Lcom/sec/android/touchwiz/widget/TwFastScroller;)V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 240
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .line 241
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOldItemCount:I

    .line 242
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOldChildCount:I

    .line 244
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 245
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScaledTouchSlop:I

    .line 246
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getScrollBarStyle()I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollBarStyle:I

    .line 248
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollCompleted:Z

    .line 249
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    .line 250
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mMatchDragPosition:Z

    .line 253
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 254
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 255
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 256
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 257
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    .line 258
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 260
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 261
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 263
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setStyle(I)V

    .line 265
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    .line 266
    .local v1, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 267
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 268
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 269
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 270
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 271
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 273
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getSectionsFromIndexer()V

    .line 274
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOldChildCount:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOldItemCount:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->updateLongList(II)V

    .line 275
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setScrollbarPosition(I)V

    .line 276
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->postAutoHide()V

    .line 277
    return-void

    .line 250
    .end local v1    # "overlay":Landroid/view/ViewGroupOverlay;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwFastScroller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwFastScroller;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwFastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwFastScroller;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mShowingPrimary:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/touchwiz/widget/TwFastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwFastScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 1529
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

    .line 1600
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwFastScroller;->LEFT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1601
    .local v1, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwFastScroller;->TOP:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1602
    .local v3, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwFastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1603
    .local v2, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwFastScroller;->BOTTOM:Landroid/util/Property;

    new-array v5, v8, [I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1604
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

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .prologue
    .line 1522
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

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
    .line 590
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 591
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 592
    return-void

    .line 591
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private beginDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1312
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPendingDrag:J

    .line 1314
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    .line 1316
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    if-eqz v0, :cond_0

    .line 1317
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getSectionsFromIndexer()V

    .line 1320
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    if-eqz v0, :cond_1

    .line 1321
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1322
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 1325
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->cancelFling()V

    .line 1326
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1288
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1290
    .local v8, "cancelFling":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1291
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1292
    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    .prologue
    .line 1300
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPendingDrag:J

    .line 1301
    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 532
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 534
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 535
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 537
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 538
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 539
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 542
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 544
    return-object v1
.end method

.method private getPosFromItemCount(III)F
    .locals 18
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .line 1207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v15, :cond_1

    .line 1208
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getSectionsFromIndexer()V

    .line 1211
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSections:[Ljava/lang/Object;

    array-length v15, v15

    if-lez v15, :cond_4

    const/4 v4, 0x1

    .line 1213
    .local v4, "hasSections":Z
    :goto_0
    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mMatchDragPosition:Z

    if-nez v15, :cond_5

    .line 1214
    :cond_2
    move/from16 v0, p1

    int-to-float v15, v0

    sub-int v16, p3, p2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v11, v15, v16

    .line 1280
    :cond_3
    :goto_1
    return v11

    .line 1211
    .end local v4    # "hasSections":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 1217
    .restart local v4    # "hasSections":Z
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mHeaderCount:I

    sub-int p1, p1, v15

    .line 1218
    if-gez p1, :cond_6

    .line 1219
    const/4 v11, 0x0

    goto :goto_1

    .line 1221
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mHeaderCount:I

    sub-int p3, p3, v15

    .line 1224
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1226
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v15

    if-nez v15, :cond_8

    .line 1227
    :cond_7
    const/4 v5, 0x0

    .line 1233
    .local v5, "incrementalPos":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v12

    .line 1234
    .local v12, "section":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v15, v12}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v14

    .line 1235
    .local v14, "sectionPos":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSections:[Ljava/lang/Object;

    array-length v13, v15

    .line 1237
    .local v13, "sectionCount":I
    add-int/lit8 v15, v13, -0x1

    if-ge v12, v15, :cond_a

    .line 1239
    add-int/lit8 v15, v12, 0x1

    if-ge v15, v13, :cond_9

    .line 1240
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v16, v12, 0x1

    invoke-interface/range {v15 .. v16}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    .line 1244
    .local v8, "nextSectionPos":I
    :goto_3
    sub-int v10, v8, v14

    .line 1251
    .end local v8    # "nextSectionPos":I
    .local v10, "positionsInSection":I
    :goto_4
    if-nez v10, :cond_b

    .line 1252
    const/4 v9, 0x0

    .line 1258
    .local v9, "posWithinSection":F
    :goto_5
    int-to-float v15, v12

    add-float/2addr v15, v9

    int-to-float v0, v13

    move/from16 v16, v0

    div-float v11, v15, v16

    .line 1263
    .local v11, "result":F
    if-lez p1, :cond_3

    add-int v15, p1, p2

    move/from16 v0, p3

    if-ne v15, v0, :cond_3

    .line 1264
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    add-int/lit8 v16, p2, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1265
    .local v6, "lastChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v1

    .line 1268
    .local v1, "bottomPadding":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getClipToPadding()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1269
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 1270
    .local v7, "maxSize":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v15

    sub-int/2addr v15, v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v3, v15, v16

    .line 1275
    .local v3, "currentVisibleSize":I
    :goto_6
    if-lez v3, :cond_3

    if-lez v7, :cond_3

    .line 1276
    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v11

    int-to-float v0, v3

    move/from16 v16, v0

    int-to-float v0, v7

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v15, v15, v16

    add-float/2addr v11, v15

    goto/16 :goto_1

    .line 1229
    .end local v1    # "bottomPadding":I
    .end local v3    # "currentVisibleSize":I
    .end local v5    # "incrementalPos":F
    .end local v6    # "lastChild":Landroid/view/View;
    .end local v7    # "maxSize":I
    .end local v9    # "posWithinSection":F
    .end local v10    # "positionsInSection":I
    .end local v11    # "result":F
    .end local v12    # "section":I
    .end local v13    # "sectionCount":I
    .end local v14    # "sectionPos":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingTop()I

    move-result v15

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v5, v15, v16

    .restart local v5    # "incrementalPos":F
    goto/16 :goto_2

    .line 1242
    .restart local v12    # "section":I
    .restart local v13    # "sectionCount":I
    .restart local v14    # "sectionPos":I
    :cond_9
    add-int/lit8 v8, p3, -0x1

    .restart local v8    # "nextSectionPos":I
    goto :goto_3

    .line 1246
    .end local v8    # "nextSectionPos":I
    :cond_a
    sub-int v10, p3, v14

    .restart local v10    # "positionsInSection":I
    goto :goto_4

    .line 1254
    :cond_b
    move/from16 v0, p1

    int-to-float v15, v0

    add-float/2addr v15, v5

    int-to-float v0, v14

    move/from16 v16, v0

    sub-float v15, v15, v16

    int-to-float v0, v10

    move/from16 v16, v0

    div-float v9, v15, v16

    .restart local v9    # "posWithinSection":F
    goto/16 :goto_5

    .line 1272
    .restart local v1    # "bottomPadding":I
    .restart local v6    # "lastChild":Landroid/view/View;
    .restart local v11    # "result":F
    :cond_c
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int v7, v15, v1

    .line 1273
    .restart local v7    # "maxSize":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v15

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v3, v15, v16

    .restart local v3    # "currentVisibleSize":I
    goto :goto_6
.end method

.method private getPosFromMotionEvent(F)F
    .locals 8
    .param p1, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 1190
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 1191
    .local v4, "trackImage":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v1, v6

    .line 1192
    .local v1, "min":F
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v0, v6

    .line 1193
    .local v0, "max":F
    move v2, v1

    .line 1194
    .local v2, "offset":F
    sub-float v3, v0, v1

    .line 1198
    .local v3, "range":F
    cmpg-float v6, v3, v5

    if-gtz v6, :cond_0

    .line 1202
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
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 907
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 909
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 910
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 911
    check-cast v2, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mHeaderCount:I

    .line 912
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 915
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    instance-of v2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 916
    check-cast v2, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 918
    .local v1, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    .line 919
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 920
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 921
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSections:[Ljava/lang/Object;

    .line 931
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_1
    :goto_0
    return-void

    .line 923
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_2
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    .line 924
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 925
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 926
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 928
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    :cond_3
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 929
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSections:[Ljava/lang/Object;

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
    .line 1503
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1504
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 1506
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1507
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1508
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 1509
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1506
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1511
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 1515
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1473
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isPointInsideY(F)Z

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
    .locals 3
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1477
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mLayoutFromRight:Z

    if-eqz v2, :cond_2

    .line 1478
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1478
    goto :goto_0

    .line 1480
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isPointInsideY(F)Z
    .locals 4
    .param p1, "y"    # F

    .prologue
    .line 1485
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v1

    .line 1486
    .local v1, "offset":F
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float v2, v3, v1

    .line 1487
    .local v2, "top":F
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    int-to-float v3, v3

    add-float v0, v3, v1

    .line 1488
    .local v0, "bottom":F
    cmpl-float v3, p1, v2

    if-ltz v3, :cond_0

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private layoutThumb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 744
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 745
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 746
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 747
    return-void
.end method

.method private layoutTrack()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 754
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 755
    .local v9, "track":Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 756
    .local v6, "thumb":Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 757
    .local v1, "container":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 758
    .local v2, "containerWidth":I
    const/high16 v12, -0x80000000

    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 759
    .local v11, "widthMeasureSpec":I
    invoke-static {v13, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 760
    .local v3, "heightMeasureSpec":I
    invoke-virtual {v9, v11, v3}, Landroid/view/View;->measure(II)V

    .line 762
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 763
    .local v10, "trackWidth":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v7, v12, 0x2

    .line 764
    .local v7, "thumbHalfHeight":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    add-int v4, v12, v13

    .line 765
    .local v4, "left":I
    add-int v5, v4, v10

    .line 766
    .local v5, "right":I
    iget v12, v1, Landroid/graphics/Rect;->top:I

    add-int v8, v12, v7

    .line 767
    .local v8, "top":I
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v12, v7

    .line 768
    .local v0, "bottom":I
    invoke-virtual {v9, v4, v8, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 769
    return-void
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 680
    if-nez p2, :cond_0

    .line 681
    const/4 v8, 0x0

    .line 682
    .local v8, "marginLeft":I
    const/4 v10, 0x0

    .line 683
    .local v10, "marginTop":I
    const/4 v9, 0x0

    .line 690
    .local v9, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 691
    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 692
    .local v5, "containerWidth":I
    sub-int v15, v5, v8

    sub-int v1, v15, v9

    .line 693
    .local v1, "adjMaxWidth":I
    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 694
    .local v14, "widthMeasureSpec":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 695
    .local v6, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v6}, Landroid/view/View;->measure(II)V

    .line 698
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 699
    .local v4, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 700
    .local v13, "width":I
    div-int/lit8 v15, v4, 0xa

    add-int/2addr v15, v10

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v12, v15, v16

    .line 701
    .local v12, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v2, v12, v15

    .line 702
    .local v2, "bottom":I
    sub-int v15, v5, v13

    div-int/lit8 v15, v15, 0x2

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v7, v15, v16

    .line 703
    .local v7, "left":I
    add-int v11, v7, v13

    .line 704
    .local v11, "right":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v12, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 705
    return-void

    .line 685
    .end local v1    # "adjMaxWidth":I
    .end local v2    # "bottom":I
    .end local v3    # "container":Landroid/graphics/Rect;
    .end local v4    # "containerHeight":I
    .end local v5    # "containerWidth":I
    .end local v6    # "heightMeasureSpec":I
    .end local v7    # "left":I
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    .end local v10    # "marginTop":I
    .end local v11    # "right":I
    .end local v12    # "top":I
    .end local v13    # "width":I
    .end local v14    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 686
    .restart local v8    # "marginLeft":I
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 687
    .restart local v10    # "marginTop":I
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .restart local v9    # "marginRight":I
    goto :goto_0
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 605
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 606
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 607
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 608
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 610
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    .line 611
    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 615
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 632
    if-nez p3, :cond_0

    .line 633
    const/4 v7, 0x0

    .line 634
    .local v7, "marginLeft":I
    const/4 v9, 0x0

    .line 635
    .local v9, "marginTop":I
    const/4 v8, 0x0

    .line 642
    .local v8, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 643
    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 645
    .local v4, "containerWidth":I
    if-nez p2, :cond_1

    .line 646
    move v10, v4

    .line 653
    .local v10, "maxWidth":I
    :goto_1
    sub-int v15, v10, v7

    sub-int v1, v15, v8

    .line 654
    .local v1, "adjMaxWidth":I
    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 655
    .local v14, "widthMeasureSpec":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 656
    .local v5, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v5}, Landroid/view/View;->measure(II)V

    .line 659
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 662
    .local v13, "width":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mLayoutFromRight:Z

    if-eqz v15, :cond_4

    .line 663
    if-nez p2, :cond_3

    iget v15, v3, Landroid/graphics/Rect;->right:I

    :goto_2
    sub-int v11, v15, v8

    .line 664
    .local v11, "right":I
    sub-int v6, v11, v13

    .line 671
    .local v6, "left":I
    :goto_3
    move v12, v9

    .line 672
    .local v12, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v2, v12, v15

    .line 673
    .local v2, "bottom":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v12, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 674
    return-void

    .line 637
    .end local v1    # "adjMaxWidth":I
    .end local v2    # "bottom":I
    .end local v3    # "container":Landroid/graphics/Rect;
    .end local v4    # "containerWidth":I
    .end local v5    # "heightMeasureSpec":I
    .end local v6    # "left":I
    .end local v7    # "marginLeft":I
    .end local v8    # "marginRight":I
    .end local v9    # "marginTop":I
    .end local v10    # "maxWidth":I
    .end local v11    # "right":I
    .end local v12    # "top":I
    .end local v13    # "width":I
    .end local v14    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 638
    .restart local v7    # "marginLeft":I
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 639
    .restart local v9    # "marginTop":I
    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->right:I

    .restart local v8    # "marginRight":I
    goto :goto_0

    .line 647
    .restart local v3    # "container":Landroid/graphics/Rect;
    .restart local v4    # "containerWidth":I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mLayoutFromRight:Z

    if-eqz v15, :cond_2

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v10

    .restart local v10    # "maxWidth":I
    goto :goto_1

    .line 650
    .end local v10    # "maxWidth":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int v10, v4, v15

    .restart local v10    # "maxWidth":I
    goto :goto_1

    .line 663
    .restart local v1    # "adjMaxWidth":I
    .restart local v5    # "heightMeasureSpec":I
    .restart local v13    # "width":I
    .restart local v14    # "widthMeasureSpec":I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    goto :goto_2

    .line 666
    :cond_4
    if-nez p2, :cond_5

    iget v15, v3, Landroid/graphics/Rect;->left:I

    :goto_4
    add-int v6, v15, v7

    .line 667
    .restart local v6    # "left":I
    add-int v11, v6, v13

    .restart local v11    # "right":I
    goto :goto_3

    .line 666
    .end local v6    # "left":I
    .end local v11    # "right":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v15

    goto :goto_4
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2
    .param p1, "peekIfEnabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 438
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    .line 451
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resolvePadding()V

    .line 452
    return-void

    .line 441
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    if-ne v0, v1, :cond_2

    .line 442
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->postAutoHide()V

    goto :goto_0

    .line 443
    :cond_2
    if-eqz p1, :cond_0

    .line 444
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    .line 445
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->postAutoHide()V

    goto :goto_0

    .line 448
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->stop()V

    goto :goto_0
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    .line 878
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 879
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 880
    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 3

    .prologue
    .line 804
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 805
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 806
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 807
    return-void

    .line 804
    .end local v0    # "isPressed":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollTo(F)V
    .locals 25
    .param p1, "position"    # F

    .prologue
    .line 942
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollCompleted:Z

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v4

    .line 945
    .local v4, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 946
    .local v18, "sections":[Ljava/lang/Object;
    if-nez v18, :cond_3

    const/16 v16, 0x0

    .line 948
    .local v16, "sectionCount":I
    :goto_0
    if-eqz v18, :cond_b

    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_b

    .line 949
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, p1

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    add-int/lit8 v24, v16, -0x1

    invoke-static/range {v22 .. v24}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 951
    .local v5, "exactSection":I
    move/from16 v21, v5

    .line 952
    .local v21, "targetSection":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    .line 953
    .local v20, "targetIndex":I
    move/from16 v17, v21

    .line 961
    .local v17, "sectionIndex":I
    move v9, v4

    .line 962
    .local v9, "nextIndex":I
    move/from16 v13, v20

    .line 963
    .local v13, "prevIndex":I
    move/from16 v15, v21

    .line 964
    .local v15, "prevSection":I
    add-int/lit8 v12, v21, 0x1

    .line 967
    .local v12, "nextSection":I
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    add-int/lit8 v23, v21, 0x1

    invoke-interface/range {v22 .. v23}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 972
    :cond_0
    move/from16 v0, v20

    if-ne v9, v0, :cond_2

    .line 974
    :cond_1
    if-lez v21, :cond_2

    .line 975
    add-int/lit8 v21, v21, -0x1

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    .line 977
    move/from16 v0, v20

    if-eq v13, v0, :cond_4

    .line 978
    move/from16 v15, v21

    .line 979
    move/from16 v17, v21

    .line 995
    :cond_2
    :goto_1
    add-int/lit8 v10, v12, 0x1

    .line 996
    .local v10, "nextNextSection":I
    :goto_2
    move/from16 v0, v16

    if-ge v10, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v22

    move/from16 v0, v22

    if-ne v0, v9, :cond_5

    .line 998
    add-int/lit8 v10, v10, 0x1

    .line 999
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 946
    .end local v5    # "exactSection":I
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v15    # "prevSection":I
    .end local v16    # "sectionCount":I
    .end local v17    # "sectionIndex":I
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :cond_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v16, v0

    goto/16 :goto_0

    .line 981
    .restart local v5    # "exactSection":I
    .restart local v9    # "nextIndex":I
    .restart local v12    # "nextSection":I
    .restart local v13    # "prevIndex":I
    .restart local v15    # "prevSection":I
    .restart local v16    # "sectionCount":I
    .restart local v17    # "sectionIndex":I
    .restart local v20    # "targetIndex":I
    .restart local v21    # "targetSection":I
    :cond_4
    if-nez v21, :cond_1

    .line 984
    const/16 v17, 0x0

    .line 985
    goto :goto_1

    .line 1006
    .restart local v10    # "nextNextSection":I
    :cond_5
    int-to-float v0, v15

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v14, v22, v23

    .line 1007
    .local v14, "prevPosition":F
    int-to-float v0, v12

    move/from16 v22, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v11, v22, v23

    .line 1008
    .local v11, "nextPosition":F
    if-nez v4, :cond_7

    const v19, 0x7f7fffff    # Float.MAX_VALUE

    .line 1009
    .local v19, "snapThreshold":F
    :goto_3
    if-ne v15, v5, :cond_8

    sub-float v22, p1, v14

    cmpg-float v22, v22, v19

    if-gez v22, :cond_8

    .line 1010
    move/from16 v20, v13

    .line 1017
    :goto_4
    const/16 v22, 0x0

    add-int/lit8 v23, v4, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v20

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 1020
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .line 1021
    .local v6, "expList":Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v20

    invoke-static/range {v22 .. v22}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatListPosition(J)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setSelectionFromTop(II)V

    .line 1045
    .end local v5    # "exactSection":I
    .end local v6    # "expList":Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v11    # "nextPosition":F
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v14    # "prevPosition":F
    .end local v15    # "prevSection":I
    .end local v19    # "snapThreshold":F
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mCurrentSection:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    .line 1046
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mCurrentSection:I

    .line 1048
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->transitionPreviewLayout(I)Z

    move-result v7

    .line 1049
    .local v7, "hasPreview":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mShowingPreview:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    if-eqz v7, :cond_e

    .line 1050
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->transitionToDragging()V

    .line 1055
    .end local v7    # "hasPreview":Z
    :cond_6
    :goto_6
    return-void

    .line 1008
    .restart local v5    # "exactSection":I
    .restart local v9    # "nextIndex":I
    .restart local v10    # "nextNextSection":I
    .restart local v11    # "nextPosition":F
    .restart local v12    # "nextSection":I
    .restart local v13    # "prevIndex":I
    .restart local v14    # "prevPosition":F
    .restart local v15    # "prevSection":I
    .restart local v20    # "targetIndex":I
    .restart local v21    # "targetSection":I
    :cond_7
    const/high16 v22, 0x3e000000    # 0.125f

    int-to-float v0, v4

    move/from16 v23, v0

    div-float v19, v22, v23

    goto :goto_3

    .line 1012
    .restart local v19    # "snapThreshold":F
    :cond_8
    sub-int v22, v9, v13

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v23, p1, v14

    mul-float v22, v22, v23

    sub-float v23, v11, v14

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v20, v13, v22

    goto/16 :goto_4

    .line 1024
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v22, v0

    check-cast v22, Lcom/sec/android/touchwiz/widget/TwListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v20

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionFromTop(II)V

    goto :goto_5

    .line 1027
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v20

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelection(I)V

    goto :goto_5

    .line 1030
    .end local v5    # "exactSection":I
    .end local v9    # "nextIndex":I
    .end local v10    # "nextNextSection":I
    .end local v11    # "nextPosition":F
    .end local v12    # "nextSection":I
    .end local v13    # "prevIndex":I
    .end local v14    # "prevPosition":F
    .end local v15    # "prevSection":I
    .end local v17    # "sectionIndex":I
    .end local v19    # "snapThreshold":F
    .end local v20    # "targetIndex":I
    .end local v21    # "targetSection":I
    :cond_b
    int-to-float v0, v4

    move/from16 v22, v0

    mul-float v22, v22, p1

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    add-int/lit8 v24, v4, -0x1

    invoke-static/range {v22 .. v24}, Landroid/util/MathUtils;->constrain(III)I

    move-result v8

    .line 1032
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 1033
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .line 1034
    .restart local v6    # "expList":Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mHeaderCount:I

    move/from16 v22, v0

    add-int v22, v22, v8

    invoke-static/range {v22 .. v22}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->getFlatListPosition(J)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->setSelectionFromTop(II)V

    .line 1042
    .end local v6    # "expList":Lcom/sec/android/touchwiz/widget/TwExpandableListView;
    :goto_7
    const/16 v17, -0x1

    .restart local v17    # "sectionIndex":I
    goto/16 :goto_5

    .line 1036
    .end local v17    # "sectionIndex":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/sec/android/touchwiz/widget/TwListView;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v22, v0

    check-cast v22, Lcom/sec/android/touchwiz/widget/TwListView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v8

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelectionFromTop(II)V

    goto :goto_7

    .line 1039
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mHeaderCount:I

    move/from16 v23, v0

    add-int v23, v23, v8

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelection(I)V

    goto :goto_7

    .line 1051
    .end local v8    # "index":I
    .restart local v7    # "hasPreview":Z
    .restart local v17    # "sectionIndex":I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mShowingPreview:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    if-nez v7, :cond_6

    .line 1052
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->transitionToVisible()V

    goto/16 :goto_6
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 772
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 774
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 775
    const/4 p1, 0x1

    .line 778
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    if-ne p1, v0, :cond_1

    .line 801
    :goto_0
    return-void

    .line 782
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 798
    :goto_1
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    .line 800
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->refreshDrawablePressedState()V

    goto :goto_0

    .line 784
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->transitionToHidden()V

    goto :goto_1

    .line 787
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->transitionToVisible()V

    goto :goto_1

    .line 790
    :pswitch_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 791
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->transitionToDragging()V

    goto :goto_1

    .line 793
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->transitionToVisible()V

    goto :goto_1

    .line 782
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
    .line 1149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1150
    .local v2, "container":Landroid/graphics/Rect;
    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 1151
    .local v16, "top":I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1153
    .local v1, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackImage:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    .line 1154
    .local v17, "trackImage":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 1155
    .local v14, "thumbImage":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v18

    int-to-float v5, v0

    .line 1156
    .local v5, "min":F
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v18

    move/from16 v0, v18

    int-to-float v3, v0

    .line 1157
    .local v3, "max":F
    move v7, v5

    .line 1158
    .local v7, "offset":F
    sub-float v13, v3, v5

    .line 1159
    .local v13, "range":F
    mul-float v18, p1, v13

    add-float v15, v18, v7

    .line 1160
    .local v15, "thumbMiddle":F
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v15, v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1163
    .local v9, "previewImage":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v8, v18, v19

    .line 1165
    .local v8, "previewHalfHeight":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayPosition:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 1174
    const/4 v11, 0x0

    .line 1179
    .local v11, "previewPos":F
    :goto_0
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v6, v18, v8

    .line 1180
    .local v6, "minP":F
    int-to-float v0, v1

    move/from16 v18, v0

    sub-float v4, v18, v8

    .line 1181
    .local v4, "maxP":F
    invoke-static {v11, v6, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v10

    .line 1182
    .local v10, "previewMiddle":F
    sub-float v12, v10, v8

    .line 1183
    .local v12, "previewTop":F
    invoke-virtual {v9, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1187
    return-void

    .line 1167
    .end local v4    # "maxP":F
    .end local v6    # "minP":F
    .end local v10    # "previewMiddle":F
    .end local v11    # "previewPos":F
    .end local v12    # "previewTop":F
    :pswitch_0
    move v11, v15

    .line 1168
    .restart local v11    # "previewPos":F
    goto :goto_0

    .line 1170
    .end local v11    # "previewPos":F
    :pswitch_1
    sub-float v11, v15, v8

    .line 1171
    .restart local v11    # "previewPos":F
    goto :goto_0

    .line 1165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startPendingDrag()V
    .locals 4

    .prologue
    .line 1308
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/sec/android/touchwiz/widget/TwFastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPendingDrag:J

    .line 1309
    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 24
    .param p1, "sectionIndex"    # I

    .prologue
    .line 1066
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSections:[Ljava/lang/Object;

    .line 1067
    .local v13, "sections":[Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1068
    .local v19, "text":Ljava/lang/String;
    if-eqz v13, :cond_0

    if-ltz p1, :cond_0

    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 1069
    aget-object v12, v13, p1

    .line 1070
    .local v12, "section":Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 1071
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1075
    .end local v12    # "section":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1076
    .local v4, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1079
    .local v7, "preview":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mShowingPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1080
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1081
    .local v15, "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSecondaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .line 1088
    .local v17, "target":Landroid/widget/TextView;
    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1090
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1097
    :cond_1
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v14

    .line 1098
    .local v14, "showTarget":Landroid/animation/Animator;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x32

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    .line 1099
    .local v6, "hideShowing":Landroid/animation/Animator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1102
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 1103
    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1104
    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 1105
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v0, v20

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1106
    invoke-static {v7, v4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v9

    .line 1107
    .local v9, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v20, 0x64

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1109
    new-instance v20, Landroid/animation/AnimatorSet;

    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    .line 1111
    .local v5, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1115
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v20

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v21

    sub-int v8, v20, v21

    .line 1120
    .local v8, "previewWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getWidth()I

    move-result v18

    .line 1121
    .local v18, "targetWidth":I
    move/from16 v0, v18

    if-le v0, v8, :cond_4

    .line 1122
    int-to-float v0, v8

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1123
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1124
    .local v11, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1130
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v16

    .line 1131
    .local v16, "showingWidth":I
    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 1132
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v20, v21

    .line 1133
    .local v10, "scale":F
    invoke-static {v15, v10}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v20

    const-wide/16 v22, 0x64

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v11

    .line 1134
    .restart local v11    # "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1137
    .end local v10    # "scale":F
    .end local v11    # "scaleAnim":Landroid/animation/Animator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    .line 1139
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    const/16 v20, 0x1

    :goto_2
    return v20

    .line 1083
    .end local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v6    # "hideShowing":Landroid/animation/Animator;
    .end local v8    # "previewWidth":I
    .end local v9    # "resizePreview":Landroid/animation/Animator;
    .end local v14    # "showTarget":Landroid/animation/Animator;
    .end local v15    # "showing":Landroid/widget/TextView;
    .end local v16    # "showingWidth":I
    .end local v17    # "target":Landroid/widget/TextView;
    .end local v18    # "targetWidth":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1084
    .restart local v15    # "showing":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPrimaryText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    .restart local v17    # "target":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 1126
    .restart local v5    # "builder":Landroid/animation/AnimatorSet$Builder;
    .restart local v6    # "hideShowing":Landroid/animation/Animator;
    .restart local v8    # "previewWidth":I
    .restart local v9    # "resizePreview":Landroid/animation/Animator;
    .restart local v14    # "showTarget":Landroid/animation/Animator;
    .restart local v18    # "targetWidth":I
    :cond_4
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    goto :goto_1

    .line 1139
    .restart local v16    # "showingWidth":I
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

    .line 860
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 861
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 864
    :cond_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 867
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x0

    new-array v4, v8, [Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 870
    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 871
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v7

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 872
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 874
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mShowingPreview:Z

    .line 875
    return-void
.end method

.method private transitionToHidden()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x12c

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 813
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 814
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 817
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 821
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mLayoutFromRight:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 822
    .local v1, "offset":F
    :goto_0
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v10, [Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v9

    invoke-static {v3, v1, v4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 826
    .local v2, "slideOut":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 827
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v10, [Landroid/animation/Animator;

    aput-object v0, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 828
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 830
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mShowingPreview:Z

    .line 831
    return-void

    .line 821
    .end local v1    # "offset":F
    .end local v2    # "slideOut":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

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

    .line 837
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    .line 838
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 841
    :cond_0
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v4, 0x3f800000    # 1.0f

    new-array v5, v9, [Landroid/view/View;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 843
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v11, [Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v5, v4, v9

    invoke-static {v3, v10, v4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 846
    .local v1, "fadeOut":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v9, [Landroid/view/View;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v5, v4, v8

    invoke-static {v3, v10, v4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 849
    .local v2, "slideIn":Landroid/animation/Animator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 850
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v4, v11, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v9

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 851
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 853
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mShowingPreview:Z

    .line 854
    return-void
.end method

.method private updateAppearance()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 280
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 281
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 284
    .local v2, "width":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 286
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 290
    :cond_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbMinWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 292
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbMinHeight:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 293
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 294
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 298
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbMinWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mWidth:I

    .line 300
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 301
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewMinHeight:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 303
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTextAppearance:I

    if-eqz v3, :cond_2

    .line 304
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTextAppearance:I

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 305
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTextAppearance:I

    invoke-virtual {v3, v0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 308
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_3

    .line 309
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 310
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 313
    :cond_3
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTextSize:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 314
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTextSize:F

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 315
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTextSize:F

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 318
    :cond_4
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewMinHeight:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 319
    .local v1, "textMinSize":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 320
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 321
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 322
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 323
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 324
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 326
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->refreshDrawablePressedState()V

    .line 327
    return-void
.end method

.method private updateContainerRect()V
    .locals 7

    .prologue
    const/high16 v6, 0x1000000

    const/4 v4, 0x0

    .line 711
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    .line 712
    .local v1, "list":Lcom/sec/android/touchwiz/widget/TwAbsListView;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resolvePadding()V

    .line 714
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 715
    .local v0, "container":Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 716
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 717
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 718
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 720
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollBarStyle:I

    .line 721
    .local v2, "scrollbarStyle":I
    if-eq v2, v6, :cond_0

    if-nez v2, :cond_1

    .line 723
    :cond_0
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 724
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 725
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 726
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 729
    if-ne v2, v6, :cond_1

    .line 730
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getWidth()I

    move-result v3

    .line 731
    .local v3, "width":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 732
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 738
    .end local v3    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 734
    .restart local v3    # "width":I
    :cond_2
    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private updateLongList(II)V
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 520
    if-lez p1, :cond_1

    div-int v2, p2, p1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    const/4 v0, 0x1

    .line 521
    .local v0, "longList":Z
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mLongList:Z

    if-eq v2, v0, :cond_0

    .line 522
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mLongList:Z

    .line 524
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onStateDependencyChanged(Z)V

    .line 526
    :cond_0
    return-void

    .end local v0    # "longList":Z
    :cond_1
    move v0, v1

    .line 520
    goto :goto_0
.end method


# virtual methods
.method public getWidth()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mAlwaysShow:Z

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

    .line 1372
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1384
    :cond_0
    :goto_0
    return v3

    .line 1376
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1377
    .local v0, "actionMasked":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isPointInside(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1380
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    .line 1381
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1329
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1368
    :cond_0
    :goto_0
    return v1

    .line 1333
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1335
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1341
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInScrollingContainer()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1342
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->beginDrag()V

    .line 1343
    const/4 v1, 0x1

    goto :goto_0

    .line 1346
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mInitialTouchY:F

    .line 1347
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->startPendingDrag()V

    goto :goto_0

    .line 1351
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isPointInside(FF)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1352
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1353
    :cond_3
    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1354
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->beginDrag()V

    .line 1356
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mInitialTouchY:F

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1357
    .local v0, "pos":F
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->scrollTo(F)V

    .line 1359
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 1364
    .end local v0    # "pos":F
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1333
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
    .line 505
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOldItemCount:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOldChildCount:I

    if-eq v2, p1, :cond_2

    .line 506
    :cond_0
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOldItemCount:I

    .line 507
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOldChildCount:I

    .line 509
    sub-int v2, p2, p1

    if-lez v2, :cond_3

    const/4 v1, 0x1

    .line 510
    .local v1, "hasMoreItems":Z
    :goto_0
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 511
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 512
    .local v0, "firstVisibleItem":I
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setThumbPos(F)V

    .line 515
    .end local v0    # "firstVisibleItem":I
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->updateLongList(II)V

    .line 517
    .end local v1    # "hasMoreItems":Z
    :cond_2
    return-void

    .line 509
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

    .line 883
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 884
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    sub-int v2, p3, p2

    if-lez v2, :cond_2

    move v0, v1

    .line 889
    .local v0, "hasMoreItems":Z
    :cond_2
    if-eqz v0, :cond_3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    if-eq v2, v3, :cond_3

    .line 890
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setThumbPos(F)V

    .line 893
    :cond_3
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollCompleted:Z

    .line 895
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mFirstVisibleItem:I

    if-eq v2, p1, :cond_0

    .line 896
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mFirstVisibleItem:I

    .line 899
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    if-eq v2, v3, :cond_0

    .line 900
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    .line 901
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->postAutoHide()V

    goto :goto_0
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 934
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 935
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->updateLayout()V

    .line 502
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

    .line 1388
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1459
    :cond_0
    :goto_0
    return v1

    .line 1392
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1395
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isPointInside(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1396
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInScrollingContainer()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1397
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->beginDrag()V

    move v1, v2

    .line 1398
    goto :goto_0

    .line 1400
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mInitialTouchY:F

    .line 1401
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->startPendingDrag()V

    goto :goto_0

    .line 1406
    :pswitch_1
    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPendingDrag:J

    cmp-long v3, v4, v8

    if-ltz v3, :cond_3

    .line 1408
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->beginDrag()V

    .line 1410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1411
    .local v0, "pos":F
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setThumbPos(F)V

    .line 1412
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->scrollTo(F)V

    .line 1417
    .end local v0    # "pos":F
    :cond_3
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    if-ne v3, v6, :cond_0

    .line 1418
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    if-eqz v3, :cond_4

    .line 1422
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1423
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 1426
    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    .line 1427
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->postAutoHide()V

    move v1, v2

    .line 1429
    goto :goto_0

    .line 1434
    :pswitch_2
    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPendingDrag:J

    cmp-long v3, v4, v8

    if-ltz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mInitialTouchY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 1435
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->beginDrag()V

    .line 1440
    :cond_5
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mState:I

    if-ne v3, v6, :cond_0

    .line 1442
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1443
    .restart local v0    # "pos":F
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setThumbPos(F)V

    .line 1446
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollCompleted:Z

    if-eqz v1, :cond_6

    .line 1447
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->scrollTo(F)V

    :cond_6
    move v1, v2

    .line 1450
    goto/16 :goto_0

    .line 1455
    .end local v0    # "pos":F
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    .line 1392
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
    .line 388
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 390
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 391
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 392
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 393
    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 418
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mAlwaysShow:Z

    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onStateDependencyChanged(Z)V

    .line 422
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 400
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mEnabled:Z

    .line 402
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onStateDependencyChanged(Z)V

    .line 404
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 455
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 456
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollBarStyle:I

    .line 458
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->updateLayout()V

    .line 460
    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 470
    if-nez p1, :cond_0

    .line 471
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    move p1, v3

    .line 475
    :cond_0
    :goto_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollbarPosition:I

    if-eq v4, p1, :cond_2

    .line 476
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mScrollbarPosition:I

    .line 477
    if-eq p1, v3, :cond_4

    move v4, v3

    :goto_1
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mLayoutFromRight:Z

    .line 479
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewResId:[I

    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mLayoutFromRight:Z

    if-eqz v6, :cond_5

    :goto_2
    aget v2, v4, v3

    .line 480
    .local v2, "previewResId":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 483
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 484
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 485
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 486
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 487
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewPadding:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewPadding:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 488
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 492
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->updateLayout()V

    .line 494
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v2    # "previewResId":I
    :cond_2
    return-void

    .line 471
    :cond_3
    const/4 p1, 0x2

    goto :goto_0

    :cond_4
    move v4, v5

    .line 477
    goto :goto_1

    :cond_5
    move v3, v5

    .line 479
    goto :goto_2
.end method

.method public setStyle(I)V
    .locals 9
    .param p1, "resId"    # I

    .prologue
    const/4 v8, 0x0

    .line 330
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mList:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 331
    .local v1, "context":Landroid/content/Context;
    const/4 v5, 0x0

    sget-object v6, Lcom/android/internal/R$styleable;->FastScroll:[I

    const v7, 0x10103f7

    invoke-virtual {v1, v5, v6, v7, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 333
    .local v4, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 334
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 335
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 336
    .local v3, "index":I
    packed-switch v3, :pswitch_data_0

    .line 334
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :pswitch_0
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mOverlayPosition:I

    goto :goto_1

    .line 341
    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewResId:[I

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v5, v8

    goto :goto_1

    .line 344
    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewResId:[I

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v5, v6

    goto :goto_1

    .line 347
    :pswitch_3
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 350
    :pswitch_4
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 353
    :pswitch_5
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTextAppearance:I

    goto :goto_1

    .line 356
    :pswitch_6
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 359
    :pswitch_7
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTextSize:F

    goto :goto_1

    .line 362
    :pswitch_8
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewMinWidth:I

    goto :goto_1

    .line 365
    :pswitch_9
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewMinHeight:I

    goto :goto_1

    .line 368
    :pswitch_a
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbMinWidth:I

    goto :goto_1

    .line 371
    :pswitch_b
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mThumbMinHeight:I

    goto :goto_1

    .line 374
    :pswitch_c
    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewPadding:I

    goto :goto_1

    .line 379
    .end local v3    # "index":I
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 381
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->updateAppearance()V

    .line 382
    return-void

    .line 336
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
    .line 466
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setState(I)V

    .line 467
    return-void
.end method

.method public updateLayout()V
    .locals 3

    .prologue
    .line 553
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mUpdatingLayout:Z

    if-eqz v1, :cond_0

    .line 580
    :goto_0
    return-void

    .line 557
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mUpdatingLayout:Z

    .line 559
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->updateContainerRect()V

    .line 561
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->layoutThumb()V

    .line 562
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->layoutTrack()V

    .line 564
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 565
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 566
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 567
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 568
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 570
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 572
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 573
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 574
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 575
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 576
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 579
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller;->mUpdatingLayout:Z

    goto :goto_0
.end method

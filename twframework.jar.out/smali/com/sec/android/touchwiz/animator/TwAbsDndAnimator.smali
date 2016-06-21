.class public abstract Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;
.super Ljava/lang/Object;
.source "TwAbsDndAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;,
        Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;,
        Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndAutoScrollListener;,
        Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;
    }
.end annotation


# static fields
.field static final BITMAP_ALPHA:I = 0xb3

.field static final DND_AUTO_SCROLL_DELTA_VALUE:I = 0x7

.field static final DND_AUTO_SCROLL_END:I = 0x2

.field static final DND_AUTO_SCROLL_FRAME_DELAY:I = 0xa

.field static final DND_AUTO_SCROLL_NONE:I = 0x0

.field static final DND_AUTO_SCROLL_START:I = 0x1

.field static final DND_TOUCH_STATUS_MOVING:I = 0x2

.field static final DND_TOUCH_STATUS_NON:I = 0x0

.field static final DND_TOUCH_STATUS_START:I = 0x1

.field static final DRAGGING_RELEASE_ANIM_DURATION_MULTIPLICATOR:F = 0.7f

.field static final DRAG_HANDLE_FADE_DURATION:I = 0xc8

.field static EMPTY_STATE_SET:[I = null

.field static final FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final INVALID_POINTER_ID:I = -0x1

.field static PRESSED_STATE_SET:[I = null

.field static final SCALEUPDOWNANIM_RESISTANCE:F = 15.0f

.field static final SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mActivePointerId:I

.field mAutoScrollBottomDelta:I

.field mAutoScrollListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndAutoScrollListener;

.field mAutoScrollRunnable:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;

.field mAutoScrollTopDelta:I

.field mCanvasSaveCount:I

.field mContext:Landroid/content/Context;

.field private final mDensity:F

.field mDndAnimationCore:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;

.field mDndAutoScrollMode:I

.field mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

.field mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

.field mDndMode:Z

.field mDndTouchMode:I

.field mDndTouchOffsetX:I

.field mDndTouchOffsetY:I

.field mDndTouchX:I

.field mDndTouchY:I

.field mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

.field mDragGrabHandlePadding:Landroid/graphics/Rect;

.field mDragGrabHandlePosGravity:I

.field mDragHandleAlpha:I

.field mDragPos:I

.field mDragView:Landroid/view/View;

.field mDragViewBitmap:Landroid/graphics/Bitmap;

.field mDragViewBitmapAlpha:I

.field mDragViewBitmapPaint:Landroid/graphics/Paint;

.field mDragViewBitmapTranslateX:I

.field mDragViewBitmapTranslateY:I

.field mDragViewRect:Landroid/graphics/Rect;

.field mDropDonePending:Z

.field mFirstDragPos:I

.field mFirstTouchX:I

.field mFirstTouchY:I

.field mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

.field mListItemSelectionAnimating:Z

.field mRetainFirstDragViewPos:I

.field mScaleUpAndDownAnimation:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;

.field mTempEvent:Landroid/view/MotionEvent;

.field mTempRect:Landroid/graphics/Rect;

.field mTempTrans:Landroid/view/animation/Transformation;

.field mUserSetDragItemBitmap:Z

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    const-class v0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->PRESSED_STATE_SET:[I

    .line 50
    new-array v0, v2, [I

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->EMPTY_STATE_SET:[I

    .line 121
    new-instance v0, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    .line 123
    new-instance v0, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 124
    new-instance v0, Landroid/view/animation/interpolator/QuintEaseIn;

    invoke-direct {v0}, Landroid/view/animation/interpolator/QuintEaseIn;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/high16 v2, -0x80000000

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v3, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mActivePointerId:I

    .line 73
    const/16 v0, 0xff

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragHandleAlpha:I

    .line 114
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mListItemSelectionAnimating:Z

    .line 115
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mUserSetDragItemBitmap:Z

    .line 117
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDropDonePending:Z

    .line 120
    iput v3, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mRetainFirstDragViewPos:I

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mTempRect:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    .line 129
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragViewBitmapTranslateX:I

    .line 130
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragViewBitmapTranslateY:I

    .line 132
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mCanvasSaveCount:I

    .line 137
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TwDndGridAnimator constructor arguments cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mView:Landroid/view/View;

    .line 144
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;

    invoke-direct {v0, p2}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndAnimationCore:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;

    .line 145
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndAnimationCore:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->itemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    .line 146
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndMode:Z

    .line 148
    iput v3, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mFirstDragPos:I

    .line 149
    iput v3, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragPos:I

    .line 150
    iput v2, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndTouchX:I

    .line 151
    iput v2, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndTouchY:I

    .line 152
    iput v2, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndTouchOffsetX:I

    .line 153
    iput v2, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndTouchOffsetY:I

    .line 155
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndTouchMode:I

    .line 157
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDensity:F

    .line 159
    iput-object v4, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragView:Landroid/view/View;

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragViewRect:Landroid/graphics/Rect;

    .line 162
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    .line 163
    const/16 v0, 0xb3

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragViewBitmapAlpha:I

    .line 165
    iput-object v4, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 166
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandlePosGravity:I

    .line 167
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    .line 169
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;

    invoke-direct {v0, p0, v4}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;-><init>(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;

    .line 170
    const/high16 v0, 0x40e00000    # 7.0f

    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mAutoScrollTopDelta:I

    .line 171
    const/high16 v0, -0x3f200000    # -7.0f

    iget v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mAutoScrollBottomDelta:I

    .line 172
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->setDndModeInternal(Z)V

    return-void
.end method

.method private setDndModeInternal(Z)V
    .locals 1
    .param p1, "dndMode"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndMode:Z

    .line 243
    if-nez p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mItemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;->removeAll()V

    .line 245
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->resetDndState()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 248
    return-void
.end method


# virtual methods
.method activatedByLongPress()Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

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

.method public getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 483
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mRetainFirstDragViewPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 484
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mRetainFirstDragViewPos:I

    if-ne p2, v0, :cond_1

    .line 485
    add-int/lit8 p2, p1, -0x1

    .line 493
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 487
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_0

    .line 488
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mRetainFirstDragViewPos:I

    add-int/lit8 v1, p1, -0x1

    if-gt v0, v1, :cond_2

    .line 489
    iget p2, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mRetainFirstDragViewPos:I

    goto :goto_0

    .line 490
    :cond_2
    add-int/lit8 p2, p1, -0x1

    goto :goto_0
.end method

.method public getDndListener()Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    return-object v0
.end method

.method public getDragGrabHandlePaddingBottom()I
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 417
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingLeft()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 378
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingRight()I
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 404
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method public getDragGrabHandlePaddingTop()I
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 391
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->isDndMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragView:Landroid/view/View;

    .line 259
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDndMode()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndMode:Z

    return v0
.end method

.method abstract reorderIfNeeded()V
.end method

.method resetDndPositionValues()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 445
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mFirstDragPos:I

    .line 446
    iget v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mFirstDragPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragPos:I

    .line 447
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mRetainFirstDragViewPos:I

    .line 448
    return-void
.end method

.method resetDndState()V
    .locals 0

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->resetDndTouchValuesAndBitmap()V

    .line 423
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->resetDndPositionValues()V

    .line 424
    return-void
.end method

.method resetDndTouchValuesAndBitmap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, -0x80000000

    .line 427
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndTouchMode:I

    .line 429
    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndTouchX:I

    .line 430
    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndTouchY:I

    .line 431
    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mFirstTouchX:I

    .line 432
    iput v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mFirstTouchY:I

    .line 433
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragViewBitmapTranslateX:I

    .line 434
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragViewBitmapTranslateY:I

    .line 435
    iput-object v2, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragView:Landroid/view/View;

    .line 436
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 438
    iput-object v2, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 440
    :cond_0
    iput v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndAutoScrollMode:I

    .line 441
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mAutoScrollRunnable:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$AutoScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method

.method public setAutoScrollListener(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndAutoScrollListener;)V
    .locals 0
    .param p1, "autoScrollListener"    # Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndAutoScrollListener;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mAutoScrollListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndAutoScrollListener;

    .line 318
    return-void
.end method

.method public setDndListener(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;)V
    .locals 0
    .param p1, "dndListener"    # Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndListener:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;

    .line 299
    return-void
.end method

.method public setDndMode(Z)V
    .locals 4
    .param p1, "dndMode"    # Z

    .prologue
    .line 189
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    if-nez v2, :cond_0

    .line 190
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "You must specify dndController to activate Drag&Drop."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 194
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->setDndModeInternal(Z)V

    .line 238
    :cond_2
    :goto_0
    return-void

    .line 199
    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndMode:Z

    if-eq v2, p1, :cond_2

    .line 200
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDndMode:Z

    .line 201
    .local v0, "fadeOut":Z
    if-nez v0, :cond_4

    .line 202
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->setDndModeInternal(Z)V

    .line 203
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragHandleAlpha:I

    .line 205
    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 206
    .local v1, "va":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 207
    new-instance v2, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$1;-><init>(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 219
    new-instance v2, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$2;-><init>(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 233
    if-eqz v0, :cond_5

    sget-object v2, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 235
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 233
    :cond_5
    sget-object v2, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 205
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setDragGrabHandleDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    return-void
.end method

.method public setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 339
    return-void
.end method

.method public setDragGrabHandlePadding(IIII)V
    .locals 1
    .param p1, "paddingLeft"    # I
    .param p2, "paddingTop"    # I
    .param p3, "paddingRight"    # I
    .param p4, "paddingBottom"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 363
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 364
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 365
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 367
    :cond_0
    return-void
.end method

.method public setDragGrabHandlePositionGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 348
    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragGrabHandlePosGravity:I

    .line 349
    return-void
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "item"    # Landroid/graphics/Bitmap;

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->isDndMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 276
    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mUserSetDragItemBitmap:Z

    goto :goto_0
.end method

.method public setDragViewAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 287
    iput p1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragViewBitmapAlpha:I

    .line 288
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 290
    :cond_0
    return-void
.end method

.method public speakDescriptionForAccessibility()V
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->isDndMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method speakDragReleaseForAccessibility(I)V
    .locals 6
    .param p1, "itemPosition"    # I

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080025

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 522
    return-void
.end method

.method speakDragStartForAccessibility(I)V
    .locals 6
    .param p1, "itemPosition"    # I

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080024

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 531
    return-void
.end method

.method speakNotDraggableForAccessibility(I)V
    .locals 6
    .param p1, "itemPosition"    # I

    .prologue
    .line 525
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080026

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 526
    return-void
.end method

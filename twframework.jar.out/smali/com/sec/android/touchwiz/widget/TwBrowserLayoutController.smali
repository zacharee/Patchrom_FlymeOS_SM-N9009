.class public Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;
.super Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
.source "TwBrowserLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;,
        Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;
    }
.end annotation


# static fields
.field static final MAX_VELOCITY_ON_FLING:F = 3000.0f

.field static final MIN_VELOCITY_ON_FLING:F = -3000.0f


# instance fields
.field final FLING_SENSITIVE:F

.field final HEIGHT_RATIO:F

.field private final MAX_DEGREE_OF_OVERSCROLL:F

.field final OVERSCROLL_DURATION:I

.field final OVERSCROLL_MAX_DURATION:I

.field final ROTATE_SENSITIVE:F

.field final SCROLL_SENSITIVE:F

.field final SHOW_ITEM_NUM:I

.field final SPACE_RATIO:F

.field final TAG:Ljava/lang/String;

.field final TIME_ON_FLING:I

.field final TIME_SCROLL_POSITION:I

.field final WIDTH_ALL_PARTITION:I

.field final WIDTH_CENTER_PARTITION:I

.field private mDegreeOfOverScrollView:F

.field private mDeltaX:I

.field mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

.field private mDownPosition:I

.field private mFinalXpos:F

.field private mFinishOverScrollAni:Landroid/animation/Animator;

.field private mFlingThread:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

.field private mFocusIndex:I

.field private mFocusView:Landroid/view/View;

.field private mFrameHeigh:I

.field private mFrameWidth:I

.field private mHeightMeasureSpec:I

.field private mIsOnAnimation:Z

.field private mIsOnFling:Z

.field private mIsOverScroll:Z

.field private mOverScrollItem:Landroid/view/View;

.field private mPaint:Landroid/graphics/Paint;

.field private mScrollState:I

.field private mSelectView:Landroid/view/View;

.field private mSelectedOffsetTopAndOffset:I

.field private mSelectedPosition:I

.field private mShouldStopFling:Z

.field private mSideWidthFrame:I

.field private mSpacing:I

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mVelocity:F

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V
    .locals 4
    .param p1, "aGalleryEx"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V

    .line 23
    const-string v0, "BrowserTest"

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->SHOW_ITEM_NUM:I

    .line 26
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->TIME_ON_FLING:I

    .line 27
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->TIME_SCROLL_POSITION:I

    .line 28
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->OVERSCROLL_DURATION:I

    .line 29
    const/16 v0, 0x258

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->OVERSCROLL_MAX_DURATION:I

    .line 30
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->WIDTH_ALL_PARTITION:I

    .line 31
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->WIDTH_CENTER_PARTITION:I

    .line 32
    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->ROTATE_SENSITIVE:F

    .line 33
    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->SCROLL_SENSITIVE:F

    .line 34
    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->FLING_SENSITIVE:F

    .line 35
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->HEIGHT_RATIO:F

    .line 36
    const v0, 0x3d408312    # 0.047f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->SPACE_RATIO:F

    .line 40
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectView:Landroid/view/View;

    .line 41
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusView:Landroid/view/View;

    .line 48
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnAnimation:Z

    .line 49
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnFling:Z

    .line 52
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinalXpos:F

    .line 53
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDeltaX:I

    .line 55
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedPosition:I

    .line 56
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    .line 60
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    .line 62
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;-><init>(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFlingThread:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

    .line 67
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinishOverScrollAni:Landroid/animation/Animator;

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mPaint:Landroid/graphics/Paint;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mScrollState:I

    .line 81
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    .line 740
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    .line 741
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    .line 742
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->MAX_DEGREE_OF_OVERSCROLL:F

    .line 743
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDeltaX:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->judgeFocusIndex()V

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnFling:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;
    .param p1, "x1"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->trackMotionOverScroll(I)V

    return-void
.end method

.method static synthetic access$1302(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mScrollState:I

    return p1
.end method

.method static synthetic access$1402(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnAnimation:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getCenterOfGallery()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinalXpos:F

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;
    .param p1, "x1"    # F

    .prologue
    .line 21
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinalXpos:F

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->finishOverScrollMode()V

    return-void
.end method

.method private calculateScale()V
    .locals 18

    .prologue
    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v8

    .line 524
    .local v8, "itemCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v13

    add-int v5, v12, v13

    .line 530
    .local v5, "galleryCenter":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    if-nez v12, :cond_1

    .line 558
    :cond_0
    return-void

    .line 534
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 537
    .local v3, "childView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    div-int/lit8 v13, v13, 0x2

    add-int v2, v12, v13

    .line 539
    .local v2, "childCenter":I
    sub-int v12, v5, v2

    int-to-float v4, v12

    .line 541
    .local v4, "dx":F
    const-wide v12, 0x3ff3333333333333L    # 1.2

    int-to-float v14, v5

    div-float v14, v4, v14

    float-to-double v14, v14

    const-wide v16, -0x4036666666666666L    # -0.2

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    sub-double v10, v12, v14

    .line 543
    .local v10, "scale":D
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v12

    int-to-float v6, v12

    .line 544
    .local v6, "galleyWidth":F
    int-to-float v12, v2

    sub-float v12, v6, v12

    div-float/2addr v12, v6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    int-to-float v13, v13

    mul-float v9, v12, v13

    .line 547
    .local v9, "pivotX":F
    const/4 v12, 0x0

    invoke-static {v9, v12}, Ljava/lang/Math;->min(FF)F

    .line 548
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    int-to-float v12, v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(FF)F

    .line 550
    invoke-virtual {v3, v9}, Landroid/view/View;->setPivotX(F)V

    .line 551
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {v3, v12}, Landroid/view/View;->setPivotY(F)V

    .line 553
    double-to-float v12, v10

    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleX(F)V

    .line 554
    double-to-float v12, v10

    invoke-virtual {v3, v12}, Landroid/view/View;->setScaleY(F)V

    .line 534
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private detachChild()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 685
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 686
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 688
    .local v0, "childView":Landroid/view/View;
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 689
    .local v3, "gapToFrame":I
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 690
    .local v1, "frameLeft":I
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v2, v5, v3

    .line 692
    .local v2, "frameRight":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 693
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    .line 694
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5, v7}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->requestDetachViewsFromParent(IIZ)V

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v5

    if-le v1, v5, :cond_1

    .line 698
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    add-int/2addr v5, v4

    invoke-virtual {p0, v4, v5, v7}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->requestDetachViewsFromParent(IIZ)V

    .line 685
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 701
    .end local v0    # "childView":Landroid/view/View;
    .end local v1    # "frameLeft":I
    .end local v2    # "frameRight":I
    .end local v3    # "gapToFrame":I
    :cond_2
    return-void
.end method

.method private fillToGalleryLeft(II)V
    .locals 11
    .param p1, "xPos"    # I
    .param p2, "startIndex"    # I

    .prologue
    const/4 v10, 0x0

    .line 604
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    .line 605
    .local v5, "itemSpacing":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v3

    .line 607
    .local v3, "galleryLeft":I
    move v8, p1

    .line 609
    .local v8, "startPos":I
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    sub-int v4, p2, v9

    .line 610
    .local v4, "idxView":I
    const/4 v7, 0x0

    .line 611
    .local v7, "prevIterationView":Landroid/view/View;
    if-ltz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v9

    if-gt v4, v9, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 614
    :cond_0
    move v1, p2

    .line 615
    .local v1, "curPosition":I
    const/4 v2, 0x0

    .line 616
    .local v2, "curRightEdge":I
    const/4 v0, 0x0

    .line 618
    .local v0, "count":I
    const/4 v6, 0x0

    .line 620
    .local v6, "nextIterationView":Landroid/view/View;
    if-eqz v7, :cond_1

    .line 621
    add-int/lit8 v1, p2, -0x1

    .line 622
    sub-int v2, v8, v5

    .line 625
    :cond_1
    :goto_0
    if-le v2, v3, :cond_2

    if-ltz v1, :cond_2

    .line 627
    invoke-direct {p0, v1, v2, v10}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->makeAndAddView(IIZ)Landroid/view/View;

    move-result-object v6

    .line 628
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedOffsetTopAndOffset:I

    invoke-virtual {v6, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 629
    add-int/lit8 v0, v0, 0x1

    .line 630
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v2, v9, v5

    .line 631
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 634
    :cond_2
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    sub-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    .line 635
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    .line 636
    return-void
.end method

.method private fillToGalleryRight(II)V
    .locals 11
    .param p1, "xPos"    # I
    .param p2, "startIndex"    # I

    .prologue
    .line 640
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    .line 642
    .local v4, "itemSpacing":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v10

    sub-int v2, v9, v10

    .line 645
    .local v2, "galleryRight":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v6

    .line 646
    .local v6, "numItems":I
    move v8, p1

    .line 648
    .local v8, "startPos":I
    const/4 v5, 0x0

    .line 650
    .local v5, "nextIterationView":Landroid/view/View;
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    sub-int v3, p2, v9

    .line 651
    .local v3, "idxView":I
    const/4 v7, 0x0

    .line 652
    .local v7, "prevIterationView":Landroid/view/View;
    if-ltz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v9

    if-gt v3, v9, :cond_0

    .line 653
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 655
    :cond_0
    move v1, p2

    .line 656
    .local v1, "curPosition":I
    const/4 v0, 0x0

    .line 658
    .local v0, "curLeftEdge":I
    if-eqz v7, :cond_1

    .line 659
    add-int/lit8 v1, p2, 0x1

    .line 660
    add-int v0, v8, v4

    .line 663
    :cond_1
    :goto_0
    if-ge v0, v2, :cond_2

    if-ge v1, v6, :cond_2

    .line 665
    const/4 v9, 0x1

    invoke-direct {p0, v1, v0, v9}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->makeAndAddView(IIZ)Landroid/view/View;

    move-result-object v5

    .line 666
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedOffsetTopAndOffset:I

    invoke-virtual {v5, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 667
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    add-int v0, v9, v4

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 670
    :cond_2
    return-void
.end method

.method private finishOverScrollMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 796
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    if-nez v1, :cond_0

    .line 797
    const-string v1, "TwGalleryEx"

    const-string v2, "mOverScrollItem is null!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_0
    return-void

    .line 801
    :cond_0
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    .line 803
    const v1, 0x469c4000    # 20000.0f

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 805
    .local v0, "duration":I
    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 808
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    const-string v2, "rotationY"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinishOverScrollAni:Landroid/animation/Animator;

    .line 810
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinishOverScrollAni:Landroid/animation/Animator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 811
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinishOverScrollAni:Landroid/animation/Animator;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 812
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinishOverScrollAni:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 813
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFinishOverScrollAni:Landroid/animation/Animator;

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$1;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$1;-><init>(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private getCenterOfGallery()I
    .locals 3

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v0

    .line 1094
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1
.end method

.method private getCenterOfView(Landroid/view/View;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1100
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 1101
    .local v1, "gapToFrame":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v0, v2, v1

    .line 1103
    .local v0, "frameLeft":I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    return v2
.end method

.method private judgeFocusIndex()V
    .locals 11

    .prologue
    .line 878
    const/4 v2, 0x0

    .line 879
    .local v2, "childView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v0

    .line 880
    .local v0, "childCount":I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getCenterOfGallery()I

    move-result v4

    .line 881
    .local v4, "galleryCenter":I
    const/4 v5, 0x0

    .line 882
    .local v5, "galleryStadard":I
    const/4 v1, 0x0

    .line 883
    .local v1, "childStadard":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v3

    .line 884
    .local v3, "dx":I
    const/4 v7, 0x0

    .line 886
    .local v7, "minIndex":I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    sget-object v10, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    if-ne v9, v10, :cond_1

    .line 888
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_5

    .line 890
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 891
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 892
    move v5, v4

    .line 893
    sub-int v9, v5, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 895
    .local v8, "tempDx":I
    if-ge v8, v3, :cond_0

    .line 897
    move v3, v8

    .line 898
    move v7, v6

    .line 888
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 902
    .end local v6    # "i":I
    .end local v8    # "tempDx":I
    :cond_1
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    sget-object v10, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_LEFT:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    if-ne v9, v10, :cond_3

    .line 905
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v0, :cond_5

    .line 907
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 908
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 909
    div-int/lit8 v9, v4, 0x3

    add-int v5, v4, v9

    .line 910
    sub-int v9, v5, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 912
    .restart local v8    # "tempDx":I
    if-ge v8, v3, :cond_2

    .line 914
    move v3, v8

    .line 915
    move v7, v6

    .line 905
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 920
    .end local v6    # "i":I
    .end local v8    # "tempDx":I
    :cond_3
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    sget-object v10, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_RIGHT:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    if-ne v9, v10, :cond_5

    .line 922
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v0, :cond_5

    .line 924
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 925
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 926
    div-int/lit8 v9, v4, 0x3

    sub-int v5, v4, v9

    .line 927
    sub-int v9, v5, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 929
    .restart local v8    # "tempDx":I
    if-ge v8, v3, :cond_4

    .line 931
    move v3, v8

    .line 932
    move v7, v6

    .line 922
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 938
    .end local v6    # "i":I
    .end local v8    # "tempDx":I
    :cond_5
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusIndex:I

    .line 940
    return-void
.end method

.method private makeAndAddView(IIZ)Landroid/view/View;
    .locals 19
    .param p1, "position"    # I
    .param p2, "x"    # I
    .param p3, "fromLeft"    # Z

    .prologue
    .line 1203
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getView(I)Landroid/view/View;

    move-result-object v6

    .line 1206
    .local v6, "childView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    if-nez v17, :cond_0

    .line 1207
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1210
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 1213
    .local v14, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 1215
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v17

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1, v14}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1222
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->measureView(Landroid/view/View;)V

    .line 1227
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingTop()I

    move-result v10

    .line 1228
    .local v10, "frameTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    move/from16 v17, v0

    add-int v7, v10, v17

    .line 1230
    .local v7, "frameBottom":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    .line 1232
    .local v11, "framewidth":I
    if-eqz p3, :cond_2

    .line 1233
    move/from16 v8, p2

    .line 1234
    .local v8, "frameLeft":I
    add-int v9, v8, v11

    .line 1262
    .local v9, "frameRight":I
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1263
    .local v15, "width":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1265
    .local v12, "heigth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    div-int/lit8 v18, v15, 0x2

    sub-int v16, v17, v18

    .line 1266
    .local v16, "widthGap":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    div-int/lit8 v18, v12, 0x2

    sub-int v13, v17, v18

    .line 1268
    .local v13, "heigthGap":I
    add-int v3, v8, v16

    .line 1269
    .local v3, "childLeft":I
    add-int v4, v3, v15

    .line 1270
    .local v4, "childRight":I
    add-int v5, v10, v13

    .line 1271
    .local v5, "childTop":I
    add-int v2, v5, v12

    .line 1273
    .local v2, "childBottom":I
    invoke-virtual {v6, v3, v5, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 1274
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1276
    return-object v6

    .line 1219
    .end local v2    # "childBottom":I
    .end local v3    # "childLeft":I
    .end local v4    # "childRight":I
    .end local v5    # "childTop":I
    .end local v7    # "frameBottom":I
    .end local v8    # "frameLeft":I
    .end local v9    # "frameRight":I
    .end local v10    # "frameTop":I
    .end local v11    # "framewidth":I
    .end local v12    # "heigth":I
    .end local v13    # "heigthGap":I
    .end local v15    # "width":I
    .end local v16    # "widthGap":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1, v14}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1236
    .restart local v7    # "frameBottom":I
    .restart local v10    # "frameTop":I
    .restart local v11    # "framewidth":I
    :cond_2
    sub-int v8, p2, v11

    .line 1237
    .restart local v8    # "frameLeft":I
    move/from16 v9, p2

    .restart local v9    # "frameRight":I
    goto :goto_1
.end method

.method private measureView(Landroid/view/View;)V
    .locals 13
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v12, -0x1

    const/4 v11, -0x2

    .line 157
    const/4 v8, 0x0

    .line 158
    .local v8, "widthMeasureSpec":I
    const/4 v6, 0x0

    .line 160
    .local v6, "heightMeasureSpec":I
    const/4 v5, 0x0

    .line 161
    .local v5, "childWidthSpec":I
    const/4 v2, 0x0

    .line 163
    .local v2, "childHeightSpec":I
    const/4 v3, 0x0

    .line 164
    .local v3, "childWidthMode":I
    const/4 v0, 0x0

    .line 166
    .local v0, "childHeightMode":I
    const/4 v4, 0x0

    .line 167
    .local v4, "childWidthSize":I
    const/4 v1, 0x0

    .line 171
    .local v1, "childHeightSize":I
    const/4 v7, 0x0

    .line 173
    .local v7, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 182
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mWidthMeasureSpec:I

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mHeightMeasureSpec:I

    if-eqz v9, :cond_1

    .line 184
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mWidthMeasureSpec:I

    .line 185
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mHeightMeasureSpec:I

    .line 188
    :cond_1
    if-nez v7, :cond_2

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 197
    :cond_2
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v9, :cond_3

    .line 199
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    if-lt v9, v10, :cond_7

    .line 201
    const/high16 v3, 0x40000000    # 2.0f

    .line 202
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 211
    :cond_3
    :goto_1
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v9, v11, :cond_8

    .line 213
    const/high16 v3, -0x80000000

    .line 214
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 225
    :cond_4
    :goto_2
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v9, :cond_5

    .line 227
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    if-lt v9, v10, :cond_9

    .line 229
    const/high16 v0, 0x40000000    # 2.0f

    .line 230
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 240
    :cond_5
    :goto_3
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v9, v11, :cond_a

    .line 242
    const/high16 v0, -0x80000000

    .line 243
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 252
    :cond_6
    :goto_4
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 253
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 256
    invoke-virtual {p1, v5, v2}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 206
    :cond_7
    const/high16 v3, -0x80000000

    .line 207
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    goto :goto_1

    .line 217
    :cond_8
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v9, v12, :cond_4

    .line 219
    const/high16 v3, 0x40000000    # 2.0f

    .line 220
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    goto :goto_2

    .line 234
    :cond_9
    const/high16 v0, -0x80000000

    .line 235
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_3

    .line 246
    :cond_a
    iget v9, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v9, v12, :cond_6

    .line 248
    const/high16 v0, 0x40000000    # 2.0f

    .line 249
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_4
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 676
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 674
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 680
    .end local v0    # "childView":Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->calculateScale()V

    .line 681
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 977
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    .line 979
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 945
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnFling:Z

    if-eq v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    if-ne v3, v4, :cond_1

    .line 973
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->judgeFocusIndex()V

    .line 952
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusIndex:I

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusView:Landroid/view/View;

    .line 954
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 957
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 959
    .local v1, "selectedCenter":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v4

    add-int v2, v3, v4

    .line 963
    .local v2, "targetCenter":I
    sub-int v0, v2, v1

    .line 965
    .local v0, "scrollAmount":I
    if-eqz v0, :cond_2

    .line 967
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFlingThread:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->startUsingDistance(II)V

    goto :goto_0

    .line 971
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->onFinishedMovement()V

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 8

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v7

    add-int v3, v6, v7

    .line 849
    .local v3, "galleryCenter":I
    const v2, 0x7fffffff

    .line 850
    .local v2, "closestEdgeDistance":I
    const/4 v5, 0x0

    .line 851
    .local v5, "newSelectedChildIndex":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_0

    .line 853
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 855
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    if-gt v6, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    if-lt v6, v3, :cond_1

    .line 858
    move v5, v4

    .line 871
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFocusIndex:I

    .line 873
    return-void

    .line 862
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 865
    .local v1, "childClosestEdgeDistance":I
    if-ge v1, v2, :cond_2

    .line 866
    move v2, v1

    .line 867
    move v5, v4

    .line 851
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method

.method private trackMotionOverScroll(I)V
    .locals 9
    .param p1, "deltaX"    # I

    .prologue
    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v7, -0x3ee00000    # -10.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 747
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnAnimation:Z

    if-ne v2, v6, :cond_0

    .line 793
    :goto_0
    return-void

    .line 750
    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    .line 752
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    if-nez v2, :cond_5

    move v0, v1

    .line 753
    .local v0, "origingAnle":F
    :goto_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    .line 757
    .end local v0    # "origingAnle":F
    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    int-to-float v3, p1

    const v4, 0x3da3d70a    # 0.08f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    .line 759
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_2

    .line 760
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    .line 761
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mShouldStopFling:Z

    .line 764
    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_3

    .line 765
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    .line 766
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mShouldStopFling:Z

    .line 769
    :cond_3
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    if-nez v2, :cond_6

    .line 770
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    .line 771
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_4

    .line 772
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    .line 773
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    .line 786
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    if-nez v1, :cond_7

    .line 787
    const-string v1, "TwGalleryEx"

    const-string v2, "mOverScrollItem is null!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 752
    :cond_5
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v0

    goto :goto_1

    .line 777
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    .line 779
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_4

    .line 780
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    .line 781
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    goto :goto_2

    .line 791
    :cond_7
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 792
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mOverScrollItem:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDegreeOfOverScrollView:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->sortChildView()Ljava/util/ArrayList;

    move-result-object v0

    .line 325
    .local v0, "childIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 10
    .param p1, "motionToLeft"    # Z
    .param p2, "deltaX"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 705
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v5

    .line 706
    .local v5, "itemCount":I
    if-eqz p1, :cond_0

    add-int/lit8 v3, v5, -0x1

    .line 708
    .local v3, "extremeItemPosition":I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    sub-int v8, v3, v8

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 711
    .local v1, "extremeChild":Landroid/view/View;
    if-nez v1, :cond_1

    move v6, p2

    .line 736
    :goto_1
    return v6

    .end local v1    # "extremeChild":Landroid/view/View;
    .end local v3    # "extremeItemPosition":I
    :cond_0
    move v3, v6

    .line 706
    goto :goto_0

    .line 715
    .restart local v1    # "extremeChild":Landroid/view/View;
    .restart local v3    # "extremeItemPosition":I
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v2, v7, v8

    .line 717
    .local v2, "extremeChildCenter":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    add-int v4, v7, v8

    .line 720
    .local v4, "galleryCenter":I
    if-eqz p1, :cond_2

    .line 721
    if-gt v2, v4, :cond_3

    .line 723
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    goto :goto_1

    .line 727
    :cond_2
    if-lt v2, v4, :cond_3

    .line 729
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    goto :goto_1

    .line 734
    :cond_3
    sub-int v0, v4, v2

    .line 736
    .local v0, "centerDifference":I
    if-eqz p1, :cond_4

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    :cond_4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1
.end method

.method public layoutchildren(II)V
    .locals 14
    .param p1, "firstPosition"    # I
    .param p2, "layoutMode"    # I

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    if-lt p1, v12, :cond_3

    .line 264
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v12

    add-int/lit8 p1, v12, -0x2

    .line 270
    :cond_0
    :goto_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    .line 272
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v12

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v13

    add-int v6, v12, v13

    .line 276
    .local v6, "galleryCenter":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    .line 277
    .local v4, "count":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    .line 282
    .local v3, "childrenWidth":I
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSideWidthFrame:I

    sub-int v5, v3, v12

    .line 284
    .local v5, "firstXpos":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v12

    sub-int v9, v12, v5

    .line 285
    .local v9, "leftPos":I
    add-int v10, v3, v9

    .line 286
    .local v10, "rightPos":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingTop()I

    move-result v11

    .line 287
    .local v11, "topPos":I
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    add-int v0, v12, v11

    .line 289
    .local v0, "bottomPos":I
    add-int/lit8 v8, p1, 0x3

    .line 291
    .local v8, "itemNum":I
    add-int/lit8 v12, v4, -0x2

    if-ne p1, v12, :cond_1

    .line 292
    move v8, v4

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v12

    if-eqz v12, :cond_2

    if-le p1, v4, :cond_4

    .line 319
    :cond_2
    :goto_1
    return-void

    .line 266
    .end local v0    # "bottomPos":I
    .end local v3    # "childrenWidth":I
    .end local v4    # "count":I
    .end local v5    # "firstXpos":I
    .end local v6    # "galleryCenter":I
    .end local v8    # "itemNum":I
    .end local v9    # "leftPos":I
    .end local v10    # "rightPos":I
    .end local v11    # "topPos":I
    :cond_3
    if-gtz p1, :cond_0

    .line 267
    const/4 p1, 0x0

    goto :goto_0

    .line 299
    .restart local v0    # "bottomPos":I
    .restart local v3    # "childrenWidth":I
    .restart local v4    # "count":I
    .restart local v5    # "firstXpos":I
    .restart local v6    # "galleryCenter":I
    .restart local v8    # "itemNum":I
    .restart local v9    # "leftPos":I
    .restart local v10    # "rightPos":I
    .restart local v11    # "topPos":I
    :cond_4
    move v7, p1

    .local v7, "i":I
    :goto_2
    if-ge v7, v8, :cond_5

    .line 301
    const/4 v12, 0x1

    invoke-direct {p0, v7, v9, v12}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->makeAndAddView(IIZ)Landroid/view/View;

    move-result-object v1

    .line 303
    .local v1, "childView":Landroid/view/View;
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    add-int v9, v10, v12

    .line 304
    add-int v10, v9, v3

    .line 306
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getBottom()I

    move-result v12

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingBottom()I

    move-result v13

    sub-int v2, v12, v13

    .line 311
    .local v2, "childrenHeight":I
    div-int/lit8 v12, v2, 0x2

    add-int/2addr v12, v11

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedOffsetTopAndOffset:I

    .line 312
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedOffsetTopAndOffset:I

    invoke-virtual {v1, v12}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 299
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 317
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "childrenHeight":I
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->calculateScale()V

    goto :goto_1
.end method

.method public measureChildren(II)[I
    .locals 18
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 91
    const/4 v15, 0x0

    .line 92
    .local v15, "widthState":I
    const/4 v7, 0x0

    .line 94
    .local v7, "heightState":I
    const/4 v9, 0x0

    .line 95
    .local v9, "preferredWidth":I
    const/4 v8, 0x0

    .line 97
    .local v8, "preferredHeight":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 98
    .local v14, "widthSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 99
    .local v13, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 100
    .local v6, "heightSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 102
    .local v2, "HeightMode":I
    const/4 v3, 0x1

    .line 103
    .local v3, "centerItemNum":I
    const/4 v11, 0x2

    .line 104
    .local v11, "sideSpaceNum":I
    const/4 v12, 0x2

    .line 105
    .local v12, "spaceNum":I
    sub-int v4, v12, v11

    .line 107
    .local v4, "centerSpaceNum":I
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v10, v0, [I

    .line 109
    .local v10, "result":[I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v5

    .line 111
    .local v5, "galleryWidth":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mWidthMeasureSpec:I

    .line 112
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mHeightMeasureSpec:I

    .line 116
    int-to-float v0, v14

    move/from16 v16, v0

    const v17, 0x3d408312    # 0.047f

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    .line 117
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    move/from16 v16, v0

    mul-int v16, v16, v11

    sub-int v16, v5, v16

    div-int/lit8 v16, v16, 0x7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSideWidthFrame:I

    .line 118
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSideWidthFrame:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x0

    sub-int v16, v16, v17

    div-int v16, v16, v3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    .line 119
    int-to-float v0, v6

    move/from16 v16, v0

    const/high16 v17, 0x3fc00000    # 1.5f

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameHeigh:I

    .line 122
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    if-eq v0, v13, :cond_0

    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v0, v14, :cond_4

    .line 126
    :cond_0
    move v9, v14

    .line 135
    :cond_1
    :goto_0
    const/high16 v16, -0x80000000

    move/from16 v0, v16

    if-eq v0, v2, :cond_2

    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v0, v6, :cond_6

    .line 138
    :cond_2
    move v8, v6

    .line 146
    :cond_3
    :goto_1
    move/from16 v0, p1

    invoke-static {v9, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v15

    .line 147
    move/from16 v0, p2

    invoke-static {v8, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v7

    .line 149
    const/16 v16, 0x0

    aput v15, v10, v16

    .line 150
    const/16 v16, 0x1

    aput v7, v10, v16

    .line 152
    return-object v10

    .line 128
    :cond_4
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    if-eq v0, v13, :cond_5

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v0, v14, :cond_1

    .line 131
    :cond_5
    move v9, v14

    goto :goto_0

    .line 140
    :cond_6
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    if-eq v0, v13, :cond_7

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v0, v14, :cond_3

    .line 143
    :cond_7
    move v8, v6

    goto :goto_1
.end method

.method public onFling(F)Z
    .locals 6
    .param p1, "velocity"    # F

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 1053
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnAnimation:Z

    if-ne v3, v2, :cond_1

    .line 1055
    const/4 v2, 0x0

    .line 1087
    :cond_0
    :goto_0
    return v2

    .line 1058
    :cond_1
    const/16 v1, 0xbb8

    .line 1060
    .local v1, "standard":I
    const v3, 0x3f99999a    # 1.2f

    div-float v3, p1, v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    .line 1062
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    neg-float v3, v3

    float-to-int v3, v3

    if-ge v3, v1, :cond_2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    neg-float v3, v3

    float-to-int v3, v3

    neg-int v4, v1

    if-le v3, v4, :cond_2

    .line 1064
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 1066
    const v3, -0x3ac48000    # -3000.0f

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    .line 1076
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFlingThread:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    neg-float v4, v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->startUsingVelocity(I)V

    .line 1078
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnFling:Z

    .line 1081
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1082
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    .line 1083
    .local v0, "galleryEx":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v3

    invoke-interface {v3, v0, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    .line 1084
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mScrollState:I

    goto :goto_0

    .line 1070
    .end local v0    # "galleryEx":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    :cond_3
    const v3, 0x453b8000    # 3000.0f

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mVelocity:F

    goto :goto_1
.end method

.method public onOverScroll(II)Z
    .locals 3
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 1109
    const/high16 v1, -0x40000000    # -2.0f

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1110
    .local v0, "distanceX":I
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->trackMotionOverScroll(I)V

    .line 1111
    const/4 v1, 0x0

    return v1
.end method

.method public onScroll(II)Z
    .locals 4
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    const/4 v2, 0x1

    .line 985
    neg-int v0, p1

    .line 987
    .local v0, "distanceX":I
    if-gez v0, :cond_2

    .line 989
    sget-object v3, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_LEFT:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    .line 1001
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    if-eq v3, v2, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOnAnimation:Z

    if-ne v3, v2, :cond_4

    .line 1002
    :cond_1
    const/4 v2, 0x0

    .line 1016
    :goto_1
    return v2

    .line 991
    :cond_2
    if-lez v0, :cond_3

    .line 993
    sget-object v3, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_RIGHT:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    goto :goto_0

    .line 995
    :cond_3
    if-nez v0, :cond_0

    .line 997
    sget-object v3, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    goto :goto_0

    .line 1005
    :cond_4
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mScrollState:I

    if-eq v3, v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1008
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    .line 1009
    .local v1, "galleryEx":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    .line 1010
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mScrollState:I

    .line 1014
    .end local v1    # "galleryEx":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    :cond_5
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->trackMotionScroll(I)V

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 1167
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDownPosition:I

    if-ltz v1, :cond_0

    .line 1168
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDownPosition:I

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->scrollToPosition(IZ)V

    .line 1169
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDownPosition:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDownPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDownPosition:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->performItemClick(Landroid/view/View;IJ)Z

    .line 1173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1022
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1024
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    if-ne v0, v1, :cond_2

    .line 1025
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->finishOverScrollMode()V

    .line 1026
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mIsOverScroll:Z

    .line 1036
    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$DIRECTION;

    .line 1047
    :cond_1
    :goto_1
    return v2

    .line 1029
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    .line 1031
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFlingThread:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

    # getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->access$1500(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->scrollIntoSlots()V

    goto :goto_0

    .line 1038
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1040
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFlingThread:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->stop(Z)V

    .line 1042
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDownPosition:I

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1177
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mTouchFrame:Landroid/graphics/Rect;

    .line 1178
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 1179
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mTouchFrame:Landroid/graphics/Rect;

    .line 1180
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mTouchFrame:Landroid/graphics/Rect;

    .line 1183
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->sortChildView()Ljava/util/ArrayList;

    move-result-object v1

    .line 1185
    .local v1, "childIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 1186
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1187
    .local v4, "index":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1188
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 1189
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1190
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1191
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    add-int/2addr v5, v4

    .line 1197
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "index":I
    :goto_1
    return v5

    .line 1185
    .restart local v0    # "child":Landroid/view/View;
    .restart local v4    # "index":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1197
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "index":I
    :cond_2
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public scrollToPosition(IZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "isAni"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1117
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFlingThread:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

    # getter for: Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->mScroller:Landroid/widget/Scroller;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->access$1500(Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;)Landroid/widget/Scroller;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    if-gez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt p1, v4, :cond_0

    .line 1123
    :cond_2
    if-eqz p2, :cond_4

    .line 1125
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSpacing:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    add-int v1, v4, v5

    .line 1126
    .local v1, "childSpace":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    add-int/lit8 v0, v4, 0x1

    .line 1128
    .local v0, "centerIndex":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 1129
    const/4 v0, 0x0

    .line 1133
    :cond_3
    sub-int v4, p1, v0

    mul-int v2, v4, v1

    .line 1135
    .local v2, "distance":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFlingThread:Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;

    neg-int v5, v2

    const/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController$FlingThread;->startUsingDistance(II)V

    goto :goto_0

    .line 1140
    .end local v0    # "centerIndex":I
    .end local v1    # "childSpace":I
    .end local v2    # "distance":I
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 1142
    .local v3, "lastCount":I
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    if-gt p1, v4, :cond_0

    .line 1148
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->requestdetachAllViewsFromParent(IZ)V

    .line 1150
    if-eqz p1, :cond_5

    if-ne p1, v3, :cond_7

    .line 1152
    :cond_5
    invoke-virtual {p0, p1, v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->layoutchildren(II)V

    .line 1159
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->postInvalidate()V

    goto :goto_0

    .line 1154
    :cond_7
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_6

    .line 1156
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4, v6}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->layoutchildren(II)V

    goto :goto_1
.end method

.method public sortChildView()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v0, "childIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v3

    .line 333
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 334
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 338
    add-int/lit8 v2, v1, 0x1

    .local v2, "j":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 339
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v5

    cmpl-float v5, v6, v5

    if-lez v5, :cond_1

    .line 343
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 344
    .local v4, "temp":I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 338
    .end local v4    # "temp":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 337
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 350
    .end local v2    # "j":I
    :cond_3
    return-object v0
.end method

.method trackMotionScroll(I)V
    .locals 10
    .param p1, "deltaX"    # I

    .prologue
    const/4 v6, 0x0

    .line 561
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v3

    .line 562
    .local v3, "itemCount":I
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    .line 563
    .local v0, "firstPostion":I
    if-gez p1, :cond_1

    const/4 v5, 0x1

    .line 565
    .local v5, "toLeft":Z
    :goto_0
    invoke-virtual {p0, v5, p1}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getLimitedMotionScrollAmount(ZI)I

    move-result v4

    .line 567
    .local v4, "limitedDeltaX":I
    if-nez v4, :cond_2

    .line 601
    :cond_0
    :goto_1
    return-void

    .end local v4    # "limitedDeltaX":I
    .end local v5    # "toLeft":Z
    :cond_1
    move v5, v6

    .line 563
    goto :goto_0

    .line 572
    .restart local v4    # "limitedDeltaX":I
    .restart local v5    # "toLeft":Z
    :cond_2
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->offsetChildrenLeftAndRight(I)V

    .line 575
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDeltaX:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mDeltaX:I

    .line 577
    if-eqz v5, :cond_3

    .line 578
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectView:Landroid/view/View;

    .line 579
    add-int/lit8 v6, v3, -0x1

    add-int/2addr v6, v0

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedPosition:I

    .line 582
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v2, v6, 0x2

    .line 583
    .local v2, "gapToFrame":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    add-int/2addr v6, v2

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedPosition:I

    invoke-direct {p0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->fillToGalleryRight(II)V

    .line 593
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->setSelectionToCenterChild()V

    .line 594
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->detachChild()V

    .line 597
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    .line 599
    .local v1, "galleryEx":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFirstPosition:I

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v8

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v9

    invoke-interface {v6, v1, v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScroll(Lcom/sec/android/touchwiz/widget/TwGalleryEx;III)V

    goto :goto_1

    .line 586
    .end local v1    # "galleryEx":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    .end local v2    # "gapToFrame":I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectView:Landroid/view/View;

    .line 587
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedPosition:I

    .line 589
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mFrameWidth:I

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v2, v6, 0x2

    .line 590
    .restart local v2    # "gapToFrame":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v6, v2

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->mSelectedPosition:I

    invoke-direct {p0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwBrowserLayoutController;->fillToGalleryLeft(II)V

    goto :goto_2
.end method

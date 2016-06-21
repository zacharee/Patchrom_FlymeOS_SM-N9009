.class public Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;
.super Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
.source "TwPaperLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;,
        Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;,
        Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;
    }
.end annotation


# static fields
.field private static final MIN_TOP_MARGIN:I = 0x64

.field private static final TAG:Ljava/lang/String; = "TwPaperLayoutController"

.field private static final TIME_ON_FLING:I = 0x190


# instance fields
.field private final MAX_DEGREE_OF_OVERSCROLL:F

.field private mDegreeOfOverScrollView:F

.field private mDestPositionOnFling:I

.field mDirection:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

.field private mFinishTiltAni:Landroid/animation/AnimatorSet;

.field private mFlickAniset:Landroid/animation/AnimatorSet;

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mIsOnAnimation:Z

.field private mIsOnFling:Z

.field private mIsOverScroll:Z

.field private mMagneticAniset:Landroid/animation/AnimatorSet;

.field private mMagneticDuration:I

.field private mOverScrollItem:Landroid/view/View;

.field private mScrollState:I

.field private mScrollsensitive:F

.field private mSelectView:Landroid/view/View;

.field private mSelectedPosition:I

.field private mSpacing:I

.field private mTopMarginRatio:F

.field private mVerticalSpace:I


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V
    .locals 3
    .param p1, "aGalleryEx"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V

    .line 29
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    .line 30
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollsensitive:F

    .line 31
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    .line 32
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    .line 37
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mTopMarginRatio:F

    .line 39
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    .line 40
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mVerticalSpace:I

    .line 41
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I

    .line 42
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameHeight:I

    .line 47
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnAnimation:Z

    .line 48
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticDuration:I

    .line 49
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    .line 50
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    .line 56
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectView:Landroid/view/View;

    .line 58
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectedPosition:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollState:I

    .line 70
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    .line 972
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    .line 973
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    .line 974
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->MAX_DEGREE_OF_OVERSCROLL:F

    .line 975
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    .line 77
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->setCachingSize(I)V

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->detachChild()V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    return p1
.end method

.method static synthetic access$502(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollState:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I

    return v0
.end method

.method private cancelMagneticAnimation()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    .line 725
    :cond_0
    return-void
.end method

.method private cancelTiltAnimation()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 714
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    .line 716
    :cond_0
    return-void
.end method

.method private detachChild()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 350
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 351
    add-int/lit8 v1, v1, 0x1

    .line 352
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3, v5}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->requestDetachViewsFromParent(IIZ)V

    .line 355
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 356
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    add-int/2addr v3, v2

    invoke-virtual {p0, v2, v3, v5}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->requestDetachViewsFromParent(IIZ)V

    .line 346
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 360
    .end local v0    # "childView":Landroid/view/View;
    :cond_2
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    .line 361
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    .line 362
    return-void
.end method

.method private fillToGalleryLeft(II)V
    .locals 12
    .param p1, "xPos"    # I
    .param p2, "startIndex"    # I

    .prologue
    const/4 v11, 0x0

    .line 261
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    .line 262
    .local v5, "itemSpacing":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v3

    .line 263
    .local v3, "galleryLeft":I
    move v9, p1

    .line 265
    .local v9, "startPos":I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    sub-int v4, p2, v10

    .line 266
    .local v4, "idxView":I
    const/4 v8, 0x0

    .line 267
    .local v8, "prevIterationView":Landroid/view/View;
    if-ltz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v10

    if-gt v4, v10, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 270
    :cond_0
    move v1, p2

    .line 271
    .local v1, "curPosition":I
    const/4 v2, 0x0

    .line 272
    .local v2, "curRightEdge":I
    const/4 v0, 0x0

    .line 274
    .local v0, "count":I
    const/4 v7, 0x0

    .line 276
    .local v7, "nextIterationView":Landroid/view/View;
    if-eqz v8, :cond_1

    .line 277
    add-int/lit8 v1, p2, -0x1

    .line 278
    sub-int v2, v9, v5

    .line 281
    :cond_1
    :goto_0
    if-le v2, v3, :cond_2

    if-ltz v1, :cond_2

    .line 283
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getView(I)Landroid/view/View;

    move-result-object v7

    .line 284
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I

    sub-int v10, v2, v10

    invoke-direct {p0, v7, v10}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->layoutChildViewInFrame(Landroid/view/View;I)Z

    .line 286
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    .line 287
    .local v6, "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v10

    invoke-virtual {v10, v7, v11, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 288
    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getLeft()I

    move-result v10

    sub-int v2, v10, v5

    .line 289
    add-int/lit8 v0, v0, 0x1

    .line 290
    add-int/lit8 v1, v1, -0x1

    .line 291
    goto :goto_0

    .line 293
    .end local v6    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    :cond_2
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    sub-int/2addr v10, v0

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    .line 294
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    .line 295
    return-void
.end method

.method private fillToGalleryLeftOnFlingByX(I)V
    .locals 24
    .param p1, "intensity"    # I

    .prologue
    .line 530
    const/4 v13, 0x1

    .line 532
    .local v13, "duration_velocity":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v14

    .line 533
    .local v14, "gallery":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v15

    .line 534
    .local v15, "galleyWidth":I
    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v10

    .line 536
    .local v10, "childCount":I
    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v20

    invoke-virtual {v14}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    move/from16 v21, v0

    add-int v8, v20, v21

    .line 537
    .local v8, "centerPos":I
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v21, v21, p1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    .line 539
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v7, "aniList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v12, 0x1

    .line 542
    .local v12, "distance":I
    const/4 v9, 0x0

    .line 544
    .local v9, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    move/from16 v20, v0

    add-int v20, v20, v10

    add-int/lit8 v16, v20, -0x1

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 546
    const/16 v17, 0x0

    .line 548
    .local v17, "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 550
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v20, v16, v20

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 551
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .end local v17    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    check-cast v17, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    .line 565
    .restart local v17    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    :goto_1
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 567
    .local v19, "width":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 569
    const/4 v6, 0x0

    .line 570
    .local v6, "aniLeftFling":Landroid/animation/Animator;
    const-string v20, "x"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getX()F

    move-result v23

    aput v23, v21, v22

    const/16 v22, 0x1

    int-to-float v0, v8

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 571
    const-wide/16 v20, 0x190

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 572
    new-instance v20, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v21, 0x40200000    # 2.5f

    int-to-float v0, v12

    move/from16 v22, v0

    const v23, 0x3dcccccd    # 0.1f

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    invoke-direct/range {v20 .. v21}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 573
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 544
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_0

    .line 556
    .end local v6    # "aniLeftFling":Landroid/animation/Animator;
    .end local v19    # "width":I
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getView(I)Landroid/view/View;

    move-result-object v9

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 560
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->layoutChildViewInFrame(Landroid/view/View;I)Z

    .line 561
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .end local v17    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    check-cast v17, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    .line 562
    .restart local v17    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    neg-int v0, v15

    move/from16 v20, v0

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->setX(F)V

    goto/16 :goto_1

    .line 578
    .restart local v19    # "width":I
    :cond_1
    const-string v20, "x"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getX()F

    move-result v23

    aput v23, v21, v22

    const/16 v22, 0x1

    mul-int v23, v12, v19

    add-int v23, v23, v15

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 579
    .restart local v6    # "aniLeftFling":Landroid/animation/Animator;
    const-wide/16 v20, 0x190

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 580
    new-instance v20, Landroid/view/animation/DecelerateInterpolator;

    const v21, 0x3f666666    # 0.9f

    int-to-float v0, v12

    move/from16 v22, v0

    const v23, 0x3ca3d70a    # 0.02f

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    invoke-direct/range {v20 .. v21}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 581
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 587
    .end local v6    # "aniLeftFling":Landroid/animation/Animator;
    .end local v17    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    .end local v19    # "width":I
    :cond_2
    new-instance v20, Landroid/animation/AnimatorSet;

    invoke-direct/range {v20 .. v20}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 589
    new-instance v18, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v20

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;ZI)V

    .line 590
    .local v18, "listener":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    .line 593
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 595
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 596
    .local v11, "childView":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    .line 598
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->cancelTiltAnimation()V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    move-object/from16 v20, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x190

    const/16 v23, 0x32

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->makeFinishTiltAnimation(Landroid/view/View;FII)Landroid/animation/AnimatorSet;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/AnimatorSet;->start()V

    .line 605
    .end local v11    # "childView":Landroid/view/View;
    :cond_3
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    .line 606
    return-void
.end method

.method private fillToGalleryRight(II)V
    .locals 14
    .param p1, "xPos"    # I
    .param p2, "startIndex"    # I

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    .line 300
    .local v3, "gallery":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    .line 302
    .local v6, "itemSpacing":I
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v12

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v13

    sub-int v4, v12, v13

    .line 303
    .local v4, "galleryRight":I
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v9

    .line 304
    .local v9, "numItems":I
    move v11, p1

    .line 306
    .local v11, "startPos":I
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    sub-int v5, p2, v12

    .line 307
    .local v5, "idxView":I
    const/4 v10, 0x0

    .line 308
    .local v10, "prevIterationView":Landroid/view/View;
    if-ltz v5, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v12

    if-gt v5, v12, :cond_0

    .line 309
    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 311
    :cond_0
    move/from16 v2, p2

    .line 312
    .local v2, "curPosition":I
    const/4 v1, 0x0

    .line 313
    .local v1, "curLeftEdge":I
    const/4 v0, 0x0

    .line 315
    .local v0, "count":I
    const/4 v8, 0x0

    .line 317
    .local v8, "nextIterationView":Landroid/view/View;
    if-eqz v10, :cond_1

    .line 319
    add-int/lit8 v2, p2, 0x1

    .line 320
    add-int v1, v11, v6

    .line 323
    :cond_1
    :goto_0
    if-ge v1, v4, :cond_2

    if-ge v2, v9, :cond_2

    .line 325
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getView(I)Landroid/view/View;

    move-result-object v8

    .line 326
    invoke-direct {p0, v8, v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->layoutChildViewInFrame(Landroid/view/View;I)Z

    .line 328
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    .line 329
    .local v7, "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v12

    const/4 v13, -0x1

    invoke-virtual {v12, v8, v13, v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 330
    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getRight()I

    move-result v12

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v13

    add-int/2addr v12, v13

    add-int v1, v12, v6

    .line 331
    add-int/lit8 v0, v0, 0x1

    .line 332
    add-int/lit8 v2, v2, 0x1

    .line 333
    goto :goto_0

    .line 334
    .end local v7    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    :cond_2
    return-void
.end method

.method private fillToGalleryRightOnFlingByX(I)V
    .locals 26
    .param p1, "intensity"    # I

    .prologue
    .line 611
    const/4 v14, 0x1

    .line 613
    .local v14, "duration_velocity":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v15

    .line 614
    .local v15, "gallery":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v16

    .line 615
    .local v16, "galleyWidth":I
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v10

    .line 616
    .local v10, "childCount":I
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v18

    .line 617
    .local v18, "lastPosition":I
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v22

    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    move/from16 v23, v0

    add-int v8, v22, v23

    .line 618
    .local v8, "centerPos":I
    add-int/lit8 v22, v18, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    move/from16 v23, v0

    add-int v23, v23, p1

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    .line 620
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v7, "aniList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v13, 0x1

    .line 623
    .local v13, "distance":I
    const/4 v9, 0x0

    .line 625
    .local v9, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    move/from16 v17, v0

    .local v17, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v22

    if-gt v0, v1, :cond_2

    .line 628
    const/16 v19, 0x0

    .line 629
    .local v19, "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 631
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v17, v22

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 632
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .end local v19    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    check-cast v19, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    .line 646
    .restart local v19    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    :goto_1
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v21

    .line 648
    .local v21, "width":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 650
    const/4 v6, 0x0

    .line 651
    .local v6, "aniLeftFling":Landroid/animation/Animator;
    const-string v22, "x"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getX()F

    move-result v25

    aput v25, v23, v24

    const/16 v24, 0x1

    int-to-float v0, v8

    move/from16 v25, v0

    aput v25, v23, v24

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 652
    const-wide/16 v22, 0x190

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 653
    new-instance v22, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v23, 0x40200000    # 2.5f

    int-to-float v0, v13

    move/from16 v24, v0

    const v25, 0x3dcccccd    # 0.1f

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    invoke-direct/range {v22 .. v23}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 654
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 625
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 637
    .end local v6    # "aniLeftFling":Landroid/animation/Animator;
    .end local v21    # "width":I
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getView(I)Landroid/view/View;

    move-result-object v9

    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v22

    const/16 v23, -0x1

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 641
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->layoutChildViewInFrame(Landroid/view/View;I)Z

    .line 642
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .end local v19    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    check-cast v19, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    .line 643
    .restart local v19    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->setX(F)V

    goto/16 :goto_1

    .line 659
    .restart local v21    # "width":I
    :cond_1
    const-string v22, "x"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getX()F

    move-result v25

    aput v25, v23, v24

    const/16 v24, 0x1

    mul-int v25, v13, v21

    add-int v25, v25, v16

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    aput v25, v23, v24

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 660
    .restart local v6    # "aniLeftFling":Landroid/animation/Animator;
    const-wide/16 v22, 0x190

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 661
    new-instance v22, Landroid/view/animation/DecelerateInterpolator;

    const v23, 0x3f666666    # 0.9f

    int-to-float v0, v13

    move/from16 v24, v0

    const v25, 0x3ca3d70a    # 0.02f

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    invoke-direct/range {v22 .. v23}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 662
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 668
    .end local v6    # "aniLeftFling":Landroid/animation/Animator;
    .end local v19    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    .end local v21    # "width":I
    :cond_2
    new-instance v22, Landroid/animation/AnimatorSet;

    invoke-direct/range {v22 .. v22}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 670
    new-instance v20, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;-><init>(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;ZI)V

    .line 671
    .local v20, "listener":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/animation/AnimatorSet;->start()V

    .line 674
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I

    move/from16 v22, v0

    add-int/lit8 v23, v18, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 676
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v12

    .line 677
    .local v12, "curChildCount":I
    add-int/lit8 v22, v12, -0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 678
    .local v11, "childView":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    .line 680
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->cancelTiltAnimation()V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    move-object/from16 v22, v0

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x190

    const/16 v25, 0x32

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->makeFinishTiltAnimation(Landroid/view/View;FII)Landroid/animation/AnimatorSet;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/animation/AnimatorSet;->start()V

    .line 687
    .end local v11    # "childView":Landroid/view/View;
    .end local v12    # "curChildCount":I
    :cond_3
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    .line 688
    return-void
.end method

.method private finishOverScrollMode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1016
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1017
    const-string v1, "TwGalleryEx"

    const-string v2, "mOverScrollItem is null!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :goto_0
    return-void

    .line 1021
    :cond_0
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    .line 1023
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 1025
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1026
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    .line 1029
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    const-string v2, "rotationY"

    new-array v3, v6, [F

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1030
    .local v0, "finishAnimator":Landroid/animation/Animator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    .line 1031
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1032
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1033
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1035
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$2;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$2;-><init>(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private getCenterOfGallery()I
    .locals 3

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v0

    .line 882
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 887
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private layoutChildViewInFrame(Landroid/view/View;I)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "leftPos"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 205
    if-nez p1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v2

    .line 208
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->measureChildView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mVerticalSpace:I

    add-int v1, v2, v3

    .line 212
    .local v1, "top":I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v0, v2, p2

    .line 214
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 215
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 216
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 217
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private makeFinishTiltAnimation(Landroid/view/View;FII)Landroid/animation/AnimatorSet;
    .locals 8
    .param p1, "tiltView"    # Landroid/view/View;
    .param p2, "startAngle"    # F
    .param p3, "duration"    # I
    .param p4, "startDelay"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 692
    if-nez p1, :cond_0

    .line 693
    const/4 v0, 0x0

    .line 706
    :goto_0
    return-object v0

    .line 695
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 696
    .local v0, "aniset":Landroid/animation/AnimatorSet;
    const-string v3, "rotationY"

    new-array v4, v7, [F

    aput p2, v4, v6

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 697
    .local v2, "rotateAniStart":Landroid/animation/Animator;
    int-to-long v4, p3

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 698
    const-string v3, "rotationY"

    new-array v4, v7, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 699
    .local v1, "rotateAniEnd":Landroid/animation/Animator;
    int-to-long v4, p3

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 700
    int-to-long v4, p3

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 702
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 703
    int-to-long v4, p4

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 704
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method

.method private measureChildView(Landroid/view/View;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/high16 v4, -0x80000000

    .line 222
    if-nez p1, :cond_0

    .line 223
    const/4 v3, 0x0

    .line 256
    :goto_0
    return v3

    .line 226
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    :cond_1
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;-><init>(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    .local v1, "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->setView(Landroid/view/View;)V

    .line 231
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, "widthSpec":I
    const/4 v0, 0x0

    .line 237
    .local v0, "heithSpec":I
    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->width:I

    if-ne v3, v5, :cond_4

    .line 239
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 246
    :cond_2
    :goto_1
    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->height:I

    if-ne v3, v5, :cond_5

    .line 248
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameHeight:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 255
    :cond_3
    :goto_2
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 256
    const/4 v3, 0x1

    goto :goto_0

    .line 241
    :cond_4
    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->width:I

    if-ne v3, v6, :cond_2

    .line 243
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_1

    .line 250
    :cond_5
    iget v3, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->height:I

    if-ne v3, v6, :cond_3

    .line 252
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameHeight:I

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 340
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 338
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 342
    .end local v0    # "childView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private startMagneticAnimation(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;)Z
    .locals 29
    .param p1, "direction"    # Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    .prologue
    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v13

    .line 730
    .local v13, "gallery":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->cancelMagneticAnimation()V

    .line 732
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    move/from16 v19, v0

    .line 733
    .local v19, "itemSpace":I
    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v7

    .line 734
    .local v7, "childCount":I
    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v25

    add-int v6, v25, v19

    .line 735
    .local v6, "centerPos":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getCenterOfGallery()I

    move-result v14

    .line 737
    .local v14, "galleryCenter":I
    const/4 v11, 0x0

    .line 738
    .local v11, "curXpos":F
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v10, v0

    .line 739
    .local v10, "curWidth":F
    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getRight()I

    move-result v25

    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v26

    add-int v25, v25, v26

    add-int v25, v25, v19

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v16, v0

    .line 741
    .local v16, "galleryRight":F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v15, v25, v10

    .line 743
    .local v15, "galleryLeft":F
    const/16 v17, 0x0

    .line 744
    .local v17, "galleryStadard":I
    const/4 v8, 0x0

    .line 746
    .local v8, "childStadard":I
    const/4 v9, 0x0

    .line 747
    .local v9, "childView":Landroid/view/View;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .local v4, "aniList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectView:Landroid/view/View;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    .line 750
    :cond_0
    const/16 v25, 0x0

    .line 877
    :goto_0
    return v25

    .line 752
    :cond_1
    invoke-virtual {v13}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v12

    .line 753
    .local v12, "dx":I
    const/16 v21, 0x0

    .line 755
    .local v21, "minIndex":I
    sget-object v25, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 757
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v7, :cond_7

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 760
    invoke-static {v9}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getCenterOfView(Landroid/view/View;)I

    move-result v8

    .line 761
    move/from16 v17, v14

    .line 762
    sub-int v25, v17, v8

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v24

    .line 764
    .local v24, "tempDx":I
    move/from16 v0, v24

    if-ge v0, v12, :cond_2

    .line 766
    move/from16 v12, v24

    .line 767
    move/from16 v21, v18

    .line 757
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 772
    .end local v18    # "i":I
    .end local v24    # "tempDx":I
    :cond_3
    sget-object v25, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;->DIRECTION_LEFT:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 774
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v7, :cond_7

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 777
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    .line 778
    .local v20, "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getLeft()I

    move-result v8

    .line 779
    div-int/lit8 v25, v14, 0x3

    add-int v17, v14, v25

    .line 780
    sub-int v25, v17, v8

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v24

    .line 782
    .restart local v24    # "tempDx":I
    move/from16 v0, v24

    if-ge v0, v12, :cond_4

    .line 784
    move/from16 v12, v24

    .line 785
    move/from16 v21, v18

    .line 774
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 789
    .end local v18    # "i":I
    .end local v20    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    .end local v24    # "tempDx":I
    :cond_5
    sget-object v25, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;->DIRECTION_RIGHT:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 791
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_3
    move/from16 v0, v18

    if-ge v0, v7, :cond_7

    .line 793
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 794
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    .line 795
    .restart local v20    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getRight()I

    move-result v8

    .line 796
    div-int/lit8 v25, v14, 0x3

    sub-int v17, v14, v25

    .line 797
    sub-int v25, v17, v8

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v24

    .line 799
    .restart local v24    # "tempDx":I
    move/from16 v0, v24

    if-ge v0, v12, :cond_6

    .line 801
    move/from16 v12, v24

    .line 802
    move/from16 v21, v18

    .line 791
    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 807
    .end local v18    # "i":I
    .end local v20    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    .end local v24    # "tempDx":I
    :cond_7
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_4
    move/from16 v0, v18

    if-ge v0, v7, :cond_b

    .line 809
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 810
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    .line 811
    .restart local v20    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getX()F

    move-result v11

    .line 813
    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 815
    const-string v25, "x"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput v11, v26, v27

    const/16 v27, 0x1

    int-to-float v0, v6

    move/from16 v28, v0

    aput v28, v26, v27

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 816
    .local v5, "animation":Landroid/animation/Animator;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    .end local v5    # "animation":Landroid/animation/Animator;
    :cond_8
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 818
    :cond_9
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 820
    const-string v25, "x"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput v11, v26, v27

    const/16 v27, 0x1

    aput v15, v26, v27

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    .line 821
    .local v23, "prevAnimation":Landroid/animation/Animator;
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 823
    .end local v23    # "prevAnimation":Landroid/animation/Animator;
    :cond_a
    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    .line 825
    const-string v25, "x"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput v11, v26, v27

    const/16 v27, 0x1

    aput v16, v26, v27

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 826
    .local v22, "nextAnimation":Landroid/animation/Animator;
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 830
    .end local v20    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    .end local v22    # "nextAnimation":Landroid/animation/Animator;
    :cond_b
    new-instance v25, Landroid/animation/AnimatorSet;

    invoke-direct/range {v25 .. v25}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v25, v0

    new-instance v26, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$1;-><init>(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)V

    invoke-virtual/range {v25 .. v26}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticDuration:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mMagneticAniset:Landroid/animation/AnimatorSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/animation/AnimatorSet;->start()V

    .line 876
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnAnimation:Z

    .line 877
    const/16 v25, 0x1

    goto/16 :goto_0
.end method

.method private trackMotionOverScroll(I)V
    .locals 8
    .param p1, "deltaX"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v5, -0x3ee00000    # -10.0f

    const/4 v1, 0x0

    .line 979
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    if-nez v2, :cond_4

    move v0, v1

    .line 980
    .local v0, "viewAngle":F
    :goto_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    .line 981
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    .line 983
    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    int-to-float v3, p1

    const v4, 0x3da3d70a    # 0.08f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    .line 985
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    .line 986
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    .line 989
    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    .line 990
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    .line 993
    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    if-nez v2, :cond_5

    .line 994
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_3

    .line 995
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    .line 996
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    .line 1007
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    if-nez v1, :cond_6

    .line 1008
    const-string v1, "TwGalleryEx"

    const-string v2, "mOverScrollItem is null!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :goto_2
    return-void

    .line 979
    .end local v0    # "viewAngle":F
    :cond_4
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v0

    goto :goto_0

    .line 1001
    .restart local v0    # "viewAngle":F
    :cond_5
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_3

    .line 1002
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    .line 1003
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    goto :goto_1

    .line 1012
    :cond_6
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDegreeOfOverScrollView:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationY(F)V

    goto :goto_2
.end method


# virtual methods
.method getLimitedMotionScrollAmount(ZI)I
    .locals 12
    .param p1, "motionToLeft"    # Z
    .param p2, "deltaX"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    .line 367
    .local v4, "gallery":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v6

    .line 368
    .local v6, "itemCount":I
    if-eqz p1, :cond_0

    add-int/lit8 v3, v6, -0x1

    .line 370
    .local v3, "extremeItemPosition":I
    :goto_0
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    sub-int v9, v3, v9

    invoke-virtual {v4, v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 371
    .local v1, "extremeChild":Landroid/view/View;
    if-nez v1, :cond_1

    move v8, p2

    .line 400
    :goto_1
    return v8

    .end local v1    # "extremeChild":Landroid/view/View;
    .end local v3    # "extremeItemPosition":I
    :cond_0
    move v3, v8

    .line 368
    goto :goto_0

    .line 375
    .restart local v1    # "extremeChild":Landroid/view/View;
    .restart local v3    # "extremeItemPosition":I
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    .line 377
    .local v7, "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int v2, v9, v10

    .line 378
    .local v2, "extremeChildCenter":I
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    add-int v5, v9, v10

    .line 380
    .local v5, "galleryCenter":I
    if-eqz p1, :cond_2

    .line 382
    if-gt v2, v5, :cond_3

    .line 384
    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    .line 385
    iput-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    goto :goto_1

    .line 391
    :cond_2
    if-lt v2, v5, :cond_3

    .line 393
    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v4, v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mOverScrollItem:Landroid/view/View;

    .line 394
    iput-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    goto :goto_1

    .line 399
    :cond_3
    sub-int v0, v5, v2

    .line 400
    .local v0, "centerDifference":I
    if-eqz p1, :cond_4

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_1

    :cond_4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_1
.end method

.method public layoutchildren(II)V
    .locals 10
    .param p1, "firstPosition"    # I
    .param p2, "layoutMode"    # I

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    .line 135
    .local v2, "gallery":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    .line 136
    .local v1, "count":I
    if-le p1, v1, :cond_0

    .line 138
    const-string v7, "TwPaperLayoutController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "layoutchildren : Invalid positoion, position is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 142
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    .line 143
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 146
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v5

    .line 147
    .local v5, "leftPos":I
    invoke-direct {p0, v0, v5}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->layoutChildViewInFrame(Landroid/view/View;I)Z

    .line 148
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    .line 152
    .local v4, "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v8

    sub-int v3, v7, v8

    .line 153
    .local v3, "galleryWidth":I
    div-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v5

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v6, v7, v8

    .line 154
    .local v6, "selectedOffsetLeftAndRight":I
    invoke-virtual {v0, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 155
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    goto :goto_0
.end method

.method public measureChildren(II)[I
    .locals 13
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 83
    const/4 v9, 0x2

    new-array v5, v9, [I

    .line 86
    .local v5, "result":[I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    .line 87
    .local v0, "gallery":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v10

    add-int v3, v9, v10

    .line 88
    .local v3, "paddingHorizontal":I
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingTop()I

    move-result v9

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingBottom()I

    move-result v10

    add-int v4, v9, v10

    .line 91
    .local v4, "paddingVertical":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 92
    .local v2, "modeWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 93
    .local v1, "modeHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 94
    .local v7, "sizeWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 97
    .local v6, "sizeHeight":I
    add-int/lit16 v9, v4, 0xc8

    if-lt v6, v9, :cond_0

    add-int/lit16 v9, v3, 0xc8

    if-ge v7, v9, :cond_1

    .line 99
    :cond_0
    const-string v9, "TwPaperLayoutController"

    const-string v10, "measureChildren : Too small size"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    if-gez v2, :cond_2

    .line 106
    invoke-static {v7, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v9

    aput v9, v5, v12

    .line 113
    :goto_0
    if-gez v1, :cond_3

    .line 115
    invoke-static {v6, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v9

    aput v9, v5, v11

    .line 123
    :goto_1
    aget v9, v5, v11

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mTopMarginRatio:F

    mul-float/2addr v9, v10

    float-to-int v8, v9

    .line 124
    .local v8, "topMargin":I
    const/16 v9, 0x64

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mVerticalSpace:I

    .line 125
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mVerticalSpace:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, v6, v9

    sub-int/2addr v9, v4

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameHeight:I

    .line 126
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameHeight:I

    sub-int/2addr v9, v3

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I

    .line 128
    return-object v5

    .line 110
    .end local v8    # "topMargin":I
    :cond_2
    aput v7, v5, v12

    goto :goto_0

    .line 119
    :cond_3
    aput v6, v5, v11

    goto :goto_1
.end method

.method public onFling(F)Z
    .locals 10
    .param p1, "velocity"    # F

    .prologue
    .line 406
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 408
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 409
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v6

    long-to-float v6, v6

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v8

    long-to-float v7, v8

    div-float v4, v6, v7

    .line 411
    .local v4, "progress":F
    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v6, v4, v6

    if-lez v6, :cond_1

    .line 413
    const-string v6, "TwPaperLayoutController"

    const-string v7, "onFling : Cancel the animation and operate next flick"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFlickAniset:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 422
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v4    # "progress":F
    :cond_0
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_2

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_2

    .line 424
    const/4 v6, 0x1

    .line 524
    :goto_0
    return v6

    .line 418
    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    .restart local v4    # "progress":F
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 426
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v4    # "progress":F
    :cond_2
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_3

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    if-nez v6, :cond_3

    .line 428
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 429
    .local v1, "firstView":Landroid/view/View;
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSpacing:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float v5, v6, v7

    .line 430
    .local v5, "space":F
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v6

    cmpl-float v6, v6, v5

    if-ltz v6, :cond_3

    .line 431
    const/4 v6, 0x1

    goto :goto_0

    .line 434
    .end local v1    # "firstView":Landroid/view/View;
    .end local v5    # "space":F
    :cond_3
    const/high16 v6, -0x3b860000    # -1000.0f

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_4

    const/high16 v6, 0x447a0000    # 1000.0f

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_4

    .line 435
    const/4 v6, 0x1

    goto :goto_0

    .line 437
    :cond_4
    const/4 v3, 0x0

    .line 438
    .local v3, "intensity":I
    const v6, -0x39e3c000    # -10000.0f

    cmpg-float v6, p1, v6

    if-gez v6, :cond_a

    .line 440
    const/16 v3, 0xe

    .line 471
    :cond_5
    :goto_1
    const v6, 0x461c4000    # 10000.0f

    cmpl-float v6, p1, v6

    if-lez v6, :cond_11

    .line 473
    const/16 v3, 0xe

    .line 504
    :cond_6
    :goto_2
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnAnimation:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 505
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->cancelMagneticAnimation()V

    .line 508
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 509
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    .line 510
    .local v2, "galleryEx":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v2, v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    .line 511
    const/4 v6, 0x2

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollState:I

    .line 515
    .end local v2    # "galleryEx":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    :cond_8
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_18

    .line 517
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->fillToGalleryRightOnFlingByX(I)V

    .line 524
    :cond_9
    :goto_3
    const/4 v6, 0x1

    goto :goto_0

    .line 442
    :cond_a
    const v6, -0x39e3c000    # -10000.0f

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_b

    const v6, -0x39eb9000    # -9500.0f

    cmpg-float v6, p1, v6

    if-gez v6, :cond_b

    .line 444
    const/16 v3, 0xc

    goto :goto_1

    .line 446
    :cond_b
    const v6, -0x39eb9000    # -9500.0f

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_c

    const v6, -0x39f36000    # -9000.0f

    cmpg-float v6, p1, v6

    if-gez v6, :cond_c

    .line 448
    const/16 v3, 0xa

    goto :goto_1

    .line 450
    :cond_c
    const v6, -0x39f36000    # -9000.0f

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_d

    const/high16 v6, -0x3a060000    # -8000.0f

    cmpg-float v6, p1, v6

    if-gez v6, :cond_d

    .line 452
    const/16 v3, 0x8

    goto :goto_1

    .line 454
    :cond_d
    const/high16 v6, -0x3a060000    # -8000.0f

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_e

    const v6, -0x3a254000    # -7000.0f

    cmpg-float v6, p1, v6

    if-gez v6, :cond_e

    .line 456
    const/4 v3, 0x6

    goto :goto_1

    .line 458
    :cond_e
    const v6, -0x3a254000    # -7000.0f

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_f

    const v6, -0x3a448000    # -6000.0f

    cmpg-float v6, p1, v6

    if-gez v6, :cond_f

    .line 460
    const/4 v3, 0x4

    goto/16 :goto_1

    .line 462
    :cond_f
    const v6, -0x3a448000    # -6000.0f

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_10

    const v6, -0x3a63c000    # -5000.0f

    cmpg-float v6, p1, v6

    if-gez v6, :cond_10

    .line 464
    const/4 v3, 0x2

    goto/16 :goto_1

    .line 466
    :cond_10
    const v6, -0x3a63c000    # -5000.0f

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_5

    const/high16 v6, -0x3b860000    # -1000.0f

    cmpg-float v6, p1, v6

    if-gez v6, :cond_5

    .line 468
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 475
    :cond_11
    const v6, 0x461c4000    # 10000.0f

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_12

    const v6, 0x46147000    # 9500.0f

    cmpl-float v6, p1, v6

    if-lez v6, :cond_12

    .line 477
    const/16 v3, 0xc

    goto/16 :goto_2

    .line 479
    :cond_12
    const v6, 0x46147000    # 9500.0f

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_13

    const v6, 0x460ca000    # 9000.0f

    cmpl-float v6, p1, v6

    if-lez v6, :cond_13

    .line 481
    const/16 v3, 0xa

    goto/16 :goto_2

    .line 483
    :cond_13
    const v6, 0x460ca000    # 9000.0f

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_14

    const/high16 v6, 0x45fa0000    # 8000.0f

    cmpl-float v6, p1, v6

    if-lez v6, :cond_14

    .line 485
    const/16 v3, 0x8

    goto/16 :goto_2

    .line 487
    :cond_14
    const/high16 v6, 0x45fa0000    # 8000.0f

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_15

    const v6, 0x45dac000    # 7000.0f

    cmpl-float v6, p1, v6

    if-lez v6, :cond_15

    .line 489
    const/4 v3, 0x6

    goto/16 :goto_2

    .line 491
    :cond_15
    const v6, 0x45dac000    # 7000.0f

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_16

    const v6, 0x45bb8000    # 6000.0f

    cmpl-float v6, p1, v6

    if-lez v6, :cond_16

    .line 493
    const/4 v3, 0x4

    goto/16 :goto_2

    .line 495
    :cond_16
    const v6, 0x45bb8000    # 6000.0f

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_17

    const v6, 0x459c4000    # 5000.0f

    cmpl-float v6, p1, v6

    if-lez v6, :cond_17

    .line 497
    const/4 v3, 0x2

    goto/16 :goto_2

    .line 499
    :cond_17
    const v6, 0x459c4000    # 5000.0f

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_6

    const/high16 v6, 0x447a0000    # 1000.0f

    cmpl-float v6, p1, v6

    if-lez v6, :cond_6

    .line 501
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 519
    :cond_18
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_9

    .line 521
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->fillToGalleryLeftOnFlingByX(I)V

    goto/16 :goto_3
.end method

.method public onOverScroll(II)Z
    .locals 4
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 193
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnAnimation:Z

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    if-ne v1, v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v3

    .line 198
    :cond_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollsensitive:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 199
    .local v0, "distanceX":I
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->trackMotionOverScroll(I)V

    goto :goto_0
.end method

.method public onScroll(II)Z
    .locals 5
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    const/4 v2, 0x1

    .line 161
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnAnimation:Z

    if-eq v3, v2, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    if-ne v3, v2, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v2

    .line 166
    :cond_1
    neg-int v0, p1

    .line 167
    .local v0, "distanceX":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_2

    .line 169
    if-gez v0, :cond_3

    .line 170
    sget-object v3, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;->DIRECTION_LEFT:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    .line 175
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    if-ne v3, v2, :cond_4

    .line 176
    const/4 v2, 0x0

    goto :goto_0

    .line 171
    :cond_3
    if-lez v0, :cond_2

    .line 172
    sget-object v3, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;->DIRECTION_RIGHT:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    goto :goto_1

    .line 179
    :cond_4
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollState:I

    if-eq v3, v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    .line 182
    .local v1, "galleryEx":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    .line 183
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollState:I

    .line 186
    .end local v1    # "galleryEx":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    :cond_5
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->trackMotionScroll(I)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 1065
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->performItemClick(Landroid/view/View;IJ)Z

    .line 1066
    return v6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 894
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFinishTiltAni:Landroid/animation/AnimatorSet;

    .line 903
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    .line 907
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnAnimation:Z

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    if-ne v0, v1, :cond_2

    .line 933
    :cond_1
    :goto_0
    return v2

    .line 912
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 913
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    if-ne v0, v1, :cond_3

    .line 914
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->finishOverScrollMode()V

    .line 915
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOverScroll:Z

    .line 930
    :goto_1
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;->DIRECTION_NONE:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    goto :goto_0

    .line 919
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 921
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    .line 922
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollState:I

    .line 926
    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDirection:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->startMagneticAnimation(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;)Z

    goto :goto_1
.end method

.method public scrollToPosition(IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "isAni"    # Z

    .prologue
    .line 1060
    return-void
.end method

.method trackMotionScroll(I)V
    .locals 10
    .param p1, "deltaX"    # I

    .prologue
    const/4 v6, 0x0

    .line 938
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    .line 939
    .local v1, "gallery":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v2

    .line 940
    .local v2, "itemCount":I
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    .line 941
    .local v0, "firstPostion":I
    if-gez p1, :cond_1

    const/4 v5, 0x1

    .line 943
    .local v5, "toLeft":Z
    :goto_0
    invoke-virtual {p0, v5, p1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getLimitedMotionScrollAmount(ZI)I

    move-result v4

    .line 945
    .local v4, "limitedDeltaX":I
    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->offsetChildrenLeftAndRight(I)V

    .line 947
    if-eqz v5, :cond_2

    .line 949
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v1, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectView:Landroid/view/View;

    .line 950
    add-int/lit8 v6, v2, -0x1

    add-int/2addr v6, v0

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectedPosition:I

    .line 951
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    .line 952
    .local v3, "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getRight()I

    move-result v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectedPosition:I

    invoke-direct {p0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->fillToGalleryRight(II)V

    .line 963
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->detachChild()V

    .line 966
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 968
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v8

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v9

    invoke-interface {v6, v1, v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScroll(Lcom/sec/android/touchwiz/widget/TwGalleryEx;III)V

    .line 970
    :cond_0
    return-void

    .end local v3    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    .end local v4    # "limitedDeltaX":I
    .end local v5    # "toLeft":Z
    :cond_1
    move v5, v6

    .line 941
    goto :goto_0

    .line 957
    .restart local v4    # "limitedDeltaX":I
    .restart local v5    # "toLeft":Z
    :cond_2
    invoke-virtual {v1, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectView:Landroid/view/View;

    .line 958
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectedPosition:I

    .line 959
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;

    .line 960
    .restart local v3    # "layoutParam":Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mSelectedPosition:I

    invoke-direct {p0, v6, v7}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->fillToGalleryLeft(II)V

    goto :goto_1
.end method

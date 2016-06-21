.class public Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;
.super Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
.source "TwCoverflowLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;
    }
.end annotation


# static fields
.field static final CREATED_CHILD_VIEW_SPACE:I = 0x190

.field static final MAX_DEGREE_OF_OVERSCROLL:F = 15.0f

.field static final MAX_VELOCITY_ON_FLING:F = 6000.0f

.field static final MIN_VELOCITY_ON_FLING:F = -6000.0f

.field static final OFFSET_LEFT_RIGHT:I = -0x64

.field static final SCROLL_TO_POSITION_ANIMATION_DURATION:I = 0x3e8

.field static final SLOT_ANIMATION_DURATION:I = 0x1f4


# instance fields
.field private mDegreeOfOverScrollView:F

.field private mDeltaX:I

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

.field private mFrameHeight:I

.field private mGalleryExPadding:Landroid/graphics/Rect;

.field private mHeightMeasureSpec:I

.field private mIsOnAnimation:Z

.field private mIsOnFling:Z

.field private mIsOverScroll:Z

.field private mOverScrollItem:Landroid/view/View;

.field private mScrollState:I

.field private mScrollsensitive:F

.field private mSelectedChild:Landroid/view/View;

.field private mSelectedOffset:I

.field private mSelectedPosition:I

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V
    .locals 3
    .param p1, "aGalleryEx"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V

    .line 34
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnAnimation:Z

    .line 35
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    .line 36
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnFling:Z

    .line 43
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedPosition:I

    .line 44
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    .line 45
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    .line 47
    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mScrollsensitive:F

    .line 49
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    .line 52
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    .line 53
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedChild:Landroid/view/View;

    .line 54
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchView:Landroid/view/View;

    .line 56
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mScrollState:I

    .line 60
    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mScrollState:I

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnAnimation:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->finishOverScrollMode()V

    return-void
.end method

.method static synthetic access$702(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnFling:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->trackMotionOverScroll(I)V

    return-void
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10
    .param p1, "toLeft"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v4

    .line 386
    .local v4, "numChildren":I
    const/4 v5, 0x0

    .line 389
    .local v5, "start":I
    if-eqz p1, :cond_3

    .line 390
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v1

    .line 391
    .local v1, "galleryLeft":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 393
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    if-lt v6, v1, :cond_1

    .line 421
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "galleryLeft":I
    :cond_0
    return-void

    .line 397
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "galleryLeft":I
    :cond_1
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFirstPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFirstPosition:I

    .line 398
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFirstPosition:I

    add-int/lit8 v9, v6, -0x1

    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnFling:Z

    if-nez v6, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {p0, v3, v9, v6}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->requestDetachViewsFromParent(IIZ)V

    .line 391
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v6, v8

    .line 398
    goto :goto_1

    .line 402
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "galleryLeft":I
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v9

    sub-int v2, v6, v9

    .line 403
    .local v2, "galleryRight":I
    add-int/lit8 v3, v4, -0x1

    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 405
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le v6, v2, :cond_0

    .line 408
    move v5, v3

    .line 409
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFirstPosition:I

    add-int/lit8 v9, v6, 0x1

    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnFling:Z

    if-nez v6, :cond_4

    move v6, v7

    :goto_3
    invoke-virtual {p0, v3, v9, v6}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->requestDetachViewsFromParent(IIZ)V

    .line 403
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_4
    move v6, v8

    .line 409
    goto :goto_3
.end method

.method private fillToGalleryLeft()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v2

    .line 145
    .local v2, "galleryLeft":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 149
    .local v3, "prevIterationView":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 150
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFirstPosition:I

    add-int/lit8 v0, v4, -0x1

    .line 152
    .local v0, "curPosition":I
    invoke-static {v3, v6}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v1

    .line 159
    .local v1, "curRightEdge":I
    :goto_0
    add-int/lit16 v4, v2, -0x190

    if-le v1, v4, :cond_1

    if-ltz v0, :cond_1

    .line 160
    invoke-direct {p0, v0, v1, v6}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->makeAndAddView(IIZ)Landroid/view/View;

    move-result-object v3

    .line 161
    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 163
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFirstPosition:I

    .line 166
    invoke-static {v3, v6}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v1

    .line 167
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 154
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    const/4 v0, 0x0

    .line 155
    .restart local v0    # "curPosition":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v5

    sub-int v1, v4, v5

    .line 156
    .restart local v1    # "curRightEdge":I
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mShouldStopFling:Z

    goto :goto_0

    .line 169
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v7

    sub-int v2, v6, v7

    .line 173
    .local v2, "galleryRight":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v3

    .line 174
    .local v3, "numChildren":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    .line 176
    .local v4, "numItems":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 180
    .local v5, "prevIterationView":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 181
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFirstPosition:I

    add-int v1, v6, v3

    .line 183
    .local v1, "curPosition":I
    invoke-static {v5, v8}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v0

    .line 190
    .local v0, "curLeftEdge":I
    :goto_0
    add-int/lit16 v6, v2, 0x190

    if-ge v0, v6, :cond_1

    if-ge v1, v4, :cond_1

    .line 191
    invoke-direct {p0, v1, v0, v9}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->makeAndAddView(IIZ)Landroid/view/View;

    move-result-object v5

    .line 192
    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 195
    invoke-static {v5, v8}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v0

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    add-int/lit8 v1, v4, -0x1

    .restart local v1    # "curPosition":I
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFirstPosition:I

    .line 186
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v0

    .line 187
    .restart local v0    # "curLeftEdge":I
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mShouldStopFling:Z

    goto :goto_0

    .line 198
    :cond_1
    return-void
.end method

.method private finishOverScrollMode()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 563
    const/16 v0, 0x12c

    .line 565
    .local v0, "RESTORE_TIME":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    if-nez v2, :cond_0

    .line 595
    :goto_0
    return-void

    .line 569
    :cond_0
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    .line 571
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    const-string v3, "rotationY"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 572
    .local v1, "rotateAni":Landroid/animation/Animator;
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 573
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 574
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$1;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$1;-><init>(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 594
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private getCenterOfGallery()I
    .locals 3

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v0

    .line 327
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1
.end method

.method private static getCenterOfView(Landroid/view/View;Z)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # Z

    .prologue
    .line 332
    if-eqz p1, :cond_0

    .line 333
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x64

    .line 336
    .local v0, "center":I
    :goto_0
    return v0

    .line 335
    .end local v0    # "center":I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .restart local v0    # "center":I
    goto :goto_0
.end method

.method private makeAndAddView(IIZ)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "x"    # I
    .param p3, "fromLeft"    # Z

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 206
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v9

    if-eqz p3, :cond_1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {v9, v0, v8, v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mWidthMeasureSpec:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->measureChild(Landroid/view/View;II)V

    .line 214
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getMeasuredHeight()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x78

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFrameHeight:I

    .line 217
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 218
    .local v7, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 222
    .local v5, "height":I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFrameHeight:I

    sub-int/2addr v9, v5

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 224
    .local v4, "childTop":I
    add-int v1, v4, v5

    .line 226
    .local v1, "childBottom":I
    if-eqz p3, :cond_2

    .line 227
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x2

    add-int v2, p2, v8

    .line 228
    .local v2, "childLeft":I
    add-int v3, v2, v7

    .line 233
    .local v3, "childRight":I
    :goto_1
    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 235
    return-object v0

    .line 210
    .end local v1    # "childBottom":I
    .end local v2    # "childLeft":I
    .end local v3    # "childRight":I
    .end local v4    # "childTop":I
    .end local v5    # "height":I
    .end local v7    # "width":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 230
    .restart local v1    # "childBottom":I
    .restart local v4    # "childTop":I
    .restart local v5    # "height":I
    .restart local v7    # "width":I
    :cond_2
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    sub-int/2addr v8, v7

    div-int/lit8 v8, v8, 0x2

    sub-int v3, p2, v8

    .line 231
    .restart local v3    # "childRight":I
    sub-int v2, v3, v7

    .restart local v2    # "childLeft":I
    goto :goto_1
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 11
    .param p1, "offset"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 342
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 344
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 345
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 346
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x14

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setPivotY(F)V

    .line 348
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v10}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v7, v7, 0x2

    mul-int/2addr v7, v2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedOffset:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide v8, 0x3f5205bc01a36e2fL    # 0.0011

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    .line 351
    .local v3, "scaleOffset":F
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 352
    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 354
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v5, v5, 0x2

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedOffset:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x64

    int-to-double v4, v4

    const-wide v6, 0x3f6205bc01a36e2fL    # 0.0022

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    neg-double v4, v4

    const-wide v6, 0x3ff3333333333333L    # 1.2

    add-double/2addr v4, v6

    double-to-float v0, v4

    .line 355
    .local v0, "alphaOffset":F
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 357
    instance-of v4, v1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 358
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "child":Landroid/view/View;
    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->searchImageView(Landroid/view/ViewGroup;I)V

    .line 341
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 359
    .restart local v1    # "child":Landroid/view/View;
    :cond_1
    instance-of v4, v1, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 360
    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->setColorFilter(Landroid/view/View;I)V

    goto :goto_1

    .line 363
    .end local v0    # "alphaOffset":F
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "scaleOffset":F
    :cond_2
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 540
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnFling:Z

    if-eq v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    if-ne v3, v4, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedChild:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 546
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedChild:Landroid/view/View;

    invoke-static {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v1

    .line 547
    .local v1, "selectedCenter":I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfGallery()I

    move-result v2

    .line 549
    .local v2, "targetCenter":I
    sub-int v0, v2, v1

    .line 550
    .local v0, "scrollAmount":I
    if-eqz v0, :cond_0

    .line 551
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->startUsingDistance(II)V

    goto :goto_0
.end method

.method private searchImageView(Landroid/view/ViewGroup;I)V
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "index"    # I

    .prologue
    .line 366
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 367
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 369
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 370
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->searchImageView(Landroid/view/ViewGroup;I)V

    .line 366
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 371
    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 372
    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->setColorFilter(Landroid/view/View;I)V

    goto :goto_1

    .line 375
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private setColorFilter(Landroid/view/View;I)V
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x437f0000    # 255.0f

    .line 378
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v11}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v3

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v6, v6, 0x2

    mul-int/2addr v6, p2

    add-int/2addr v3, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedOffset:I

    sub-int/2addr v3, v6

    int-to-double v6, v3

    const-wide v8, 0x3f747ae147ae147bL    # 0.005

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 379
    .local v2, "multiplyOffset":F
    new-instance v0, Landroid/graphics/LightingColorFilter;

    mul-float v3, v2, v10

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x10

    mul-float v4, v2, v10

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    mul-float v4, v2, v10

    float-to-int v4, v4

    or-int/2addr v3, v4

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    invoke-direct {v0, v3, v11}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .local v0, "colorFilter":Landroid/graphics/LightingColorFilter;
    move-object v1, p1

    .line 380
    check-cast v1, Landroid/widget/ImageView;

    .line 381
    .local v1, "imageChildeView":Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 382
    return-void
.end method

.method private trackMotionOverScroll(I)V
    .locals 8
    .param p1, "deltaX"    # I

    .prologue
    const/high16 v7, 0x41700000    # 15.0f

    const/high16 v6, -0x3e900000    # -15.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 625
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnAnimation:Z

    if-ne v0, v5, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    int-to-float v1, p1

    const v2, 0x3da3d70a    # 0.08f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    .line 630
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_2

    .line 631
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    .line 632
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mShouldStopFling:Z

    .line 635
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_3

    .line 636
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    .line 637
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mShouldStopFling:Z

    .line 640
    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFirstPosition:I

    if-nez v0, :cond_5

    .line 641
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    .line 642
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4

    .line 643
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    .line 644
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    .line 656
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 661
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    .line 649
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mOverScrollItem:Landroid/view/View;

    .line 650
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4

    .line 651
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDegreeOfOverScrollView:F

    .line 652
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    goto :goto_1
.end method

.method private updateSelectedItemMetadata()V
    .locals 4

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedChild:Landroid/view/View;

    .line 695
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 698
    :cond_0
    return-void
.end method


# virtual methods
.method public getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->sortChildView()Ljava/util/ArrayList;

    move-result-object v0

    .line 668
    .local v0, "childIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 9
    .param p1, "motionToLeft"    # Z
    .param p2, "deltaX"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 298
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 299
    .local v3, "extremeItemPosition":I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFirstPosition:I

    sub-int v7, v3, v7

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 301
    .local v1, "extremeChild":Landroid/view/View;
    if-nez v1, :cond_1

    move v5, p2

    .line 322
    :goto_1
    return v5

    .end local v1    # "extremeChild":Landroid/view/View;
    .end local v3    # "extremeItemPosition":I
    :cond_0
    move v3, v5

    .line 298
    goto :goto_0

    .line 305
    .restart local v1    # "extremeChild":Landroid/view/View;
    .restart local v3    # "extremeItemPosition":I
    :cond_1
    invoke-static {v1, v8}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v2

    .line 306
    .local v2, "extremeChildCenter":I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfGallery()I

    move-result v4

    .line 308
    .local v4, "galleryCenter":I
    if-eqz p1, :cond_2

    .line 309
    if-gt v2, v4, :cond_3

    .line 310
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    goto :goto_1

    .line 314
    :cond_2
    if-lt v2, v4, :cond_3

    .line 315
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    goto :goto_1

    .line 320
    :cond_3
    sub-int v0, v4, v2

    .line 322
    .local v0, "centerDifference":I
    if-eqz p1, :cond_4

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    :cond_4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public layoutchildren(II)V
    .locals 8
    .param p1, "firstPosition"    # I
    .param p2, "layoutMode"    # I

    .prologue
    const/4 v7, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v0

    .line 115
    .local v0, "gellaryExLeft":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v6

    sub-int v1, v5, v6

    .line 120
    .local v1, "gellaryExWidth":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 121
    .local v4, "wm":Landroid/view/WindowManager;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 122
    .local v2, "outSize":Landroid/graphics/Point;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 124
    const/high16 v5, 0x43c80000    # 400.0f

    int-to-float v6, v1

    mul-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    .line 126
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedPosition:I

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFirstPosition:I

    .line 127
    const/4 v5, 0x1

    invoke-direct {p0, p1, v7, v5}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->makeAndAddView(IIZ)Landroid/view/View;

    move-result-object v3

    .line 129
    .local v3, "sel":Landroid/view/View;
    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x64

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedOffset:I

    .line 131
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedOffset:I

    invoke-virtual {v3, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 133
    const/16 v5, 0x3c

    invoke-virtual {v3, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 135
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->fillToGalleryRight()V

    .line 136
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->fillToGalleryLeft()V

    .line 137
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->offsetChildrenLeftAndRight(I)V

    .line 139
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->updateSelectedItemMetadata()V

    .line 140
    return-void
.end method

.method public measureChildren(II)[I
    .locals 10
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 67
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 68
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 69
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingTop()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 70
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingBottom()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, "preferredHeight":I
    const/4 v3, 0x0

    .line 74
    .local v3, "preferredWidth":I
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 75
    .local v4, "result":[I
    const/4 v1, 0x1

    .line 77
    .local v1, "needsMeasuring":Z
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 79
    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getView(I)Landroid/view/View;

    move-result-object v5

    .line 81
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 82
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-nez v7, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    :cond_0
    invoke-virtual {p0, v5, p1, p2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->measureChild(Landroid/view/View;II)V

    .line 87
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/lit8 v7, v7, 0x78

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v2, v7, v8

    .line 89
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v3, v7, v8

    .line 92
    const/4 v1, 0x0

    .line 96
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    if-eqz v1, :cond_2

    .line 97
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v2, v7, v8

    .line 98
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mGalleryExPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v3, v7, v8

    .line 101
    :cond_2
    invoke-static {v2, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    .line 102
    .local v0, "heightSize":I
    invoke-static {v3, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v6

    .line 104
    .local v6, "widthSize":I
    aput v6, v4, v9

    .line 105
    const/4 v7, 0x1

    aput v0, v4, v7

    .line 107
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mHeightMeasureSpec:I

    .line 108
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mWidthMeasureSpec:I

    .line 109
    return-object v4
.end method

.method public onFling(F)Z
    .locals 12
    .param p1, "velocity"    # F

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 497
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    if-eq v8, v6, :cond_0

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnAnimation:Z

    if-ne v8, v6, :cond_2

    :cond_0
    move v6, v7

    .line 536
    :cond_1
    :goto_0
    return v6

    .line 500
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    .line 501
    .local v1, "gallery":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedPosition:I

    if-nez v8, :cond_6

    cmpl-float v8, p1, v10

    if-lez v8, :cond_6

    .line 503
    invoke-virtual {v1, v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 504
    .local v5, "view":Landroid/view/View;
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v0

    .line 505
    .local v0, "extremeChildCenter":I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfGallery()I

    move-result v2

    .line 507
    .local v2, "galleryCenter":I
    if-ge v0, v2, :cond_1

    .line 520
    .end local v0    # "extremeChildCenter":I
    .end local v2    # "galleryCenter":I
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    const/4 v4, 0x0

    .line 521
    .local v4, "limitedVelocity":F
    cmpl-float v8, p1, v10

    if-lez v8, :cond_7

    .line 522
    const v8, 0x45bb8000    # 6000.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 527
    :cond_4
    :goto_1
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

    neg-float v9, v4

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->startUsingVelocity(I)V

    .line 528
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnFling:Z

    .line 530
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 531
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    .line 532
    .local v3, "galleryEx":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v6

    invoke-interface {v6, v3, v11}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    .line 533
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mScrollState:I

    .end local v3    # "galleryEx":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    :cond_5
    move v6, v7

    .line 536
    goto :goto_0

    .line 510
    .end local v4    # "limitedVelocity":F
    :cond_6
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedPosition:I

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_3

    cmpg-float v8, p1, v10

    if-gez v8, :cond_3

    .line 512
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 513
    .restart local v5    # "view":Landroid/view/View;
    invoke-static {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfView(Landroid/view/View;Z)I

    move-result v0

    .line 514
    .restart local v0    # "extremeChildCenter":I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getCenterOfGallery()I

    move-result v2

    .line 516
    .restart local v2    # "galleryCenter":I
    if-gt v0, v2, :cond_3

    goto :goto_0

    .line 523
    .end local v0    # "extremeChildCenter":I
    .end local v2    # "galleryCenter":I
    .end local v5    # "view":Landroid/view/View;
    .restart local v4    # "limitedVelocity":F
    :cond_7
    cmpg-float v8, p1, v10

    if-gez v8, :cond_4

    .line 524
    const v8, -0x3a448000    # -6000.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    neg-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_1
.end method

.method public onOverScroll(II)Z
    .locals 3
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 557
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mScrollsensitive:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 558
    .local v0, "distanceX":I
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->trackMotionOverScroll(I)V

    .line 559
    const/4 v1, 0x0

    return v1
.end method

.method public onScroll(II)Z
    .locals 3
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    const/4 v1, 0x1

    .line 240
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 243
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    if-eq v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOnAnimation:Z

    if-ne v2, v1, :cond_2

    .line 244
    :cond_0
    const/4 v1, 0x0

    .line 254
    :cond_1
    :goto_0
    return v1

    .line 246
    :cond_2
    mul-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->trackMotionScroll(I)V

    .line 248
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mScrollState:I

    if-eq v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    .line 250
    .local v0, "galleryEx":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    .line 251
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mScrollState:I

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 425
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    if-ltz v1, :cond_1

    .line 426
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->scrollToPosition(IZ)V

    .line 429
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedPosition:I

    if-ne v1, v2, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    invoke-virtual {v4, v5}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->performItemClick(Landroid/view/View;IJ)Z

    .line 434
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 440
    .local v0, "action":I
    if-ne v0, v4, :cond_2

    .line 441
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    if-ne v1, v4, :cond_1

    .line 442
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->finishOverScrollMode()V

    .line 462
    :cond_0
    :goto_0
    return v5

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->onUp()V

    goto :goto_0

    .line 446
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 447
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mIsOverScroll:Z

    if-ne v1, v4, :cond_3

    .line 448
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->finishOverScrollMode()V

    goto :goto_0

    .line 450
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->onUp()V

    goto :goto_0

    .line 452
    :cond_4
    if-nez v0, :cond_0

    .line 453
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->stop(Z)V

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->pointToPosition(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    .line 457
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    if-ltz v1, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchView:Landroid/view/View;

    .line 459
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    .line 468
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

    # getter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->access$000(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->scrollIntoSlots()V

    .line 471
    :cond_0
    return-void
.end method

.method public pointToPosition(II)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 474
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mTouchFrame:Landroid/graphics/Rect;

    .line 475
    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 476
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mTouchFrame:Landroid/graphics/Rect;

    .line 477
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mTouchFrame:Landroid/graphics/Rect;

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->sortChildView()Ljava/util/ArrayList;

    move-result-object v1

    .line 482
    .local v1, "childIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 483
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 484
    .local v4, "index":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 485
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 486
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 487
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 488
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFirstPosition:I

    add-int/2addr v5, v4

    .line 492
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "index":I
    :goto_1
    return v5

    .line 482
    .restart local v0    # "child":Landroid/view/View;
    .restart local v4    # "index":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 492
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "index":I
    :cond_2
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public scrollToPosition(IZ)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "isAni"    # Z

    .prologue
    const/4 v5, 0x0

    .line 599
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

    # getter for: Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->access$000(Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    if-gez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt p1, v3, :cond_0

    .line 604
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 606
    .local v1, "childView":Landroid/view/View;
    const/4 v0, 0x0

    .line 607
    .local v0, "childDistance":I
    if-eqz v1, :cond_3

    .line 608
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v0, v3, 0x2

    .line 612
    :goto_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedPosition:I

    sub-int/2addr v3, p1

    mul-int v2, v3, v0

    .line 613
    .local v2, "scrollAmount":I
    if-eqz p2, :cond_4

    .line 614
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController$FlingRunnable;->startUsingDistance(II)V

    goto :goto_0

    .line 610
    .end local v2    # "scrollAmount":I
    :cond_3
    const-string v3, "scrollToPosition"

    const-string v4, "Child View is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 617
    .restart local v2    # "scrollAmount":I
    :cond_4
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFirstPosition:I

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->requestdetachAllViewsFromParent(IZ)V

    .line 619
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I

    .line 620
    const/4 v3, -0x1

    invoke-virtual {p0, p1, v3}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->layoutchildren(II)V

    goto :goto_0
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
    .line 672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v0, "childIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v3

    .line 675
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 676
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 679
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 680
    add-int/lit8 v2, v1, 0x1

    .local v2, "j":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 681
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

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

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

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

    .line 683
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 684
    .local v4, "temp":I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 680
    .end local v4    # "temp":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 679
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 689
    .end local v2    # "j":I
    :cond_3
    return-object v0
.end method

.method trackMotionScroll(I)V
    .locals 8
    .param p1, "deltaX"    # I

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 295
    :goto_0
    return-void

    .line 263
    :cond_0
    if-gez p1, :cond_2

    const/4 v3, 0x1

    .line 265
    .local v3, "toLeft":Z
    :goto_1
    invoke-virtual {p0, v3, p1}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getLimitedMotionScrollAmount(ZI)I

    move-result v2

    .line 270
    .local v2, "limitedDeltaX":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I

    .line 272
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSpacing:I

    div-int/lit8 v0, v4, 0x2

    .line 274
    .local v0, "childDistance":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mDeltaX:I

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    neg-int v4, v4

    div-int/2addr v4, v0

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mSelectedPosition:I

    .line 275
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->updateSelectedItemMetadata()V

    .line 277
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->offsetChildrenLeftAndRight(I)V

    .line 280
    if-eqz v3, :cond_3

    .line 281
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->fillToGalleryRight()V

    .line 287
    :goto_2
    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->detachOffScreenChildren(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    .line 291
    .local v1, "galleryEx":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->mFirstPosition:I

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v6

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v7

    invoke-interface {v4, v1, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScroll(Lcom/sec/android/touchwiz/widget/TwGalleryEx;III)V

    .line 294
    .end local v1    # "galleryEx":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    goto :goto_0

    .line 263
    .end local v0    # "childDistance":I
    .end local v2    # "limitedDeltaX":I
    .end local v3    # "toLeft":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 283
    .restart local v0    # "childDistance":I
    .restart local v2    # "limitedDeltaX":I
    .restart local v3    # "toLeft":Z
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwCoverflowLayoutController;->fillToGalleryLeft()V

    goto :goto_2
.end method

.class public Lcom/sec/android/touchwiz/widget/TwGalleryEx;
.super Landroid/widget/AdapterView;
.source "TwGalleryEx.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;,
        Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;,
        Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;,
        Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;,
        Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/BaseAdapter;",
        ">;",
        "Landroid/view/GestureDetector$OnGestureListener;"
    }
.end annotation


# static fields
.field static final CACHING_MODE:Z


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mCachingSize:I

.field private mDataChanged:Z

.field private mFirstIndex:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

.field private mNeedToPassScrollEvent:Z

.field private mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

.field private final mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

.field private final mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

.field private mScrapAllView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    .line 25
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mScrapAllView:Z

    .line 30
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    .line 31
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I

    .line 41
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mDataChanged:Z

    .line 42
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mFirstIndex:I

    .line 47
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mNeedToPassScrollEvent:Z

    .line 48
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mGestureDetector:Landroid/view/GestureDetector;

    .line 65
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    .line 76
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->initGalleryEx(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    .line 25
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mScrapAllView:Z

    .line 30
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    .line 31
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I

    .line 41
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mDataChanged:Z

    .line 42
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mFirstIndex:I

    .line 47
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mNeedToPassScrollEvent:Z

    .line 48
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mGestureDetector:Landroid/view/GestureDetector;

    .line 65
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    .line 83
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->initGalleryEx(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    .prologue
    .line 18
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/touchwiz/widget/TwGalleryEx;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachViewsFromParent(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachViewFromParent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachAllViewsFromParent()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    .param p1, "x1"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->retrieveFromScrap(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mDataChanged:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mScrapAllView:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/touchwiz/widget/TwGalleryEx;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachViewsFromParent(II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachViewFromParent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachAllViewsFromParent()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initGalleryEx(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->setChildrenDrawingOrderEnabled(Z)V

    .line 117
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mGestureDetector:Landroid/view/GestureDetector;

    .line 118
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 119
    return-void
.end method

.method private retrieveFromScrap(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->get(I)Landroid/view/View;
    invoke-static {v1, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$700(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;I)Landroid/view/View;

    move-result-object v0

    .line 307
    if-nez v0, :cond_0

    .line 309
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->get()Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$800(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;)Landroid/view/View;

    move-result-object v0

    .line 312
    :cond_0
    return-object v0
.end method


# virtual methods
.method createLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;)V

    .line 89
    .local v0, "layoutRequester":Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 110
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getFirstVisibleViewPosition()I

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mNeedToPassScrollEvent:Z

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return v2

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    float-to-int v1, p3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->onFling(F)Z

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x0

    .line 159
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v1

    .line 162
    .local v1, "childCount":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getFirstVisibleViewPosition()I

    move-result v2

    .line 183
    .local v2, "firstIndex":I
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mDataChanged:Z

    if-nez v4, :cond_1

    .line 185
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->fillActiveViews(II)V
    invoke-static {v4, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$400(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;II)V

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachAllViewsFromParent()V

    .line 198
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    invoke-virtual {v4, v2, v6}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->layoutchildren(II)V

    .line 200
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->scrapActiveViews()V
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$600(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;)V

    .line 203
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mDataChanged:Z

    .line 204
    return-void

    .line 189
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 191
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mFirstIndex:I

    add-int/2addr v5, v3

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->put(ILandroid/view/View;)V
    invoke-static {v4, v5, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$500(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;ILandroid/view/View;)V

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 239
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 148
    .local v0, "measuredDimension":[I
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mScrapAllView:Z

    .line 149
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->measureChildren(II)[I

    move-result-object v0

    .line 150
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mScrapAllView:Z

    .line 153
    aget v1, v0, v2

    aget v2, v0, v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->setMeasuredDimension(II)V

    .line 154
    return-void

    .line 142
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v3, 0x0

    .line 244
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mNeedToPassScrollEvent:Z

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return v3

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    float-to-int v1, p3

    float-to-int v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->onScroll(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    float-to-int v1, p3

    float-to-int v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->onOverScroll(II)Z

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 258
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 266
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 272
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mNeedToPassScrollEvent:Z

    .line 277
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 278
    return v1

    .line 275
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mNeedToPassScrollEvent:Z

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 18
    check-cast p1, Landroid/widget/BaseAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->setAdapter(Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;

    .line 125
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->clear()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$300(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;)V

    .line 128
    return-void
.end method

.method public setLayoutController(Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;)V
    .locals 0
    .param p1, "abasLayoutController"    # Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    .line 95
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->scrollToPosition(IZ)V

    .line 216
    return-void
.end method

.method public setonScrollListener(Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    .line 100
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->scrollToPosition(IZ)V

    .line 296
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    .line 301
    return-void
.end method

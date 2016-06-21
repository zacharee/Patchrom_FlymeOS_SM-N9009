.class Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
.super Ljava/lang/Object;
.source "TwGalleryEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwGalleryEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecycleBinForCache"
.end annotation


# instance fields
.field private mActiveHeap:[Landroid/view/View;

.field private final mCacheHeapBottom:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheHeapTop:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V
    .locals 1

    .prologue
    .line 425
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mScrapHeap:Landroid/util/SparseArray;

    .line 427
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mCacheHeapTop:Landroid/util/SparseArray;

    .line 428
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mCacheHeapBottom:Landroid/util/SparseArray;

    .line 429
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mActiveHeap:[Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    .param p2, "x1"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;ILandroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # I

    .prologue
    .line 425
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->putCaching(ILandroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    .param p1, "x1"    # I

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->refresh(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;II)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 425
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->getActiveView(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;II)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 425
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->getCaching(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->getScrap()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->addScrap(Landroid/view/View;)V

    return-void
.end method

.method private addScrap(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mScrapHeap:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 433
    return-void
.end method

.method private clear()V
    .locals 6

    .prologue
    .line 448
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 450
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mCacheHeapTop:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 451
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mCacheHeapBottom:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 452
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1200(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 453
    .local v1, "loop":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_0

    .line 454
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Landroid/widget/BaseAdapter;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v3, v0, v4, v5}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 455
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mCacheHeapBottom:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private fillActiveViews(I)V
    .locals 4
    .param p1, "childCount"    # I

    .prologue
    .line 595
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mActiveHeap:[Landroid/view/View;

    array-length v3, v3

    if-ge v3, p1, :cond_0

    .line 596
    new-array v3, p1, [Landroid/view/View;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mActiveHeap:[Landroid/view/View;

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mActiveHeap:[Landroid/view/View;

    .line 599
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 602
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 603
    .local v1, "child":Landroid/view/View;
    aput-object v1, v0, v2

    .line 599
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private getActiveView(II)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "firstActivePos"    # I

    .prologue
    const/4 v3, 0x0

    .line 609
    sub-int v1, p1, p2

    .line 610
    .local v1, "index":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mActiveHeap:[Landroid/view/View;

    .line 611
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 613
    aget-object v2, v0, v1

    .line 614
    .local v2, "match":Landroid/view/View;
    aput-object v3, v0, v1

    .line 617
    .end local v2    # "match":Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method private getCaching(II)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "firstActivePos"    # I

    .prologue
    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, "view":Landroid/view/View;
    if-le p2, p1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mCacheHeapTop:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 481
    .restart local v0    # "view":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mCacheHeapTop:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 484
    :cond_0
    if-ge p2, p1, :cond_1

    .line 486
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mCacheHeapBottom:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 488
    .restart local v0    # "view":Landroid/view/View;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mCacheHeapBottom:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 491
    :cond_1
    return-object v0
.end method

.method private getScrap()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 436
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 437
    const/4 v0, 0x0

    .line 444
    :cond_0
    :goto_0
    return-object v0

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 441
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 442
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_0
.end method

.method private needToFillBottomCount(III)I
    .locals 3
    .param p1, "bottomCount"    # I
    .param p2, "lastActivePos"    # I
    .param p3, "limitCount"    # I

    .prologue
    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "count":I
    sub-int v1, p3, p2

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1200(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)I

    move-result v2

    if-ge v1, v2, :cond_2

    sub-int v1, p3, p2

    sub-int v0, v1, p1

    .line 587
    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1200(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1200(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)I

    move-result v0

    .line 590
    :cond_1
    return v0

    .line 583
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1200(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)I

    move-result v1

    sub-int v0, v1, p1

    goto :goto_0
.end method

.method private needToFillTopCount(II)I
    .locals 2
    .param p1, "topCount"    # I
    .param p2, "firstActivePos"    # I

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, "count":I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1200(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)I

    move-result v1

    if-ge p2, v1, :cond_2

    sub-int v0, p2, p1

    .line 574
    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1200(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1200(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)I

    move-result v0

    .line 577
    :cond_1
    return v0

    .line 570
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1200(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)I

    move-result v1

    sub-int v0, v1, p1

    goto :goto_0
.end method

.method private putCaching(ILandroid/view/View;I)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "firstActivePos"    # I

    .prologue
    .line 463
    if-le p3, p1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mCacheHeapTop:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    :cond_0
    if-ge p3, p1, :cond_1

    .line 470
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mCacheHeapBottom:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 472
    :cond_1
    return-void
.end method

.method private refresh(I)V
    .locals 13
    .param p1, "firstActivePos"    # I

    .prologue
    .line 496
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Landroid/widget/BaseAdapter;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v5

    .line 498
    .local v5, "limitCount":I
    if-gez p1, :cond_1

    .line 565
    :cond_0
    return-void

    .line 502
    :cond_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v10

    add-int/2addr v10, p1

    add-int/lit8 v4, v10, -0x1

    .line 503
    .local v4, "lastActivePos":I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mCacheHeapTop:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 504
    .local v8, "topHeapCount":I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mCacheHeapBottom:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 508
    .local v0, "bottomHeapCount":I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1200(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)I

    move-result v10

    if-le v8, v10, :cond_2

    .line 510
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1200(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)I

    move-result v10

    sub-int v10, p1, v10

    add-int/lit8 v3, v10, -0x1

    .local v3, "i":I
    :goto_0
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1200(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)I

    move-result v10

    sub-int v10, p1, v10

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v8

    if-le v3, v10, :cond_2

    .line 511
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mCacheHeapTop:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 512
    .local v9, "view":Landroid/view/View;
    invoke-direct {p0, v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->addScrap(Landroid/view/View;)V

    .line 514
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mCacheHeapTop:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 510
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 518
    .end local v3    # "i":I
    .end local v9    # "view":Landroid/view/View;
    :cond_2
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1200(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)I

    move-result v10

    if-le v0, v10, :cond_3

    .line 520
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1200(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)I

    move-result v10

    add-int/2addr v10, v4

    add-int/lit8 v3, v10, 0x1

    .restart local v3    # "i":I
    :goto_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1200(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)I

    move-result v10

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v8

    if-ge v3, v10, :cond_3

    .line 521
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mCacheHeapBottom:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 522
    .restart local v9    # "view":Landroid/view/View;
    invoke-direct {p0, v9}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->addScrap(Landroid/view/View;)V

    .line 524
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->mCacheHeapBottom:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 520
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 528
    .end local v3    # "i":I
    .end local v9    # "view":Landroid/view/View;
    :cond_3
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v10

    invoke-direct {v10, v8, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->needToFillTopCount(II)I

    move-result v2

    .line 529
    .local v2, "fillTopCount":I
    if-lez v2, :cond_5

    .line 531
    sub-int v10, p1, v8

    add-int/lit8 v6, v10, -0x1

    .line 533
    .local v6, "position":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_5

    .line 534
    const/4 v7, 0x0

    .line 536
    .local v7, "scrapView":Landroid/view/View;
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v10

    invoke-direct {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->getScrap()Landroid/view/View;

    move-result-object v7

    .line 538
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Landroid/widget/BaseAdapter;

    move-result-object v10

    sub-int v11, v6, v3

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v10, v11, v7, v12}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 540
    .restart local v9    # "view":Landroid/view/View;
    if-eqz v9, :cond_4

    .line 541
    const-string v10, "TwGalleryEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[bongkus] 1.refresh().... put : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-int v12, v6, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v10

    sub-int v11, v6, v3

    invoke-direct {v10, v11, v9, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->putCaching(ILandroid/view/View;I)V

    .line 533
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 547
    .end local v3    # "i":I
    .end local v6    # "position":I
    .end local v7    # "scrapView":Landroid/view/View;
    .end local v9    # "view":Landroid/view/View;
    :cond_5
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v10

    add-int/lit8 v11, v5, -0x1

    invoke-direct {v10, v0, v4, v11}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->needToFillBottomCount(III)I

    move-result v1

    .line 548
    .local v1, "fillBottomCount":I
    if-lez v1, :cond_0

    .line 550
    add-int v10, v4, v0

    add-int/lit8 v6, v10, 0x1

    .line 552
    .restart local v6    # "position":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_0

    .line 553
    const/4 v7, 0x0

    .line 555
    .restart local v7    # "scrapView":Landroid/view/View;
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v10

    invoke-direct {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->getScrap()Landroid/view/View;

    move-result-object v7

    .line 557
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Landroid/widget/BaseAdapter;

    move-result-object v10

    add-int v11, v6, v3

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v10, v11, v7, v12}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 559
    .restart local v9    # "view":Landroid/view/View;
    if-eqz v9, :cond_6

    .line 561
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v10

    add-int v11, v6, v3

    invoke-direct {v10, v11, v9, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->putCaching(ILandroid/view/View;I)V

    .line 552
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

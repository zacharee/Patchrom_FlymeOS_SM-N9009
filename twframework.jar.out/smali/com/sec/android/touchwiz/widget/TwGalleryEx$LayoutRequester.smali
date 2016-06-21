.class Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;
.super Ljava/lang/Object;
.source "TwGalleryEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwGalleryEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutRequester"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    .param p2, "x1"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx$1;

    .prologue
    .line 625
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;-><init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V

    return-void
.end method


# virtual methods
.method public getView(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 671
    const/4 v1, 0x0

    .line 672
    .local v1, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 674
    .local v0, "scrapView":Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->retrieveFromScrap(I)Landroid/view/View;
    invoke-static {v2, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2000(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)Landroid/view/View;

    move-result-object v0

    .line 676
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mDataChanged:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 677
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1500(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    move-result-object v2

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->getActiveView(I)Landroid/view/View;
    invoke-static {v2, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$2200(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;I)Landroid/view/View;

    move-result-object v1

    .line 680
    :cond_0
    if-nez v1, :cond_1

    .line 681
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Landroid/widget/BaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 683
    if-eqz v0, :cond_2

    .line 685
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Landroid/widget/BaseAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v2, p1, v0, v3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 696
    :cond_1
    :goto_0
    return-object v1

    .line 689
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Landroid/widget/BaseAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v2, p1, v0, v3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 690
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mScrapAllView:Z
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 691
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1500(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    move-result-object v2

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->add(Landroid/view/View;)V
    invoke-static {v2, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$1600(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getViewForCache(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 758
    const/4 v2, 0x0

    .line 759
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2400(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getFirstVisibleViewPosition()I

    move-result v0

    .line 761
    .local v0, "firstVisibleIndex":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mDataChanged:Z
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 762
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v3

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->getActiveView(II)Landroid/view/View;
    invoke-static {v3, p1, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$3000(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;II)Landroid/view/View;

    move-result-object v2

    .line 765
    :cond_0
    if-nez v2, :cond_1

    .line 767
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v3

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->getCaching(II)Landroid/view/View;
    invoke-static {v3, p1, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$3100(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;II)Landroid/view/View;

    move-result-object v2

    .line 769
    if-nez v2, :cond_1

    .line 770
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v3

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->getScrap()Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$3200(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;)Landroid/view/View;

    move-result-object v1

    .line 772
    .local v1, "scrap":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 773
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Landroid/widget/BaseAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v3, p1, v1, v4}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 783
    .end local v1    # "scrap":Landroid/view/View;
    :cond_1
    :goto_0
    return-object v2

    .line 777
    .restart local v1    # "scrap":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1100(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Landroid/widget/BaseAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v3, p1, v1, v4}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 778
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v3

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->addScrap(Landroid/view/View;)V
    invoke-static {v3, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$3300(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;Landroid/view/View;)V

    goto :goto_0
.end method

.method public refreshCaching()V
    .locals 2

    .prologue
    .line 792
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2400(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getFirstVisibleViewPosition()I

    move-result v0

    .line 793
    .local v0, "firstVisibleIndex":I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v1

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->refresh(I)V
    invoke-static {v1, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$2700(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;I)V

    .line 794
    return-void
.end method

.method public requestAddViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "layoutParam"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 632
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1400(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 633
    return-void
.end method

.method public requestDetachViewsFromParent(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 637
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v0

    .line 638
    .local v0, "childCount":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v3, p1, p2

    if-ge v1, v3, :cond_1

    if-ge v1, v0, :cond_1

    .line 640
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 641
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 642
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1500(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    move-result-object v3

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->add(Landroid/view/View;)V
    invoke-static {v3, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$1600(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;Landroid/view/View;)V

    .line 638
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 645
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachViewsFromParent(II)V
    invoke-static {v3, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1700(Lcom/sec/android/touchwiz/widget/TwGalleryEx;II)V

    .line 646
    return-void
.end method

.method public requestDetachViewsFromParent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 650
    if-nez p1, :cond_0

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachViewFromParent(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1800(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;)V

    .line 654
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1500(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    move-result-object v0

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->add(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$1600(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;Landroid/view/View;)V

    goto :goto_0
.end method

.method public requestDetachViewsFromParentForCache(IIIZ)V
    .locals 6
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "startPos"    # I
    .param p4, "autoCaching"    # Z

    .prologue
    .line 702
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v0

    .line 703
    .local v0, "childCount":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2400(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getFirstVisibleViewPosition()I

    move-result v1

    .line 704
    .local v1, "firstVisibleIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    if-ge v2, v0, :cond_1

    .line 706
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    add-int v5, p1, v2

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 707
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 709
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v4

    add-int v5, p3, v2

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->putCaching(ILandroid/view/View;I)V
    invoke-static {v4, v5, v3, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$2500(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;ILandroid/view/View;I)V

    .line 704
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 713
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachViewsFromParent(II)V
    invoke-static {v4, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2600(Lcom/sec/android/touchwiz/widget/TwGalleryEx;II)V

    .line 715
    if-eqz p4, :cond_2

    if-lez p2, :cond_2

    .line 717
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v4

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->refresh(I)V
    invoke-static {v4, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$2700(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;I)V

    .line 719
    :cond_2
    return-void
.end method

.method public requestDetachViewsFromParentForCache(IIZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "pos"    # I
    .param p3, "autoCaching"    # Z

    .prologue
    .line 723
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2400(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getFirstVisibleViewPosition()I

    move-result v0

    .line 724
    .local v0, "firstVisibleIndex":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 726
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v2

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->putCaching(ILandroid/view/View;I)V
    invoke-static {v2, p2, v1, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$2500(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;ILandroid/view/View;I)V

    .line 728
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachViewFromParent(Landroid/view/View;)V
    invoke-static {v2, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2800(Lcom/sec/android/touchwiz/widget/TwGalleryEx;Landroid/view/View;)V

    .line 730
    if-eqz p3, :cond_0

    .line 732
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v2

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->refresh(I)V
    invoke-static {v2, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$2700(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;I)V

    .line 734
    :cond_0
    return-void
.end method

.method public requestdetachAllViewsFromParent()V
    .locals 3

    .prologue
    .line 659
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 661
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 662
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecycler:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1500(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;

    move-result-object v2

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->add(Landroid/view/View;)V
    invoke-static {v2, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;->access$1600(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBin;Landroid/view/View;)V

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachAllViewsFromParent()V
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1900(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V

    .line 666
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    .line 667
    return-void
.end method

.method public requestdetachAllViewsFromParentForCache(IZ)V
    .locals 6
    .param p1, "startPos"    # I
    .param p2, "autoCaching"    # Z

    .prologue
    .line 738
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mLayoutController:Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2400(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getFirstVisibleViewPosition()I

    move-result v1

    .line 739
    .local v1, "firstVisibleIndex":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v0

    .line 740
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 742
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 744
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v4

    add-int v5, p1, v2

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->putCaching(ILandroid/view/View;I)V
    invoke-static {v4, v5, v3, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$2500(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;ILandroid/view/View;I)V

    .line 740
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 747
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    if-eqz p2, :cond_1

    if-lez v0, :cond_1

    .line 749
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mRecyclerForCache:Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1300(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;

    move-result-object v4

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->refresh(I)V
    invoke-static {v4, v1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;->access$2700(Lcom/sec/android/touchwiz/widget/TwGalleryEx$RecycleBinForCache;I)V

    .line 752
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # invokes: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->detachAllViewsFromParent()V
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$2900(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V

    .line 753
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->invalidate()V

    .line 754
    return-void
.end method

.method public setCachingSize(I)V
    .locals 1
    .param p1, "cachingSize"    # I

    .prologue
    .line 787
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->this$0:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    # setter for: Lcom/sec/android/touchwiz/widget/TwGalleryEx;->mCachingSize:I
    invoke-static {v0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->access$1202(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)I

    .line 788
    return-void
.end method

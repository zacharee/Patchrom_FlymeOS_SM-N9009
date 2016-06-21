.class Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;
.super Ljava/lang/Object;
.source "TwDndListAnimator.java"

# interfaces
.implements Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/animator/TwDndListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderFooterDndController"
.end annotation


# instance fields
.field private final mWrappedController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;)V
    .locals 0
    .param p2, "wrappedController"    # Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    .prologue
    .line 831
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    .line 833
    return-void
.end method


# virtual methods
.method public allowDrag(I)Z
    .locals 3
    .param p1, "startPos"    # I

    .prologue
    const/4 v0, 0x0

    .line 836
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    if-eqz v1, :cond_0

    .line 837
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 845
    :cond_0
    :goto_0
    return v0

    .line 839
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    .line 843
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrag(I)Z

    move-result v0

    goto :goto_0
.end method

.method public allowDrop(II)Z
    .locals 3
    .param p1, "startPos"    # I
    .param p2, "destPos"    # I

    .prologue
    const/4 v0, 0x0

    .line 849
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 858
    :cond_0
    :goto_0
    return v0

    .line 852
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_0

    .line 855
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->allowDrop(II)Z

    move-result v0

    goto :goto_0
.end method

.method public dropDone(II)V
    .locals 3
    .param p1, "startPos"    # I
    .param p2, "destPos"    # I

    .prologue
    .line 862
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    if-eqz v0, :cond_2

    .line 864
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 865
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result p1

    .line 869
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 870
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result p2

    .line 875
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->mWrappedController:Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v2}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;->dropDone(II)V

    .line 878
    :cond_2
    return-void

    .line 866
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    .line 871
    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator$HeaderFooterDndController;->this$0:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 p2, v0, -0x1

    goto :goto_1
.end method

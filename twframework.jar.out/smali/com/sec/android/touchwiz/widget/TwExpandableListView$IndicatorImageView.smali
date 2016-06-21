.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;
.super Landroid/widget/ImageView;
.source "TwExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndicatorImageView"
.end annotation


# instance fields
.field childPos:I

.field groupPos:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2458
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    .line 2459
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2455
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->groupPos:I

    .line 2460
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->setHoverPopupType(I)V

    .line 2461
    return-void
.end method

.method private printState([I)V
    .locals 8
    .param p1, "drawableState"    # [I

    .prologue
    .line 2484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2485
    .local v3, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    .line 2486
    .local v4, "state":I
    if-nez v4, :cond_0

    .line 2487
    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2800()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawableStateChanged() state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2490
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2491
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2493
    .end local v4    # "state":I
    :cond_1
    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2800()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawableStateChanged() gr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", child="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->childPos:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 2480
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 2481
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 2470
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 2471
    .local v0, "result":[I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->childPos:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mConnector:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$200(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->groupPos:I

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;->isGroupExpanded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2472
    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->GROUP_EXPANDED_STATE_SET:[I
    invoke-static {}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$5200()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->mergeDrawableStates([I[I)[I

    .line 2474
    :cond_0
    return-object v0
.end method

.method setIndicatorPos(Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;)V
    .locals 1
    .param p1, "position"    # Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;

    .prologue
    .line 2464
    iget v0, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->groupPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->groupPos:I

    .line 2465
    iget v0, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListPosition;->childPos:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$IndicatorImageView;->childPos:I

    .line 2466
    return-void
.end method

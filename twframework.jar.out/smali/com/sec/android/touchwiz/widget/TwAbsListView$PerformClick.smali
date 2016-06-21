.class Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
.super Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 1

    .prologue
    .line 3748
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p2, "x1"    # Lcom/sec/android/touchwiz/widget/TwAbsListView$1;

    .prologue
    .line 3748
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 3754
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v6, v6, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataChanged:Z

    if-eqz v6, :cond_1

    .line 3797
    :cond_0
    :goto_0
    return-void

    .line 3756
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v0, v6, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3757
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->mClickMotionPosition:I

    .line 3758
    .local v4, "motionPosition":I
    const/4 v3, 0x0

    .line 3759
    .local v3, "handledNotifykeyPress":Z
    const/4 v2, 0x0

    .line 3760
    .local v2, "handledNotifyMultiSelect":Z
    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mItemCount:I

    if-lez v6, :cond_0

    if-eq v4, v10, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3763
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPosition:I

    sub-int v7, v4, v7

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3766
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 3768
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-virtual {v6, v5, v4, v8, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3770
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCtrlkeyPressed:Z
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3771
    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-virtual {v6, v5, v4, v8, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->twNotifyKeyPressState(Landroid/view/View;IJ)Z

    move-result v3

    .line 3776
    :cond_3
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v6

    if-eq v6, v11, :cond_4

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCtrlkeyPressed:Z
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v6

    if-ne v6, v11, :cond_0

    :cond_4
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v6, v6, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_0

    .line 3778
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsCtrlkeyPressed:Z
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v6

    if-ne v6, v11, :cond_5

    .line 3779
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v7, -0x1

    # invokes: Lcom/sec/android/touchwiz/widget/TwAbsListView;->addToPressItemListArray(II)V
    invoke-static {v6, v4, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3792
    :catch_0
    move-exception v1

    .line 3793
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 3780
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsShiftkeyPressed:Z
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z

    move-result v6

    if-ne v6, v11, :cond_0

    .line 3781
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetPressItemListArray()V

    .line 3782
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPressedPoint:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v6

    if-ne v6, v10, :cond_6

    .line 3783
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v7, -0x1

    # invokes: Lcom/sec/android/touchwiz/widget/TwAbsListView;->addToPressItemListArray(II)V
    invoke-static {v6, v4, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;II)V

    .line 3784
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPressedPoint:I
    invoke-static {v6, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1002(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    goto/16 :goto_0

    .line 3786
    :cond_6
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPressedPoint:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$1000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v7

    # invokes: Lcom/sec/android/touchwiz/widget/TwAbsListView;->addToPressItemListArray(II)V
    invoke-static {v6, v7, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;II)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.class Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "TwAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAdapterView;)V
    .locals 1

    .prologue
    .line 948
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 950
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 995
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 996
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 954
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 955
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    .line 956
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 960
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    # invokes: Lcom/sec/android/touchwiz/widget/TwAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->access$000(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/os/Parcelable;)V

    .line 963
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 967
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->checkFocus()V

    .line 968
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->requestLayout()V

    .line 969
    return-void

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 973
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 975
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->access$100(Lcom/sec/android/touchwiz/widget/TwAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget v1, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    .line 983
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 984
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 985
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iput-wide v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    .line 986
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iput v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 987
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iput-wide v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    .line 988
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 990
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->checkFocus()V

    .line 991
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->requestLayout()V

    .line 992
    return-void
.end method

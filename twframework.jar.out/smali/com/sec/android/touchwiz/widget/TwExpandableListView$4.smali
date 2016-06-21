.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$4;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

.field final synthetic val$groupPos:I

.field final synthetic val$shiftedGroupPosition:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;II)V
    .locals 0

    .prologue
    .line 943
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$4;->val$groupPos:I

    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$4;->val$shiftedGroupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 945
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$4;->val$groupPos:I

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$4;->val$shiftedGroupPosition:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$4;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$4;->val$groupPos:I

    invoke-interface {v2, v3}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$4;->val$shiftedGroupPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->smoothScrollToPosition(II)V

    .line 950
    return-void
.end method

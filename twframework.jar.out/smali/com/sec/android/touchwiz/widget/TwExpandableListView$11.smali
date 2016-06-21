.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$11;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;->onJumpScrollToTopFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)V
    .locals 0

    .prologue
    .line 2582
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$11;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2584
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$11;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2590
    :cond_0
    return-void

    .line 2586
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$11;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 2587
    .local v0, "groupCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2588
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$11;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 2587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

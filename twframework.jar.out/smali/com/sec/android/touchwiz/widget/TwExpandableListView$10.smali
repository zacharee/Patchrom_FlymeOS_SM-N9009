.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$10;
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
    .line 2569
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$10;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2571
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$10;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2577
    :cond_0
    return-void

    .line 2573
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$10;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2600(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 2574
    .local v0, "groupCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2575
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$10;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupExpandListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2500(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 2574
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

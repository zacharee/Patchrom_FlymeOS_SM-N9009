.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$2;
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


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwExpandableListView;I)V
    .locals 0

    .prologue
    .line 908
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$2;->val$groupPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwExpandableListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwExpandableListView;->mOnGroupCollapseListener:Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListView;->access$2400(Lcom/sec/android/touchwiz/widget/TwExpandableListView;)Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$2;->val$groupPos:I

    invoke-interface {v0, v1}, Lcom/sec/android/touchwiz/widget/TwExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 913
    :cond_0
    return-void
.end method

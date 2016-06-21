.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;
.super Ljava/lang/Object;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setFastScrollEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Z)V
    .locals 0

    .prologue
    .line 1763
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iput-boolean p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;->val$enabled:Z

    # invokes: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setFastScrollerEnabledUiThread(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$000(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Z)V

    .line 1767
    return-void
.end method

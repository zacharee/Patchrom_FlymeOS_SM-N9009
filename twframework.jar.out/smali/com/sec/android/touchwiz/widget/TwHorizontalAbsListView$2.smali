.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$2;
.super Ljava/lang/Object;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setFastScrollAlwaysVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

.field final synthetic val$alwaysShow:Z


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Z)V
    .locals 0

    .prologue
    .line 1827
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iput-boolean p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$2;->val$alwaysShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$2;->val$alwaysShow:Z

    # invokes: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Z)V

    .line 1831
    return-void
.end method

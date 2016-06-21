.class Lcom/sec/android/touchwiz/widget/TwAbsListView$2;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollAlwaysVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

.field final synthetic val$alwaysShow:Z


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V
    .locals 0

    .prologue
    .line 1873
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iput-boolean p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;->val$alwaysShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;->val$alwaysShow:Z

    # invokes: Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$100(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V

    .line 1877
    return-void
.end method

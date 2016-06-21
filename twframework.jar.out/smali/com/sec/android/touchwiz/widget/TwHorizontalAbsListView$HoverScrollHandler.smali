.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "TwHorizontalAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field private final mListView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 1
    .param p1, "sv"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .prologue
    .line 9737
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 9738
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->mListView:Ljava/lang/ref/WeakReference;

    .line 9739
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 9743
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$HoverScrollHandler;->mListView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    .line 9744
    .local v0, "sv":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    if-eqz v0, :cond_0

    .line 9745
    # invokes: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$5800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Landroid/os/Message;)V

    .line 9747
    :cond_0
    return-void
.end method

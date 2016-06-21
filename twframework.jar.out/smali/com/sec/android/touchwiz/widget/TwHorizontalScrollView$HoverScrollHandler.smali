.class Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "TwHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field private final mScrollView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;)V
    .locals 1
    .param p1, "sv"    # Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    .prologue
    .line 2126
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2127
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->mScrollView:Ljava/lang/ref/WeakReference;

    .line 2128
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2132
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView$HoverScrollHandler;->mScrollView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;

    .line 2133
    .local v0, "sv":Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;
    if-eqz v0, :cond_0

    .line 2134
    # invokes: Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->access$000(Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;Landroid/os/Message;)V

    .line 2136
    :cond_0
    return-void
.end method

.class Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;
.super Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;
.source "TwAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/touchwiz/widget/TwAdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">.AdapterDataSetObserver;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0

    .prologue
    .line 8468
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 8471
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->onChanged()V

    .line 8472
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwFastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8473
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onSectionsChanged()V

    .line 8475
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 8479
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 8480
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwFastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8481
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroll:Lcom/sec/android/touchwiz/widget/TwFastScroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$5500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onSectionsChanged()V

    .line 8483
    :cond_0
    return-void
.end method

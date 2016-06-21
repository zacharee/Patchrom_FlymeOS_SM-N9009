.class Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "TwAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwAdapterView;)V
    .locals 0

    .prologue
    .line 1005
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwAdapterView;Lcom/sec/android/touchwiz/widget/TwAdapterView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/touchwiz/widget/TwAdapterView;
    .param p2, "x1"    # Lcom/sec/android/touchwiz/widget/TwAdapterView$1;

    .prologue
    .line 1005
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;-><init>(Lcom/sec/android/touchwiz/widget/TwAdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1007
    .local p0, "this":Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->post(Ljava/lang/Runnable;)Z

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwAdapterView;->fireOnSelected()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->access$200(Lcom/sec/android/touchwiz/widget/TwAdapterView;)V

    .line 1016
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView$SelectionNotifier;->this$0:Lcom/sec/android/touchwiz/widget/TwAdapterView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwAdapterView;->performAccessibilityActionsOnSelected()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->access$300(Lcom/sec/android/touchwiz/widget/TwAdapterView;)V

    goto :goto_0
.end method

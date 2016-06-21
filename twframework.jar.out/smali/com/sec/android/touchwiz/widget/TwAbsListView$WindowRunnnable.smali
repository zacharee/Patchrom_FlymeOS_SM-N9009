.class Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "TwAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0

    .prologue
    .line 3723
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p2, "x1"    # Lcom/sec/android/touchwiz/widget/TwAbsListView$1;

    .prologue
    .line 3723
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 3727
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    .line 3728
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 3731
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

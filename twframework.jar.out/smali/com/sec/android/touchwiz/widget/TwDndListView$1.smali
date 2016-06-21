.class Lcom/sec/android/touchwiz/widget/TwDndListView$1;
.super Ljava/lang/Object;
.source "TwDndListView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

.field final synthetic val$dndController:Lcom/sec/android/touchwiz/widget/TwDndController;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndListView;Lcom/sec/android/touchwiz/widget/TwDndController;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$1;->val$dndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowDrag(I)Z
    .locals 1
    .param p1, "startPos"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$1;->val$dndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    invoke-interface {v0, p1}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrag(I)Z

    move-result v0

    return v0
.end method

.method public allowDrop(II)Z
    .locals 1
    .param p1, "startPos"    # I
    .param p2, "destPos"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$1;->val$dndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwDndController;->allowDrop(II)Z

    move-result v0

    return v0
.end method

.method public dropDone(II)V
    .locals 1
    .param p1, "startPos"    # I
    .param p2, "destPos"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$1;->val$dndController:Lcom/sec/android/touchwiz/widget/TwDndController;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwDndController;->dropDone(II)V

    .line 122
    return-void
.end method

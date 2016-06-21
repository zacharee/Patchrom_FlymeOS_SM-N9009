.class Lcom/sec/android/touchwiz/widget/TwDndListView$2;
.super Ljava/lang/Object;
.source "TwDndListView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndListener(Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

.field final synthetic val$listener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwDndListView;Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$2;->val$listener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragAndDropStart()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$2;->val$listener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;->OnDragAndDropStart()V

    .line 156
    return-void
.end method

.method public onDragAndDropStop()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView$2;->val$listener:Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;->OnDragAndDropStop()V

    .line 151
    return-void
.end method

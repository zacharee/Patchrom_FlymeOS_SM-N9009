.class Lcom/sec/android/touchwiz/widget/TwListView$1;
.super Ljava/lang/Object;
.source "TwListView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndAutoScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwListView;->setDndListAnimator(Lcom/sec/android/touchwiz/animator/TwDndListAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwListView;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoScroll(I)V
    .locals 1
    .param p1, "delta"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0, p1, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->trackMotionScroll(II)Z

    .line 179
    return-void
.end method

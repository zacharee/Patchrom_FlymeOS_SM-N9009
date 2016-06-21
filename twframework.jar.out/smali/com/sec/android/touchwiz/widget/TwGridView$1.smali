.class Lcom/sec/android/touchwiz/widget/TwGridView$1;
.super Ljava/lang/Object;
.source "TwGridView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndAutoScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwGridView;->setDndGridAnimator(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwGridView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwGridView;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoScroll(I)V
    .locals 1
    .param p1, "delta"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0, p1, p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->trackMotionScroll(II)Z

    .line 172
    return-void
.end method

.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller$2;
.super Ljava/lang/Object;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->start(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;

.field final synthetic val$boundPosition:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;II)V
    .locals 0

    .prologue
    .line 9274
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller$2;->this$1:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller$2;->val$position:I

    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller$2;->val$boundPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 9276
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller$2;->this$1:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller$2;->val$position:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller$2;->val$boundPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$PositionScroller;->start(II)V

    .line 9277
    return-void
.end method

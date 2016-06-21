.class Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;
.super Ljava/lang/Object;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 0

    .prologue
    .line 10404
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 10407
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollTo:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$6300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollNext:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$6400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 10408
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollTo:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$6300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollToPosition(I)V

    .line 10422
    :goto_0
    return-void

    .line 10410
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollTo:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$6300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollFrom:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$6500(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$6700(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollingCount:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$6600(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 10412
    .local v0, "movingDistance":I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # operator++ for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollingCount:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$6608(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    .line 10413
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollDirection:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$6800(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 10414
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollNext:I
    invoke-static {v1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$6402(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)I

    .line 10415
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollNext:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$6400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelection(I)V

    .line 10420
    :goto_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$6900(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x28

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 10417
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollFrom:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$6500(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v2

    add-int/2addr v2, v0

    # setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollNext:I
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$6402(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;I)I

    .line 10418
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mQCScrollNext:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$6400(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setSelection(I)V

    goto :goto_1
.end method

.class Lcom/sec/android/touchwiz/widget/TwAbsListView$6;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .locals 0

    .prologue
    .line 10411
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 10414
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollTo:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollNext:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 10415
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollTo:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollToPosition(I)V

    .line 10429
    :goto_0
    return-void

    .line 10417
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollTo:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollFrom:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollingCount:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 10419
    .local v0, "movingDistance":I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # operator++ for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollingCount:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6808(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    .line 10420
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollDirection:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$7000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 10421
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollNext:I
    invoke-static {v1, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6602(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    .line 10422
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollNext:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelection(I)V

    .line 10427
    :goto_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$7100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x28

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 10424
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollFrom:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v2

    add-int/2addr v2, v0

    # setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollNext:I
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6602(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)I

    .line 10425
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$6;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mQCScrollNext:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$6600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelection(I)V

    goto :goto_1
.end method

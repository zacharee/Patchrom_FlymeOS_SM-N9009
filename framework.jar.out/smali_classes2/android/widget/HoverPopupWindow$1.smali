.class Landroid/widget/HoverPopupWindow$1;
.super Landroid/os/Handler;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/HoverPopupWindow;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 319
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$000(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$100(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$200(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    :cond_2
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$300(Landroid/widget/HoverPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$300(Landroid/widget/HoverPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v3, v3, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 337
    .local v0, "movelength":I
    if-gez v0, :cond_3

    .line 339
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_5

    .line 342
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    iget v2, v2, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    iget-object v3, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    add-int v1, v2, v3

    .line 343
    .local v1, "tempMoveLength":I
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mDisplayWidthToComputeAniWidth:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$500(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    if-le v2, v3, :cond_4

    .line 344
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mDisplayWidthToComputeAniWidth:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$500(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 355
    .end local v1    # "tempMoveLength":I
    :cond_3
    :goto_1
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_6

    .line 359
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v3, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->MOVE_RIGHT:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$700(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    # setter for: Landroid/widget/HoverPopupWindow;->mDirection:I
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$602(Landroid/widget/HoverPopupWindow;I)I

    .line 360
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v3, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mDirection:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$600(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    # invokes: Landroid/widget/HoverPopupWindow;->setAnimator(II)V
    invoke-static {v2, v0, v3}, Landroid/widget/HoverPopupWindow;->access$800(Landroid/widget/HoverPopupWindow;II)V

    .line 361
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$900(Landroid/widget/HoverPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 346
    .restart local v1    # "tempMoveLength":I
    :cond_4
    move v0, v1

    goto :goto_1

    .line 348
    .end local v1    # "tempMoveLength":I
    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_3

    .line 349
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    iget v0, v2, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    goto :goto_1

    .line 363
    :cond_6
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_7

    .line 367
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v3, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->MOVE_LEFT:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$1000(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    # setter for: Landroid/widget/HoverPopupWindow;->mDirection:I
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$602(Landroid/widget/HoverPopupWindow;I)I

    .line 368
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v3, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mDirection:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$600(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    # invokes: Landroid/widget/HoverPopupWindow;->setAnimator(II)V
    invoke-static {v2, v0, v3}, Landroid/widget/HoverPopupWindow;->access$800(Landroid/widget/HoverPopupWindow;II)V

    .line 369
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$900(Landroid/widget/HoverPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 371
    :cond_7
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 378
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mDirection:I
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$600(Landroid/widget/HoverPopupWindow;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->MOVE_LEFT:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$1000(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 379
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v3, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->MOVE_LEFT_TO_CENTER:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$1100(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    # setter for: Landroid/widget/HoverPopupWindow;->mDirection:I
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$602(Landroid/widget/HoverPopupWindow;I)I

    .line 384
    :cond_8
    :goto_2
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v3, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mDirection:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$600(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    # invokes: Landroid/widget/HoverPopupWindow;->setAnimator(II)V
    invoke-static {v2, v0, v3}, Landroid/widget/HoverPopupWindow;->access$800(Landroid/widget/HoverPopupWindow;II)V

    .line 385
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$900(Landroid/widget/HoverPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 380
    :cond_9
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mDirection:I
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$600(Landroid/widget/HoverPopupWindow;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->MOVE_RIGHT:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$700(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 381
    iget-object v2, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    iget-object v3, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$1200(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    # setter for: Landroid/widget/HoverPopupWindow;->mDirection:I
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$602(Landroid/widget/HoverPopupWindow;I)I

    goto :goto_2
.end method

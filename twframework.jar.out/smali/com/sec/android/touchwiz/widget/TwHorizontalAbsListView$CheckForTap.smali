.class final Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "TwHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

.field x:F

.field y:F


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V
    .locals 0

    .prologue
    .line 4049
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
    .param p2, "x1"    # Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;

    .prologue
    .line 4049
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 4055
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    if-nez v4, :cond_4

    .line 4056
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iput v7, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    .line 4057
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4059
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4060
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    # setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mIsChildViewEnabled:Z
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$1202(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Z)Z

    .line 4064
    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4065
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mLayoutMode:I

    .line 4067
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-boolean v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mDataChanged:Z

    if-nez v4, :cond_7

    .line 4068
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 4069
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setPressed(Z)V

    .line 4070
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->layoutChildren()V

    .line 4071
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mMotionPosition:I

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 4072
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->refreshDrawableState()V

    .line 4074
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 4075
    .local v3, "longPressTimeout":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isLongClickable()Z

    move-result v2

    .line 4077
    .local v2, "longClickable":Z
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 4078
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4079
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_1

    .line 4080
    if-eqz v2, :cond_5

    .line 4081
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 4086
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->x:F

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4089
    :cond_2
    if-eqz v2, :cond_6

    .line 4090
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$1300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_3

    .line 4091
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    new-instance v5, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$1;)V

    # setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$1302(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    .line 4093
    :cond_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$1300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 4094
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->access$1300(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4103
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_4
    :goto_1
    return-void

    .line 4083
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "longClickable":Z
    .restart local v3    # "longPressTimeout":I
    :cond_5
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 4096
    :cond_6
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    goto :goto_1

    .line 4099
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_7
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->mTouchMode:I

    goto :goto_1
.end method

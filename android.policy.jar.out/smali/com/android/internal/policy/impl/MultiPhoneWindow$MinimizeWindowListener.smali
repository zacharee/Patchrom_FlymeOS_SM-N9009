.class Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinimizeWindowListener"
.end annotation


# instance fields
.field private mFirstDownX:I

.field private mFirstDownY:I

.field private mIsMoving:Z

.field private mLastMoveX:I

.field private mLastMoveY:I

.field private mMoveInterval:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1209
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mMoveInterval:I

    .line 1207
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    .line 1210
    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mMoveInterval:I

    .line 1212
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1216
    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLongClick v = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMinimizeAnimation(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return v0

    .line 1220
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    if-eqz v1, :cond_2

    .line 1221
    const-string v1, "MultiPhoneWindow"

    const-string v2, "onLongClick : moving so return false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1224
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1230
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->showTrash()V

    .line 1249
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1256
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1363
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1364
    const/4 v7, 0x0

    .line 1366
    :goto_1
    return v7

    .line 1258
    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v8

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/view/View;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    const/4 v5, 0x1

    .line 1261
    .local v5, "mShouldUseMinimizeView":Z
    :goto_2
    if-eqz v5, :cond_1

    .line 1262
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1264
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/Docking;->init()V

    .line 1265
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v8, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->minimizeIconPressed(Z)V
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)V

    .line 1266
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    .line 1267
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveX:I

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownX:I

    .line 1268
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveY:I

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownY:I

    .line 1269
    if-eqz v5, :cond_0

    .line 1270
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 1271
    .local v4, "mScreenLocation":[I
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1272
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    const/high16 v9, 0x800000

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->makeMinimizeIcons(Z)V

    .line 1273
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v4, v8

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v4, v9

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->initialize(II)V

    .line 1274
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1258
    .end local v4    # "mScreenLocation":[I
    .end local v5    # "mShouldUseMinimizeView":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 1280
    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 1281
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1282
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1284
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    const/high16 v8, 0x800000

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1285
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    .line 1286
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 1289
    :cond_4
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    if-nez v7, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownX:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mMoveInterval:I

    if-ge v7, v8, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownY:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mMoveInterval:I

    if-lt v7, v8, :cond_0

    .line 1293
    :cond_5
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    .line 1295
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->isShowingTrash()Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/policy/impl/multiwindow/Docking;->updateZone(II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1298
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIvt:[B
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/SystemVibrator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    :cond_7
    :goto_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1305
    .local v0, "dockingBound":Landroid/graphics/Rect;
    if-eqz v0, :cond_8

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDockingCanceled()Z

    move-result v7

    if-nez v7, :cond_8

    .line 1306
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v8, 0x2

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V
    invoke-static {v7, v0, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;I)V

    .line 1308
    :cond_8
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDocking()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1309
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    .line 1312
    :cond_9
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 1313
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveX:I

    sub-int v1, v7, v8

    .line 1314
    .local v1, "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveY:I

    sub-int v2, v7, v8

    .line 1315
    .local v2, "dy":I
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v8, 0x0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->moveStackBound(IIZ)V
    invoke-static {v7, v1, v2, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)V

    .line 1316
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveX:I

    .line 1317
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveY:I

    goto/16 :goto_0

    .line 1299
    .end local v0    # "dockingBound":Landroid/graphics/Rect;
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    :catch_0
    move-exception v3

    .line 1300
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1325
    .end local v3    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1326
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1327
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1329
    :cond_a
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mIsMoving:Z

    if-eqz v7, :cond_e

    .line 1330
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownX:I

    sub-int v1, v7, v8

    .line 1331
    .restart local v1    # "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mFirstDownY:I

    sub-int v2, v7, v8

    .line 1332
    .restart local v2    # "dy":I
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDocking()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDockingCanceled()Z

    move-result v7

    if-nez v7, :cond_c

    .line 1333
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/Docking;->checkCenterBarPoint()V

    .line 1334
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v9}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getZone()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1336
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "POPW"

    const-string v9, "CHANGE-SPLIT"

    invoke-static {v7, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    :cond_b
    :goto_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v8, 0x0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->minimizeIconPressed(Z)V
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5000(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)V

    .line 1358
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/multiwindow/Docking;->clear()V

    .line 1359
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    goto/16 :goto_0

    .line 1339
    .restart local v1    # "dx":I
    .restart local v2    # "dy":I
    :cond_c
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_b

    .line 1340
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mIsSupportMinimizeAnimation:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4500(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1341
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v8, 0x0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->moveStackBound(IIZ)V
    invoke-static {v7, v1, v2, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)V

    goto :goto_4

    .line 1343
    :cond_d
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveX:I

    sub-int/2addr v8, v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v9

    float-to-int v9, v9

    iget v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->mLastMoveY:I

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->moveStackBound(IIZ)V
    invoke-static {v7, v8, v9, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5100(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)V

    goto :goto_4

    .line 1346
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    :cond_e
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_b

    .line 1348
    const-string v7, "MultiPhoneWindow"

    const-string v8, "Minimized->Floating"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    .line 1350
    .local v6, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1351
    const/high16 v7, 0x800000

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1352
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    const/high16 v10, 0x800000

    invoke-virtual {v7, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x10501c5

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v10, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I
    invoke-static {v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v10

    add-int/2addr v7, v10

    :goto_5
    const/4 v10, 0x0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBoundInScreen(IIZ)V
    invoke-static {v8, v9, v7, v10}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)V

    .line 1355
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MinimizeWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v8

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2100(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    goto/16 :goto_4

    .line 1352
    :cond_f
    const/4 v7, 0x0

    goto :goto_5

    .line 1366
    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_10
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 1256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

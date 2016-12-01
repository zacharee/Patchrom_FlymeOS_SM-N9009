.class Landroid/widget/PopupWindow$PopupViewContainer;
.super Landroid/widget/FrameLayout;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupViewContainer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindow.PopupViewContainer"


# instance fields
.field private mIsPenSelectionMode:Z

.field private mSpenUspLevel:I

.field final synthetic this$0:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1850
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    .line 1851
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1846
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mSpenUspLevel:I

    .line 1847
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mIsPenSelectionMode:Z

    .line 1854
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1855
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 1856
    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mSpenUspLevel:I

    .line 1859
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1875
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1876
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1877
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1896
    :cond_0
    :goto_0
    return v1

    .line 1880
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1882
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1883
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 1884
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 1887
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1888
    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1889
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1890
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 1894
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1896
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1903
    iget v2, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mSpenUspLevel:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1904
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1905
    .local v0, "action":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1906
    packed-switch v0, :pswitch_data_0

    .line 1930
    .end local v0    # "action":I
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Landroid/widget/PopupWindow;->access$900(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v2}, Landroid/widget/PopupWindow;->access$900(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1933
    :goto_1
    return v1

    .line 1908
    .restart local v0    # "action":I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 1909
    iput-boolean v1, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mIsPenSelectionMode:Z

    .line 1910
    const/16 v2, 0xd3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1912
    :cond_1
    iput-boolean v4, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mIsPenSelectionMode:Z

    goto :goto_0

    .line 1916
    :pswitch_1
    iget-boolean v2, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mIsPenSelectionMode:Z

    if-eqz v2, :cond_0

    .line 1917
    const/16 v2, 0xd5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1920
    :pswitch_2
    iget-boolean v2, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mIsPenSelectionMode:Z

    if-eqz v2, :cond_2

    .line 1921
    const/16 v2, 0xd4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1922
    :cond_2
    iput-boolean v4, p0, Landroid/widget/PopupWindow$PopupViewContainer;->mIsPenSelectionMode:Z

    goto :goto_0

    .line 1933
    .end local v0    # "action":I
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 1906
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 1863
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mAboveAnchor:Z
    invoke-static {v1}, Landroid/widget/PopupWindow;->access$700(Landroid/widget/PopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1865
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1866
    .local v0, "drawableState":[I
    # getter for: Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I
    invoke-static {}, Landroid/widget/PopupWindow;->access$800()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 1869
    .end local v0    # "drawableState":[I
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct/range {p0 .. p1}, Landroid/widget/PopupWindow$PopupViewContainer;->mzOnTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_flyme_0

    const/4 v2, 0x1

    return v2

    :cond_flyme_0

    const/4 v2, 0x1

    .line 1938
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1939
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 1941
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupViewContainer;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupViewContainer;->getHeight()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 1943
    :cond_0
    iget-object v3, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1949
    :goto_0
    return v2

    .line 1945
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1946
    iget-object v3, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 1949
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 1956
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$1000(Landroid/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1957
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    # getter for: Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$1000(Landroid/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1961
    :goto_0
    return-void

    .line 1959
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private mzOnTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    iget-object v0, v0, Landroid/widget/PopupWindow;->mMzHelper:Landroid/widget/MzPopupWindowHelper;

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupViewContainer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/PopupWindow$PopupViewContainer;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/MzPopupWindowHelper;->onTouchEvent(Landroid/view/MotionEvent;II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

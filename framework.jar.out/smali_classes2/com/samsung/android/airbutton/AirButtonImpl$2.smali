.class Lcom/samsung/android/airbutton/AirButtonImpl$2;
.super Ljava/lang/Object;
.source "AirButtonImpl.java"

# interfaces
.implements Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/AirButtonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/AirButtonImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStateChanged(Z)V
    .locals 0
    .param p1, "isAnimating"    # Z

    .prologue
    .line 737
    return-void
.end method

.method public onFinished(IZZ)V
    .locals 4
    .param p1, "selectedItemIdx"    # I
    .param p2, "isSendItemSelectedNoti"    # Z
    .param p3, "isFinishAirButton"    # Z

    .prologue
    const/4 v2, 0x3

    .line 741
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$000(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 742
    if-gez p1, :cond_2

    .line 743
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$000(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$100(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;->onItemSelected(Landroid/view/View;ILjava/lang/Object;)V

    .line 765
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$500(Lcom/samsung/android/airbutton/AirButtonImpl;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 766
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    .line 767
    :cond_1
    return-void

    .line 745
    :cond_2
    const/4 v0, 0x0

    .line 747
    .local v0, "data":Ljava/lang/Object;
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$200(Lcom/samsung/android/airbutton/AirButtonImpl;)I

    move-result v1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$300(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 748
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$300(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 750
    .end local v0    # "data":Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$200(Lcom/samsung/android/airbutton/AirButtonImpl;)I

    move-result v1

    if-ne v1, v2, :cond_4

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I
    invoke-static {}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$400()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 751
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 752
    const/4 p1, 0x7

    .line 761
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;
    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$000(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl$2;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$100(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;->onItemSelected(Landroid/view/View;ILjava/lang/Object;)V

    goto :goto_0

    .line 753
    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 754
    const/4 p1, 0x5

    goto :goto_1

    .line 755
    :cond_6
    if-ne p1, v2, :cond_4

    .line 756
    const/4 p1, 0x2

    goto :goto_1
.end method

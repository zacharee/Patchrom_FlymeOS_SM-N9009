.class Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2$1;
.super Ljava/lang/Object;
.source "AirButtonGlobalMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2$1;->this$1:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2$1;->this$1:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;

    iget-object v0, v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$100(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2$1;->this$1:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;

    iget-object v0, v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2$1;->this$1:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;

    iget-object v1, v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$100(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->removeView(Landroid/view/View;)V

    .line 216
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2$1;->this$1:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;

    iget-object v0, v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;
    invoke-static {v0, v1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$102(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 218
    :cond_0
    return-void
.end method

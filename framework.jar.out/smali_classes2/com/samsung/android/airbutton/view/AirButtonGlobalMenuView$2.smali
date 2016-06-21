.class Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;
.super Ljava/lang/Object;
.source "AirButtonGlobalMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 199
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$000(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$000(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->removeView(Landroid/view/View;)V

    .line 201
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1, v2}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$002(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$100(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$100(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 206
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$100(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 207
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$100(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->addView(Landroid/view/View;)V

    .line 208
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$100(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 210
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    # getter for: Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->mNewHelpPopupLayout2:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$100(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const v2, 0x102039c

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 211
    .local v0, "img":Landroid/widget/Button;
    new-instance v1, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2$1;-><init>(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    .end local v0    # "img":Landroid/widget/Button;
    :cond_1
    return-void
.end method

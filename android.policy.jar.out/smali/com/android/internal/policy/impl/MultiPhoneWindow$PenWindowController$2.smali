.class Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$2;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->makeDnDHelpPopupLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 2939
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$2;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iput-object p2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2942
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2949
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$2;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v0

    const-string v1, "do_not_show_help_popup_drag_and_drop"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateSettingThroughSystemProcess(Ljava/lang/String;I)V

    .line 2952
    :cond_0
    return-void
.end method

.class Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 2924
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    iput-object p2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 2927
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 2928
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 2933
    :goto_0
    return v2

    .line 2930
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    goto :goto_0

    .line 2928
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneWindowListener;
.super Ljava/lang/Object;
.source "SubPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SubPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubPhoneWindowListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SubPhoneWindow;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/SubPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 347
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 351
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 363
    const/4 v0, 0x0

    .line 365
    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.class Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;
.super Landroid/os/Handler;
.source "PedometerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 579
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 580
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;
    invoke-static {v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->setLoggingMode(Z)V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 582
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl$1;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->mPedometer:Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;
    invoke-static {v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerImpl;)Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;->setLoggingMode(Z)V

    goto :goto_0
.end method

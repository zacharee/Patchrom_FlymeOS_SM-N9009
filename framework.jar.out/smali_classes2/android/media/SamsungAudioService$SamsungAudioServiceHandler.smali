.class Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;
.super Landroid/os/Handler;
.source "SamsungAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SamsungAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungAudioServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SamsungAudioService;


# direct methods
.method constructor <init>(Landroid/media/SamsungAudioService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 221
    iput-object p1, p0, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->this$0:Landroid/media/SamsungAudioService;

    .line 222
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 223
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 226
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 229
    :pswitch_0
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_USB_CHECK_RELEASE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->this$0:Landroid/media/SamsungAudioService;

    # setter for: Landroid/media/SamsungAudioService;->mFakeState:Z
    invoke-static {v0, v2}, Landroid/media/SamsungAudioService;->access$202(Landroid/media/SamsungAudioService;Z)Z

    .line 231
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->this$0:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->getCurOutDevice()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 232
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "### release fake device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {v0, v2, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_0

    .line 239
    :pswitch_1
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->this$0:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->checkAndSendEarCareInfo()V

    goto :goto_0

    .line 244
    :pswitch_2
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Soft reset is received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->this$0:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->performSoftReset()V

    goto :goto_0

    .line 249
    :pswitch_3
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->this$0:Landroid/media/SamsungAudioService;

    # invokes: Landroid/media/SamsungAudioService;->playSilentModeSound()V
    invoke-static {v0}, Landroid/media/SamsungAudioService;->access$300(Landroid/media/SamsungAudioService;)V

    goto :goto_0

    .line 252
    :pswitch_4
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->this$0:Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Landroid/media/SamsungAudioService;->vibrateCall()V

    goto :goto_0

    .line 255
    :pswitch_5
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mIsPlaySilentModeOff false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->this$0:Landroid/media/SamsungAudioService;

    # setter for: Landroid/media/SamsungAudioService;->mIsPlaySilentModeOff:Z
    invoke-static {v0, v2}, Landroid/media/SamsungAudioService;->access$402(Landroid/media/SamsungAudioService;Z)Z

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

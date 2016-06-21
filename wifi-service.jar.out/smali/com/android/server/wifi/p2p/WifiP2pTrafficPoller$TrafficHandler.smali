.class Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;
.super Landroid/os/Handler;
.source "WifiP2pTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrafficHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;
    .param p2, "x1"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$1;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;-><init>(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 174
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_1

    :goto_1
    # setter for: Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z
    invoke-static {v2, v0}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->access$402(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;Z)Z

    .line 175
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    # operator++ for: Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->access$508(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)I

    .line 176
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->access$400(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->notifyOnDataActivity()V

    .line 178
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->access$500(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)I

    move-result v0

    invoke-static {p0, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 174
    goto :goto_1

    .line 184
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->access$500(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    invoke-virtual {v0}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->notifyOnDataActivity()V

    .line 186
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    # getter for: Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I
    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->access$500(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)I

    move-result v0

    invoke-static {p0, v4, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

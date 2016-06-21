.class Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStartingState;
.super Lcom/android/internal/util/State;
.source "OxygenStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/OxygenStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OlsrdStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/OxygenStateMachine;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStartingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStartingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/OxygenStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$300(Lcom/samsung/android/server/wifi/OxygenStateMachine;)Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopOlsrd()Z

    .line 276
    iget-object v0, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStartingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/OxygenStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$300(Lcom/samsung/android/server/wifi/OxygenStateMachine;)Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->startOlsrd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    const-string v0, "OxygenStateMachine"

    const-string v1, "Failed to start OLSRD"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStartingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/OxygenStateMachine;->mController:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$400(Lcom/samsung/android/server/wifi/OxygenStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v0

    const v1, 0x20160

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStartingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    const/16 v1, 0x14

    # invokes: Lcom/samsung/android/server/wifi/OxygenStateMachine;->sendErrorBroadcast(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$1200(Lcom/samsung/android/server/wifi/OxygenStateMachine;I)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStartingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    const v1, 0x2015f

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->sendMessage(I)V

    .line 282
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 286
    const/4 v0, 0x1

    .line 287
    .local v0, "retValue":Z
    # getter for: Lcom/samsung/android/server/wifi/OxygenStateMachine;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OxygenStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStartingState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 305
    const/4 v0, 0x0

    .line 308
    :goto_0
    :sswitch_0
    return v0

    .line 290
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStartingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStartingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/OxygenStateMachine;->mOlsrdStoppingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$1000(Lcom/samsung/android/server/wifi/OxygenStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/samsung/android/server/wifi/OxygenStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$1300(Lcom/samsung/android/server/wifi/OxygenStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 295
    :sswitch_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStartingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/OxygenStateMachine;->mCommander:Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdCommander;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$200(Lcom/samsung/android/server/wifi/OxygenStateMachine;)Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdCommander;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdCommander;->make()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStartingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    const v2, 0x20166

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->sendMessage(I)V

    .line 297
    iget-object v1, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStartingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    const v2, 0x20167

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->sendMessage(I)V

    .line 298
    iget-object v1, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStartingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStartingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/OxygenStateMachine;->mOlsrdStartedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$1400(Lcom/samsung/android/server/wifi/OxygenStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/samsung/android/server/wifi/OxygenStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$1500(Lcom/samsung/android/server/wifi/OxygenStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStartingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/OxygenStateMachine;->mCommander:Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdCommander;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$200(Lcom/samsung/android/server/wifi/OxygenStateMachine;)Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdCommander;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdCommander;->quit()V

    .line 301
    iget-object v1, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStartingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    const v2, 0x20164

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 288
    :sswitch_data_0
    .sparse-switch
        0x2015e -> :sswitch_0
        0x2015f -> :sswitch_1
        0x20172 -> :sswitch_2
    .end sparse-switch
.end method

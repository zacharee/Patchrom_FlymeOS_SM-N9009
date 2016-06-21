.class Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStoppingState;
.super Lcom/android/internal/util/State;
.source "OxygenStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/OxygenStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OlsrdStoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/OxygenStateMachine;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/OxygenStateMachine;->mOlsrdMonitor:Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitor;
    invoke-static {v0}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$100(Lcom/samsung/android/server/wifi/OxygenStateMachine;)Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitor;->stopMonitoring()V

    .line 206
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 210
    const/4 v0, 0x1

    .line 211
    .local v0, "retValue":Z
    # getter for: Lcom/samsung/android/server/wifi/OxygenStateMachine;->DBG:Z
    invoke-static {}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OxygenStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStoppingState;->getName()Ljava/lang/String;

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

    .line 212
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 229
    const/4 v0, 0x0

    .line 232
    :goto_0
    :sswitch_0
    return v0

    .line 214
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/OxygenStateMachine;->mCommander:Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdCommander;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$200(Lcom/samsung/android/server/wifi/OxygenStateMachine;)Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdCommander;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdCommander;->terminate()Z

    .line 215
    iget-object v1, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/OxygenStateMachine;->mCommander:Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdCommander;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$200(Lcom/samsung/android/server/wifi/OxygenStateMachine;)Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdCommander;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdCommander;->quit()V

    .line 216
    iget-object v1, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    const v2, 0x20173

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 219
    :sswitch_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/OxygenStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$300(Lcom/samsung/android/server/wifi/OxygenStateMachine;)Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopOlsrd()Z

    .line 220
    iget-object v1, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/OxygenStateMachine;->mController:Lcom/android/server/wifi/WifiStateMachine;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$400(Lcom/samsung/android/server/wifi/OxygenStateMachine;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v1

    const v2, 0x20162

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 221
    iget-object v1, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    # getter for: Lcom/samsung/android/server/wifi/OxygenStateMachine;->mOlsrdStoppedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$500(Lcom/samsung/android/server/wifi/OxygenStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/samsung/android/server/wifi/OxygenStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$600(Lcom/samsung/android/server/wifi/OxygenStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 224
    :sswitch_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdStoppingState;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    # invokes: Lcom/samsung/android/server/wifi/OxygenStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/OxygenStateMachine;->access$700(Lcom/samsung/android/server/wifi/OxygenStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 212
    nop

    :sswitch_data_0
    .sparse-switch
        0x2015e -> :sswitch_3
        0x2015f -> :sswitch_0
        0x20165 -> :sswitch_1
        0x20173 -> :sswitch_2
    .end sparse-switch
.end method

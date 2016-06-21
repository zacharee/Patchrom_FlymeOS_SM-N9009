.class Lcom/android/server/ReactiveService$1;
.super Landroid/os/UEventObserver;
.source "ReactiveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ReactiveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ReactiveService;


# direct methods
.method constructor <init>(Lcom/android/server/ReactiveService;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/ReactiveService$1;->this$0:Lcom/android/server/ReactiveService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 165
    # getter for: Lcom/android/server/ReactiveService;->mLockUEvent:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/ReactiveService;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 166
    :try_start_0
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SWITCH_NAME"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 169
    :try_start_1
    const-string v4, "SWITCH_NAME"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "switchName":Ljava/lang/String;
    const-string/jumbo v4, "uart3"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    const-string v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "switchState":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .line 192
    const-string v4, "ReactiveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown state["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    .end local v1    # "state":I
    .end local v2    # "switchName":Ljava/lang/String;
    .end local v3    # "switchState":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    return-void

    .line 179
    .restart local v1    # "state":I
    .restart local v2    # "switchName":Ljava/lang/String;
    .restart local v3    # "switchState":Ljava/lang/String;
    :pswitch_0
    :try_start_3
    const-string v4, "ReactiveService"

    const-string v6, "ReactiveServiceAt will wait."

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v4, p0, Lcom/android/server/ReactiveService$1;->this$0:Lcom/android/server/ReactiveService;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/ReactiveService;->mThreadUartGoWait:Z
    invoke-static {v4, v6}, Lcom/android/server/ReactiveService;->access$102(Lcom/android/server/ReactiveService;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 197
    .end local v1    # "state":I
    .end local v2    # "switchName":Ljava/lang/String;
    .end local v3    # "switchState":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 184
    .restart local v1    # "state":I
    .restart local v2    # "switchName":Ljava/lang/String;
    .restart local v3    # "switchState":Ljava/lang/String;
    :pswitch_1
    :try_start_5
    const-string v4, "ReactiveService"

    const-string v6, "ReactiveServiceAt will wake up."

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v4, p0, Lcom/android/server/ReactiveService$1;->this$0:Lcom/android/server/ReactiveService;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/ReactiveService;->mThreadUartGoWait:Z
    invoke-static {v4, v6}, Lcom/android/server/ReactiveService;->access$102(Lcom/android/server/ReactiveService;Z)Z

    .line 186
    iget-object v4, p0, Lcom/android/server/ReactiveService$1;->this$0:Lcom/android/server/ReactiveService;

    # getter for: Lcom/android/server/ReactiveService;->mThreadUart:Ljava/lang/Thread;
    invoke-static {v4}, Lcom/android/server/ReactiveService;->access$200(Lcom/android/server/ReactiveService;)Ljava/lang/Thread;

    move-result-object v6

    monitor-enter v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 187
    :try_start_6
    iget-object v4, p0, Lcom/android/server/ReactiveService$1;->this$0:Lcom/android/server/ReactiveService;

    # getter for: Lcom/android/server/ReactiveService;->mThreadUart:Ljava/lang/Thread;
    invoke-static {v4}, Lcom/android/server/ReactiveService;->access$200(Lcom/android/server/ReactiveService;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 188
    monitor-exit v6

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

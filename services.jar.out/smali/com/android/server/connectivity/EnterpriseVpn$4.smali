.class Lcom/android/server/connectivity/EnterpriseVpn$4;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "EnterpriseVpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/EnterpriseVpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$4;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 4
    .param p1, "interfaze"    # Ljava/lang/String;

    .prologue
    .line 546
    const-string v0, "EnterpriseVpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interface removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v1, p0, Lcom/android/server/connectivity/EnterpriseVpn$4;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    monitor-enter v1

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn$4;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/connectivity/EnterpriseVpn;->access$400(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn$4;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # invokes: Lcom/android/server/connectivity/EnterpriseVpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$500(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn$4;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-virtual {v0}, Lcom/android/server/connectivity/EnterpriseVpn;->prepare()Z

    .line 550
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn$4;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z
    invoke-static {v0}, Lcom/android/server/connectivity/EnterpriseVpn;->access$600(Lcom/android/server/connectivity/EnterpriseVpn;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 551
    const-string v0, "EnterpriseVpn"

    const-string v2, "disconnect per-app vpn is getting called from enterprisevpn"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/connectivity/EnterpriseVpn$4$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/EnterpriseVpn$4$1;-><init>(Lcom/android/server/connectivity/EnterpriseVpn$4;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 574
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn$4;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-virtual {v0}, Lcom/android/server/connectivity/EnterpriseVpn;->agentDisconnect()V

    .line 576
    :cond_1
    monitor-exit v1

    .line 577
    return-void

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/EnterpriseVpn$4;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z
    invoke-static {v0}, Lcom/android/server/connectivity/EnterpriseVpn;->access$600(Lcom/android/server/connectivity/EnterpriseVpn;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 562
    const-string v0, "EnterpriseVpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRouteInfo value is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn$4;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mRouteInfo:Z
    invoke-static {v3}, Lcom/android/server/connectivity/EnterpriseVpn;->access$600(Lcom/android/server/connectivity/EnterpriseVpn;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/connectivity/EnterpriseVpn$4$2;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/EnterpriseVpn$4$2;-><init>(Lcom/android/server/connectivity/EnterpriseVpn$4;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

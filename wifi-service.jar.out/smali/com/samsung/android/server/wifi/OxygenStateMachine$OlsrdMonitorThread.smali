.class Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitorThread;
.super Ljava/lang/Thread;
.source "OxygenStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/OxygenStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OlsrdMonitorThread"
.end annotation


# static fields
.field private static final OLSRD_CHANGE_ALARM_INTERVAL_PREFIX:Ljava/lang/String; = "OLSRD_CHANGE_ALARM_INTERVAL"

.field public static final OLSRD_HUNG_PREFIX:Ljava/lang/String; = "OLSRD_HUNG"

.field private static final OLSRD_INITIALIZED_PREFIX:Ljava/lang/String; = "OLSRD_INITIALIZED"

.field private static final OLSRD_TERMINATE_PREFIX:Ljava/lang/String; = "OLSRD_TERMINATE"


# instance fields
.field m:Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitor;

.field mSM:Lcom/android/internal/util/StateMachine;

.field mUdpSocket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/OxygenStateMachine;Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitor;Lcom/android/internal/util/StateMachine;)V
    .locals 0
    .param p2, "monitor"    # Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitor;
    .param p3, "sm"    # Lcom/android/internal/util/StateMachine;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitorThread;->this$0:Lcom/samsung/android/server/wifi/OxygenStateMachine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 590
    iput-object p2, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitorThread;->m:Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitor;

    .line 591
    iput-object p3, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitorThread;->mSM:Lcom/android/internal/util/StateMachine;

    .line 592
    return-void
.end method

.method private dispatchMessage(Ljava/lang/String;)Z
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 635
    const-string v5, "OLSRD_INITIALIZED"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 636
    iget-object v4, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitorThread;->mSM:Lcom/android/internal/util/StateMachine;

    const v5, 0x20172

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 656
    :cond_0
    :goto_0
    return v3

    .line 638
    :cond_1
    const-string v5, "OLSRD_TERMINATE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 639
    iget-object v3, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitorThread;->mSM:Lcom/android/internal/util/StateMachine;

    const v5, 0x20173

    invoke-virtual {v3, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    move v3, v4

    .line 640
    goto :goto_0

    .line 641
    :cond_2
    const-string v5, "OLSRD_HUNG"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 642
    iget-object v3, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitorThread;->mSM:Lcom/android/internal/util/StateMachine;

    const v5, 0x20174

    invoke-virtual {v3, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    move v3, v4

    .line 643
    goto :goto_0

    .line 644
    :cond_3
    const-string v4, "OLSRD_CHANGE_ALARM_INTERVAL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 645
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, "tokens":[Ljava/lang/String;
    array-length v4, v2

    if-le v4, v3, :cond_0

    .line 648
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 649
    .local v1, "interval":I
    iget-object v4, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitorThread;->mSM:Lcom/android/internal/util/StateMachine;

    const v5, 0x20175

    invoke-virtual {v4, v5, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 650
    .end local v1    # "interval":I
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "OxygenStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot recognize alarm interval ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitorThread;->mUdpSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitorThread;->mUdpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 663
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 596
    :try_start_0
    new-instance v4, Ljava/net/DatagramSocket;

    const v5, 0xed19

    invoke-direct {v4, v5}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitorThread;->mUdpSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :cond_0
    const/16 v4, 0x800

    new-array v0, v4, [B

    .line 606
    .local v0, "data":[B
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v4, v0

    invoke-direct {v2, v0, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 609
    .local v2, "packet":Ljava/net/DatagramPacket;
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitorThread;->mUdpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v4, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 614
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitorThread;->m:Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitor;

    # getter for: Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitor;->mMonitoring:Z
    invoke-static {v4}, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitor;->access$2400(Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitor;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 615
    const-string v4, "OxygenStateMachine"

    const-string v5, "terminate monitor thread"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    .end local v0    # "data":[B
    .end local v2    # "packet":Ljava/net/DatagramPacket;
    :goto_1
    return-void

    .line 597
    :catch_0
    move-exception v1

    .line 598
    .local v1, "e":Ljava/net/SocketException;
    const-string v4, "OxygenStateMachine"

    const-string v5, "Can\'t open datagram socket 60697"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v4, p0, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitorThread;->mSM:Lcom/android/internal/util/StateMachine;

    const v5, 0x20164

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 610
    .end local v1    # "e":Ljava/net/SocketException;
    .restart local v0    # "data":[B
    .restart local v2    # "packet":Ljava/net/DatagramPacket;
    :catch_1
    move-exception v1

    .line 611
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "OxygenStateMachine"

    const-string v5, "receive fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 619
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([BII)V

    .line 620
    .local v3, "result":Ljava/lang/String;
    const-string v4, "OxygenStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/OxygenStateMachine$OlsrdMonitorThread;->dispatchMessage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 623
    const-string v4, "OxygenStateMachine"

    const-string v5, "terminate monitor thread"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

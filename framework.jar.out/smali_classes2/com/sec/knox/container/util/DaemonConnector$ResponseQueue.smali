.class Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;
.super Ljava/lang/Object;
.source "DaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/util/DaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    }
.end annotation


# instance fields
.field private mMaxCount:I

.field private final mPendingCmds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "maxCount"    # I

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 534
    iput p1, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mMaxCount:I

    .line 535
    return-void
.end method


# virtual methods
.method public add(ILcom/sec/knox/container/util/DaemonEvent;)V
    .locals 8
    .param p1, "cmdNum"    # I
    .param p2, "response"    # Lcom/sec/knox/container/util/DaemonEvent;

    .prologue
    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    iget-object v5, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v5

    .line 540
    :try_start_0
    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    .line 541
    .local v3, "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    iget v4, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v4, p1, :cond_0

    .line 542
    move-object v0, v3

    move-object v1, v0

    .line 546
    .end local v0    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .end local v3    # "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .local v1, "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :goto_0
    if-nez v1, :cond_3

    .line 549
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v6, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mMaxCount:I

    if-lt v4, v6, :cond_1

    .line 550
    const-string v4, "DaemonConnector.ResponseQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "more buffered than allowed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mMaxCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    .line 554
    .restart local v3    # "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    const-string v4, "DaemonConnector.ResponseQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->request:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 566
    .end local v3    # "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :catchall_0
    move-exception v4

    move-object v0, v1

    .end local v1    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local v0    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 557
    .end local v0    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    const/4 v4, 0x0

    invoke-direct {v0, p1, v4}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 558
    .end local v1    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v0    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :try_start_4
    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 560
    :goto_3
    iget v4, v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 564
    iget v4, v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v4, :cond_2

    .line 565
    iget-object v4, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 566
    :cond_2
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 568
    :try_start_5
    iget-object v4, v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 571
    :goto_4
    return-void

    .line 569
    :catch_0
    move-exception v4

    goto :goto_4

    .line 566
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    goto :goto_2

    .end local v0    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object v0, v1

    .end local v1    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v0    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_3

    :cond_4
    move-object v1, v0

    .end local v0    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 608
    const-string v2, "Pending requests:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    iget-object v3, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v3

    .line 610
    :try_start_0
    iget-object v2, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    .line 611
    .local v1, "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Cmd "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->request:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 613
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 614
    return-void
.end method

.method public remove(IILjava/lang/String;)Lcom/sec/knox/container/util/DaemonEvent;
    .locals 11
    .param p1, "cmdNum"    # I
    .param p2, "timeoutMs"    # I
    .param p3, "origCmd"    # Ljava/lang/String;

    .prologue
    .line 577
    const/4 v2, 0x0

    .line 578
    .local v2, "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    iget-object v8, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v8

    .line 579
    :try_start_0
    iget-object v7, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    .line 580
    .local v5, "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    iget v7, v5, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v7, p1, :cond_0

    .line 581
    move-object v2, v5

    move-object v3, v2

    .line 585
    .end local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .end local v5    # "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .local v3, "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :goto_0
    if-nez v3, :cond_3

    .line 586
    :try_start_1
    new-instance v2, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    invoke-direct {v2, p1, p3}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 587
    .end local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :try_start_2
    iget-object v7, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 589
    :goto_1
    iget v7, v2, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v2, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 593
    iget v7, v2, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v7, :cond_1

    .line 594
    iget-object v7, p0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 595
    :cond_1
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 596
    const/4 v6, 0x0

    .line 598
    .local v6, "result":Lcom/sec/knox/container/util/DaemonEvent;
    :try_start_3
    iget-object v7, v2, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    int-to-long v8, p2

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v10}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/sec/knox/container/util/DaemonEvent;

    move-object v6, v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 601
    :goto_2
    if-nez v6, :cond_2

    .line 602
    const-string v7, "DaemonConnector.ResponseQueue"

    const-string v8, "Timeout waiting for response"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_2
    return-object v6

    .line 595
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "result":Lcom/sec/knox/container/util/DaemonEvent;
    :catchall_0
    move-exception v7

    :goto_3
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 599
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "result":Lcom/sec/knox/container/util/DaemonEvent;
    :catch_0
    move-exception v7

    goto :goto_2

    .line 595
    .end local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .end local v6    # "result":Lcom/sec/knox/container/util/DaemonEvent;
    .restart local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_3

    .end local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :cond_3
    move-object v2, v3

    .end local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_1

    :cond_4
    move-object v3, v2

    .end local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_0
.end method

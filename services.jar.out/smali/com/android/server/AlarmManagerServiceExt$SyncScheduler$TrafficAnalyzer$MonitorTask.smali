.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
.super Ljava/util/TimerTask;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorTask"
.end annotation


# instance fields
.field alarmRec:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V
    .locals 1

    .prologue
    .line 2860
    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2861
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->alarmRec:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 2869
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAmsLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2870
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    iget-object v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockExt:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2871
    :try_start_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$1300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2872
    :try_start_2
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->alarmRec:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    if-nez v4, :cond_0

    const-string v4, "AlarmManagerEXT"

    const-string v8, "[TM] NULL"

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2923
    :goto_0
    return-void

    .line 2873
    :cond_0
    :try_start_5
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->alarmRec:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-static {v4}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    .line 2874
    .local v2, "curr_txbytes":J
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2875
    const-string v4, "AlarmManagerEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[TM] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->alarmRec:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    const-string v4, "AlarmManagerEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[TM] UID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->alarmRec:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget v9, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->alarmRec:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget-object v9, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Tx:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->alarmRec:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget-wide v10, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->txbytes0time:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->alarmRec:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget-wide v10, v9, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->txbytes0time:J

    sub-long v10, v2, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    :cond_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$1400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2885
    .local v1, "itList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2886
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2888
    .local v0, "ar":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->UMCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->UMCount:I

    .line 2890
    iget v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->UMCount:I

    iget v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    sub-int/2addr v4, v8

    add-int/lit8 v4, v4, -0x1

    iget v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->NfgCount:I

    if-ne v4, v8, :cond_4

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isScnON:Z

    if-nez v4, :cond_4

    iget v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->NfgCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->NfgCount:I

    .line 2895
    :cond_2
    :goto_2
    iget v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->UMCount:I

    iget v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    sub-int/2addr v4, v8

    iget v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->NfgCount:I

    if-ne v4, v8, :cond_3

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isScnON:Z

    const/4 v8, 0x1

    if-ne v4, v8, :cond_3

    iget v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    const/4 v8, 0x1

    if-le v4, v8, :cond_3

    .line 2896
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isUIalarm:Z

    .line 2897
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "AlarmManagerEXT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[UM] UI alarm detected =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isScnON:Z

    .line 2903
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isMonitorON:Z

    goto :goto_1

    .line 2920
    .end local v0    # "ar":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v1    # "itList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    .end local v2    # "curr_txbytes":J
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4

    .line 2921
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4

    .line 2922
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v4

    .line 2893
    .restart local v0    # "ar":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .restart local v1    # "itList":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    .restart local v2    # "curr_txbytes":J
    :cond_4
    :try_start_8
    iget v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->UMCount:I

    iget v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    sub-int/2addr v4, v8

    add-int/lit8 v4, v4, -0x1

    iget v8, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->NfgCount:I

    if-ne v4, v8, :cond_2

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isScnON:Z

    const/4 v8, 0x1

    if-ne v4, v8, :cond_2

    iget v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    goto :goto_2

    .line 2907
    .end local v0    # "ar":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_5
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->alarmRec:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget v4, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    iget-object v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->alarmRec:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget v8, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCount:I

    sub-int/2addr v4, v8

    iget-object v8, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->alarmRec:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget v8, v8, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->hitCount:I

    sub-int/2addr v4, v8

    const/16 v8, 0x64

    if-le v4, v8, :cond_6

    .line 2908
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->alarmRec:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    .line 2911
    :cond_6
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->alarmRec:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->txbytes0time:J

    sub-long v8, v2, v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-lez v4, :cond_7

    .line 2912
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->alarmRec:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    add-long/2addr v10, v12

    const-wide/16 v12, 0x2710

    sub-long/2addr v10, v12

    invoke-virtual {v4, v8, v10, v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->updateTrafficTimeLocked(ZJ)V

    .line 2920
    :goto_3
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2921
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2922
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_0

    .line 2917
    :cond_7
    :try_start_b
    iget-object v4, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->alarmRec:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    add-long/2addr v10, v12

    const-wide/16 v12, 0x2710

    sub-long/2addr v10, v12

    invoke-virtual {v4, v8, v10, v11}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->updateTrafficTimeLocked(ZJ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3
.end method

.method setAlarmInfo(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V
    .locals 0
    .param p1, "almRec"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .prologue
    .line 2864
    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->alarmRec:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2865
    return-void
.end method

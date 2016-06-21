.class Lcom/android/server/LpnetManagerService$5$3;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LpnetManagerService$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LpnetManagerService$5;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService$5;)V
    .locals 0

    .prologue
    .line 914
    iput-object p1, p0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 917
    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_RUNNING_LOCATION"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 918
    .local v13, "intentGetLocaitonPkg":Landroid/content/Intent;
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LpnetManagerService"

    const-string v3, "APPFREEZER_GPS INTENT send"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$500(Lcom/android/server/LpnetManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v3, v3, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/LpnetManagerService;->access$4000(Lcom/android/server/LpnetManagerService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    # setter for: Lcom/android/server/LpnetManagerService;->mMusicIsActive:Z
    invoke-static {v2, v3}, Lcom/android/server/LpnetManagerService;->access$3902(Lcom/android/server/LpnetManagerService;Z)Z

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v3, v3, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/LpnetManagerService;->access$4000(Lcom/android/server/LpnetManagerService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v3

    # setter for: Lcom/android/server/LpnetManagerService;->mRecordIsActive:Z
    invoke-static {v2, v3}, Lcom/android/server/LpnetManagerService;->access$4102(Lcom/android/server/LpnetManagerService;Z)Z

    .line 922
    const-string v2, "LpnetManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMusicIsActive:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v4, v4, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mMusicIsActive:Z
    invoke-static {v4}, Lcom/android/server/LpnetManagerService;->access$3900(Lcom/android/server/LpnetManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRecordIsActive:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v4, v4, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mRecordIsActive:Z
    invoke-static {v4}, Lcom/android/server/LpnetManagerService;->access$4100(Lcom/android/server/LpnetManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::NETWORK_STAT_LRU"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLRUTrafficMapLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2600(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 924
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_TX:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2700(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_RX:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2800(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 926
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 928
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    iget-boolean v2, v2, Lcom/android/server/LpnetManagerService;->mDataConnectionIsConnected:Z

    if-eqz v2, :cond_5

    .line 929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$4200(Lcom/android/server/LpnetManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v16

    .line 930
    .local v16, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v16, :cond_5

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLRUTrafficMapLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2600(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 932
    :try_start_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 933
    .local v20, "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v8, 0x0

    .line 934
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v17, 0x0

    .line 935
    .local v17, "targetPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2000(Lcom/android/server/LpnetManagerService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 936
    move-object/from16 v0, v20

    iget-object v9, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v9, "arr$":[Ljava/lang/String;
    array-length v14, v9

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v14, :cond_2

    aget-object v15, v9, v12

    .line 937
    .local v15, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->isAutoRunBlockedPackage(Ljava/lang/String;)Z
    invoke-static {v2, v15}, Lcom/android/server/LpnetManagerService;->access$4300(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 938
    move-object/from16 v17, v15

    .line 943
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "pkg":Ljava/lang/String;
    :cond_2
    if-nez v17, :cond_3

    .line 944
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 947
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$1200(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 952
    if-eqz v8, :cond_1

    .line 954
    :try_start_4
    iget v2, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    .line 955
    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v22

    .line 956
    .local v22, "txbytestime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_TX:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2700(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_TX:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2700(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NETWORK_STAT_LRU :: mTrafficStatMap_LRU_TX put name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",txbytestime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_4
    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v18

    .line 961
    .local v18, "rxbytestime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_RX:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2800(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU_RX:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2800(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NETWORK_STAT_LRU :: mTrafficStatMap_LRU_RX put name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",rxbytestime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 967
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "targetPackage":Ljava/lang/String;
    .end local v18    # "rxbytestime":J
    .end local v20    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v22    # "txbytestime":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 970
    .end local v16    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v10

    .line 971
    .local v10, "e":Landroid/os/RemoteException;
    const-string v2, "LpnetManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException in NETWORK_STAT_LRU Cause is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Msg is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    const-string v3, "ACTION_TRIGGER_UNUSED_APP_LRU "

    const-wide/16 v4, 0x7d0

    const-wide/16 v6, 0x0

    # invokes: Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/LpnetManagerService;->access$3100(Lcom/android/server/LpnetManagerService;Ljava/lang/String;JJ)V

    .line 976
    return-void

    .line 926
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 936
    .restart local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "arr$":[Ljava/lang/String;
    .restart local v12    # "i$":I
    .restart local v14    # "len$":I
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v16    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v17    # "targetPackage":Ljava/lang/String;
    .restart local v20    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 948
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 950
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0

    .line 967
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v17    # "targetPackage":Ljava/lang/String;
    .end local v20    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_7
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

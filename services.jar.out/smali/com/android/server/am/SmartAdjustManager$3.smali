.class Lcom/android/server/am/SmartAdjustManager$3;
.super Ljava/lang/Thread;
.source "SmartAdjustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SmartAdjustManager;->RunUpdateActiveInActivePackagesThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SmartAdjustManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/SmartAdjustManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1067
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v1, v1, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v1, v1, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->isFirst:Z

    if-eqz v1, :cond_2

    .line 1068
    const-wide/32 v2, 0x1d4c0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1069
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v2, v1, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :try_start_1
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SPCM_PRELOAD_ENABLE:Z

    if-eqz v1, :cond_1

    .line 1071
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    invoke-virtual {v1}, Lcom/android/server/am/SmartAdjustManager;->updateCSCPackagesList()V

    .line 1072
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    invoke-virtual {v1}, Lcom/android/server/am/SmartAdjustManager;->updateActiveInActivePackagesLocked()V

    .line 1073
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1074
    :try_start_2
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v1, :cond_0

    .line 1075
    const-string v1, "SAMP_SPCM_test"

    const-string v2, "mUpdateActiveInActivePackagesThread-1"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1073
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 1079
    :cond_2
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v1, :cond_3

    .line 1080
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    # invokes: Lcom/android/server/am/SmartAdjustManager;->RunSPCMDB()V
    invoke-static {v1}, Lcom/android/server/am/SmartAdjustManager;->access$100(Lcom/android/server/am/SmartAdjustManager;)V

    .line 1089
    :goto_1
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v1, :cond_0

    .line 1090
    const-string v1, "SAMP_SPCM_test"

    const-string v2, "mUpdateActiveInActivePackagesThread-2"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1083
    :cond_3
    const-wide/32 v2, 0x36ee80

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1084
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v2, v1, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1085
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$3;->this$0:Lcom/android/server/am/SmartAdjustManager;

    invoke-virtual {v1}, Lcom/android/server/am/SmartAdjustManager;->updateActiveInActivePackagesLocked()V

    .line 1086
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
.end method

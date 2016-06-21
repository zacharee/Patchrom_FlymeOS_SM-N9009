.class Lcom/android/server/am/SmartAdjustManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SmartAdjustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SmartAdjustManager;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SmartAdjustManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/SmartAdjustManager;)V
    .locals 0

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1108
    sget-boolean v0, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v0, :cond_0

    .line 1109
    const-string v0, "SAMP_SPCM_test"

    const-string v1, "SPCM onReceive called !!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v1, v0, Lcom/android/server/am/SmartAdjustManager;->mWallpaperServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1112
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mAppWidgetServiceLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1113
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1115
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager$4;->this$0:Lcom/android/server/am/SmartAdjustManager;

    # getter for: Lcom/android/server/am/SmartAdjustManager;->mServiceList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/am/SmartAdjustManager;->access$200(Lcom/android/server/am/SmartAdjustManager;)Ljava/util/ArrayList;

    move-result-object v4

    # invokes: Lcom/android/server/am/SmartAdjustManager;->getLowestScorePackageAndKillLocked(Ljava/util/ArrayList;)V
    invoke-static {v0, v4}, Lcom/android/server/am/SmartAdjustManager;->access$300(Lcom/android/server/am/SmartAdjustManager;Ljava/util/ArrayList;)V

    .line 1116
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1117
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1118
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1119
    return-void

    .line 1116
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 1117
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    .line 1118
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

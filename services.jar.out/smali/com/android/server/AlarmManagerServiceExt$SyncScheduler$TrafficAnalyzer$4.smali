.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$4;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V
    .locals 0

    .prologue
    .line 3422
    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$4;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 3424
    const-string v1, "com.sec.GMS_bundling"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3425
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3426
    const-string v1, "AlarmManagerEXT"

    const-string/jumbo v2, "received - com.sec.GMS_bundling"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3429
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 3443
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 3430
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v1, "reportingEnabled"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3431
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3432
    const-string v1, "AlarmManagerEXT"

    const-string/jumbo v2, "reportingEnable : true --> disable GMS bundling"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    :cond_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$4;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v1, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->updateGmsBundlingState(Z)V

    goto :goto_0

    .line 3437
    :cond_4
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3438
    const-string v1, "AlarmManagerEXT"

    const-string/jumbo v2, "reportingEnable : false --> enable GMS bundling"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    :cond_5
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$4;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->updateGmsBundlingState(Z)V

    goto :goto_0
.end method

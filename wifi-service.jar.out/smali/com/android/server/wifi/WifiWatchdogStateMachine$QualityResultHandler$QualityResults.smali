.class Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QualityResults"
.end annotation


# instance fields
.field private mDataRate1:I

.field private mDataRate2:I

.field private mQuality:I

.field private mRSSI1:I

.field private mRSSI2:I

.field private mTime:J

.field final synthetic this$1:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)V
    .locals 2

    .prologue
    .line 2308
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2309
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mDataRate2:I

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mDataRate1:I

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mRSSI2:I

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mRSSI1:I

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mQuality:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mTime:J

    .line 2310
    return-void
.end method

.method private displayNotification()V
    .locals 6

    .prologue
    .line 2383
    const-string v2, "%dbytes, %ddBm, %ddBm, %dMbps, %dMbps"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mQuality:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mRSSI1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mRSSI2:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mDataRate1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mDataRate2:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2385
    .local v1, "resultStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QualityResult : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    new-instance v0, Landroid/app/Notification;

    const v2, 0x108008a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v2, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2389
    .local v0, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    iget-object v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "QC"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2390
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 2391
    iget v2, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/app/Notification;->defaults:I

    .line 2393
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    iget-object v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotiManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/app/NotificationManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2394
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    iget-object v3, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    iget-object v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "notification"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotiManager:Landroid/app/NotificationManager;
    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14502(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 2396
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    iget-object v2, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mNotiManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$14500(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/app/NotificationManager;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2397
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 2313
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mDataRate2:I

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mDataRate1:I

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mRSSI2:I

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mRSSI1:I

    iput v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mQuality:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mTime:J

    .line 2314
    return-void
.end method

.method public setDataRate1(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 2342
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mDataRate1:I

    .line 2343
    return-void
.end method

.method public setDataRate2(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 2346
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mDataRate2:I

    .line 2347
    return-void
.end method

.method public setQuality(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 2330
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mQuality:I

    .line 2331
    return-void
.end method

.method public setRSSI1(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 2334
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mRSSI1:I

    .line 2335
    return-void
.end method

.method public setRSSI2(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 2338
    iput p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mRSSI2:I

    .line 2339
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "val"    # J

    .prologue
    .line 2326
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mTime:J

    .line 2327
    return-void
.end method

.method public setValues(JIIIII)V
    .locals 1
    .param p1, "r1"    # J
    .param p3, "r2"    # I
    .param p4, "r3"    # I
    .param p5, "r4"    # I
    .param p6, "r5"    # I
    .param p7, "r6"    # I

    .prologue
    .line 2317
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mTime:J

    .line 2318
    iput p3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mQuality:I

    .line 2319
    iput p4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mRSSI1:I

    .line 2320
    iput p5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mRSSI2:I

    .line 2321
    iput p6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mDataRate1:I

    .line 2322
    iput p7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mDataRate2:I

    .line 2323
    return-void
.end method

.method public writeResults()V
    .locals 12

    .prologue
    .line 2350
    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mQuality:I

    if-nez v6, :cond_1

    .line 2380
    :cond_0
    :goto_0
    return-void

    .line 2352
    :cond_1
    const-string v6, "wlan.qc.path"

    const-string v7, "stop"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2353
    .local v3, "logName":Ljava/lang/String;
    const-string v6, "stop"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2354
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "It\'s not in logging state!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2358
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/log/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2359
    .local v2, "logFile":Ljava/lang/String;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Log file is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    :cond_3
    const/4 v4, 0x0

    .line 2362
    .local v4, "resultWriter":Ljava/io/FileWriter;
    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2363
    .end local v4    # "resultWriter":Ljava/io/FileWriter;
    .local v5, "resultWriter":Ljava/io/FileWriter;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->mDateFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->access$14400(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)Ljava/text/SimpleDateFormat;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    iget-wide v10, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mTime:J

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mQuality:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mRSSI1:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mRSSI2:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mDataRate1:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->mDataRate2:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 2370
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->displayNotification()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2375
    if-eqz v5, :cond_4

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v4, v5

    .line 2378
    .end local v5    # "resultWriter":Ljava/io/FileWriter;
    .restart local v4    # "resultWriter":Ljava/io/FileWriter;
    goto/16 :goto_0

    .line 2376
    .end local v4    # "resultWriter":Ljava/io/FileWriter;
    .restart local v5    # "resultWriter":Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .line 2377
    .local v1, "e2":Ljava/io/IOException;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v4, v5

    .line 2379
    .end local v5    # "resultWriter":Ljava/io/FileWriter;
    .restart local v4    # "resultWriter":Ljava/io/FileWriter;
    goto/16 :goto_0

    .line 2371
    .end local v1    # "e2":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 2372
    .local v0, "e1":Ljava/io/IOException;
    :goto_1
    :try_start_3
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doesn\'t exist or there are something wrong on handling it"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2375
    :cond_6
    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 2376
    :catch_2
    move-exception v1

    .line 2377
    .restart local v1    # "e2":Ljava/io/IOException;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2374
    .end local v0    # "e1":Ljava/io/IOException;
    .end local v1    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 2375
    :goto_2
    if-eqz v4, :cond_7

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2378
    :cond_7
    :goto_3
    throw v6

    .line 2376
    :catch_3
    move-exception v1

    .line 2377
    .restart local v1    # "e2":Ljava/io/IOException;
    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1100()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler$QualityResults;->this$1:Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;->access$14300(Lcom/android/server/wifi/WifiWatchdogStateMachine$QualityResultHandler;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "File Close error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2374
    .end local v1    # "e2":Ljava/io/IOException;
    .end local v4    # "resultWriter":Ljava/io/FileWriter;
    .restart local v5    # "resultWriter":Ljava/io/FileWriter;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "resultWriter":Ljava/io/FileWriter;
    .restart local v4    # "resultWriter":Ljava/io/FileWriter;
    goto :goto_2

    .line 2371
    .end local v4    # "resultWriter":Ljava/io/FileWriter;
    .restart local v5    # "resultWriter":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "resultWriter":Ljava/io/FileWriter;
    .restart local v4    # "resultWriter":Ljava/io/FileWriter;
    goto :goto_1
.end method

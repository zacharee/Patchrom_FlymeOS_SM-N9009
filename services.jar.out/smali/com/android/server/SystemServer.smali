.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$FlymeInjector;
    }
.end annotation

# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final DIR_ENCRYPTION:Z

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MSAP_WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.server.wifi.MsapWifiService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final is3LMAllowed:Z

.field private static final isRLLAllowed:Z


# instance fields
.field private final isElasticEnabled:Z

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManagerService:Lcom/android/server/AlarmManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private mLightsService:Lcom/android/server/lights/LightsService;

.field private mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 304
    const-string/jumbo v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SystemServer;->DIR_ENCRYPTION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->isElasticEnabled:Z

    .line 320
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 321
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 234
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 457
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 458
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, #android:style@Theme.DeviceDefault.Light.DarkActionBar#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 315
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 316
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 440
    const-string/jumbo v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 443
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 446
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 447
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 454
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 449
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 435
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    return-void
.end method

.method private run()V
    .locals 9

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 329
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 334
    :cond_0
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 338
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 347
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, "cryptState":Ljava/lang/String;
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 362
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 363
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 372
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 376
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 380
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 384
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 387
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 394
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 395
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 398
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 403
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 406
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 409
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 410
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 414
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 415
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 416
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 425
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_3
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Loop forever"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 431
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_4
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPermissions()V

    .line 356
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPackages()V

    goto/16 :goto_0

    .line 417
    :catch_0
    move-exception v7

    .line 418
    .local v7, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    throw v7
.end method

.method private startBootstrapServices()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 473
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/Installer;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 476
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 478
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 484
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 488
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 492
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 495
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 498
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    const-string v1, "SystemServer"

    const-string v3, "Detected encryption in progress - only parsing core apps"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 515
    :cond_0
    :goto_0
    const-string v1, "SystemServer"

    const-string v3, "!@Boot: Start PackageManagerService"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    iget v1, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iget-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v3, v4, v1, v2}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 518
    const-string v1, "SystemServer"

    const-string v2, "!@Boot: End PackageManagerService"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 520
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 522
    const-string v1, "SystemServer"

    const-string v2, "User Service"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string/jumbo v1, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 526
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 529
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 530
    return-void

    .line 502
    :cond_1
    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    const-string v1, "SystemServer"

    const-string v3, "Device encrypted - only parsing core apps"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 516
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mLightsService:Lcom/android/server/lights/LightsService;

    .line 540
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 543
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 544
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 548
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 549
    return-void
.end method

.method private static final startDpmService(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2278
    const/4 v4, 0x0

    .line 2279
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_0
    const-string/jumbo v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2280
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    if-lez v3, :cond_0

    const/16 v6, 0x10

    if-ge v3, v6, :cond_0

    .line 2283
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2286
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2287
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2289
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 2291
    if-eqz v4, :cond_0

    :try_start_1
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_0

    .line 2292
    const-string v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2293
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2302
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_0
    :goto_0
    return-void

    .line 2295
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_0
    move-exception v5

    .line 2296
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2299
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 2300
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2314
    return-void
.end method

.method private startOtherServices()V
    .locals 182

    .prologue
    .line 556
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 557
    .local v5, "context":Landroid/content/Context;
    const/16 v41, 0x0

    .line 558
    .local v41, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v73, 0x0

    .line 559
    .local v73, "contentService":Lcom/android/server/content/ContentService;
    const/16 v170, 0x0

    .line 560
    .local v170, "vibrator":Lcom/android/server/VibratorService;
    const/16 v43, 0x0

    .line 561
    .local v43, "alarm":Landroid/app/IAlarmManager;
    const/16 v133, 0x0

    .line 562
    .local v133, "mountService":Lcom/android/server/MountService;
    const/16 v148, 0x0

    .line 563
    .local v148, "sdpService":Lcom/android/server/SdpManagerService;
    const/4 v9, 0x0

    .line 564
    .local v9, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v8, 0x0

    .line 565
    .local v8, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v135, 0x0

    .line 566
    .local v135, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v65, 0x0

    .line 567
    .local v65, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v136, 0x0

    .line 568
    .local v136, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v152, 0x0

    .line 569
    .local v152, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v181, 0x0

    .line 570
    .local v181, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v51, 0x0

    .line 571
    .local v51, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v168, 0x0

    .line 572
    .local v168, "usb":Lcom/android/server/usb/UsbService;
    const/16 v150, 0x0

    .line 573
    .local v150, "serial":Lcom/android/server/SerialService;
    const/16 v139, 0x0

    .line 574
    .local v139, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v62, 0x0

    .line 575
    .local v62, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v108, 0x0

    .line 576
    .local v108, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v157, 0x0

    .line 577
    .local v157, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v71, 0x0

    .line 579
    .local v71, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v80, 0x0

    .line 581
    .local v80, "dEncService":Lcom/android/server/DirEncryptService;
    const/16 v119, 0x0

    .line 582
    .local v119, "mHMS":Lcom/android/server/HarmonyEASService;
    const/16 v48, 0x0

    .line 583
    .local v48, "audioService":Landroid/media/AudioService;
    const/16 v82, 0x0

    .line 584
    .local v82, "deviceManager":Lcom/android/server/DeviceManager3LMService;
    const/16 v102, 0x0

    .line 585
    .local v102, "extControlDevice":Lcom/sec/rll/ExtControlDeviceService;
    const/16 v130, 0x0

    .line 587
    .local v130, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v144, 0x0

    .line 589
    .local v144, "quickconnect":Lcom/android/server/QuickConnectService;
    const/16 v162, 0x0

    .line 590
    .local v162, "timaService":Lcom/android/server/TimaService;
    const/16 v160, 0x0

    .line 592
    .local v160, "timaObserver":Lcom/android/server/TimaObserver;
    const/16 v121, 0x0

    .line 593
    .local v121, "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    const/16 v123, 0x0

    .line 598
    .local v123, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    const/16 v180, 0x0

    .line 608
    .local v180, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    const-string v6, "config.disable_storage"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v93

    .line 609
    .local v93, "disableStorage":Z
    const-string v6, "config.disable_media"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v90

    .line 610
    .local v90, "disableMedia":Z
    const-string v6, "config.disable_bluetooth"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v88

    .line 611
    .local v88, "disableBluetooth":Z
    const-string v6, "config.disable_telephony"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v95

    .line 612
    .local v95, "disableTelephony":Z
    const-string v6, "config.disable_location"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v89

    .line 613
    .local v89, "disableLocation":Z
    const-string v6, "config.disable_systemui"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v94

    .line 614
    .local v94, "disableSystemUI":Z
    const-string v6, "config.disable_noncore"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v92

    .line 615
    .local v92, "disableNonCoreServices":Z
    const-string v6, "config.disable_network"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v91

    .line 616
    .local v91, "disableNetwork":Z
    const-string/jumbo v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v112

    .line 617
    .local v112, "isEmulator":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, #android:bool@config_digitalPenCapable#t

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v83

    .line 619
    .local v83, "digitalPenCapable":Z
    const-string v6, "config.disable_atlas"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v87

    .line 622
    .local v87, "disableAtlas":Z
    :try_start_0
    const-string v6, "SystemServer"

    const-string v7, "Reading configuration..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 625
    const-string v6, "SystemServer"

    const-string v7, "Scheduling Policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string/jumbo v6, "scheduling_policy"

    new-instance v7, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v7}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 628
    const-string v6, "SystemServer"

    const-string v7, "Telephony Registry"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    new-instance v158, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v158

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6c

    .line 630
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v158, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v6, "telephony.registry"

    move-object/from16 v0, v158

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 632
    const-string v6, "SystemServer"

    const-string v7, "Entropy Mixer"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v6, "entropy"

    new-instance v7, Lcom/android/server/EntropyMixer;

    invoke-direct {v7, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 638
    :try_start_2
    const-string v6, "SystemServer"

    const-string v7, "SEAMS"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v6, "SEAMService"

    new-instance v7, Lcom/android/server/SEAMService;

    invoke-direct {v7, v5}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 648
    :goto_0
    :try_start_3
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v169

    .line 649
    .local v169, "versionInfo":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    move-object/from16 v0, v169

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v6

    if-eqz v6, :cond_0

    .line 651
    :try_start_4
    const-string v6, "SystemServer"

    const-string v7, "Persona Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v121

    .line 653
    const-string/jumbo v6, "persona"

    move-object/from16 v0, v121

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 660
    :cond_0
    :goto_1
    :try_start_5
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 665
    :try_start_6
    const-string v6, "SystemServer"

    const-string v7, "Account Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance v42, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v42

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 667
    .end local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v42, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_7
    const-string v6, "account"

    move-object/from16 v0, v42

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_75
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6d

    move-object/from16 v41, v42

    .line 673
    .end local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_2
    :try_start_8
    const-string/jumbo v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    .line 674
    .local v122, "mProductName":Ljava/lang/String;
    const-string v6, "ktt"

    move-object/from16 v0, v122

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    move-result v6

    if-nez v6, :cond_1

    .line 677
    :try_start_9
    const-string v6, "SystemServer"

    const-string v7, "KT UCA Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const-string v6, "ktuca"

    new-instance v7, Landroid/ktuca/KtUcaService;

    invoke-direct {v7, v5}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 685
    :cond_1
    :goto_3
    :try_start_a
    const-string v6, "SystemServer"

    const-string v7, "Content Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    const/4 v6, 0x1

    :goto_4
    invoke-static {v5, v6}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v73

    .line 691
    new-instance v81, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v81

    invoke-direct {v0, v5}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .line 693
    .end local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v81, "dEncService":Lcom/android/server/DirEncryptService;
    :try_start_b
    sget-boolean v6, Lcom/android/server/SystemServer;->DIR_ENCRYPTION:Z

    if-eqz v6, :cond_2

    .line 694
    const-string v6, "DirEncryptService"

    move-object/from16 v0, v81

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_6e

    :cond_2
    move-object/from16 v80, v81

    .line 703
    .end local v81    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    :goto_5
    :try_start_c
    const-string v6, "SystemServer"

    const-string v7, "Reactive Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1

    .line 705
    :try_start_d
    const-string v6, "ReactiveService"

    new-instance v7, Lcom/android/server/ReactiveService;

    invoke-direct {v7, v5}, Lcom/android/server/ReactiveService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1

    .line 712
    :goto_6
    :try_start_e
    const-string v6, "SystemServer"

    const-string v7, "System Content Providers"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    .line 715
    :try_start_f
    const-string/jumbo v6, "sedenial"

    new-instance v7, Lcom/android/server/SEDenialService;

    invoke-direct {v7, v5}, Lcom/android/server/SEDenialService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 716
    const-string v6, "SystemServer"

    const-string v7, "SEDenial service added"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1

    .line 721
    :goto_7
    :try_start_10
    const-string v6, "SystemServer"

    const-string v7, "Vibrator Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    new-instance v171, Lcom/android/server/VibratorService;

    move-object/from16 v0, v171

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    .line 723
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .local v171, "vibrator":Lcom/android/server/VibratorService;
    :try_start_11
    const-string/jumbo v6, "vibrator"

    move-object/from16 v0, v171

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 726
    sget-boolean v6, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v6, :cond_3

    .line 727
    const-string v6, "SystemServer"

    const-string v7, "Tw ToolBox Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    new-instance v165, Lcom/samsung/android/toolbox/TwToolBoxService;

    move-object/from16 v0, v165

    invoke-direct {v0, v5}, Lcom/samsung/android/toolbox/TwToolBoxService;-><init>(Landroid/content/Context;)V

    .line 729
    .local v165, "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    const-string/jumbo v6, "tw_toolbox"

    move-object/from16 v0, v165

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 734
    .end local v165    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    :cond_3
    const-string v6, "1"

    const-string/jumbo v7, "ro.config.tima"

    const-string v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_9

    move-result v159

    .line 735
    .local v159, "timaEnabled":Z
    if-eqz v159, :cond_4

    .line 737
    :try_start_12
    const-string v6, "SystemServer"

    const-string v7, "TIMA Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x2

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v163, Lcom/android/server/TimaService;

    move-object/from16 v0, v163

    invoke-direct {v0, v5}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_9

    .line 742
    .end local v162    # "timaService":Lcom/android/server/TimaService;
    .local v163, "timaService":Lcom/android/server/TimaService;
    :try_start_13
    const-string/jumbo v6, "tima"

    move-object/from16 v0, v163

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_74
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_6f

    move-object/from16 v162, v163

    .line 747
    .end local v163    # "timaService":Lcom/android/server/TimaService;
    .restart local v162    # "timaService":Lcom/android/server/TimaService;
    :goto_8
    const/16 v6, -0x13

    :try_start_14
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_9

    .line 751
    :try_start_15
    const-string v6, "SystemServer"

    const-string v7, "TIMA Observer"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    new-instance v161, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v161

    invoke-direct {v0, v5}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_9

    .end local v160    # "timaObserver":Lcom/android/server/TimaObserver;
    .local v161, "timaObserver":Lcom/android/server/TimaObserver;
    move-object/from16 v160, v161

    .line 760
    .end local v161    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v160    # "timaObserver":Lcom/android/server/TimaObserver;
    :goto_9
    :try_start_16
    const-string v6, "3.0"

    const-string/jumbo v7, "ro.config.timaversion"

    const-string v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v164

    .line 761
    .local v164, "timaversion":Z
    if-eqz v164, :cond_4

    .line 762
    const-string v6, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v114

    .line 764
    .local v114, "keyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v114 .. v114}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/Provider;

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 765
    const-string v6, "SystemServer"

    const-string v7, "Added TimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_9

    .line 775
    .end local v114    # "keyStoreClass":Ljava/lang/Class;
    .end local v164    # "timaversion":Z
    :cond_4
    :goto_a
    const/16 v99, 0x1

    .line 776
    .local v99, "enabledMDM":Z
    const/4 v6, 0x1

    move/from16 v0, v99

    if-ne v6, v0, :cond_5

    .line 777
    const/16 v98, 0x1

    .line 778
    .local v98, "enabledCEP":Z
    const/4 v6, 0x1

    move/from16 v0, v98

    if-ne v6, v0, :cond_f

    .line 780
    :try_start_17
    const-string v6, "SystemServer"

    const-string v7, "CEP Proxy KS Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string v6, "cepproxyks"

    new-instance v7, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-direct {v7, v5}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_9

    .line 791
    .end local v98    # "enabledCEP":Z
    :cond_5
    :goto_b
    :try_start_18
    const-string v6, "SystemServer"

    const-string v7, "SSRM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_9

    .line 793
    :try_start_19
    new-instance v54, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/ssrm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v54

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 794
    .local v54, "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v53

    .line 795
    .local v53, "cfmsClass":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    const/4 v7, 0x1

    const-class v10, Landroid/app/IActivityManager;

    aput-object v10, v6, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v55

    .line 796
    .local v55, "cfmsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    aput-object v10, v6, v7

    move-object/from16 v0, v55

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v153

    check-cast v153, Landroid/os/IBinder;

    .local v153, "ssrmService":Landroid/os/IBinder;
    const-string v6, "CustomFrequencyManagerService"

    move-object/from16 v0, v153

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_9

    .line 809
    .end local v53    # "cfmsClass":Ljava/lang/Class;
    .end local v54    # "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v55    # "cfmsConstructor":Ljava/lang/reflect/Constructor;
    .end local v153    # "ssrmService":Landroid/os/IBinder;
    :goto_c
    :try_start_1a
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v56

    .line 810
    .local v56, "cl":Ljava/lang/ClassLoader;
    const-string v6, "com.samsung.android.smartface.SmartFaceManager"

    const/4 v7, 0x1

    move-object/from16 v0, v56

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v59

    .line 811
    .local v59, "class_SmartFaceManager":Ljava/lang/Class;
    const-string v6, "SMARTFACE_SERVICE"

    move-object/from16 v0, v59

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v104

    .line 813
    .local v104, "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    const-string v6, "com.samsung.android.smartface.SmartFaceService"

    const/4 v7, 0x1

    move-object/from16 v0, v56

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v60

    .line 814
    .local v60, "class_SmartFaceService":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v60

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v70

    .line 816
    .local v70, "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x0

    move-object/from16 v0, v104

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v70

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 817
    const-string v6, "SystemServer"

    const-string v7, "SmartFaceService loaded!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_9

    .line 824
    .end local v56    # "cl":Ljava/lang/ClassLoader;
    .end local v59    # "class_SmartFaceManager":Ljava/lang/Class;
    .end local v60    # "class_SmartFaceService":Ljava/lang/Class;
    .end local v70    # "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    .end local v104    # "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    :goto_d
    :try_start_1b
    const-string v6, "SystemServer"

    const-string v7, "Consumer IR Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance v72, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v72

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_9

    .line 826
    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v72, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_1c
    const-string v6, "consumer_ir"

    move-object/from16 v0, v72

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mAlarmManagerService:Lcom/android/server/AlarmManagerService;

    .line 829
    const-string v6, "alarm"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v43

    .line 832
    const-string v6, "SystemServer"

    const-string v7, "Init Watchdog"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v176

    .line 834
    .local v176, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v176

    invoke-virtual {v0, v5, v6}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 836
    const-string v6, "SystemServer"

    const-string v7, "Input Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v109, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v109

    invoke-direct {v0, v5}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_70

    .line 839
    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v109, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_1d
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "SystemServer"

    const-string v7, "Context Aware Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "context_aware"

    new-instance v7, Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {v7, v5}, Lcom/samsung/android/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 844
    :cond_6
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.scontext_lite"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 846
    :cond_7
    const-string v6, "SystemServer"

    const-string v7, "SContext Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string/jumbo v6, "scontext"

    new-instance v7, Landroid/hardware/scontext/SContextService;

    invoke-direct {v7, v5}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 851
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "com.sec.feature.barcode_emulator"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_10

    move-result v6

    if-eqz v6, :cond_9

    .line 853
    :try_start_1e
    const-string v6, "SystemServer"

    const-string v7, "BarBeamService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    new-instance v50, Landroid/app/BarBeamService;

    move-object/from16 v0, v50

    invoke-direct {v0, v5}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 856
    .local v50, "barbeam":Landroid/app/BarBeamService;
    const-string v6, "barbeam"

    move-object/from16 v0, v50

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_10

    .line 866
    .end local v50    # "barbeam":Landroid/app/BarBeamService;
    :cond_9
    :goto_e
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/SystemServer;->mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    .line 872
    const-string v6, "SystemServer"

    const-string v7, "Window Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_10

    const/4 v6, 0x1

    move v7, v6

    :goto_f
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v6, :cond_11

    const/4 v6, 0x1

    :goto_10
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v109

    invoke-static {v5, v0, v7, v6, v10}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v181

    .line 876
    const-string/jumbo v6, "window"

    move-object/from16 v0, v181

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 877
    const-string v6, "input"

    move-object/from16 v0, v109

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    move-object/from16 v6, v181

    invoke-static {v0, v6}, Lcom/android/server/SystemServer$FlymeInjector;->startFlymeMoveWindowService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v181

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/am/MultiWindowFacadeService;->setAcitivityManager(Lcom/android/server/am/ActivityManagerService;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, v181

    invoke-virtual {v6, v0}, Lcom/android/server/am/MultiWindowFacadeService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 888
    invoke-virtual/range {v181 .. v181}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    move-object/from16 v0, v109

    invoke-virtual {v0, v6}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 889
    invoke-virtual/range {v109 .. v109}, Lcom/android/server/input/InputManagerService;->start()V

    .line 892
    const-string v6, "SystemServer"

    const-string v7, "TactileAssist Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    new-instance v156, Lcom/android/server/TactileAssistService;

    move-object/from16 v0, v156

    invoke-direct {v0, v5}, Lcom/android/server/TactileAssistService;-><init>(Landroid/content/Context;)V

    .line 894
    .local v156, "tactileAssist":Lcom/android/server/TactileAssistService;
    const-string/jumbo v6, "tactileassist"

    move-object/from16 v0, v156

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 898
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 903
    if-eqz v112, :cond_12

    .line 904
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooh Service (emulator)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :goto_11
    const-string v6, "SystemServer"

    const-string v7, "RCP Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_10

    .line 927
    :try_start_20
    new-instance v124, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v124

    invoke-direct {v0, v5}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_10

    .line 928
    .end local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .local v124, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :try_start_21
    const-string/jumbo v6, "rcp"

    move-object/from16 v0, v124

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_73
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_72

    move-object/from16 v123, v124

    .line 935
    .end local v124    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :goto_12
    :try_start_22
    new-instance v6, Landroid/security/AndroidKeyStoreProvider;

    invoke-direct {v6}, Landroid/security/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v6}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_10

    move-object/from16 v71, v72

    .end local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v108, v109

    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v170, v171

    .line 942
    .end local v99    # "enabledMDM":Z
    .end local v122    # "mProductName":Ljava/lang/String;
    .end local v156    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .end local v159    # "timaEnabled":Z
    .end local v169    # "versionInfo":Landroid/os/Bundle;
    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .end local v176    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    :goto_13
    const/16 v154, 0x0

    .line 943
    .local v154, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v141, 0x0

    .line 944
    .local v141, "notification":Landroid/app/INotificationManager;
    const/16 v106, 0x0

    .line 945
    .local v106, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v174, 0x0

    .line 946
    .local v174, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v115, 0x0

    .line 947
    .local v115, "location":Lcom/android/server/LocationManagerService;
    const/16 v146, 0x0

    .line 948
    .local v146, "sLocation":Landroid/os/IBinder;
    const/16 v74, 0x0

    .line 949
    .local v74, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v166, 0x0

    .line 950
    .local v166, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v117, 0x0

    .line 952
    .local v117, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v172, 0x0

    .line 954
    .local v172, "vrManager":Lcom/android/server/VRManagerService;
    const/16 v46, 0x0

    .line 955
    .local v46, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v127, 0x0

    .line 958
    .local v127, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v100, 0x0

    .line 962
    .local v100, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v61, 0x0

    .line 966
    .local v61, "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_a

    .line 970
    :try_start_23
    const-string v6, "SystemServer"

    const-string v7, "Input Method Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    new-instance v107, Lcom/android/server/MzInputMethodManagerService;

    move-object/from16 v0, v107

    move-object/from16 v1, v181

    invoke-direct {v0, v5, v1}, Lcom/android/server/MzInputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_12

    .line 972
    .end local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v107, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_24
    const-string v6, "input_method"

    move-object/from16 v0, v107

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_6b

    move-object/from16 v106, v107

    .line 978
    .end local v107    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_14
    :try_start_25
    const-string v6, "SystemServer"

    const-string v7, "Accessibility Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const-string v6, "accessibility"

    new-instance v7, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_13

    .line 988
    :cond_a
    :goto_15
    :try_start_26
    invoke-virtual/range {v181 .. v181}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_14

    .line 994
    :goto_16
    :try_start_27
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_15

    .line 1000
    :goto_17
    :try_start_28
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, #android:string@android_upgrading_starting_apps#t

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v10, 0x0

    invoke-interface {v6, v7, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_6a

    .line 1009
    :goto_18
    :try_start_29
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v142

    .line 1010
    .local v142, "pM":Landroid/content/pm/PackageManager;
    if-eqz v142, :cond_b

    .line 1011
    const-string v6, "SystemServer"

    const-string v7, "PackageManager is not null!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const-string v6, "com.sec.feature.motionrecognition_service"

    move-object/from16 v0, v142

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1013
    new-instance v132, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v132

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1014
    .local v132, "motionClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.samsung.android.motion.MotionRecognitionService"

    move-object/from16 v0, v132

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v57

    .line 1015
    .local v57, "class_MotionRecognitionService":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v68

    .line 1016
    .local v68, "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    const-string v7, "motion_recognition"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v68

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1017
    const-string v6, "SystemServer"

    const-string v7, "MotionRecognitionService Service!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_16

    .line 1026
    .end local v57    # "class_MotionRecognitionService":Ljava/lang/Class;
    .end local v68    # "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    .end local v132    # "motionClassLoader":Ldalvik/system/PathClassLoader;
    .end local v142    # "pM":Landroid/content/pm/PackageManager;
    :cond_b
    :goto_19
    const/16 v76, 0x0

    .line 1028
    .local v76, "coverService":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_d

    .line 1029
    const-string/jumbo v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    .line 1030
    .local v78, "cryptState":Ljava/lang/String;
    const-string/jumbo v6, "trigger_restart_min_framework"

    move-object/from16 v0, v78

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string/jumbo v6, "trigger_restart_min_framework"

    move-object/from16 v0, v78

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1031
    :cond_c
    const-string v6, "SystemServer"

    const-string v7, "Detected encryption in progress - unable CoverManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    .end local v78    # "cryptState":Ljava/lang/String;
    :cond_d
    :goto_1a
    const-string v6, "SystemServer"

    const-string v7, "Wait for CP upgrade - start"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :goto_1b
    const-string/jumbo v6, "ril.cbd.boot_done"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1055
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 1056
    const-string v6, "SystemServer"

    const-string v7, "Wait for CP upgrade ..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 640
    .end local v46    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v61    # "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .end local v74    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v76    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v100    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v127    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v141    # "notification":Landroid/app/INotificationManager;
    .end local v146    # "sLocation":Landroid/os/IBinder;
    .end local v154    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v166    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v172    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v174    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v96

    .line 641
    .local v96, "e":Ljava/lang/Throwable;
    :try_start_2a
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_1

    goto/16 :goto_0

    .line 937
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v96

    move-object/from16 v157, v158

    .line 938
    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v96, "e":Ljava/lang/RuntimeException;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_1c
    const-string v6, "System"

    const-string v7, "******************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const-string v6, "System"

    const-string v7, "************ Failure starting core service"

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .line 654
    .end local v96    # "e":Ljava/lang/RuntimeException;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "versionInfo":Landroid/os/Bundle;
    :catch_2
    move-exception v96

    .line 655
    .local v96, "e":Ljava/lang/Throwable;
    :try_start_2b
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Persona Manager Service"

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 668
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v96

    .line 669
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_1d
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Account Manager"

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 679
    .end local v96    # "e":Ljava/lang/Throwable;
    .restart local v122    # "mProductName":Ljava/lang/String;
    :catch_4
    move-exception v96

    .line 680
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting KT UCA Service"

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_1

    goto/16 :goto_3

    .line 686
    .end local v96    # "e":Ljava/lang/Throwable;
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 696
    .end local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v81    # "dEncService":Lcom/android/server/DirEncryptService;
    :catch_5
    move-exception v96

    .line 697
    .restart local v96    # "e":Ljava/lang/Throwable;
    :try_start_2c
    const-string v6, "SystemServer"

    const-string v7, "Failure starting DirEncryptService"

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_6e

    .line 698
    const/16 v80, 0x0

    .end local v81    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    goto/16 :goto_5

    .line 706
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v96

    .line 708
    .restart local v96    # "e":Ljava/lang/Throwable;
    :try_start_2d
    const-string v6, "SystemServer"

    const-string v7, "Failed to add Reactive Service."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 717
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v96

    .line 718
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Registration of denial service failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_1

    goto/16 :goto_7

    .line 743
    .end local v96    # "e":Ljava/lang/Throwable;
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v159    # "timaEnabled":Z
    .restart local v171    # "vibrator":Lcom/android/server/VibratorService;
    :catch_8
    move-exception v96

    .line 744
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_1e
    :try_start_2e
    const-string/jumbo v6, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 937
    .end local v96    # "e":Ljava/lang/Throwable;
    .end local v159    # "timaEnabled":Z
    :catch_9
    move-exception v96

    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v170, v171

    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_1c

    .line 754
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "timaEnabled":Z
    .restart local v171    # "vibrator":Lcom/android/server/VibratorService;
    :catch_a
    move-exception v96

    .line 755
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 767
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v96

    .line 768
    .local v96, "e":Ljava/lang/Exception;
    const-string v6, "SystemServer"

    const-string v7, "Unable to add TimaKesytore provider"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-virtual/range {v96 .. v96}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .line 782
    .end local v96    # "e":Ljava/lang/Exception;
    .restart local v98    # "enabledCEP":Z
    .restart local v99    # "enabledMDM":Z
    :catch_c
    move-exception v96

    .line 783
    .local v96, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting CEP Proxy Service"

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 786
    .end local v96    # "e":Ljava/lang/Throwable;
    :cond_f
    const-string v6, "SystemServer"

    const-string v7, "MDM is enabled, but CEP is not enabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 798
    .end local v98    # "enabledCEP":Z
    :catch_d
    move-exception v96

    .line 799
    .local v96, "e":Ljava/lang/Exception;
    const-string v6, "SystemServer"

    const-string/jumbo v7, "ssrm.jar not found"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-virtual/range {v96 .. v96}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 818
    .end local v96    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v96

    .line 819
    .restart local v96    # "e":Ljava/lang/Exception;
    const-string v6, "Fail to start SmartFaceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_9

    goto/16 :goto_d

    .line 857
    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v96    # "e":Ljava/lang/Exception;
    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v176    # "watchdog":Lcom/android/server/Watchdog;
    :catch_f
    move-exception v96

    .line 858
    .local v96, "e":Ljava/lang/Throwable;
    :try_start_2f
    const-string v6, "SystemServer"

    const-string v7, "Failure starting BarBeam Service"

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 937
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v96

    move-object/from16 v71, v72

    .end local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v108, v109

    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v170, v171

    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_1c

    .line 873
    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v171    # "vibrator":Lcom/android/server/VibratorService;
    :cond_10
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_f

    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_10

    .line 905
    .restart local v156    # "tactileAssist":Lcom/android/server/TactileAssistService;
    :cond_12
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_13

    .line 906
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (factory test)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 907
    :cond_13
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 909
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 910
    :cond_14
    if-eqz v88, :cond_15

    .line 911
    const-string v6, "SystemServer"

    const-string v7, "Bluetooth Service disabled by config"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 913
    :cond_15
    const-string v6, "SystemServer"

    const-string v7, "Bluetooth Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    new-instance v52, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_10

    .line 915
    .end local v51    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v52, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_30
    const-string v6, "bluetooth_manager"

    move-object/from16 v0, v52

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 918
    const-string v6, "SystemServer"

    const-string v7, "Bluetooth Secure Mode Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const-string v6, "bluetooth_secure_mode_manager"

    new-instance v7, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v7, v5}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_71

    move-object/from16 v51, v52

    .end local v52    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v51    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_11

    .line 929
    :catch_11
    move-exception v96

    .line 930
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_1f
    :try_start_31
    const-string v6, "SystemServer"

    const-string v7, "Failure starting RCP Manager Service"

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_10

    goto/16 :goto_12

    .line 973
    .end local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v96    # "e":Ljava/lang/Throwable;
    .end local v99    # "enabledMDM":Z
    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v122    # "mProductName":Ljava/lang/String;
    .end local v156    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v159    # "timaEnabled":Z
    .end local v169    # "versionInfo":Landroid/os/Bundle;
    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .end local v176    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v46    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v61    # "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v74    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v100    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v115    # "location":Lcom/android/server/LocationManagerService;
    .restart local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v127    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v141    # "notification":Landroid/app/INotificationManager;
    .restart local v146    # "sLocation":Landroid/os/IBinder;
    .restart local v154    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v166    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v172    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v174    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_12
    move-exception v96

    .line 974
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_20
    const-string/jumbo v6, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 981
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v96

    .line 982
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 989
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v96

    .line 990
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 995
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v96

    .line 996
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1020
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v96

    .line 1021
    .local v96, "e":Ljava/lang/Exception;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting MotionRecognitionService"

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .line 1033
    .end local v96    # "e":Ljava/lang/Exception;
    .restart local v76    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v78    # "cryptState":Ljava/lang/String;
    :cond_16
    if-nez v92, :cond_d

    .line 1034
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v143

    .line 1035
    .local v143, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v6, "com.sec.feature.cover.flip"

    move-object/from16 v0, v143

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17

    const-string v6, "com.sec.feature.cover.sview"

    move-object/from16 v0, v143

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1038
    :cond_17
    :try_start_32
    const-string v6, "SystemServer"

    const-string v7, "CoverManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    new-instance v77, Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, v77

    move-object/from16 v1, v181

    move-object/from16 v2, v108

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/cover/CoverManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_17

    .line 1040
    .end local v76    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .local v77, "coverService":Lcom/android/server/cover/CoverManagerService;
    :try_start_33
    const-string v6, "cover"

    move-object/from16 v0, v77

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_69

    move-object/from16 v76, v77

    .line 1043
    .end local v77    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v76    # "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_1a

    .line 1041
    :catch_17
    move-exception v96

    .line 1042
    .local v96, "e":Ljava/lang/Throwable;
    :goto_21
    const-string v6, "SystemServer"

    const-string v7, "Failure starting CoverManager Service"

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 1058
    .end local v78    # "cryptState":Ljava/lang/String;
    .end local v96    # "e":Ljava/lang/Throwable;
    .end local v143    # "packageMgr":Landroid/content/pm/PackageManager;
    :cond_18
    const-string v6, "SystemServer"

    const-string v7, "Wait for CP upgrade - end"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const-string v6, "0"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_19

    .line 1064
    :try_start_34
    const-string v6, "SystemServer"

    const-string v7, "Add FM_RADIO_SERVICE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string v6, "FMPlayer"

    new-instance v7, Lcom/android/server/FMRadioService;

    invoke-direct {v7, v5}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1066
    const-string v6, "SystemServer"

    const-string v7, "FMRadio service added.."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_18

    .line 1072
    :cond_19
    :goto_22
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4e

    .line 1073
    if-nez v93, :cond_1a

    const-string v6, "0"

    const-string/jumbo v7, "system_init.startmountservice"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 1080
    :try_start_35
    const-string v6, "SystemServer"

    const-string v7, "Mount Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    new-instance v134, Lcom/android/server/MountService;

    move-object/from16 v0, v134

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_19

    .line 1082
    .end local v133    # "mountService":Lcom/android/server/MountService;
    .local v134, "mountService":Lcom/android/server/MountService;
    :try_start_36
    const-string v6, "mount"

    move-object/from16 v0, v134

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_68

    move-object/from16 v133, v134

    .line 1090
    .end local v134    # "mountService":Lcom/android/server/MountService;
    .restart local v133    # "mountService":Lcom/android/server/MountService;
    :cond_1a
    :goto_23
    :try_start_37
    const-string v6, "SystemServer"

    const-string v7, "DirEncryptSerrvice"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    if-eqz v80, :cond_1b

    .line 1092
    const-string v6, "SystemServer"

    const-string v7, "DirEncryptService.SystemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-virtual/range {v80 .. v80}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1a

    .line 1112
    :cond_1b
    :goto_24
    if-nez v92, :cond_1d

    .line 1114
    :try_start_38
    const-string v6, "SystemServer"

    const-string v7, "LockSettingsService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    new-instance v118, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v118

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1b

    .line 1116
    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v118, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_39
    const-string v6, "lock_settings"

    move-object/from16 v0, v118

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_67

    move-object/from16 v117, v118

    .line 1121
    .end local v118    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_25
    const-string/jumbo v6, "ro.frp.pst"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 1122
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1127
    :cond_1c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1132
    :cond_1d
    :try_start_3a
    const-string v6, "SystemServer"

    const-string v7, "HarmonyEAS service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    new-instance v120, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v120

    invoke-direct {v0, v5}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1c

    .line 1134
    .end local v119    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v120, "mHMS":Lcom/android/server/HarmonyEASService;
    :try_start_3b
    const-string v6, "harmony_eas_service"

    move-object/from16 v0, v120

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1135
    const-string v6, "SystemServer"

    const-string v7, "Harmony EAS service created..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_66

    move-object/from16 v119, v120

    .line 1143
    .end local v120    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v119    # "mHMS":Lcom/android/server/HarmonyEASService;
    :goto_26
    :try_start_3c
    const-string v6, "SystemServer"

    const-string v7, "SdpManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    new-instance v149, Lcom/android/server/SdpManagerService;

    move-object/from16 v0, v149

    invoke-direct {v0, v5}, Lcom/android/server/SdpManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_1d

    .line 1145
    .end local v148    # "sdpService":Lcom/android/server/SdpManagerService;
    .local v149, "sdpService":Lcom/android/server/SdpManagerService;
    :try_start_3d
    const-string/jumbo v6, "sdp"

    move-object/from16 v0, v149

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_65

    move-object/from16 v148, v149

    .line 1152
    .end local v149    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v148    # "sdpService":Lcom/android/server/SdpManagerService;
    :goto_27
    if-nez v92, :cond_1e

    .line 1154
    :try_start_3e
    const-string v6, "SystemServer"

    const-string v7, "Enterprise Policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    new-instance v101, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const/4 v7, 0x0

    move-object/from16 v0, v101

    invoke-direct {v0, v5, v6, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_1e

    .line 1156
    .end local v100    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v101, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_3f
    const-string v6, "enterprise_policy"

    move-object/from16 v0, v101

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1157
    const-string v6, "SystemServer"

    const-string v7, "Enterprise Policymanager service created..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_64

    move-object/from16 v100, v101

    .line 1164
    .end local v101    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v100    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_1e
    :goto_28
    if-nez v94, :cond_1f

    .line 1166
    :try_start_40
    const-string v6, "SystemServer"

    const-string v7, "Status Bar"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    new-instance v155, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v155

    move-object/from16 v1, v181

    invoke-direct {v0, v5, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_1f

    .line 1168
    .end local v154    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v155, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_41
    const-string/jumbo v6, "statusbar"

    move-object/from16 v0, v155

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeStatusBarManagerService()V

    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_63

    move-object/from16 v154, v155

    .line 1174
    .end local v155    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v154    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_1f
    :goto_29
    if-nez v92, :cond_20

    .line 1176
    :try_start_42
    const-string v6, "SystemServer"

    const-string v7, "Clipboard Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const-string v6, "clipboard"

    new-instance v7, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v7, v5}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_20

    .line 1185
    :cond_20
    :goto_2a
    if-nez v92, :cond_21

    .line 1187
    :try_start_43
    const-string v6, "SystemServer"

    const-string v7, "ClipboardEx Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    const-string v6, "clipboardEx"

    new-instance v7, Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {v7, v5}, Lcom/android/server/clipboardex/ClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_21

    .line 1196
    :cond_21
    :goto_2b
    if-nez v91, :cond_22

    .line 1198
    :try_start_44
    const-string v6, "SystemServer"

    const-string v7, "NetworkManagement Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v9

    .line 1200
    const-string v6, "network_management"

    invoke-static {v6, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V

    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_22

    .line 1208
    :cond_22
    :goto_2c
    const-string v6, "SystemServer"

    const-string v7, "SEC_PRODUCT_FEATURE_KNOX_SUPPORT_ABSOLUTE_ANTITHEFT=FALSE - true"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :try_start_45
    const-string v6, "SystemServer"

    const-string v7, "Absolute Persistence Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    const-string v6, "ABTPersistenceService"

    new-instance v7, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v7, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_23

    .line 1219
    :goto_2d
    if-nez v92, :cond_23

    .line 1221
    :try_start_46
    const-string v6, "SystemServer"

    const-string v7, "Text Service Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    new-instance v167, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v167

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_24

    .line 1223
    .end local v166    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v167, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_47
    const-string/jumbo v6, "textservices"

    move-object/from16 v0, v167

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_62

    move-object/from16 v166, v167

    .line 1229
    .end local v167    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v166    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_23
    :goto_2e
    if-nez v91, :cond_4d

    .line 1231
    :try_start_48
    const-string v6, "SystemServer"

    const-string v7, "Network Score Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    new-instance v137, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v137

    invoke-direct {v0, v5}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_25

    .line 1233
    .end local v136    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v137, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_49
    const-string v6, "network_score"

    move-object/from16 v0, v137

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_61

    move-object/from16 v136, v137

    .line 1239
    .end local v137    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v136    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_2f
    :try_start_4a
    const-string v6, "SystemServer"

    const-string v7, "NetworkStats Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    new-instance v138, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v138

    move-object/from16 v1, v43

    invoke-direct {v0, v5, v9, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_26

    .line 1241
    .end local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v138, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_4b
    const-string v6, "netstats"

    move-object/from16 v0, v138

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_60

    move-object/from16 v8, v138

    .line 1247
    .end local v138    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_30
    :try_start_4c
    const-string v6, "SystemServer"

    const-string v7, "NetworkPolicy Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    new-instance v4, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    check-cast v7, Landroid/os/IPowerManager;

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_27

    .line 1252
    .end local v135    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v4, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_4d
    const-string v6, "netpolicy"

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_5f

    .line 1257
    :goto_31
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1258
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.WifiService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1259
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.samsung.android.server.wifi.MsapWifiService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1260
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1263
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.wifi.RttService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1266
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.ethernet"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 1273
    :goto_32
    :try_start_4e
    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymePppoeAndSambaService(Lcom/android/server/SystemServer;)V

    const-string v6, "SystemServer"

    const-string v7, "Connectivity Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    new-instance v66, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v66

    invoke-direct {v0, v5, v9, v8, v4}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_28

    .line 1276
    .end local v65    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v66, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_4f
    const-string v6, "connectivity"

    move-object/from16 v0, v66

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1277
    move-object/from16 v0, v66

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1278
    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_5e

    move-object/from16 v65, v66

    .line 1285
    .end local v66    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v65    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_33
    :try_start_50
    const-string v6, "SystemServer"

    const-string v7, "SmartBonding Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v56

    .line 1287
    .restart local v56    # "cl":Ljava/lang/ClassLoader;
    const-string v6, "com.samsung.android.smartbonding.SmartBondingService"

    const/4 v7, 0x1

    move-object/from16 v0, v56

    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v58

    .line 1288
    .local v58, "class_SmartBondingService":Ljava/lang/Class;
    const-string v6, "SMARTBONDING_SERVICE"

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v103

    .line 1290
    .local v103, "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v69

    .line 1292
    .local v69, "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x0

    move-object/from16 v0, v103

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v69

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1293
    const-string v6, "SystemServer"

    const-string v7, "SmartBonding loaded"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_29

    .line 1368
    .end local v56    # "cl":Ljava/lang/ClassLoader;
    .end local v58    # "class_SmartBondingService":Ljava/lang/Class;
    .end local v69    # "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    .end local v103    # "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    :goto_34
    :try_start_51
    const-string v6, "SystemServer"

    const-string v7, "Network Service Discovery Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v152

    .line 1370
    const-string/jumbo v6, "servicediscovery"

    move-object/from16 v0, v152

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2a

    .line 1376
    :goto_35
    :try_start_52
    const-string v6, "SystemServer"

    const-string v7, "DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    invoke-static {v5}, Lcom/android/server/SystemServer;->startDpmService(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_2b

    .line 1383
    :goto_36
    if-nez v92, :cond_24

    .line 1385
    :try_start_53
    const-string v6, "SystemServer"

    const-string v7, "UpdateLock Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    const-string/jumbo v6, "updatelock"

    new-instance v7, Lcom/android/server/UpdateLockService;

    invoke-direct {v7, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_2c

    .line 1398
    :cond_24
    :goto_37
    if-eqz v133, :cond_25

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v6, :cond_25

    .line 1400
    const-string/jumbo v6, "vold.decrypt"

    const-string/jumbo v7, "null"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "trigger_restart_min_framework"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    .line 1401
    invoke-virtual/range {v133 .. v133}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 1405
    :cond_25
    if-eqz v41, :cond_26

    .line 1406
    :try_start_54
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_2d

    .line 1412
    :cond_26
    :goto_38
    if-eqz v73, :cond_27

    .line 1413
    :try_start_55
    invoke-virtual/range {v73 .. v73}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_2e

    .line 1418
    :cond_27
    :goto_39
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1419
    const-string v6, "notification"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v141

    .line 1421
    move-object/from16 v0, v141

    invoke-virtual {v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1426
    if-nez v89, :cond_28

    .line 1428
    :try_start_56
    const-string v6, "SystemServer"

    const-string v7, "Location Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    new-instance v116, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v116

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_2f

    .line 1430
    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .local v116, "location":Lcom/android/server/LocationManagerService;
    :try_start_57
    const-string v6, "location"

    move-object/from16 v0, v116

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_5d

    move-object/from16 v115, v116

    .line 1436
    .end local v116    # "location":Lcom/android/server/LocationManagerService;
    .restart local v115    # "location":Lcom/android/server/LocationManagerService;
    :goto_3a
    :try_start_58
    const-string v6, "SystemServer"

    const-string v7, "Country Detector"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    new-instance v75, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v75

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_30

    .line 1438
    .end local v74    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v75, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_59
    const-string v6, "country_detector"

    move-object/from16 v0, v75

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_5c

    move-object/from16 v74, v75

    .line 1474
    .end local v75    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v74    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_28
    :goto_3b
    :try_start_5a
    const-string v6, "SystemServer"

    const-string v7, "SLocation Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    const-string v6, "com.samsung.location.SLocationLoader"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v147

    .line 1476
    .local v147, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getSLocationService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v10

    move-object/from16 v0, v147

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v105

    .line 1477
    .local v105, "getSLocationService":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v105

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v146, v0

    .line 1478
    const-string/jumbo v6, "sec_location"

    move-object/from16 v0, v146

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_31

    .line 1483
    .end local v105    # "getSLocationService":Ljava/lang/reflect/Method;
    .end local v147    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3c
    if-nez v92, :cond_29

    .line 1485
    :try_start_5b
    const-string v6, "SystemServer"

    const-string v7, "Search Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    const-string/jumbo v6, "search"

    new-instance v7, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_32

    .line 1494
    :cond_29
    :goto_3d
    :try_start_5c
    const-string v6, "SystemServer"

    const-string v7, "DropBox Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const-string v6, "dropbox"

    new-instance v7, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_33

    .line 1501
    :goto_3e
    if-nez v92, :cond_2a

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, #android:bool@config_enableWallpaperService#t

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 1504
    :try_start_5d
    const-string v6, "SystemServer"

    const-string v7, "Wallpaper Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    new-instance v175, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v175

    invoke-direct {v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_34

    .line 1506
    .end local v174    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v175, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_5e
    const-string/jumbo v6, "wallpaper"

    move-object/from16 v0, v175

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_5b

    move-object/from16 v174, v175

    .line 1512
    .end local v175    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v174    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_2a
    :goto_3f
    if-nez v90, :cond_2b

    const-string v6, "0"

    const-string/jumbo v7, "system_init.startaudioservice"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 1514
    :try_start_5f
    const-string v6, "SystemServer"

    const-string v7, "Audio Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    new-instance v49, Landroid/media/AudioService;

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_35

    .line 1516
    .end local v48    # "audioService":Landroid/media/AudioService;
    .local v49, "audioService":Landroid/media/AudioService;
    :try_start_60
    const-string v6, "audio"

    move-object/from16 v0, v49

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_5a

    move-object/from16 v48, v49

    .line 1522
    .end local v49    # "audioService":Landroid/media/AudioService;
    .restart local v48    # "audioService":Landroid/media/AudioService;
    :cond_2b
    :goto_40
    if-nez v92, :cond_2c

    .line 1523
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/DockObserver;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1526
    :cond_2c
    if-nez v90, :cond_2d

    .line 1528
    :try_start_61
    const-string v6, "SystemServer"

    const-string v7, "Wired Accessory Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    new-instance v6, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v108

    invoke-direct {v6, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v108

    invoke-virtual {v0, v6}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_36

    .line 1537
    :cond_2d
    :goto_41
    if-nez v92, :cond_30

    .line 1538
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.usb.host"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.usb.accessory"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1542
    :cond_2e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1546
    :cond_2f
    :try_start_62
    const-string v6, "SystemServer"

    const-string v7, "Serial Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    new-instance v151, Lcom/android/server/SerialService;

    move-object/from16 v0, v151

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_37

    .line 1549
    .end local v150    # "serial":Lcom/android/server/SerialService;
    .local v151, "serial":Lcom/android/server/SerialService;
    :try_start_63
    const-string/jumbo v6, "serial"

    move-object/from16 v0, v151

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_59

    move-object/from16 v150, v151

    .line 1557
    .end local v151    # "serial":Lcom/android/server/SerialService;
    .restart local v150    # "serial":Lcom/android/server/SerialService;
    :cond_30
    :goto_42
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_EnableSUA"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 1560
    :try_start_64
    const-string v6, "SystemServer"

    const-string v7, "KiesUsb Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const-string v6, "kiesusb"

    new-instance v7, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v7, v5}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_38

    .line 1568
    :cond_31
    :goto_43
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1570
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1572
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1574
    if-nez v92, :cond_34

    .line 1575
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.backup"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1576
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1579
    :cond_32
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.app_widgets"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 1580
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1583
    :cond_33
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.voice_recognizers"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 1584
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1588
    :cond_34
    const-string/jumbo v6, "ro.SecEDS.enable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1589
    .local v39, "SecEDSEnable":Ljava/lang/String;
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    const-string v6, "false"

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 1593
    :try_start_65
    const-string v6, "SystemServer"

    const-string v7, "Starting SecEDSEnable Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    const/16 v97, 0x0

    .line 1595
    .local v97, "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "com.android.server.SecExternalDisplayService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v97

    .line 1596
    if-nez v97, :cond_48

    .line 1597
    const-string v6, "SystemServer"

    const-string v7, "eds Service not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_39

    .line 1613
    .end local v97    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_35
    :goto_44
    :try_start_66
    const-string v6, "SystemServer"

    const-string v7, "DiskStats Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    const-string v6, "diskstats"

    new-instance v7, Lcom/android/server/DiskStatsService;

    invoke-direct {v7, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_3a

    .line 1631
    :goto_45
    :try_start_67
    const-string v6, "SystemServer"

    const-string v7, "mDNIe Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    const/16 v125, 0x0

    .line 1633
    .local v125, "mdnieClass":Ljava/lang/Class;
    const-string v6, "com.samsung.android.mdnie.MdnieManagerService"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v125

    .line 1634
    if-nez v125, :cond_49

    .line 1635
    const-string v6, "SystemServer"

    const-string v7, "Mdnie Service does not exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_3b

    .line 1648
    .end local v125    # "mdnieClass":Ljava/lang/Class;
    :goto_46
    :try_start_68
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v142

    .line 1649
    .restart local v142    # "pM":Landroid/content/pm/PackageManager;
    if-eqz v142, :cond_4a

    .line 1651
    const/16 v111, 0x1

    .line 1665
    .local v111, "isAddService":Z
    if-eqz v111, :cond_36

    .line 1666
    const-string v6, "SystemServer"

    const-string v7, "Starting SpenGestureManagerService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    const-string/jumbo v6, "spengestureservice"

    new-instance v7, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v181

    invoke-direct {v7, v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_3c

    .line 1691
    .end local v111    # "isAddService":Z
    .end local v142    # "pM":Landroid/content/pm/PackageManager;
    :cond_36
    :goto_47
    :try_start_69
    const-string v6, "SystemServer"

    const-string v7, "QuickConnect Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    new-instance v145, Lcom/android/server/QuickConnectService;

    move-object/from16 v0, v145

    invoke-direct {v0, v5}, Lcom/android/server/QuickConnectService;-><init>(Landroid/content/Context;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_3d

    .line 1693
    .end local v144    # "quickconnect":Lcom/android/server/QuickConnectService;
    .local v145, "quickconnect":Lcom/android/server/QuickConnectService;
    :try_start_6a
    const-string/jumbo v6, "quickconnect"

    move-object/from16 v0, v145

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_58

    move-object/from16 v144, v145

    .line 1703
    .end local v145    # "quickconnect":Lcom/android/server/QuickConnectService;
    .restart local v144    # "quickconnect":Lcom/android/server/QuickConnectService;
    :goto_48
    :try_start_6b
    const-string v6, "SystemServer"

    const-string v7, "SamplingProfiler Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    const-string/jumbo v6, "samplingprofiler"

    new-instance v7, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v7, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_3e

    .line 1710
    :goto_49
    if-nez v91, :cond_37

    .line 1712
    :try_start_6c
    const-string v6, "SystemServer"

    const-string v7, "NetworkTimeUpdateService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    new-instance v140, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v140

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_3f

    .end local v139    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v140, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v139, v140

    .line 1727
    .end local v140    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v139    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_37
    :goto_4a
    if-nez v90, :cond_38

    .line 1729
    :try_start_6d
    const-string v6, "SystemServer"

    const-string v7, "CommonTimeManagementService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    new-instance v63, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v63

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_40

    .line 1731
    .end local v62    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v63, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_6e
    const-string v6, "commontime_management"

    move-object/from16 v0, v63

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_57

    move-object/from16 v62, v63

    .line 1737
    .end local v63    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v62    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_38
    :goto_4b
    if-nez v91, :cond_39

    .line 1739
    :try_start_6f
    const-string v6, "SystemServer"

    const-string v7, "CertBlacklister"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    new-instance v6, Lcom/android/server/CertBlacklister;

    invoke-direct {v6, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_41

    .line 1746
    :cond_39
    :goto_4c
    if-nez v92, :cond_3a

    .line 1748
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1751
    :cond_3a
    if-nez v92, :cond_3b

    if-nez v87, :cond_3b

    goto :goto_flyme_0

    .line 1753
    :try_start_70
    const-string v6, "SystemServer"

    const-string v7, "Assets Atlas Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    new-instance v47, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v47

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_42

    .line 1755
    .end local v46    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v47, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_71
    const-string v6, "assetatlas"

    move-object/from16 v0, v47

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_56

    move-object/from16 v46, v47

    .line 1761
    .end local v47    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v46    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_3b
    :goto_4d
    :goto_flyme_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.print"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 1762
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.print.PrintManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1765
    :cond_3c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1767
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1769
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.hdmi.cec"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 1770
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1773
    :cond_3d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.software.live_tv"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 1774
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1777
    :cond_3e
    if-nez v92, :cond_3f

    .line 1779
    :try_start_72
    const-string v6, "SystemServer"

    const-string v7, "Media Router Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    new-instance v128, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v128

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_43

    .line 1781
    .end local v127    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v128, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_73
    const-string v6, "media_router"

    move-object/from16 v0, v128

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_55

    move-object/from16 v127, v128

    .line 1786
    .end local v128    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v127    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_4e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1788
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1791
    :try_start_74
    const-string v6, "SystemServer"

    const-string v7, "BackgroundDexOptService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    invoke-static {v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_44

    .line 1801
    :cond_3f
    :goto_4f
    :try_start_75
    const-string v6, "SystemServer"

    const-string v7, "BackgroundCompactionService"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/server/os/BackgroundCompactionService;->schedule(Landroid/content/Context;I)V

    .line 1803
    invoke-static {v5}, Lcom/android/server/os/BackgroundCompactionService;->initBGC(Landroid/content/Context;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_45

    .line 1809
    :goto_50
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1838
    const-string/jumbo v6, "ro.bluetooth.wipower"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v113

    .line 1840
    .local v113, "isWipowerEnabled":Z
    if-eqz v113, :cond_4b

    .line 1842
    :try_start_76
    const-string/jumbo v40, "wbc_service"

    .line 1843
    .local v40, "WBC_SERVICE_NAME":Ljava/lang/String;
    const-string v6, "SystemServer"

    const-string v7, "WipowerBatteryControl Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    new-instance v178, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.quicinc.wbc.jar:/system/framework/com.quicinc.wbcservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v178

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1848
    .local v178, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.quicinc.wbcservice.WbcService"

    move-object/from16 v0, v178

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v177

    .line 1849
    .local v177, "wbcClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v177

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v79

    .line 1850
    .local v79, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v79

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v179

    .line 1851
    .local v179, "wbcObject":Ljava/lang/Object;
    const-string v6, "SystemServer"

    const-string v7, "Successfully loaded WbcService class"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    const-string/jumbo v6, "wbc_service"

    check-cast v179, Landroid/os/IBinder;

    .end local v179    # "wbcObject":Ljava/lang/Object;
    move-object/from16 v0, v179

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_46

    .line 1860
    .end local v40    # "WBC_SERVICE_NAME":Ljava/lang/String;
    .end local v79    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v177    # "wbcClass":Ljava/lang/Class;
    .end local v178    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_51
    if-eqz v83, :cond_40

    .line 1862
    :try_start_77
    const-string v6, "SystemServer"

    const-string v7, "Digital Pen Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    new-instance v85, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/DigitalPenService.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move-object/from16 v0, v85

    invoke-direct {v0, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1866
    .local v85, "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.snapdragon.digitalpen.DigitalPenService"

    move-object/from16 v0, v85

    invoke-virtual {v0, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v84

    .line 1868
    .local v84, "digitalPenClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v84

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v79

    .line 1869
    .restart local v79    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v79

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v86

    .line 1870
    .local v86, "digitalPenRemoteObject":Ljava/lang/Object;
    const-string v6, "SystemServer"

    const-string v7, "Successfully loaded DigitalPenService class"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    const-string v6, "DigitalPen"

    check-cast v86, Landroid/os/IBinder;

    .end local v86    # "digitalPenRemoteObject":Ljava/lang/Object;
    move-object/from16 v0, v86

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_47

    .line 1880
    .end local v79    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v84    # "digitalPenClass":Ljava/lang/Class;
    .end local v85    # "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    :cond_40
    :goto_52
    :try_start_78
    const-string v6, "SystemServer"

    const-string v7, "MiniModeAppManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    sget-object v6, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v6}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v110

    .line 1883
    .local v110, "instructionSet":Ljava/lang/String;
    new-instance v56, Ldalvik/system/DexClassLoader;

    const-string v6, "/system/framework/minimode.jar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/dalvik-cache/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v110

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object/from16 v0, v56

    invoke-direct {v0, v6, v7, v10, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1885
    .restart local v56    # "cl":Ljava/lang/ClassLoader;
    const-string v6, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v37

    .line 1886
    .local v37, "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v38

    .line 1887
    .local v38, "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    const-string v7, "mini_mode_app_manager"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_48

    .line 1896
    .end local v37    # "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    .end local v38    # "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    .end local v56    # "cl":Ljava/lang/ClassLoader;
    .end local v110    # "instructionSet":Ljava/lang/String;
    :goto_53
    :try_start_79
    const-string v6, "SystemServer"

    const-string v7, "VoIPInterfaceManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    const-string/jumbo v6, "voip"

    new-instance v7, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v7, v5}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_49

    .line 1904
    .end local v39    # "SecEDSEnable":Ljava/lang/String;
    .end local v113    # "isWipowerEnabled":Z
    :goto_54
    if-nez v92, :cond_41

    .line 1905
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1909
    :cond_41
    invoke-static {}, Lcom/samsung/appdisabler/AppDisablerService;->configurationFileExists()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 1911
    :try_start_7a
    new-instance v44, Lcom/samsung/appdisabler/AppDisablerService;

    move-object/from16 v0, v44

    invoke-direct {v0, v5}, Lcom/samsung/appdisabler/AppDisablerService;-><init>(Landroid/content/Context;)V

    .line 1912
    .local v44, "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    const-string v6, "SamsungAppDisabler"

    move-object/from16 v0, v44

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_4a

    .line 1921
    .end local v44    # "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    :cond_42
    :goto_55
    :try_start_7b
    const-string v6, "SystemServer"

    const-string v7, "Lpnet Manager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    const-string v6, "lpnet"

    new-instance v7, Lcom/android/server/LpnetManagerService;

    invoke-direct {v7, v5}, Lcom/android/server/LpnetManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7b} :catch_4b

    .line 1931
    :goto_56
    invoke-virtual/range {v181 .. v181}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v36

    .line 1932
    .local v36, "safeMode":Z
    if-eqz v36, :cond_4c

    .line 1933
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1935
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1942
    :goto_57
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v130

    .end local v130    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v130, Lcom/android/server/MmsServiceBroker;

    .line 1962
    .restart local v130    # "mmsService":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    move-object/from16 v6, v181

    move-object/from16 v7, v174

    invoke-static {v0, v6, v7}, Lcom/android/server/SystemServer$FlymeInjector;->startFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    :try_start_7c
    invoke-virtual/range {v170 .. v170}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7c} :catch_4c

    .line 1967
    :goto_58
    if-eqz v117, :cond_43

    .line 1969
    :try_start_7d
    invoke-virtual/range {v117 .. v117}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_7d} :catch_4d

    .line 1976
    :cond_43
    :goto_59
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1e0

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1978
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1981
    if-eqz v100, :cond_44

    .line 1982
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 1983
    const-string v6, "SystemServer"

    const-string v7, "enterprisePolicy systemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    :cond_44
    :try_start_7e
    invoke-virtual/range {v181 .. v181}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_7e} :catch_4e

    .line 1993
    :goto_5a
    if-eqz v36, :cond_45

    .line 1994
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 2000
    :cond_45
    invoke-virtual/range {v181 .. v181}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v64

    .line 2001
    .local v64, "config":Landroid/content/res/Configuration;
    new-instance v129, Landroid/util/DisplayMetrics;

    invoke-direct/range {v129 .. v129}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2002
    .local v129, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v173

    check-cast v173, Landroid/view/WindowManager;

    .line 2003
    .local v173, "w":Landroid/view/WindowManager;
    invoke-interface/range {v173 .. v173}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, v129

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2004
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, v64

    move-object/from16 v1, v129

    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2008
    :try_start_7f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_7f} :catch_4f

    .line 2015
    :goto_5b
    :try_start_80
    const-string v6, "SystemServer"

    const-string v7, "LightsService systemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mLightsService:Lcom/android/server/lights/LightsService;

    invoke-virtual {v6}, Lcom/android/server/lights/LightsService;->systemReady()V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_80} :catch_50

    .line 2022
    :goto_5c
    :try_start_81
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_81} :catch_51

    .line 2029
    :goto_5d
    :try_start_82
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v36

    invoke-virtual {v6, v0, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_82} :catch_52

    .line 2035
    :goto_5e
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v169

    .line 2036
    .restart local v169    # "versionInfo":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    move-object/from16 v0, v169

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 2038
    :try_start_83
    invoke-virtual/range {v121 .. v121}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_83} :catch_53

    .line 2045
    :cond_46
    :goto_5f
    :try_start_84
    invoke-virtual/range {v148 .. v148}, Lcom/android/server/SdpManagerService;->systemReady()V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_84} :catch_54

    :goto_60
    move-object/from16 v13, v133

    .local v13, "mountServiceF":Lcom/android/server/MountService;
    move-object v15, v9

    .local v15, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v16, v8

    .local v16, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v17, v4

    .local v17, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v18, v65

    .local v18, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v14, v136

    .local v14, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v20, v174

    .local v20, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v21, v106

    .local v21, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v23, v115

    .local v23, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v24, v146

    .local v24, "sLocationF":Landroid/os/IBinder;
    move-object/from16 v25, v74

    .local v25, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v26, v139

    .local v26, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v27, v62

    .local v27, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v28, v166

    .local v28, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v22, v154

    .local v22, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v29, v172

    .local v29, "vrManagerF":Ljava/lang/Object;
    move-object/from16 v30, v46

    .local v30, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v31, v108

    .local v31, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v32, v157

    .local v32, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v33, v127

    .local v33, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v19, v48

    .local v19, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v131, v130

    .local v131, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v34, v76

    .local v34, "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v35, v61

    .local v35, "cocktailBarF":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v10, Lcom/android/server/SystemServer$2;

    move-object/from16 v11, p0

    move-object v12, v5

    invoke-direct/range {v10 .. v36}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/VRManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/cover/CoverManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService;Z)V

    invoke-virtual {v6, v10}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 2266
    return-void

    .line 1067
    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v13    # "mountServiceF":Lcom/android/server/MountService;
    .end local v14    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v15    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v16    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v17    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v18    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v19    # "audioServiceF":Landroid/media/AudioService;
    .end local v20    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v21    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v22    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v23    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v24    # "sLocationF":Landroid/os/IBinder;
    .end local v25    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v26    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v27    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v28    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v29    # "vrManagerF":Ljava/lang/Object;
    .end local v30    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v31    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v32    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v33    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v34    # "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    .end local v35    # "cocktailBarF":Ljava/lang/Object;
    .end local v36    # "safeMode":Z
    .end local v64    # "config":Landroid/content/res/Configuration;
    .end local v129    # "metrics":Landroid/util/DisplayMetrics;
    .end local v131    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v169    # "versionInfo":Landroid/os/Bundle;
    .end local v173    # "w":Landroid/view/WindowManager;
    .restart local v135    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catch_18
    move-exception v96

    .line 1068
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "Failure starting FM Radio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1083
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v96

    .line 1084
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_61
    const-string/jumbo v6, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 1095
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v96

    .line 1096
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1117
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v96

    .line 1118
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_62
    const-string/jumbo v6, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1136
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v96

    .line 1137
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_63
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Harmony EAS service"

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 1146
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v96

    .line 1147
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_64
    const-string/jumbo v6, "unable to start SdpManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1158
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v96

    .line 1159
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_65
    const-string v6, "SystemServer"

    const-string v7, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 1169
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v96

    .line 1170
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_66
    const-string/jumbo v6, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1179
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v96

    .line 1180
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1190
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v96

    .line 1191
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1201
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v96

    .line 1202
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1214
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v96

    .line 1215
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Absolute Persistence Service"

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 1224
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v96

    .line 1225
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_67
    const-string/jumbo v6, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1234
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v96

    .line 1235
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_68
    const-string/jumbo v6, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1242
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v96

    .line 1243
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_69
    const-string/jumbo v6, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1253
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v96

    move-object/from16 v4, v135

    .line 1254
    .end local v135    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_6a
    const-string/jumbo v6, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1268
    .end local v96    # "e":Ljava/lang/Throwable;
    :cond_47
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto/16 :goto_32

    .line 1279
    :catch_28
    move-exception v96

    .line 1280
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_6b
    const-string/jumbo v6, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1294
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v96

    .line 1295
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SmartBondingService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1372
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v96

    .line 1373
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 1378
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v96

    .line 1379
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 1388
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v96

    .line 1389
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 1407
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v96

    .line 1408
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1414
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v96

    .line 1415
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 1431
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v96

    .line 1432
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_6c
    const-string/jumbo v6, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1439
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v96

    .line 1440
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_6d
    const-string/jumbo v6, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 1479
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v96

    .line 1480
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 1488
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v96

    .line 1489
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1497
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v96

    .line 1498
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 1507
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v96

    .line 1508
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_6e
    const-string/jumbo v6, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 1517
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v96

    .line 1518
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_6f
    const-string/jumbo v6, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 1532
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v96

    .line 1533
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 1550
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v96

    .line 1551
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_70
    const-string v6, "SystemServer"

    const-string v7, "Failure starting SerialService"

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42

    .line 1562
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_38
    move-exception v96

    .line 1563
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1601
    .end local v96    # "e":Ljava/lang/Throwable;
    .restart local v39    # "SecEDSEnable":Ljava/lang/String;
    .restart local v97    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_48
    :try_start_85
    const-string v6, "SystemServer"

    const-string v7, "edsclass Service exist"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Class;

    move-object/from16 v45, v0

    .line 1603
    .local v45, "arg":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v45, v6

    .line 1604
    move-object/from16 v0, v97

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v67

    .line 1605
    .local v67, "constructor":Ljava/lang/reflect/Constructor;

    goto/16 :goto_44

    .line 1607
    .end local v45    # "arg":[Ljava/lang/Class;
    .end local v67    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v97    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_39
    move-exception v96

    .line 1608
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting eds Service"

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_44

    .line 1615
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v96

    .line 1616
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1637
    .end local v96    # "e":Ljava/lang/Throwable;
    .restart local v125    # "mdnieClass":Ljava/lang/Class;
    :cond_49
    const/4 v6, 0x1

    :try_start_86
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v7

    move-object/from16 v0, v125

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v67

    .line 1638
    .restart local v67    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    move-object/from16 v0, v67

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v126

    check-cast v126, Landroid/os/IBinder;

    .line 1639
    .local v126, "mdnieService":Landroid/os/IBinder;
    const-string v6, "mDNIe"

    move-object/from16 v0, v126

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_86} :catch_3b

    goto/16 :goto_46

    .line 1641
    .end local v67    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v125    # "mdnieClass":Ljava/lang/Class;
    .end local v126    # "mdnieService":Landroid/os/IBinder;
    :catch_3b
    move-exception v96

    .line 1642
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "Failed To Start Mdnie Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1670
    .end local v96    # "e":Ljava/lang/Throwable;
    .restart local v142    # "pM":Landroid/content/pm/PackageManager;
    :cond_4a
    :try_start_87
    const-string v6, "SystemServer"

    const-string v7, "Failed to start SpenGestureManagerService : PackageManager is null!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_87} :catch_3c

    goto/16 :goto_47

    .line 1672
    .end local v142    # "pM":Landroid/content/pm/PackageManager;
    :catch_3c
    move-exception v96

    .line 1673
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SpenGestureManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1694
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_3d
    move-exception v96

    .line 1695
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_71
    const-string/jumbo v6, "starting QuickConnect Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1706
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_3e
    move-exception v96

    .line 1707
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1714
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_3f
    move-exception v96

    .line 1715
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1732
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_40
    move-exception v96

    .line 1733
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_72
    const-string/jumbo v6, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1741
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_41
    move-exception v96

    .line 1742
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 1756
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_42
    move-exception v96

    .line 1757
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_73
    const-string/jumbo v6, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 1782
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_43
    move-exception v96

    .line 1783
    .restart local v96    # "e":Ljava/lang/Throwable;
    :goto_74
    const-string/jumbo v6, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .line 1793
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_44
    move-exception v96

    .line 1794
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 1804
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_45
    move-exception v96

    .line 1805
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting BackgroundCompactionService"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50

    .line 1853
    .end local v96    # "e":Ljava/lang/Throwable;
    .restart local v113    # "isWipowerEnabled":Z
    :catch_46
    move-exception v96

    .line 1854
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting WipowerBatteryControl Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .line 1857
    .end local v96    # "e":Ljava/lang/Throwable;
    :cond_4b
    const-string v6, "SystemServer"

    const-string v7, "Wipower not supported"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    .line 1872
    :catch_47
    move-exception v96

    .line 1873
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting DigitalPenService"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 1889
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_48
    move-exception v96

    .line 1890
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_53

    .line 1898
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_49
    move-exception v96

    .line 1899
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_54

    .line 1913
    .end local v39    # "SecEDSEnable":Ljava/lang/String;
    .end local v96    # "e":Ljava/lang/Throwable;
    .end local v113    # "isWipowerEnabled":Z
    :catch_4a
    move-exception v96

    .line 1914
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "Failure starting SamsungAppDisablerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    .line 1923
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_4b
    move-exception v96

    .line 1924
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "Failure starting Lpnet Manager Service "

    move-object/from16 v0, v96

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_56

    .line 1938
    .end local v96    # "e":Ljava/lang/Throwable;
    .restart local v36    # "safeMode":Z
    :cond_4c
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_57

    .line 1963
    :catch_4c
    move-exception v96

    .line 1964
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58

    .line 1970
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_4d
    move-exception v96

    .line 1971
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_59

    .line 1989
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_4e
    move-exception v96

    .line 1990
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5a

    .line 2009
    .end local v96    # "e":Ljava/lang/Throwable;
    .restart local v64    # "config":Landroid/content/res/Configuration;
    .restart local v129    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v173    # "w":Landroid/view/WindowManager;
    :catch_4f
    move-exception v96

    .line 2010
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5b

    .line 2017
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_50
    move-exception v96

    .line 2018
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "making Lights Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5c

    .line 2023
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_51
    move-exception v96

    .line 2024
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5d

    .line 2030
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_52
    move-exception v96

    .line 2031
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5e

    .line 2039
    .end local v96    # "e":Ljava/lang/Throwable;
    .restart local v169    # "versionInfo":Landroid/os/Bundle;
    :catch_53
    move-exception v96

    .line 2040
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5f

    .line 2046
    .end local v96    # "e":Ljava/lang/Throwable;
    :catch_54
    move-exception v96

    .line 2047
    .restart local v96    # "e":Ljava/lang/Throwable;
    const-string v6, "making Sdp manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v6, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_60

    .line 1782
    .end local v36    # "safeMode":Z
    .end local v64    # "config":Landroid/content/res/Configuration;
    .end local v96    # "e":Ljava/lang/Throwable;
    .end local v127    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v129    # "metrics":Landroid/util/DisplayMetrics;
    .end local v169    # "versionInfo":Landroid/os/Bundle;
    .end local v173    # "w":Landroid/view/WindowManager;
    .restart local v39    # "SecEDSEnable":Ljava/lang/String;
    .restart local v128    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_55
    move-exception v96

    move-object/from16 v127, v128

    .end local v128    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v127    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_74

    .line 1756
    .end local v46    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v47    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_56
    move-exception v96

    move-object/from16 v46, v47

    .end local v47    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v46    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_73

    .line 1732
    .end local v62    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v63    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_57
    move-exception v96

    move-object/from16 v62, v63

    .end local v63    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v62    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_72

    .line 1694
    .end local v144    # "quickconnect":Lcom/android/server/QuickConnectService;
    .restart local v145    # "quickconnect":Lcom/android/server/QuickConnectService;
    :catch_58
    move-exception v96

    move-object/from16 v144, v145

    .end local v145    # "quickconnect":Lcom/android/server/QuickConnectService;
    .restart local v144    # "quickconnect":Lcom/android/server/QuickConnectService;
    goto/16 :goto_71

    .line 1550
    .end local v39    # "SecEDSEnable":Ljava/lang/String;
    .end local v150    # "serial":Lcom/android/server/SerialService;
    .restart local v151    # "serial":Lcom/android/server/SerialService;
    :catch_59
    move-exception v96

    move-object/from16 v150, v151

    .end local v151    # "serial":Lcom/android/server/SerialService;
    .restart local v150    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_70

    .line 1517
    .end local v48    # "audioService":Landroid/media/AudioService;
    .restart local v49    # "audioService":Landroid/media/AudioService;
    :catch_5a
    move-exception v96

    move-object/from16 v48, v49

    .end local v49    # "audioService":Landroid/media/AudioService;
    .restart local v48    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_6f

    .line 1507
    .end local v174    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v175    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_5b
    move-exception v96

    move-object/from16 v174, v175

    .end local v175    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v174    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_6e

    .line 1439
    .end local v74    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v75    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_5c
    move-exception v96

    move-object/from16 v74, v75

    .end local v75    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v74    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_6d

    .line 1431
    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .restart local v116    # "location":Lcom/android/server/LocationManagerService;
    :catch_5d
    move-exception v96

    move-object/from16 v115, v116

    .end local v116    # "location":Lcom/android/server/LocationManagerService;
    .restart local v115    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_6c

    .line 1279
    .end local v65    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v66    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_5e
    move-exception v96

    move-object/from16 v65, v66

    .end local v66    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v65    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_6b

    .line 1253
    :catch_5f
    move-exception v96

    goto/16 :goto_6a

    .line 1242
    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v135    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v138    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_60
    move-exception v96

    move-object/from16 v8, v138

    .end local v138    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v8    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_69

    .line 1234
    .end local v136    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v137    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_61
    move-exception v96

    move-object/from16 v136, v137

    .end local v137    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v136    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_68

    .line 1224
    .end local v166    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v167    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_62
    move-exception v96

    move-object/from16 v166, v167

    .end local v167    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v166    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_67

    .line 1169
    .end local v154    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v155    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_63
    move-exception v96

    move-object/from16 v154, v155

    .end local v155    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v154    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_66

    .line 1158
    .end local v100    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v101    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_64
    move-exception v96

    move-object/from16 v100, v101

    .end local v101    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v100    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_65

    .line 1146
    .end local v148    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v149    # "sdpService":Lcom/android/server/SdpManagerService;
    :catch_65
    move-exception v96

    move-object/from16 v148, v149

    .end local v149    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v148    # "sdpService":Lcom/android/server/SdpManagerService;
    goto/16 :goto_64

    .line 1136
    .end local v119    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v120    # "mHMS":Lcom/android/server/HarmonyEASService;
    :catch_66
    move-exception v96

    move-object/from16 v119, v120

    .end local v120    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v119    # "mHMS":Lcom/android/server/HarmonyEASService;
    goto/16 :goto_63

    .line 1117
    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v118    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_67
    move-exception v96

    move-object/from16 v117, v118

    .end local v118    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_62

    .line 1083
    .end local v133    # "mountService":Lcom/android/server/MountService;
    .restart local v134    # "mountService":Lcom/android/server/MountService;
    :catch_68
    move-exception v96

    move-object/from16 v133, v134

    .end local v134    # "mountService":Lcom/android/server/MountService;
    .restart local v133    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_61

    .line 1041
    .end local v76    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v77    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v78    # "cryptState":Ljava/lang/String;
    .restart local v143    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_69
    move-exception v96

    move-object/from16 v76, v77

    .end local v77    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v76    # "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_21

    .line 1004
    .end local v76    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v78    # "cryptState":Ljava/lang/String;
    .end local v143    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_6a
    move-exception v6

    goto/16 :goto_18

    .line 973
    .end local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v107    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_6b
    move-exception v96

    move-object/from16 v106, v107

    .end local v107    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_20

    .line 937
    .end local v46    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v61    # "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .end local v74    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v100    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v127    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v141    # "notification":Landroid/app/INotificationManager;
    .end local v146    # "sLocation":Landroid/os/IBinder;
    .end local v154    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v166    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v172    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v174    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_6c
    move-exception v96

    goto/16 :goto_1c

    .end local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "versionInfo":Landroid/os/Bundle;
    :catch_6d
    move-exception v96

    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v41, v42

    .end local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_1c

    .end local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v81    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v122    # "mProductName":Ljava/lang/String;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_6e
    move-exception v96

    move-object/from16 v80, v81

    .end local v81    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_1c

    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v162    # "timaService":Lcom/android/server/TimaService;
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "timaEnabled":Z
    .restart local v163    # "timaService":Lcom/android/server/TimaService;
    .restart local v171    # "vibrator":Lcom/android/server/VibratorService;
    :catch_6f
    move-exception v96

    move-object/from16 v162, v163

    .end local v163    # "timaService":Lcom/android/server/TimaService;
    .restart local v162    # "timaService":Lcom/android/server/TimaService;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v170, v171

    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_1c

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v99    # "enabledMDM":Z
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v171    # "vibrator":Lcom/android/server/VibratorService;
    :catch_70
    move-exception v96

    move-object/from16 v71, v72

    .end local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v170, v171

    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_1c

    .end local v51    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v52    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v156    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v171    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v176    # "watchdog":Lcom/android/server/Watchdog;
    :catch_71
    move-exception v96

    move-object/from16 v71, v72

    .end local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v108, v109

    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v51, v52

    .end local v52    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v51    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v170, v171

    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_1c

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v171    # "vibrator":Lcom/android/server/VibratorService;
    :catch_72
    move-exception v96

    move-object/from16 v123, v124

    .end local v124    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    move-object/from16 v71, v72

    .end local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v157, v158

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v108, v109

    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v170, v171

    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_1c

    .line 929
    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v170    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v124    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v171    # "vibrator":Lcom/android/server/VibratorService;
    :catch_73
    move-exception v96

    move-object/from16 v123, v124

    .end local v124    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    goto/16 :goto_1f

    .line 743
    .end local v72    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v99    # "enabledMDM":Z
    .end local v109    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v156    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .end local v162    # "timaService":Lcom/android/server/TimaService;
    .end local v176    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v163    # "timaService":Lcom/android/server/TimaService;
    :catch_74
    move-exception v96

    move-object/from16 v162, v163

    .end local v163    # "timaService":Lcom/android/server/TimaService;
    .restart local v162    # "timaService":Lcom/android/server/TimaService;
    goto/16 :goto_1e

    .line 668
    .end local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v122    # "mProductName":Ljava/lang/String;
    .end local v159    # "timaEnabled":Z
    .end local v171    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v170    # "vibrator":Lcom/android/server/VibratorService;
    :catch_75
    move-exception v96

    move-object/from16 v41, v42

    .end local v42    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_1d

    .end local v158    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v169    # "versionInfo":Landroid/os/Bundle;
    .restart local v46    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v61    # "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .restart local v74    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v76    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v100    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v115    # "location":Lcom/android/server/LocationManagerService;
    .restart local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v127    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v141    # "notification":Landroid/app/INotificationManager;
    .restart local v146    # "sLocation":Landroid/os/IBinder;
    .restart local v154    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v157    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v166    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v172    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v174    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_4d
    move-object/from16 v4, v135

    .end local v135    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_36

    .end local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v135    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_4e
    move-object/from16 v4, v135

    .end local v135    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_54
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2269
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2270
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2273
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2274
    return-void
.end method

.method getPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method getSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method

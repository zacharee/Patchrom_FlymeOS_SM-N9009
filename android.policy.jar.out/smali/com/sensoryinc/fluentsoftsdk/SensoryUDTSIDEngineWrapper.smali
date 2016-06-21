.class public Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;
.super Ljava/lang/Object;
.source "SensoryUDTSIDEngineWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SensoryUDTSIDEngineWrapper"

.field private static uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized InitInstance()V
    .locals 3

    .prologue
    .line 48
    const-class v1, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;

    monitor-enter v1

    :try_start_0
    const-string v0, "SensoryUDTSIDEngineWrapper"

    const-string v2, "InitInstance() : initialize SensoryUDTSIDEngine"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v1

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;
    .locals 5

    .prologue
    .line 15
    const-class v3, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-nez v2, :cond_1

    .line 17
    const-string v2, "SensoryUDTSIDEngineWrapper"

    const-string v4, "getInstance() : make new SensoryUDTSIDEngine"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->init()I

    move-result v2

    if-nez v2, :cond_0

    .line 21
    new-instance v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-direct {v2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;-><init>()V

    sput-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->GetVersion()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "strVersion":Ljava/lang/String;
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v2, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->SetVersion(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v2

    .line 28
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :try_start_3
    const-string v2, "SensoryUDTSIDEngineWrapper"

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 15
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 32
    :catch_1
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "strVersion":Ljava/lang/String;
    :cond_1
    const-string v2, "SensoryUDTSIDEngineWrapper"

    const-string v4, "getInstance() : get existed SensoryUDTSIDEngine"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

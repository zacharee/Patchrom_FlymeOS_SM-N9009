.class public final Lcom/android/server/ReactiveService;
.super Lcom/samsung/android/service/reactive/IReactiveService$Stub;
.source "ReactiveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ReactiveService$AtCmdHandlingProcess;
    }
.end annotation


# static fields
.field private static final CONNECT_AT_DISTRIBUTOR:I = 0x0

.field private static final CONNECT_DATA_DISTRIBUTOR:I = 0x1

.field private static final FLAG_ACTIVATED:I = 0x1

.field private static final FLAG_DEACTIVATED:I = 0x0

.field private static final FLAG_TRIGGERED:I = 0x2

.field private static final JIG_STATE:Ljava/lang/String; = "SWITCH_NAME"

.field private static final REACTIVATION_FLAG:I = 0x0

.field private static final REACTIVE_SERVICE_OPERATION_FAILED:I = -0x6

.field private static final REACTIVE_SERVICE_RETURN_FLAG_IS_NOT_EXIST:I = -0x3

.field private static final REACTIVE_SERVICE_RETURN_NATIVE_ERROR:I = -0x1

.field private static final REACTIVE_SERVICE_RETURN_NO_ERROR:I = 0x0

.field private static final REACTIVE_SERVICE_RETURN_PERMISSION_DENIED:I = -0x5

.field private static final REACTIVE_SERVICE_RETURN_STRING_IS_NOT_EXIST:I = -0x4

.field private static final REACTIVE_SERVICE_RETURN_UNSUPPORTED_OPERATION:I = -0x2

.field private static final SERVICE_FLAG:I = 0x1

.field private static final SERVICE_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field private static final SERVICE_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final SERVICE_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveService"

.field private static mContext:Landroid/content/Context;

.field private static final mLock:Ljava/lang/Object;

.field private static final mLockUEvent:Ljava/lang/Object;


# instance fields
.field private mErrorCode:I

.field private mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

.field private mServiceSupport:I

.field private mThreadUart:Ljava/lang/Thread;

.field private mThreadUartGoWait:Z

.field private mThreadUsb:Ljava/lang/Thread;

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ReactiveService;->mLockUEvent:Ljava/lang/Object;

    .line 116
    const-string/jumbo v0, "terrier"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;-><init>()V

    .line 112
    iput-boolean v3, p0, Lcom/android/server/ReactiveService;->mThreadUartGoWait:Z

    .line 161
    new-instance v0, Lcom/android/server/ReactiveService$1;

    invoke-direct {v0, p0}, Lcom/android/server/ReactiveService$1;-><init>(Lcom/android/server/ReactiveService;)V

    iput-object v0, p0, Lcom/android/server/ReactiveService;->mUEventObserver:Landroid/os/UEventObserver;

    .line 137
    sput-object p1, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    .line 138
    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 140
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->Init()V

    .line 142
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->GetSystemSolution()I

    move-result v0

    iput v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    .line 145
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 146
    sget-object v0, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v0, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ReactiveService$AtCmdHandlingProcess;

    invoke-direct {v1, p0, v2}, Lcom/android/server/ReactiveService$AtCmdHandlingProcess;-><init>(Lcom/android/server/ReactiveService;I)V

    const-string v2, "ReactiveServiceAt"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ReactiveService;->mThreadUart:Ljava/lang/Thread;

    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ReactiveService$AtCmdHandlingProcess;

    invoke-direct {v1, p0, v3}, Lcom/android/server/ReactiveService$AtCmdHandlingProcess;-><init>(Lcom/android/server/ReactiveService;I)V

    const-string v2, "ReactiveServiceData"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ReactiveService;->mThreadUsb:Ljava/lang/Thread;

    .line 151
    iget-object v0, p0, Lcom/android/server/ReactiveService;->mThreadUart:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 152
    iget-object v0, p0, Lcom/android/server/ReactiveService;->mThreadUsb:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 155
    iget-object v0, p0, Lcom/android/server/ReactiveService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "SWITCH_NAME"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private native FinishedSetupWizard()Z
.end method

.method private native GetFlag(I)I
.end method

.method private native GetString()Ljava/lang/String;
.end method

.method private native GetSystemSolution()I
.end method

.method private native HasPermission(Ljava/lang/String;I)Z
.end method

.method private native Init()V
.end method

.method private native RemoveString()I
.end method

.method private native SessionAccept([B)[B
.end method

.method private native SessionComplete([B)I
.end method

.method private native SetFlag(IILjava/lang/String;)I
.end method

.method private native SetString(Ljava/lang/String;)I
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/server/ReactiveService;->mLockUEvent:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ReactiveService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ReactiveService;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/server/ReactiveService;->mThreadUartGoWait:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/ReactiveService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ReactiveService;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/server/ReactiveService;->mThreadUartGoWait:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/ReactiveService;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ReactiveService;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/ReactiveService;->mThreadUart:Ljava/lang/Thread;

    return-object v0
.end method

.method private hasPermission(II)Z
    .locals 8
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I

    .prologue
    .line 209
    const-string v1, ""

    .line 211
    .local v1, "currentPkgName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 213
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 214
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    .line 215
    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 220
    .end local v3    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/server/ReactiveService;->HasPermission(Ljava/lang/String;I)Z

    move-result v4

    .line 222
    .local v4, "ret":Z
    if-eqz v4, :cond_2

    .line 223
    const-string v5, "ReactiveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested package name = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_0
    return v4

    .line 225
    :cond_2
    const-string v5, "ReactiveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission denied. Package name = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], UID = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0
.end method

.method public getFlag(I)I
    .locals 11
    .param p1, "flag"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 257
    iget v8, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v8, :cond_1

    .line 259
    const/4 v7, -0x2

    iput v7, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 260
    iget v6, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 335
    :cond_0
    :goto_0
    return v6

    .line 263
    :cond_1
    if-ltz p1, :cond_2

    if-le p1, v6, :cond_3

    .line 264
    :cond_2
    const/4 v6, -0x3

    goto :goto_0

    .line 266
    :cond_3
    iget v8, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-ne v8, v9, :cond_5

    if-nez p1, :cond_5

    .line 290
    const/4 v5, 0x0

    .line 291
    .local v5, "oemUnlock":Z
    const/4 v2, 0x0

    .line 294
    .local v2, "challengeSize":I
    const/16 v0, 0x24

    .line 296
    .local v0, "CHALLENGE_START_POS":I
    :try_start_0
    iget-object v8, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v8}, Landroid/service/persistentdata/PersistentDataBlockManager;->read()[B

    move-result-object v8

    const/16 v9, 0x24

    const/16 v10, 0x28

    invoke-static {v8, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 299
    .local v3, "challengeSizeArray":[B
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 300
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 302
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 304
    iget-object v8, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v8}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 313
    if-lez v2, :cond_4

    if-nez v5, :cond_4

    .line 315
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->FinishedSetupWizard()Z

    move-result v7

    if-nez v7, :cond_0

    .line 318
    const/4 v6, 0x2

    goto :goto_0

    .line 306
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "challengeSizeArray":[B
    :catch_0
    move-exception v4

    .line 307
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    const/4 v7, -0x6

    iput v7, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 309
    iget v6, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    .restart local v3    # "challengeSizeArray":[B
    :cond_4
    move v6, v7

    .line 321
    goto :goto_0

    .line 324
    .end local v0    # "CHALLENGE_START_POS":I
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "challengeSize":I
    .end local v3    # "challengeSizeArray":[B
    .end local v5    # "oemUnlock":Z
    :cond_5
    sget-object v8, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 325
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->GetFlag(I)I

    move-result v6

    .line 326
    .local v6, "ret":I
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    if-gez v6, :cond_6

    .line 329
    iput v6, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 333
    :goto_1
    const-string v7, "ReactiveService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFlag() : flag=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], ret=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 326
    .end local v6    # "ret":I
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 331
    .restart local v6    # "ret":I
    :cond_6
    iput v7, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_1
.end method

.method public getServiceSupport()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 409
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_1

    .line 411
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 412
    const/4 v0, 0x0

    .line 422
    :cond_0
    :goto_0
    return-object v0

    .line 415
    :cond_1
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 416
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->GetString()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "ret":Ljava/lang/String;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    if-nez v0, :cond_0

    .line 420
    const/4 v1, -0x4

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .line 417
    .end local v0    # "ret":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeString()I
    .locals 3

    .prologue
    .line 472
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_1

    .line 474
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 475
    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 491
    :cond_0
    :goto_0
    return v0

    .line 478
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 480
    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 481
    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .line 484
    :cond_2
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 485
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->RemoveString()I

    move-result v0

    .line 486
    .local v0, "ret":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    if-eqz v0, :cond_0

    .line 489
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .line 486
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public sessionAccept([B)[B
    .locals 5
    .param p1, "input"    # [B

    .prologue
    .line 506
    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v2, :cond_1

    .line 508
    const/4 v2, -0x2

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 509
    const/4 v1, 0x0

    .line 526
    :cond_0
    :goto_0
    return-object v1

    .line 512
    :cond_1
    sget-object v3, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 514
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->SessionAccept([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 521
    .local v1, "ret":[B
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    if-nez v1, :cond_0

    .line 524
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .line 516
    .end local v1    # "ret":[B
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 519
    .restart local v1    # "ret":[B
    :try_start_2
    const-string v2, "ReactiveService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 521
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ret":[B
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public sessionComplete([B)I
    .locals 5
    .param p1, "input"    # [B

    .prologue
    .line 540
    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v2, :cond_0

    .line 542
    const/4 v2, -0x2

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 543
    iget v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 571
    :goto_0
    return v1

    .line 548
    :cond_0
    sget-object v3, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 550
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->SessionComplete([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 557
    .local v1, "ret":I
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_1

    .line 562
    :try_start_2
    iget-object v2, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v2}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 569
    :cond_1
    :goto_2
    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .line 552
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 555
    .restart local v1    # "ret":I
    :try_start_3
    const-string v2, "ReactiveService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 557
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ret":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 564
    .restart local v1    # "ret":I
    :catch_1
    move-exception v0

    .line 565
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public setFlag(IILjava/lang/String;)I
    .locals 4
    .param p1, "flag"    # I
    .param p2, "value"    # I
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x2

    .line 354
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    packed-switch v1, :pswitch_data_0

    .line 375
    :pswitch_0
    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 376
    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 395
    :goto_0
    return v0

    .line 358
    :pswitch_1
    if-ltz p1, :cond_0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    .line 360
    :cond_0
    const/4 v1, -0x3

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 361
    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .line 366
    :pswitch_2
    if-nez p1, :cond_1

    .line 368
    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 369
    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .line 379
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 381
    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 382
    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .line 385
    :cond_2
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 386
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ReactiveService;->SetFlag(IILjava/lang/String;)I

    move-result v0

    .line 387
    .local v0, "ret":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    if-gez v0, :cond_3

    .line 390
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 394
    :goto_1
    const-string v1, "ReactiveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFlag() : flag=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], value=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ret=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 392
    .restart local v0    # "ret":I
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_1

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setString(Ljava/lang/String;)I
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 438
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_1

    .line 440
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 441
    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 457
    :cond_0
    :goto_0
    return v0

    .line 444
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 446
    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 447
    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .line 450
    :cond_2
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 451
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->SetString(Ljava/lang/String;)I

    move-result v0

    .line 452
    .local v0, "ret":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    if-eqz v0, :cond_0

    .line 455
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    .line 452
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

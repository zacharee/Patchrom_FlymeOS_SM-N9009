.class public Lcom/android/server/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;,
        Lcom/android/server/fingerprint/FingerprintService$ClientData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MSG_NOTIFY:I = 0xa

.field private static final MS_PER_SEC:J = 0x3e8L

.field private static final STATE_AUTHENTICATING:I = 0x1

.field private static final STATE_ENROLLING:I = 0x2

.field private static final STATE_IDLE:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/fingerprint/FingerprintService$ClientData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHal:J

.field mHandler:Landroid/os/Handler;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 59
    const-string v0, "FingerprintService"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    .line 65
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    .line 120
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p0, p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeInit(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->throwIfNoFingerprint()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/FingerprintService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHal:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/fingerprint/FingerprintService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method private enforceCrossUserPermission(ILjava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    return-void
.end method

.method private getCurrentUserId()I
    .locals 3

    .prologue
    .line 427
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 429
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 431
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private mergeAndUpdateSettingsFingerprints(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .locals 9
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, "nativeFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .local p2, "settingsFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v3, "mergedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v6, "nativeFingerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 362
    .local v0, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 365
    .end local v0    # "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    :cond_0
    const/4 v4, 0x0

    .line 366
    .local v4, "modifiedSettingsFingers":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 367
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/fingerprint/Fingerprint;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 368
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    .line 369
    .local v7, "settingsFinger":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/Fingerprint;

    .line 370
    .local v5, "nativeFinger":Landroid/hardware/fingerprint/Fingerprint;
    if-nez v5, :cond_1

    .line 372
    invoke-interface {p2, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 373
    const/4 v4, 0x1

    goto :goto_1

    .line 376
    :cond_1
    invoke-static {v5, v7}, Lcom/android/server/fingerprint/FingerprintService;->mergeFingerprint(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/Fingerprint;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 383
    .end local v5    # "nativeFinger":Landroid/hardware/fingerprint/Fingerprint;
    .end local v7    # "settingsFinger":Landroid/hardware/fingerprint/Fingerprint;
    :cond_2
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/Fingerprint;

    .line 384
    .restart local v5    # "nativeFinger":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/fingerprint/FingerprintService;->nativeRemove(I)I

    goto :goto_2

    .line 388
    .end local v5    # "nativeFinger":Landroid/hardware/fingerprint/Fingerprint;
    :cond_3
    if-eqz v4, :cond_4

    .line 389
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {p2, v8, p3}, Landroid/service/fingerprint/FingerprintUtils;->saveFingerprints(Ljava/util/List;Landroid/content/ContentResolver;I)V

    .line 393
    :cond_4
    return-object v3
.end method

.method private static mergeFingerprint(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/Fingerprint;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 2
    .param p0, "nativeFinger"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p1, "settingsFinger"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 398
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint$Builder;

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/Fingerprint$Builder;-><init>(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 399
    .local v0, "builder":Landroid/hardware/fingerprint/Fingerprint$Builder;
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/Fingerprint$Builder;->name(Ljava/lang/String;)Landroid/hardware/fingerprint/Fingerprint$Builder;

    .line 400
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint$Builder;->build()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    return-object v1
.end method

.method private throwIfNoFingerprint()V
    .locals 4

    .prologue
    .line 436
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Fingerprint sensor not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_0
    return-void
.end method


# virtual methods
.method addListener(Landroid/os/IBinder;Landroid/service/fingerprint/IFingerprintServiceReceiver;I)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "receiver"    # Landroid/service/fingerprint/IFingerprintServiceReceiver;
    .param p3, "userId"    # I

    .prologue
    .line 298
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startListening("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 300
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/fingerprint/FingerprintService$ClientData;-><init>(Lcom/android/server/fingerprint/FingerprintService$1;)V

    .line 301
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    iput-object p2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    .line 302
    iput p3, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    .line 303
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    invoke-direct {v2, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;)V

    iput-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    .line 305
    :try_start_0
    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 306
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v0    # "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    :goto_0
    return-void

    .line 307
    .restart local v0    # "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "caught remote exception in linkToDeath: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 311
    .end local v0    # "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listener already registered for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method checkPermission()V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINGERPRINT_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public getEnrolledFingerprints(Landroid/os/IBinder;I)Ljava/util/List;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " trying to add account for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4}, Lcom/android/server/fingerprint/FingerprintService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 336
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    if-eq p2, v4, :cond_0

    .line 337
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Getting a userId for a different user than current is not supported"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeGetEnrollments()[Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v2

    .line 342
    .local v2, "nativeFingerprintsArray":[Landroid/hardware/fingerprint/Fingerprint;
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 344
    .local v1, "nativeFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :goto_0
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/service/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/ContentResolver;I)Ljava/util/List;

    move-result-object v3

    .line 347
    .local v3, "settingsFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-direct {p0, v1, v3, p2}, Lcom/android/server/fingerprint/FingerprintService;->mergeAndUpdateSettingsFingerprints(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 350
    .local v0, "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    return-object v0

    .line 342
    .end local v0    # "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v1    # "nativeFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v3    # "settingsFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_1
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method handleNotify(III)V
    .locals 12
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    const/4 v11, 0x1

    .line 141
    const-string v8, "FingerprintService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleNotify(msg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", arg1="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", arg2="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    .line 143
    .local v6, "newState":I
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 144
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/fingerprint/FingerprintService$ClientData;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 145
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 146
    .local v1, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 148
    :pswitch_1
    move v3, p2

    .line 150
    .local v3, "error":I
    const/4 v6, 0x0

    .line 151
    if-eqz v1, :cond_0

    :try_start_0
    iget-object v8, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v8, :cond_0

    .line 152
    iget-object v8, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v8, v3}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Landroid/os/RemoteException;
    const-string v8, "FingerprintService"

    const-string v9, "can\'t send message to client. Did it die?"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 161
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "error":I
    :pswitch_2
    move v0, p2

    .line 162
    .local v0, "acquireInfo":I
    iget v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    if-ne v8, v11, :cond_1

    .line 164
    if-eqz v1, :cond_0

    :try_start_1
    iget-object v8, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v8, :cond_0

    .line 165
    iget-object v8, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v8, v0}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onAcquired(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 167
    :catch_1
    move-exception v2

    .line 168
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v8, "FingerprintService"

    const-string v9, "can\'t send message to client. Did it die?"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 172
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v8, "FingerprintService"

    const-string v9, "Client not authenticating"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .end local v0    # "acquireInfo":I
    :pswitch_3
    move v4, p2

    .line 179
    .local v4, "fingerId":I
    iget v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    if-ne v8, v11, :cond_2

    .line 181
    const/4 v6, 0x0

    .line 182
    if-eqz v1, :cond_0

    :try_start_2
    iget-object v8, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v8, :cond_0

    .line 183
    iget-object v8, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v8, v4}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onProcessed(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 185
    :catch_2
    move-exception v2

    .line 186
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v8, "FingerprintService"

    const-string v9, "can\'t send message to client. Did it die?"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 190
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v8, "FingerprintService"

    const-string v9, "Client not authenticating"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    .end local v4    # "fingerId":I
    :pswitch_4
    move v4, p2

    .line 197
    .restart local v4    # "fingerId":I
    move v7, p3

    .line 198
    .local v7, "remaining":I
    iget v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 200
    if-eqz v1, :cond_3

    :try_start_3
    iget-object v8, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v8, :cond_3

    .line 201
    iget-object v8, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v8, v4, v7}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 209
    :cond_3
    :goto_1
    if-nez v7, :cond_0

    .line 210
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget v9, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    invoke-static {v4, v8, v9}, Landroid/service/fingerprint/FingerprintUtils;->addFingerprintIdForUser(ILandroid/content/Context;I)V

    .line 212
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 203
    :catch_3
    move-exception v2

    .line 204
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v8, "FingerprintService"

    const-string v9, "can\'t send message to client. Did it die?"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 215
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v8, "FingerprintService"

    const-string v9, "Client not enrolling"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 221
    .end local v4    # "fingerId":I
    .end local v7    # "remaining":I
    :pswitch_5
    move v4, p2

    .line 222
    .restart local v4    # "fingerId":I
    if-nez v4, :cond_5

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Got illegal id from HAL"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 223
    :cond_5
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget v9, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    invoke-static {v4, v8, v9}, Landroid/service/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(ILandroid/content/ContentResolver;I)Z

    .line 226
    if-eqz v1, :cond_0

    :try_start_4
    iget-object v8, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v8, :cond_0

    .line 227
    iget-object v8, v1, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v8, v4}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onRemoved(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 229
    :catch_4
    move-exception v2

    .line 230
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v8, "FingerprintService"

    const-string v9, "can\'t send message to client. Did it die?"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 237
    .end local v1    # "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "fingerId":I
    :cond_6
    iput v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    .line 238
    return-void

    .line 146
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method native nativeAuthenticate()I
.end method

.method native nativeCancel()I
.end method

.method native nativeCloseHal()I
.end method

.method native nativeEnroll(I)I
.end method

.method native nativeGetEnrollments()[Landroid/hardware/fingerprint/Fingerprint;
.end method

.method native nativeInit(Lcom/android/server/fingerprint/FingerprintService;)V
.end method

.method native nativeOpenHal()I
.end method

.method native nativeRemove(I)I
.end method

.method notify(III)V
    .locals 3
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 138
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 577
    const-string v0, "fingerprint"

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 578
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeOpenHal()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHal:J

    .line 579
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHal:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 581
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FEATURE_FINGERPRINT present, but no Fingerprint HAL loaded!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_0
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHal:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 585
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fingerprint HAL present, but FEATURE_FINGERPRINT is not set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_1
    return-void
.end method

.method removeListener(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 316
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopListening("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 318
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_0

    .line 319
    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 320
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-void

    .line 322
    :cond_0
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listener not registered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFingerprintName(Landroid/os/IBinder;ILjava/lang/String;I)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "index"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " trying to add account for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/fingerprint/FingerprintService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 407
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting a fingerprint name for a different user than current is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2, p3, v0, p4}, Landroid/service/fingerprint/FingerprintUtils;->setFingerprintName(ILjava/lang/String;Landroid/content/ContentResolver;I)V

    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method startAuthentication(Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 257
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_2

    .line 258
    iget v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v1, p2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad user"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_0
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    if-eqz v1, :cond_1

    .line 260
    const-string v1, "FingerprintService"

    const-string v2, "fingerprint is in use"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeAuthenticate()I

    .line 264
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    goto :goto_0

    .line 266
    :cond_2
    const-string v1, "FingerprintService"

    const-string v2, "authenticate(): No listener registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startCancel(Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 272
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_2

    .line 273
    iget v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v1, p2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad user"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_0
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    if-nez v1, :cond_1

    .line 280
    :goto_0
    return-void

    .line 275
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    .line 276
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeCancel()I

    goto :goto_0

    .line 278
    :cond_2
    const-string v1, "FingerprintService"

    const-string v2, "enrollCancel(): No listener registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startEnroll(Landroid/os/IBinder;JI)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # J
    .param p4, "userId"    # I

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 242
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_2

    .line 243
    iget v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v1, p4, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad user"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_0
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    if-eqz v1, :cond_1

    .line 245
    const-string v1, "FingerprintService"

    const-string v2, "fingerprint is in use"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    return-void

    .line 248
    :cond_1
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->nativeEnroll(I)I

    .line 249
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    goto :goto_0

    .line 251
    :cond_2
    const-string v1, "FingerprintService"

    const-string v2, "enroll(): No listener registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startRemove(Landroid/os/IBinder;II)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 284
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 285
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_2

    .line 286
    iget v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v2, p3, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Bad user"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 288
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->nativeRemove(I)I

    move-result v1

    .line 289
    .local v1, "result":I
    if-eqz v1, :cond_1

    .line 290
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error removing fingerprint with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v1    # "result":I
    :cond_1
    :goto_0
    return-void

    .line 293
    :cond_2
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): No listener registered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

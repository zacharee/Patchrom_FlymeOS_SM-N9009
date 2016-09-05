.class public Landroid/service/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final FINGERPRINT_ACQUIRED:I = 0x1

.field public static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field public static final FINGERPRINT_ACQUIRED_IMAGER_DIRTY:I = 0x4

.field public static final FINGERPRINT_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final FINGERPRINT_ACQUIRED_PARTIAL:I = 0x1

.field public static final FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x10

.field public static final FINGERPRINT_ACQUIRED_TOO_SLOW:I = 0x8

.field public static final FINGERPRINT_ERROR:I = -0x1

.field public static final FINGERPRINT_ERROR_CANCELED:I = 0x5

.field public static final FINGERPRINT_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final FINGERPRINT_ERROR_NO_RECEIVER:I = -0xa

.field public static final FINGERPRINT_ERROR_NO_SPACE:I = 0x4

.field public static final FINGERPRINT_ERROR_TIMEOUT:I = 0x3

.field public static final FINGERPRINT_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final FINGERPRINT_ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final FINGERPRINT_PROCESSED:I = 0x2

.field public static final FINGERPRINT_TEMPLATE_ENROLLING:I = 0x3

.field public static final FINGERPRINT_TEMPLATE_REMOVED:I = 0x4

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x67

.field private static final MSG_PROCESSED:I = 0x66

.field private static final MSG_REMOVED:I = 0x68

.field private static final TAG:Ljava/lang/String; = "FingerprintManager"


# instance fields
.field private mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mService:Landroid/service/fingerprint/IFingerprintService;

.field private mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/service/fingerprint/IFingerprintService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/service/fingerprint/IFingerprintService;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    .line 80
    new-instance v0, Landroid/service/fingerprint/FingerprintManager$1;

    invoke-direct {v0, p0}, Landroid/service/fingerprint/FingerprintManager$1;-><init>(Landroid/service/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Landroid/service/fingerprint/FingerprintManager$2;

    invoke-direct {v0, p0}, Landroid/service/fingerprint/FingerprintManager$2;-><init>(Landroid/service/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    .line 107
    iput-object p1, p0, Landroid/service/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    .line 109
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    .line 110
    const-string v0, "FingerprintManager"

    const-string v1, "FingerprintManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/service/fingerprint/FingerprintManager;)Landroid/service/fingerprint/FingerprintManagerReceiver;
    .locals 1
    .param p0, "x0"    # Landroid/service/fingerprint/FingerprintManager;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/fingerprint/FingerprintManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/service/fingerprint/FingerprintManager;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getCurrentUserId()I
    .locals 3

    .prologue
    .line 247
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return v1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Failed to get current user id\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/16 v1, -0x2710

    goto :goto_0
.end method

.method private sendError(III)V
    .locals 1
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 302
    iget-object v0, p0, Landroid/service/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 303
    return-void
.end method


# virtual methods
.method public authenticate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 154
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_1

    .line 155
    const/16 v1, -0xa

    invoke-direct {p0, v1, v4, v4}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 159
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/service/fingerprint/IFingerprintService;->authenticate(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception while enrolling: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    const/4 v1, 0x1

    invoke-direct {p0, v1, v4, v4}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 272
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_0

    .line 273
    const/16 v1, -0xa

    invoke-direct {p0, v1, v4, v4}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    .line 286
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_1

    .line 278
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/service/fingerprint/IFingerprintService;->cancel(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in enrollCancel(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    const/4 v1, 0x1

    invoke-direct {p0, v1, v4, v4}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0

    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "FingerprintManager"

    const-string v2, "cancel(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enroll(J)V
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    const/4 v4, 0x0

    .line 173
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_1

    .line 174
    const/16 v1, -0xa

    invoke-direct {p0, v1, v4, v4}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 178
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, p1, p2, v3}, Landroid/service/fingerprint/IFingerprintService;->enroll(Landroid/os/IBinder;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception while enrolling: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    const/4 v1, 0x1

    invoke-direct {p0, v1, v4, v4}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0
.end method

.method public enrolledAndEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    .local v0, "res":Landroid/content/ContentResolver;
    const-string v2, "fingerprint_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/service/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/ContentResolver;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getEnrolledFingerprints()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 291
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/service/fingerprint/IFingerprintService;->getEnrolledFingerprints(Landroid/os/IBinder;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 298
    :goto_0
    return-object v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in getEnrolledFingerprints(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 296
    :cond_0
    const-string v1, "FingerprintManager"

    const-string v2, "getEnrolledFingerprints(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public remove(I)V
    .locals 4
    .param p1, "fingerprintId"    # I

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_0

    .line 192
    const/16 v1, -0xa

    invoke-direct {p0, v1, v3, v3}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    .line 205
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_1

    .line 197
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, p1, v3}, Landroid/service/fingerprint/IFingerprintService;->remove(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception during remove of fingerprintId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 202
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "FingerprintManager"

    const-string v2, "remove(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v1, 0x1

    invoke-direct {p0, v1, v3, v3}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0
.end method

.method public setFingerprintName(ILjava/lang/String;)V
    .locals 4
    .param p1, "fingerprintId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 211
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_0

    .line 212
    const/16 v1, -0xa

    invoke-direct {p0, v1, v3, v3}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    .line 225
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_1

    .line 217
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, p1, p2, v3}, Landroid/service/fingerprint/IFingerprintService;->setFingerprintName(Landroid/os/IBinder;ILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception renaming fingerprintId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 222
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "FingerprintManager"

    const-string v2, "setFingerprintName(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v1, 0x1

    invoke-direct {p0, v1, v3, v3}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0
.end method

.method public startListening(Landroid/service/fingerprint/FingerprintManagerReceiver;)V
    .locals 5
    .param p1, "receiver"    # Landroid/service/fingerprint/FingerprintManagerReceiver;

    .prologue
    const/4 v3, 0x0

    .line 232
    iput-object p1, p0, Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;

    .line 233
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 235
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/service/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/service/fingerprint/IFingerprintService;->startListening(Landroid/os/IBinder;Landroid/service/fingerprint/IFingerprintServiceReceiver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in startListening(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "FingerprintManager"

    const-string v2, "startListening(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v1, 0x1

    invoke-direct {p0, v1, v3, v3}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0
.end method

.method public stopListening()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 258
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 260
    :try_start_0
    iget-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mService:Landroid/service/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/service/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/service/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/service/fingerprint/IFingerprintService;->stopListening(Landroid/os/IBinder;I)V

    .line 261
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/fingerprint/FingerprintManager;->mClientReceiver:Landroid/service/fingerprint/FingerprintManagerReceiver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in stopListening(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 266
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "FingerprintManager"

    const-string v2, "stopListening(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v1, 0x1

    invoke-direct {p0, v1, v3, v3}, Landroid/service/fingerprint/FingerprintManager;->sendError(III)V

    goto :goto_0
.end method

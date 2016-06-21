.class public Lcom/gsma/services/nfc/NfcController;
.super Lcom/gsma/services/nfc/INfcControllerCallbacks$Stub;
.source "NfcController.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/nfc/NfcController$Callbacks;
    }
.end annotation


# static fields
.field public static final ACTION_TRANSACTION_EVENT:Ljava/lang/String; = "com.gsma.services.nfc.action.TRANSACTION_EVENT"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/nfc/NfcController;",
            ">;"
        }
    .end annotation
.end field

.field static final DBG:Z = true

.field public static final ERROR_INVALID_PARAM:I = -0x4

.field public static final ERROR_NOT_ALLOWED:I = -0x3

.field public static final ERROR_NOT_ENABLED:I = -0x2

.field public static final ERROR_NOT_SUPPORTED:I = -0x1

.field public static final NFC_CONTROLLER_PERMISSION:Ljava/lang/String; = "android.permission.NFC"

.field public static final NFC_TRANSACTION_PERMISSION:Ljava/lang/String; = "com.gsma.services.nfc.permission.TRANSACTION_EVENT"

.field public static final SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "NfcController"

.field public static final TRANSACTION_EXTRA_AID:Ljava/lang/String; = "com.gsma.services.nfc.extra.AID"

.field public static final TRANSACTION_EXTRA_DATA:Ljava/lang/String; = "com.gsma.services.nfc.extra.DATA"

.field static controllerService:Lcom/gsma/services/nfc/INfcController;

.field static sNfcControllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/gsma/services/nfc/NfcController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallbacks:Lcom/gsma/services/nfc/NfcController$Callbacks;

.field private mClassName:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mIsHceCapable:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/gsma/services/nfc/NfcController;->controllerService:Lcom/gsma/services/nfc/INfcController;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gsma/services/nfc/NfcController;->sNfcControllers:Ljava/util/HashMap;

    .line 272
    new-instance v0, Lcom/gsma/services/nfc/NfcController$1;

    invoke-direct {v0}, Lcom/gsma/services/nfc/NfcController$1;-><init>()V

    sput-object v0, Lcom/gsma/services/nfc/NfcController;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/gsma/services/nfc/INfcControllerCallbacks$Stub;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    .line 53
    iget-object v1, p0, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 54
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.nfc.hce"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    .line 55
    return-void
.end method

.method private constructor <init>(ZLcom/gsma/services/nfc/INfcController;)V
    .locals 1
    .param p1, "isHceCapable"    # Z
    .param p2, "service"    # Lcom/gsma/services/nfc/INfcController;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/gsma/services/nfc/INfcControllerCallbacks$Stub;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    .line 59
    sput-object v0, Lcom/gsma/services/nfc/NfcController;->sNfcControllers:Ljava/util/HashMap;

    .line 60
    iput-boolean p1, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    .line 61
    sput-object p2, Lcom/gsma/services/nfc/NfcController;->controllerService:Lcom/gsma/services/nfc/INfcController;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(ZLcom/gsma/services/nfc/INfcController;Lcom/gsma/services/nfc/NfcController$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Lcom/gsma/services/nfc/INfcController;
    .param p3, "x2"    # Lcom/gsma/services/nfc/NfcController$1;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/nfc/NfcController;-><init>(ZLcom/gsma/services/nfc/INfcController;)V

    return-void
.end method

.method private attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 251
    const-string v1, "NfcController"

    const-string v2, "NFC service dead - attempting to recover."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    invoke-static {}, Lcom/gsma/services/nfc/NfcController;->getServiceInterface()Lcom/gsma/services/nfc/INfcController;

    move-result-object v0

    .line 253
    .local v0, "service":Lcom/gsma/services/nfc/INfcController;
    if-nez v0, :cond_0

    .line 254
    const-string v1, "NfcController"

    const-string v2, "Could not retrieve NFC service during service recovery."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    sput-object v0, Lcom/gsma/services/nfc/NfcController;->controllerService:Lcom/gsma/services/nfc/INfcController;

    goto :goto_0
.end method

.method public static declared-synchronized getDefaultController(Landroid/content/Context;Lcom/gsma/services/nfc/NfcController$Callbacks;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cb"    # Lcom/gsma/services/nfc/NfcController$Callbacks;

    .prologue
    .line 65
    const-class v3, Lcom/gsma/services/nfc/NfcController;

    monitor-enter v3

    if-nez p0, :cond_0

    .line 66
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "context cannot be null"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 68
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, "appContext":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 70
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "context not associated with any application (using a mock context?)"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_NFC_ConfigApiFiltering"

    const-string v5, "EMPTY"

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "-GSMA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v4, "This model does not support GSMA API"

    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_2
    invoke-static {}, Lcom/gsma/services/nfc/NfcController;->getServiceInterface()Lcom/gsma/services/nfc/INfcController;

    move-result-object v2

    sput-object v2, Lcom/gsma/services/nfc/NfcController;->controllerService:Lcom/gsma/services/nfc/INfcController;

    .line 83
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->controllerService:Lcom/gsma/services/nfc/INfcController;

    if-nez v2, :cond_3

    .line 84
    const-string v2, "NfcController"

    const-string v4, "Could not retrieve NfcController service"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Could not retrieve NfcController service"

    invoke-direct {v2, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_3
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->sNfcControllers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/nfc/NfcController;

    .line 88
    .local v1, "controller":Lcom/gsma/services/nfc/NfcController;
    if-nez v1, :cond_4

    .line 89
    new-instance v1, Lcom/gsma/services/nfc/NfcController;

    .end local v1    # "controller":Lcom/gsma/services/nfc/NfcController;
    invoke-direct {v1, v0}, Lcom/gsma/services/nfc/NfcController;-><init>(Landroid/content/Context;)V

    .line 90
    .restart local v1    # "controller":Lcom/gsma/services/nfc/NfcController;
    invoke-direct {v1, p0}, Lcom/gsma/services/nfc/NfcController;->storeAppInfo(Landroid/content/Context;)V

    .line 91
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->sNfcControllers:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_4
    invoke-interface {p1, v1}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onGetDefaultController(Lcom/gsma/services/nfc/NfcController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    monitor-exit v3

    return-void
.end method

.method private static getServiceInterface()Lcom/gsma/services/nfc/INfcController;
    .locals 2

    .prologue
    .line 243
    const-string v1, "nfccontroller"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 244
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 245
    const/4 v1, 0x0

    .line 247
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/gsma/services/nfc/INfcController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/nfc/INfcController;

    move-result-object v1

    goto :goto_0
.end method

.method private storeAppInfo(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mPackageName:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mClassName:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public defineOffHostService(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/OffHostService;
    .locals 5
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "SEName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 169
    iget-boolean v2, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    if-nez v2, :cond_0

    .line 170
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Host Card Emulation (HCE) is not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_0
    :try_start_0
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->controllerService:Lcom/gsma/services/nfc/INfcController;

    iget-object v3, p0, Lcom/gsma/services/nfc/NfcController;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/gsma/services/nfc/NfcController;->mClassName:Ljava/lang/String;

    invoke-interface {v2, p1, p2, v3, v4}, Lcom/gsma/services/nfc/INfcController;->defineOffHostService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/OffHostService;

    move-result-object v1

    .line 174
    .local v1, "service":Lcom/gsma/services/nfc/OffHostService;
    if-nez v1, :cond_1

    .line 175
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "An illegal or inappropriate argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v1    # "service":Lcom/gsma/services/nfc/OffHostService;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 180
    const/4 v1, 0x0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v1
.end method

.method public deleteOffHostService(Lcom/gsma/services/nfc/OffHostService;)V
    .locals 4
    .param p1, "service"    # Lcom/gsma/services/nfc/OffHostService;

    .prologue
    .line 188
    iget-boolean v2, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    if-nez v2, :cond_0

    .line 189
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Host Card Emulation (HCE) is not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Lcom/gsma/services/nfc/OffHostService;->setBanner(Landroid/graphics/drawable/Drawable;)V

    .line 193
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->controllerService:Lcom/gsma/services/nfc/INfcController;

    iget-object v3, p0, Lcom/gsma/services/nfc/NfcController;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Lcom/gsma/services/nfc/INfcController;->deleteOffHostService(Ljava/lang/String;Lcom/gsma/services/nfc/OffHostService;)I

    move-result v1

    .line 194
    .local v1, "res":I
    if-nez v1, :cond_2

    .line 200
    .end local v1    # "res":I
    :cond_1
    :goto_0
    return-void

    .line 195
    .restart local v1    # "res":I
    :cond_2
    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "The service has been defined through the Manifest and cannot be deleted"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0

    .line 196
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_3
    const/4 v2, -0x4

    if-ne v1, v2, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "An illegal or inappropriate argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public disableCardEmulationMode(Lcom/gsma/services/nfc/NfcController$Callbacks;)V
    .locals 4
    .param p1, "cb"    # Lcom/gsma/services/nfc/NfcController$Callbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 151
    iget-boolean v2, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    if-eqz v2, :cond_0

    .line 152
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Deprecated. This model supports Host Card Emulation (HCE)"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/gsma/services/nfc/NfcController;->mCallbacks:Lcom/gsma/services/nfc/NfcController$Callbacks;

    .line 156
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->controllerService:Lcom/gsma/services/nfc/INfcController;

    invoke-interface {v2, p0}, Lcom/gsma/services/nfc/INfcController;->disableCardEmulationMode(Lcom/gsma/services/nfc/INfcControllerCallbacks;)I

    move-result v1

    .line 157
    .local v1, "res":I
    if-nez v1, :cond_2

    .line 162
    .end local v1    # "res":I
    :cond_1
    :goto_0
    return-void

    .line 158
    .restart local v1    # "res":I
    :cond_2
    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "API not allowed."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public enableCardEmulationMode(Lcom/gsma/services/nfc/NfcController$Callbacks;)V
    .locals 4
    .param p1, "cb"    # Lcom/gsma/services/nfc/NfcController$Callbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 136
    iget-boolean v2, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    if-eqz v2, :cond_0

    .line 137
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Deprecated. This model supports Host Card Emulation (HCE)"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/gsma/services/nfc/NfcController;->mCallbacks:Lcom/gsma/services/nfc/NfcController$Callbacks;

    .line 141
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->controllerService:Lcom/gsma/services/nfc/INfcController;

    invoke-interface {v2, p0}, Lcom/gsma/services/nfc/INfcController;->enableCardEmulationMode(Lcom/gsma/services/nfc/INfcControllerCallbacks;)I

    move-result v1

    .line 142
    .local v1, "res":I
    if-nez v1, :cond_2

    .line 148
    .end local v1    # "res":I
    :cond_1
    :goto_0
    return-void

    .line 143
    .restart local v1    # "res":I
    :cond_2
    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "API not allowed."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0

    .line 144
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_3
    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "NFC controller is not enabled."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public enableNfcController(Lcom/gsma/services/nfc/NfcController$Callbacks;)V
    .locals 3
    .param p1, "cb"    # Lcom/gsma/services/nfc/NfcController$Callbacks;

    .prologue
    .line 114
    :try_start_0
    iput-object p1, p0, Lcom/gsma/services/nfc/NfcController;->mCallbacks:Lcom/gsma/services/nfc/NfcController$Callbacks;

    .line 115
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->controllerService:Lcom/gsma/services/nfc/INfcController;

    invoke-interface {v2, p0}, Lcom/gsma/services/nfc/INfcController;->enableNfcController(Lcom/gsma/services/nfc/INfcControllerCallbacks;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 116
    .local v1, "res":I
    if-nez v1, :cond_1

    .line 121
    .end local v1    # "res":I
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local v1    # "res":I
    :cond_1
    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 118
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDefaultOffHostService()Lcom/gsma/services/nfc/OffHostService;
    .locals 4

    .prologue
    .line 225
    iget-boolean v2, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    if-nez v2, :cond_0

    .line 226
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Host Card Emulation (HCE) is not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    :cond_0
    :try_start_0
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->controllerService:Lcom/gsma/services/nfc/INfcController;

    iget-object v3, p0, Lcom/gsma/services/nfc/NfcController;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/gsma/services/nfc/INfcController;->getDefaultOffHostService(Ljava/lang/String;)Lcom/gsma/services/nfc/OffHostService;

    move-result-object v1

    .line 230
    .local v1, "service":Lcom/gsma/services/nfc/OffHostService;
    iget-object v2, p0, Lcom/gsma/services/nfc/NfcController;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/gsma/services/nfc/NfcController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/gsma/services/nfc/OffHostService;->getExtraInfo()Lcom/gsma/services/nfc/OffHostService$extraInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gsma/services/nfc/OffHostService$extraInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 231
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "default service is not your own one"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1    # "service":Lcom/gsma/services/nfc/OffHostService;
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 238
    const/4 v1, 0x0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v1
.end method

.method public getOffHostServices()[Lcom/gsma/services/nfc/OffHostService;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 206
    iget-boolean v3, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    if-nez v3, :cond_0

    .line 207
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Host Card Emulation (HCE) is not supported"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_0
    :try_start_0
    sget-object v3, Lcom/gsma/services/nfc/NfcController;->controllerService:Lcom/gsma/services/nfc/INfcController;

    iget-object v4, p0, Lcom/gsma/services/nfc/NfcController;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/gsma/services/nfc/INfcController;->getOffHostServices(Ljava/lang/String;)[Lcom/gsma/services/nfc/OffHostService;

    move-result-object v1

    .line 211
    .local v1, "service":[Lcom/gsma/services/nfc/OffHostService;
    if-eqz v1, :cond_1

    array-length v3, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    :cond_1
    move-object v1, v2

    .line 217
    .end local v1    # "service":[Lcom/gsma/services/nfc/OffHostService;
    :cond_2
    :goto_0
    return-object v1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    move-object v1, v2

    .line 217
    goto :goto_0
.end method

.method public isCardEmulationEnabled()Z
    .locals 3

    .prologue
    .line 124
    iget-boolean v1, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    if-eqz v1, :cond_0

    .line 125
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Deprecated. This model supports Host Card Emulation (HCE)"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_0
    :try_start_0
    sget-object v1, Lcom/gsma/services/nfc/NfcController;->controllerService:Lcom/gsma/services/nfc/INfcController;

    invoke-interface {v1}, Lcom/gsma/services/nfc/INfcController;->isCardEmulationEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 131
    :goto_0
    return v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 131
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 105
    :try_start_0
    sget-object v1, Lcom/gsma/services/nfc/NfcController;->controllerService:Lcom/gsma/services/nfc/INfcController;

    invoke-interface {v1}, Lcom/gsma/services/nfc/INfcController;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 108
    :goto_0
    return v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/NfcController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 108
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCardEmulationMode(I)V
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mCallbacks:Lcom/gsma/services/nfc/NfcController$Callbacks;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mCallbacks:Lcom/gsma/services/nfc/NfcController$Callbacks;

    invoke-interface {v0, p1}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onCardEmulationMode(I)V

    .line 298
    :cond_0
    return-void
.end method

.method public onEnableNfcController(Z)V
    .locals 1
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mCallbacks:Lcom/gsma/services/nfc/NfcController$Callbacks;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mCallbacks:Lcom/gsma/services/nfc/NfcController$Callbacks;

    invoke-interface {v0, p1}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onEnableNfcController(Z)V

    .line 291
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/gsma/services/nfc/NfcController;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 269
    sget-object v0, Lcom/gsma/services/nfc/NfcController;->controllerService:Lcom/gsma/services/nfc/INfcController;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 270
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/gsma/services/nfc/SEController;
.super Ljava/lang/Object;
.source "SEController.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/nfc/SEController$Callbacks;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/nfc/SEController;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_INVALID_PARAM:I = -0x4

.field public static final ERROR_NOT_ALLOWED:I = -0x3

.field public static final ERROR_NOT_ENABLED:I = -0x2

.field public static final ERROR_NOT_SUPPORTED:I = -0x1

.field public static final SUCCESS:I

.field static TAG:Ljava/lang/String;

.field static controllerService:Lcom/gsma/services/nfc/ISEController;

.field static mIsHceCapable:Z

.field static sSEControllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/gsma/services/nfc/SEController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "SEController"

    sput-object v0, Lcom/gsma/services/nfc/SEController;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/gsma/services/nfc/SEController;->controllerService:Lcom/gsma/services/nfc/ISEController;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gsma/services/nfc/SEController;->sSEControllers:Ljava/util/HashMap;

    .line 199
    new-instance v0, Lcom/gsma/services/nfc/SEController$1;

    invoke-direct {v0}, Lcom/gsma/services/nfc/SEController$1;-><init>()V

    sput-object v0, Lcom/gsma/services/nfc/SEController;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/gsma/services/nfc/SEController;->mContext:Landroid/content/Context;

    .line 43
    iget-object v1, p0, Lcom/gsma/services/nfc/SEController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 44
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.nfc.hce"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/gsma/services/nfc/SEController;->mIsHceCapable:Z

    .line 45
    return-void
.end method

.method private constructor <init>(ZLcom/gsma/services/nfc/ISEController;)V
    .locals 1
    .param p1, "isHceCapable"    # Z
    .param p2, "service"    # Lcom/gsma/services/nfc/ISEController;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/gsma/services/nfc/SEController;->mContext:Landroid/content/Context;

    .line 49
    sput-object v0, Lcom/gsma/services/nfc/SEController;->sSEControllers:Ljava/util/HashMap;

    .line 50
    sput-boolean p1, Lcom/gsma/services/nfc/SEController;->mIsHceCapable:Z

    .line 51
    sput-object p2, Lcom/gsma/services/nfc/SEController;->controllerService:Lcom/gsma/services/nfc/ISEController;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(ZLcom/gsma/services/nfc/ISEController;Lcom/gsma/services/nfc/SEController$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Lcom/gsma/services/nfc/ISEController;
    .param p3, "x2"    # Lcom/gsma/services/nfc/SEController$1;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/nfc/SEController;-><init>(ZLcom/gsma/services/nfc/ISEController;)V

    return-void
.end method

.method private attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 178
    sget-object v1, Lcom/gsma/services/nfc/SEController;->TAG:Ljava/lang/String;

    const-string v2, "NFC service dead - attempting to recover."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    invoke-static {}, Lcom/gsma/services/nfc/SEController;->getServiceInterface()Lcom/gsma/services/nfc/ISEController;

    move-result-object v0

    .line 180
    .local v0, "service":Lcom/gsma/services/nfc/ISEController;
    if-nez v0, :cond_0

    .line 181
    sget-object v1, Lcom/gsma/services/nfc/SEController;->TAG:Ljava/lang/String;

    const-string v2, "Could not retrieve NFC service during service recovery."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    sput-object v0, Lcom/gsma/services/nfc/SEController;->controllerService:Lcom/gsma/services/nfc/ISEController;

    goto :goto_0
.end method

.method public static declared-synchronized getDefaultController(Landroid/content/Context;Lcom/gsma/services/nfc/SEController$Callbacks;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cb"    # Lcom/gsma/services/nfc/SEController$Callbacks;

    .prologue
    .line 55
    const-class v2, Lcom/gsma/services/nfc/SEController;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 56
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "context cannot be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 58
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 59
    if-nez p0, :cond_1

    .line 60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "context not associated with any application (using a mock context?)"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_NFC_ConfigApiFiltering"

    const-string v4, "EMPTY"

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SESWITCHING"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v3, "This model does not support GSMA API"

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_NFC_ConfigApiFiltering"

    const-string v4, "EMPTY"

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "-GSMA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v3, "This model does not support GSMA API"

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_3
    invoke-static {}, Lcom/gsma/services/nfc/SEController;->getServiceInterface()Lcom/gsma/services/nfc/ISEController;

    move-result-object v1

    sput-object v1, Lcom/gsma/services/nfc/SEController;->controllerService:Lcom/gsma/services/nfc/ISEController;

    .line 75
    sget-object v1, Lcom/gsma/services/nfc/SEController;->controllerService:Lcom/gsma/services/nfc/ISEController;

    if-nez v1, :cond_4

    .line 76
    sget-object v1, Lcom/gsma/services/nfc/SEController;->TAG:Ljava/lang/String;

    const-string v3, "Could not retrieve SEController service."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 79
    :cond_4
    sget-object v1, Lcom/gsma/services/nfc/SEController;->sSEControllers:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/nfc/SEController;

    .line 80
    .local v0, "controller":Lcom/gsma/services/nfc/SEController;
    if-nez v0, :cond_5

    .line 81
    new-instance v0, Lcom/gsma/services/nfc/SEController;

    .end local v0    # "controller":Lcom/gsma/services/nfc/SEController;
    invoke-direct {v0, p0}, Lcom/gsma/services/nfc/SEController;-><init>(Landroid/content/Context;)V

    .line 82
    .restart local v0    # "controller":Lcom/gsma/services/nfc/SEController;
    sget-object v1, Lcom/gsma/services/nfc/SEController;->sSEControllers:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_5
    invoke-interface {p1, v0}, Lcom/gsma/services/nfc/SEController$Callbacks;->onGetDefaultController(Lcom/gsma/services/nfc/SEController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    monitor-exit v2

    return-void
.end method

.method private static getServiceInterface()Lcom/gsma/services/nfc/ISEController;
    .locals 2

    .prologue
    .line 170
    const-string v1, "secontroller"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 171
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 172
    const/4 v1, 0x0

    .line 174
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/gsma/services/nfc/ISEController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/nfc/ISEController;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveSecureElement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    :try_start_0
    sget-object v1, Lcom/gsma/services/nfc/SEController;->controllerService:Lcom/gsma/services/nfc/ISEController;

    invoke-interface {v1}, Lcom/gsma/services/nfc/ISEController;->getActiveSecureElement()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/SEController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 92
    const-string v1, ""

    goto :goto_0
.end method

.method public setActiveSecureElement(Ljava/lang/String;)V
    .locals 4
    .param p1, "SEName"    # Ljava/lang/String;

    .prologue
    .line 98
    :try_start_0
    sget-object v2, Lcom/gsma/services/nfc/SEController;->controllerService:Lcom/gsma/services/nfc/ISEController;

    invoke-interface {v2, p1}, Lcom/gsma/services/nfc/ISEController;->setActiveSecureElement(Ljava/lang/String;)I

    move-result v1

    .line 99
    .local v1, "res":I
    if-nez v1, :cond_1

    .line 107
    .end local v1    # "res":I
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v1    # "res":I
    :cond_1
    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "API not allowed."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/SEController;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "API not supported."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_3
    const/4 v2, -0x2

    if-ne v1, v2, :cond_4

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "NFC controller is not enabled."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_4
    const/4 v2, -0x4

    if-ne v1, v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid secure element name."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 195
    sget-boolean v0, Lcom/gsma/services/nfc/SEController;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 196
    sget-object v0, Lcom/gsma/services/nfc/SEController;->controllerService:Lcom/gsma/services/nfc/ISEController;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 197
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

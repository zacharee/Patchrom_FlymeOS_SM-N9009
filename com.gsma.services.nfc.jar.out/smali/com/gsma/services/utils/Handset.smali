.class public Lcom/gsma/services/utils/Handset;
.super Ljava/lang/Object;
.source "Handset.java"


# static fields
.field public static final BATTERY_LOW_MODE:I = 0x90

.field public static final BATTERY_POWER_OFF_MODE:I = 0x91

.field public static final ERROR_INVALID_PARAM:I = -0x4

.field public static final ERROR_NOT_ALLOWED:I = -0x3

.field public static final ERROR_NOT_ENABLED:I = -0x2

.field public static final ERROR_NOT_SUPPORTED:I = -0x1

.field public static final FELICA:I = 0x20

.field public static final HCI_SWP:I = 0x0

.field public static final MIFARE_CLASSIC:I = 0x21

.field public static final MIFARE_DESFIRE:I = 0x22

.field public static final MULTIPLE_ACTIVE_CEE:I = 0x1

.field public static final NFC_FORUM_TYPE3:I = 0x23

.field public static final OMAPI:I = 0x50

.field public static final SUCCESS:I

.field static TAG:Ljava/lang/String;

.field static handsetService:Lcom/gsma/services/utils/IHandset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "Handset"

    sput-object v0, Lcom/gsma/services/utils/Handset;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/gsma/services/utils/Handset;->handsetService:Lcom/gsma/services/utils/IHandset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/gsma/services/utils/Handset;->handsetService:Lcom/gsma/services/utils/IHandset;

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lcom/gsma/services/utils/Handset;->getServiceInterface()Lcom/gsma/services/utils/IHandset;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/utils/Handset;->handsetService:Lcom/gsma/services/utils/IHandset;

    .line 33
    :cond_0
    return-void
.end method

.method private static attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 57
    sget-object v1, Lcom/gsma/services/utils/Handset;->TAG:Ljava/lang/String;

    const-string v2, "NFC service dead - attempting to recover."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    invoke-static {}, Lcom/gsma/services/utils/Handset;->getServiceInterface()Lcom/gsma/services/utils/IHandset;

    move-result-object v0

    .line 59
    .local v0, "service":Lcom/gsma/services/utils/IHandset;
    if-nez v0, :cond_0

    .line 60
    sget-object v1, Lcom/gsma/services/utils/Handset;->TAG:Ljava/lang/String;

    const-string v2, "Could not retrieve NFC service during service recovery."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    sput-object v0, Lcom/gsma/services/utils/Handset;->handsetService:Lcom/gsma/services/utils/IHandset;

    goto :goto_0
.end method

.method private static getServiceInterface()Lcom/gsma/services/utils/IHandset;
    .locals 2

    .prologue
    .line 49
    const-string v1, "handset"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 50
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 53
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/gsma/services/utils/IHandset$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/utils/IHandset;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public enableMultiEvt_transactionReception()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 36
    sget-object v2, Lcom/gsma/services/utils/Handset;->handsetService:Lcom/gsma/services/utils/IHandset;

    if-nez v2, :cond_0

    .line 37
    invoke-static {}, Lcom/gsma/services/utils/Handset;->getServiceInterface()Lcom/gsma/services/utils/IHandset;

    move-result-object v2

    sput-object v2, Lcom/gsma/services/utils/Handset;->handsetService:Lcom/gsma/services/utils/IHandset;

    .line 40
    :cond_0
    :try_start_0
    sget-object v2, Lcom/gsma/services/utils/Handset;->handsetService:Lcom/gsma/services/utils/IHandset;

    invoke-interface {v2}, Lcom/gsma/services/utils/IHandset;->enableMultiEvt_transactionReception()I

    move-result v1

    .line 41
    .local v1, "res":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "API not allowed."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/gsma/services/utils/Handset;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 46
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void

    .line 42
    .restart local v1    # "res":I
    :cond_2
    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "API not allowed."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public getProperty(I)Z
    .locals 3
    .param p1, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 67
    sget-object v1, Lcom/gsma/services/utils/Handset;->handsetService:Lcom/gsma/services/utils/IHandset;

    if-nez v1, :cond_0

    .line 68
    invoke-static {}, Lcom/gsma/services/utils/Handset;->getServiceInterface()Lcom/gsma/services/utils/IHandset;

    move-result-object v1

    sput-object v1, Lcom/gsma/services/utils/Handset;->handsetService:Lcom/gsma/services/utils/IHandset;

    .line 70
    :cond_0
    const/16 v1, 0x90

    if-eq p1, v1, :cond_1

    const/16 v1, 0x91

    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/16 v1, 0x20

    if-eq p1, v1, :cond_1

    const/16 v1, 0x21

    if-eq p1, v1, :cond_1

    const/16 v1, 0x22

    if-eq p1, v1, :cond_1

    const/16 v1, 0x23

    if-eq p1, v1, :cond_1

    const/16 v1, 0x50

    if-eq p1, v1, :cond_1

    .line 75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "an illegal or inappropriate argument."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_1
    :try_start_0
    sget-object v1, Lcom/gsma/services/utils/Handset;->handsetService:Lcom/gsma/services/utils/IHandset;

    invoke-interface {v1, p1}, Lcom/gsma/services/utils/IHandset;->getProperty(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 81
    :goto_0
    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/gsma/services/utils/Handset;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 81
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x1770

    return v0
.end method

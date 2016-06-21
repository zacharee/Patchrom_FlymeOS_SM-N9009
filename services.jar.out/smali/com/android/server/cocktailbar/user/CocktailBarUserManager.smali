.class public Lcom/android/server/cocktailbar/user/CocktailBarUserManager;
.super Ljava/lang/Object;
.source "CocktailBarUserManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;

.field public static final USER_TYPE_KNOX:I = 0x100

.field public static final USER_TYPE_NORMAL:I = 0x1

.field public static final USER_TYPE_UNKNOWN:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

.field private mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;
    .param p3, "modeManager"    # Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->mCurrentUserId:I

    .line 37
    iput-object p1, p0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    .line 39
    iput-object p3, p0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    .line 40
    invoke-direct {p0}, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->registerUserSwitchObserver()V

    .line 41
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/user/CocktailBarUserManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/user/CocktailBarUserManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/user/CocktailBarUserManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/user/CocktailBarUserManager;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/cocktailbar/user/CocktailBarUserManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/user/CocktailBarUserManager;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/user/CocktailBarUserManager;)Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/user/CocktailBarUserManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->mModeManager:Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/cocktailbar/user/CocktailBarUserManager;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/user/CocktailBarUserManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/server/cocktailbar/user/CocktailBarUserManager;->mListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    return-object v0
.end method

.method private registerUserSwitchObserver()V
    .locals 3

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/cocktailbar/user/CocktailBarUserManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/cocktailbar/user/CocktailBarUserManager$1;-><init>(Lcom/android/server/cocktailbar/user/CocktailBarUserManager;)V

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

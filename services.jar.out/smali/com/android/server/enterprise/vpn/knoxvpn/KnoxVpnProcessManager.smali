.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
.super Ljava/lang/Object;
.source "KnoxVpnProcessManager.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "KnoxVpnProcessManager"

.field private static volatile instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

.field private static mActivityManagerNative:Landroid/app/IActivityManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field private mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field protected mProcessObserver:Landroid/app/IProcessObserver$Stub;

.field private mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 24
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    .line 31
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 33
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mActivityManagerNative:Landroid/app/IActivityManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 28
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 29
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 30
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 35
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    .line 56
    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 4
    .param p1, "engine"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mContext:Landroid/content/Context;

    .line 27
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 28
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 29
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 30
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 35
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;)V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    .line 60
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mContext:Landroid/content/Context;

    .line 62
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 63
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 64
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 65
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 67
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mActivityManagerNative:Landroid/app/IActivityManager;

    .line 68
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mActivityManagerNative:Landroid/app/IActivityManager;

    if-eqz v1, :cond_1

    .line 69
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "KnoxVpnProcessManager"

    const-string v2, "mActivityManagerNative not null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mActivityManagerNative:Landroid/app/IActivityManager;

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->getProcessObserver()Landroid/app/IProcessObserver$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxVpnProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->onApplicationStart(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->onApplicationStop(II)V

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
    .locals 2
    .param p0, "engine"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .prologue
    .line 81
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 90
    :goto_0
    monitor-exit v1

    return-object v0

    .line 86
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;

    .line 90
    :cond_1
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->instance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized onApplicationStart(II)V
    .locals 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 118
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 106
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "profileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v4, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I

    move-result v3

    .line 110
    .local v3, "type":I
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 113
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "KnoxVpnProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onApplicationStart : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_2
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "KnoxVpnProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onApplicationStart : profileName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / packageName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / getVpnConnectionType(profileName)  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_3
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const v6, 0x186a0

    div-int v6, p2, v6

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnForPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, "iResult":I
    sget-boolean v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "KnoxVpnProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onApplicationStart : start a vpn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 102
    .end local v0    # "iResult":I
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "profileName":Ljava/lang/String;
    .end local v3    # "type":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized onApplicationStop(II)V
    .locals 12
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_1

    .line 172
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 127
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "profileName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v9, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v9, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getVpnConnectionType(Ljava/lang/String;)I

    move-result v7

    .line 131
    .local v7, "type":I
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    .line 135
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v9, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v4

    .line 136
    .local v4, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v4, :cond_2

    .line 137
    const-string v9, "KnoxVpnProcessManager"

    const-string/jumbo v10, "profileEntry is null!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v7    # "type":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 141
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v5    # "profileName":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_2
    :try_start_2
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v9, :cond_3

    const-string v9, "KnoxVpnProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onApplicationStop : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_3
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v9, :cond_4

    const-string v9, "KnoxVpnProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onApplicationStop : profileName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / packageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / getVpnConnectionType(profileName)  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z

    move-result v2

    .line 146
    .local v2, "isExistRunningApps":Z
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v9, :cond_5

    const-string v9, "KnoxVpnProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onApplicationStop : isExistRunningApps : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :cond_5
    if-nez v2, :cond_0

    .line 151
    :try_start_3
    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "iface":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getUidPidSearchEnabled()I

    move-result v10

    invoke-virtual {v9, v1, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeIpRouteAndPolicyRules(Ljava/lang/String;I)V

    .line 153
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v9, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateNoUidChain(Ljava/lang/String;)V

    .line 154
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setInterfaceName(Ljava/lang/String;)V

    .line 155
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v9, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addPackagesToIpTables(Ljava/lang/String;)V

    .line 157
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mKnoxVpnEngineService:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v9, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v8

    .line 158
    .local v8, "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    if-nez v8, :cond_6

    .line 159
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "KnoxVpnProcessManager"

    const-string/jumbo v10, "onApplicationStop : stopping vpn connection : Service is not started"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 166
    .end local v1    # "iface":Ljava/lang/String;
    .end local v8    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v9, "KnoxVpnProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "stopping vpn connection : Failure at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "iface":Ljava/lang/String;
    .restart local v8    # "vpnInterface":Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;
    :cond_6
    :try_start_5
    invoke-interface {v8, v5}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->stopConnection(Ljava/lang/String;)I

    move-result v6

    .line 164
    .local v6, "returnVal":I
    sget-boolean v9, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "KnoxVpnProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onApplicationStop : stopConnection#1 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public getProcessObserver()Landroid/app/IProcessObserver$Stub;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mProcessObserver:Landroid/app/IProcessObserver$Stub;

    return-object v0
.end method

.method protected declared-synchronized processRunCheck(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)Z
    .locals 12
    .param p1, "profileEntry"    # Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 179
    .local v8, "token":J
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 180
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 181
    .local v5, "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 182
    .local v6, "runningUID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 184
    .local v4, "profilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 185
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageList()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 189
    .local v3, "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 198
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkgInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .end local v4    # "profilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6    # "runningUID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 200
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    :goto_2
    const/4 v7, 0x0

    :goto_3
    monitor-exit p0

    return v7

    .line 192
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "profilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v6    # "runningUID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_3
    invoke-interface {v6, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 194
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 195
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProcessManager;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "KnoxVpnProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "processRunCheck / runningUID.size() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 196
    :cond_2
    const/4 v7, 0x1

    .line 200
    :try_start_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 177
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "profilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6    # "runningUID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "token":J
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 200
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "i":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "profilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v6    # "runningUID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "token":J
    :cond_3
    :try_start_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "profilePackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "runningApplicationProcess":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6    # "runningUID":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_1
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.class final Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;
.super Ljava/lang/Object;
.source "WifiP2pTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;,
        Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;
    }
.end annotation


# static fields
.field static final BOOSTER_BTCOEX_FLAG:I = 0x2

.field private static final DBG:Z

.field private static final DBG_BOOSTER:Z = false

.field private static final ENABLE_TRAFFIC_STATS_POLL:I = 0x1

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "WifiP2pTrafficPoller"

.field private static final THRESHOLD_FILE:Ljava/lang/String; = "/data/misc/wifi/.threshold"

.field private static final TRAFFIC_STATS_POLL:I = 0x2

.field static mBoosterFLAG:I

.field private static mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCpuBooster:Landroid/os/DVFSHelper;

.field private mCpuCoreBooster:Landroid/os/DVFSHelper;

.field private mCpuFreqindex:[I

.field private mEnableTrafficStatsPoll:Z

.field private final mInterface:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRxBytes:J

.field private mRxPkts:J

.field private mSupportedCPUFreqTableMaxIndex:I

.field private mThresholdKbytes:[J

.field private final mTrafficHandler:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

.field private mTrafficStatsPollToken:I

.field private mTxBytes:J

.field private mTxPkts:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    .line 79
    sput v1, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mBoosterFLAG:I

    .line 92
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->FullMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x6

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z

    .line 67
    iput v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    .line 71
    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 72
    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    .line 73
    iput v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSupportedCPUFreqTableMaxIndex:I

    .line 77
    new-array v0, v2, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    .line 84
    iput-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mContext:Landroid/content/Context;

    .line 86
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    .line 95
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;-><init>(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

    .line 99
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$1;-><init>(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mContext:Landroid/content/Context;

    const-string v2, "WIFI_P2P"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 141
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v9

    .line 143
    .local v9, "supportedCPUFreqTable":[I
    if-eqz v9, :cond_0

    .line 144
    array-length v0, v9

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSupportedCPUFreqTableMaxIndex:I

    .line 145
    sget-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiP2pTrafficPoller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSupportedCPUFreqTableMaxIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSupportedCPUFreqTableMaxIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->setCpuFreqIndex()V

    .line 148
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual {v1}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v7, v0, v1

    .line 153
    .local v7, "mCpuFreqIndex_0":I
    if-eqz v9, :cond_2

    .line 154
    sget-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiP2pTrafficPoller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportedCPUFreqTable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v9, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v9, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_2
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "WIFI_P2P"

    const/16 v3, 0xe

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    .line 162
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v8

    .line 163
    .local v8, "supportedCPUCoreTable":[I
    if-eqz v8, :cond_4

    .line 164
    sget-boolean v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiP2pTrafficPoller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportedCPUCoreTable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v8, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    aget v2, v8, v10

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 168
    :cond_4
    return-void

    .line 77
    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 86
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;)Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    .prologue
    .line 53
    sput-object p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$TrafficHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnableTrafficStatsPoll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mEnableTrafficStatsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTrafficStatsPollToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTrafficStatsPollToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public notifyOnDataActivity()V
    .locals 26

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxPkts:J

    .local v14, "preTxPkts":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxPkts:J

    .line 201
    .local v10, "preRxPkts":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxPkts:J

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxPkts:J

    .line 204
    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-gtz v22, :cond_0

    const-wide/16 v22, 0x0

    cmp-long v22, v10, v22

    if-lez v22, :cond_6

    .line 207
    :cond_0
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxBytes:J

    .local v12, "preTxBytes":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxBytes:J

    .line 209
    .local v8, "preRxBytes":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxBytes:J

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxBytes:J

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v23

    mul-int/lit8 v23, v23, 0x2

    add-int/lit8 v23, v23, 0x0

    aget-wide v22, v22, v23

    const-wide/16 v24, 0x400

    mul-long v16, v22, v24

    .line 218
    .local v16, "threshold_0":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v23

    mul-int/lit8 v23, v23, 0x2

    add-int/lit8 v23, v23, 0x1

    aget-wide v22, v22, v23

    const-wide/16 v24, 0x400

    mul-long v18, v22, v24

    .line 219
    .local v18, "threshold_1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v23

    mul-int/lit8 v23, v23, 0x2

    add-int/lit8 v23, v23, 0x2

    aget-wide v22, v22, v23

    const-wide/16 v24, 0x400

    mul-long v20, v22, v24

    .line 220
    .local v20, "threshold_2":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v7

    .line 222
    .local v7, "supportedCPUFreqTable":[I
    if-eqz v7, :cond_1

    .line 223
    array-length v0, v7

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSupportedCPUFreqTableMaxIndex:I

    .line 225
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->setCpuFreqIndex()V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v23

    mul-int/lit8 v23, v23, 0x2

    add-int/lit8 v23, v23, 0x0

    aget v4, v22, v23

    .line 227
    .local v4, "mCpuFreqIndex_0":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v23

    mul-int/lit8 v23, v23, 0x2

    add-int/lit8 v23, v23, 0x1

    aget v5, v22, v23

    .line 228
    .local v5, "mCpuFreqIndex_1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCurrentMode:Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller$BoosterMode;->ordinal()I

    move-result v23

    mul-int/lit8 v23, v23, 0x2

    add-int/lit8 v23, v23, 0x2

    aget v6, v22, v23

    .line 230
    .local v6, "mCpuFreqIndex_2":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxBytes:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v12

    cmp-long v22, v22, v16

    if-gtz v22, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxBytes:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v8

    cmp-long v22, v22, v16

    if-lez v22, :cond_7

    .line 235
    :cond_2
    if-eqz v7, :cond_4

    .line 236
    sget-boolean v22, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v22, :cond_3

    const-string v22, "WifiP2pTrafficPoller"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Dynamic booster is mCpuFreqIndex_0. mCpuFreqIndex_0 is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v22, v0

    const-string v23, "CPU"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    aget v25, v7, v4

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x7d0

    invoke-virtual/range {v22 .. v23}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 247
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 248
    sget-boolean v22, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v22, :cond_5

    const-string v22, "WifiP2pTrafficPoller"

    const-string v23, "mCpuCoreBooster Lock"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuCoreBooster:Landroid/os/DVFSHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x7d0

    invoke-virtual/range {v22 .. v23}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 298
    .end local v4    # "mCpuFreqIndex_0":I
    .end local v5    # "mCpuFreqIndex_1":I
    .end local v6    # "mCpuFreqIndex_2":I
    .end local v7    # "supportedCPUFreqTable":[I
    .end local v8    # "preRxBytes":J
    .end local v12    # "preTxBytes":J
    .end local v16    # "threshold_0":J
    .end local v18    # "threshold_1":J
    .end local v20    # "threshold_2":J
    :cond_6
    :goto_0
    return-void

    .line 252
    .restart local v4    # "mCpuFreqIndex_0":I
    .restart local v5    # "mCpuFreqIndex_1":I
    .restart local v6    # "mCpuFreqIndex_2":I
    .restart local v7    # "supportedCPUFreqTable":[I
    .restart local v8    # "preRxBytes":J
    .restart local v12    # "preTxBytes":J
    .restart local v16    # "threshold_0":J
    .restart local v18    # "threshold_1":J
    .restart local v20    # "threshold_2":J
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxBytes:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v12

    cmp-long v22, v22, v18

    if-gtz v22, :cond_8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxBytes:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v8

    cmp-long v22, v22, v18

    if-lez v22, :cond_a

    .line 257
    :cond_8
    if-eqz v7, :cond_6

    .line 258
    sget-boolean v22, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v22, :cond_9

    const-string v22, "WifiP2pTrafficPoller"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Dynamic booster is mCpuFreqIndex_1. mCpuFreqIndex_1 is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v22, v0

    const-string v23, "CPU"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    aget v25, v7, v5

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x7d0

    invoke-virtual/range {v22 .. v23}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_0

    .line 266
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mTxBytes:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v12

    cmp-long v22, v22, v20

    if-gtz v22, :cond_b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mRxBytes:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v8

    cmp-long v22, v22, v20

    if-lez v22, :cond_6

    .line 271
    :cond_b
    if-eqz v7, :cond_6

    .line 272
    sget-boolean v22, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v22, :cond_c

    const-string v22, "WifiP2pTrafficPoller"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Dynamic booster is mCpuFreqIndex_2. mCpuFreqIndex_2 is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v22, v0

    const-string v23, "CPU"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    aget v25, v7, v6

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuBooster:Landroid/os/DVFSHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x7d0

    invoke-virtual/range {v22 .. v23}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_0
.end method

.method public setCpuFreqIndex()V
    .locals 6

    .prologue
    .line 414
    const-string v0, "2,8,8,2,8,8,2,8,8"

    .line 415
    .local v0, "dbCpuFreq":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 418
    .local v2, "tempFreqIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_2

    .line 419
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    aget v4, v4, v1

    if-gez v4, :cond_0

    .line 420
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 421
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    iget v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSupportedCPUFreqTableMaxIndex:I

    if-ge v2, v4, :cond_1

    move v4, v2

    :goto_1
    aput v4, v5, v1

    .line 418
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_1
    iget v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSupportedCPUFreqTableMaxIndex:I

    goto :goto_1

    .line 424
    :cond_2
    const/4 v1, 0x3

    :goto_2
    const/4 v4, 0x6

    if-ge v1, v4, :cond_5

    .line 425
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    aget v4, v4, v1

    if-gez v4, :cond_3

    .line 426
    add-int/lit8 v4, v1, 0x3

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 427
    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mCpuFreqindex:[I

    iget v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSupportedCPUFreqTableMaxIndex:I

    if-ge v2, v4, :cond_4

    move v4, v2

    :goto_3
    aput v4, v5, v1

    .line 424
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 427
    :cond_4
    iget v4, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mSupportedCPUFreqTableMaxIndex:I

    goto :goto_3

    .line 442
    :cond_5
    return-void
.end method

.method public setDynamicThresholdValues()V
    .locals 14

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 352
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/data/misc/wifi/.threshold"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "brRead":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 355
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, "values":[Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 358
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v8, 0x3

    if-ge v5, v8, :cond_1

    .line 359
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 360
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-object v9, v7, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v8, v5

    .line 358
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 364
    :cond_1
    const/4 v5, 0x3

    :goto_1
    const/4 v8, 0x6

    if-ge v5, v8, :cond_3

    .line 365
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 366
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    add-int/lit8 v9, v5, 0x3

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v8, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 364
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 388
    .end local v5    # "i":I
    .end local v7    # "values":[Ljava/lang/String;
    :cond_3
    sget-boolean v8, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v8, :cond_4

    .line 389
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x4

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_4
    if-eqz v1, :cond_e

    .line 404
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 410
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "brRead":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_5
    :goto_2
    return-void

    .line 405
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "brRead":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 406
    .local v4, "e":Ljava/io/IOException;
    const-string v8, "WifiP2pTrafficPoller"

    const-string v9, "Failed to close .threshold file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 407
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 372
    .end local v2    # "brRead":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 373
    .local v6, "ignore":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    sget-boolean v8, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v8, :cond_6

    .line 374
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_6
    const-string v3, "12800,5120,3840,12800,5120,1280,12800,5120,1280"

    .line 376
    .local v3, "dbThreshold":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 377
    .restart local v7    # "values":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    const/4 v8, 0x3

    if-ge v5, v8, :cond_8

    .line 378
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_7

    .line 379
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-object v9, v7, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v8, v5

    .line 377
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 382
    :cond_8
    const/4 v5, 0x3

    :goto_5
    const/4 v8, 0x6

    if-ge v5, v8, :cond_a

    .line 383
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    aget-wide v8, v8, v5

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_9

    .line 384
    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    add-int/lit8 v9, v5, 0x3

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v8, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 382
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 388
    :cond_a
    sget-boolean v8, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v8, :cond_b

    .line 389
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[FullMode_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_0] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x3

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_1] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x4

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v8, "WifiP2pTrafficPoller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Threshold[BTcoex_2] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v11, 0x5

    aget-wide v10, v10, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_b
    if-eqz v0, :cond_5

    .line 404
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 405
    :catch_2
    move-exception v4

    .line 406
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v8, "WifiP2pTrafficPoller"

    const-string v9, "Failed to close .threshold file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 388
    .end local v3    # "dbThreshold":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "i":I
    .end local v6    # "ignore":Ljava/lang/Exception;
    .end local v7    # "values":[Ljava/lang/String;
    :catchall_0
    move-exception v8

    :goto_6
    sget-boolean v9, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v9, :cond_c

    .line 389
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[FullMode_0] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x0

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[FullMode_1] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x1

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[FullMode_2] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x2

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[BTcoex_0] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x3

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[BTcoex_1] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x4

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v9, "WifiP2pTrafficPoller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Threshold[BTcoex_2] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v12, 0x5

    aget-wide v12, v11, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_c
    if-eqz v0, :cond_d

    .line 404
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 407
    :cond_d
    :goto_7
    throw v8

    .line 405
    :catch_3
    move-exception v4

    .line 406
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v9, "WifiP2pTrafficPoller"

    const-string v10, "Failed to close .threshold file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 388
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .line 372
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "brRead":Ljava/lang/String;
    :cond_e
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method public setThresholdValues()V
    .locals 12

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/data/misc/wifi/.threshold"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "brRead":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 314
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, "values":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 317
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 318
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x1

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 333
    .end local v5    # "values":[Ljava/lang/String;
    :cond_0
    sget-boolean v6, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v6, :cond_1

    .line 334
    const-string v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[FullMode] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[BTcoex] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_1
    if-eqz v1, :cond_9

    .line 340
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 346
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "brRead":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return-void

    .line 341
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "brRead":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 342
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "WifiP2pTrafficPoller"

    const-string v7, "Failed to close .threshold file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 343
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 321
    .end local v2    # "brRead":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 322
    .local v4, "ignore":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    sget-boolean v6, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v6, :cond_3

    .line 323
    const-string v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 325
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x0

    const-string v8, "3840"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 328
    :cond_4
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    .line 329
    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v7, 0x1

    const-string v8, "1280"

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 333
    :cond_5
    sget-boolean v6, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v6, :cond_6

    .line 334
    const-string v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[FullMode] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v6, "WifiP2pTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[BTcoex] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_6
    if-eqz v0, :cond_2

    .line 340
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 341
    :catch_2
    move-exception v3

    .line 342
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v6, "WifiP2pTrafficPoller"

    const-string v7, "Failed to close .threshold file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 333
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ignore":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_2
    sget-boolean v7, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->DBG:Z

    if-eqz v7, :cond_7

    .line 334
    const-string v7, "WifiP2pTrafficPoller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[FullMode] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v10, 0x0

    aget-wide v10, v9, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v7, "WifiP2pTrafficPoller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Threshold[BTcoex] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/p2p/WifiP2pTrafficPoller;->mThresholdKbytes:[J

    const/4 v10, 0x1

    aget-wide v10, v9, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_7
    if-eqz v0, :cond_8

    .line 340
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 343
    :cond_8
    :goto_3
    throw v6

    .line 341
    :catch_3
    move-exception v3

    .line 342
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "WifiP2pTrafficPoller"

    const-string v8, "Failed to close .threshold file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 333
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 321
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "brRead":Ljava/lang/String;
    :cond_9
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_0
.end method

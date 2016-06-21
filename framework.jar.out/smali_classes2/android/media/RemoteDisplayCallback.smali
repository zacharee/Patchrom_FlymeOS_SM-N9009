.class public final Landroid/media/RemoteDisplayCallback;
.super Ljava/lang/Object;
.source "RemoteDisplayCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteDisplayCallback$1;,
        Landroid/media/RemoteDisplayCallback$Listener;,
        Landroid/media/RemoteDisplayCallback$WfdStateReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteDisplayCallback"

.field private static mAudioManager:Landroid/media/AudioManager; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mCpuBooster:Landroid/os/DVFSHelper; = null

.field private static mCpuLockEnabled:Z = false

.field private static final mDefaultFreq:I = 0xf4240

.field private static mDongleVer:Ljava/lang/String;

.field private static mHdcpSuspend:Z

.field private static mIsVideoCase:Z

.field private static mListener:Landroid/media/RemoteDisplayCallback$Listener;

.field private static mRemoteIP:Ljava/lang/String;

.field private static mRenameCapablity:Z

.field private static mUpdateURL:Ljava/lang/String;

.field private static mWfdMode:I


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStreamVol:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    .line 50
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    .line 53
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    .line 54
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    .line 56
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 57
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mRenameCapablity:Z

    .line 58
    sput v1, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    .line 59
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    .line 62
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mHdcpSuspend:Z

    .line 66
    sput-object v0, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 67
    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    .line 69
    iput-object v2, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "android.intent.action.MAR_SLAVE_SMB"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    new-instance v1, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;

    invoke-direct {v1, p0, v2}, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;-><init>(Landroid/media/RemoteDisplayCallback;Landroid/media/RemoteDisplayCallback$1;)V

    iput-object v1, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/RemoteDisplayCallback;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    return-void
.end method

.method private StartHDCPSuspend()V
    .locals 4

    .prologue
    .line 345
    const-string v2, "RemoteDisplayCallback"

    const-string v3, "StartHDCPSuspend"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 348
    .local v0, "r":Landroid/content/res/Resources;
    const v2, 0x10407ea

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 349
    .local v1, "title":Ljava/lang/String;
    const-string/jumbo v2, "sus"

    invoke-direct {p0, v2, v1}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    return-void
.end method

.method static synthetic access$100()Landroid/media/RemoteDisplayCallback$Listener;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 47
    sget v0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 47
    sput p0, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    return p0
.end method

.method static synthetic access$400(Landroid/media/RemoteDisplayCallback;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;

    .prologue
    .line 47
    iget v0, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    return v0
.end method

.method static synthetic access$402(Landroid/media/RemoteDisplayCallback;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    return v0
.end method

.method static synthetic access$600()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private broadcastDongleUpdateUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "Url"    # Ljava/lang/String;

    .prologue
    .line 322
    const-string v1, "RemoteDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDongleUpdateUrl << Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 326
    const-string v1, "URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    return-void
.end method

.method private broadcastDongleVerToFota(Ljava/lang/String;)V
    .locals 4
    .param p1, "Ver"    # Ljava/lang/String;

    .prologue
    .line 306
    const-string v1, "RemoteDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastDongleVerToFota << Ver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.START_WFD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 312
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 316
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 318
    return-void
.end method

.method private broadcastWfdConnectionType(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 333
    const-string v1, "RemoteDisplayCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastWfdConnectionType mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    const-string v1, "CONNECTION_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 340
    return-void
.end method

.method private lockCPUFreq(I)V
    .locals 9
    .param p1, "minLockFreq"    # I

    .prologue
    .line 121
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 130
    new-instance v5, Landroid/os/DVFSHelper;

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    const/16 v7, 0xc

    invoke-direct {v5, v6, v7}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 132
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v5, :cond_2

    .line 133
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v4

    .line 134
    .local v4, "supportedCPUFreqTable":[I
    const/4 v3, 0x0

    .line 136
    .local v3, "minIdx":I
    if-eqz v4, :cond_2

    .line 137
    const/4 v5, 0x0

    aget v5, v4, v5

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 138
    .local v2, "min":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 139
    aget v5, v4, v1

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v2, v5, :cond_0

    .line 140
    aget v5, v4, v1

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 141
    move v3, v1

    .line 138
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_1
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v6, "CPU"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :try_start_0
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_1
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WFD lock DVFS_MIN_LIMIT :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v5, 0x1

    sput-boolean v5, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    .line 158
    .end local v1    # "i":I
    .end local v2    # "min":I
    .end local v3    # "minIdx":I
    .end local v4    # "supportedCPUFreqTable":[I
    :cond_2
    return-void

    .line 149
    .restart local v1    # "i":I
    .restart local v2    # "min":I
    .restart local v3    # "minIdx":I
    .restart local v4    # "supportedCPUFreqTable":[I
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "RemoteDisplayCallback"

    const-string v6, "cpuBooster.acquire is failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private sendCmd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 184
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 187
    .local v1, "mParam":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/RemoteDisplay;->setParam(ILjava/lang/String;)I

    .line 193
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    const/4 v1, 0x0

    .line 195
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;Landroid/media/RemoteDisplayCallback$Listener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Landroid/media/RemoteDisplayCallback$Listener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 78
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 79
    sput-object p0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    .line 82
    :cond_0
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 83
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    .line 86
    :cond_1
    sget-object v0, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-nez v0, :cond_2

    .line 87
    sput-object p1, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    .line 90
    :cond_2
    sput-object v2, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    .line 91
    sput-object v2, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    .line 93
    sput-object v2, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 94
    sput v3, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    .line 96
    sput-boolean v3, Landroid/media/RemoteDisplayCallback;->mHdcpSuspend:Z

    .line 98
    const-string v0, "RemoteDisplayCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAudioManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method private unlockCPUFreq()V
    .locals 3

    .prologue
    .line 161
    sget-boolean v1, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 171
    :try_start_0
    sget-object v1, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Landroid/media/RemoteDisplayCallback;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 177
    const-string v1, "RemoteDisplayCallback"

    const-string v2, "Wfd release DVFS_MIN_LIMIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v1, 0x0

    sput-boolean v1, Landroid/media/RemoteDisplayCallback;->mCpuLockEnabled:Z

    .line 180
    :cond_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RemoteDisplayCallback"

    const-string v2, "mDVFSLock.release is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isDongleRenameAvailable()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Landroid/media/RemoteDisplayCallback;->mRenameCapablity:Z

    return v0
.end method

.method public onNoti(ILjava/lang/String;)V
    .locals 9
    .param p1, "msg"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 358
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onNoti << msg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sparse-switch p1, :sswitch_data_0

    .line 506
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check!! << msg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 362
    :sswitch_1
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 365
    .local v3, "mNoti":Lorg/json/JSONObject;
    const-string/jumbo v5, "remoteIP"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/RemoteDisplayCallback;->mRemoteIP:Ljava/lang/String;

    .line 367
    const-string/jumbo v5, "sink_ver"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 368
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    const-string v6, "AA00"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 369
    const/4 v5, 0x0

    sput-object v5, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    .line 371
    :cond_1
    const-string/jumbo v5, "wlan.wfd.dongle"

    sget-object v6, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string/jumbo v5, "renameAvailable"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Landroid/media/RemoteDisplayCallback;->mRenameCapablity:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v3    # "mNoti":Lorg/json/JSONObject;
    :goto_1
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mDongleVer:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/media/RemoteDisplayCallback;->broadcastDongleVerToFota(Ljava/lang/String;)V

    .line 382
    sget-boolean v5, Landroid/media/RemoteDisplayCallback;->mHdcpSuspend:Z

    if-eqz v5, :cond_2

    .line 383
    invoke-direct {p0}, Landroid/media/RemoteDisplayCallback;->StartHDCPSuspend()V

    .line 388
    :cond_2
    const-string v5, "RemoteDisplayCallback"

    const-string v6, "WFD client connected broadcast sent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 406
    .end local v0    # "e":Lorg/json/JSONException;
    :sswitch_2
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 407
    sget v4, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    .line 408
    .local v4, "prevWfdMode":I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    .line 409
    if-nez v4, :cond_4

    sget v5, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    if-ne v5, v8, :cond_4

    .line 410
    sput-boolean v8, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    .line 414
    :goto_2
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onNoti received : WFD_NOTI_TO_APP_TRANSPORT_MODE, prevWfdMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mWfdMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mIsVideoCase = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    sget v5, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    if-ne v5, v8, :cond_7

    .line 416
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    sget-boolean v5, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    if-eqz v5, :cond_5

    .line 417
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v5, :cond_0

    .line 418
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v5}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V

    goto/16 :goto_0

    .line 412
    :cond_4
    const/4 v5, 0x0

    sput-boolean v5, Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z

    goto :goto_2

    .line 423
    :cond_5
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v5, :cond_6

    .line 424
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    iput v5, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    .line 426
    :cond_6
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get native STREAM_MUSIC volume :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "send command: curr stream vol @ tcp start! << "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string/jumbo v5, "vol"

    iget v6, p0, Landroid/media/RemoteDisplayCallback;->mStreamVol:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 433
    :cond_7
    sget v5, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    invoke-direct {p0, v5}, Landroid/media/RemoteDisplayCallback;->broadcastWfdConnectionType(I)V

    .line 435
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v5, :cond_0

    .line 436
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    sget v6, Landroid/media/RemoteDisplayCallback;->mWfdMode:I

    invoke-interface {v5, v6}, Landroid/media/RemoteDisplayCallback$Listener;->onTransportChanged(I)V

    goto/16 :goto_0

    .line 450
    .end local v4    # "prevWfdMode":I
    :sswitch_3
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 452
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 453
    .restart local v3    # "mNoti":Lorg/json/JSONObject;
    const-string v5, "SinkFwUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 457
    .end local v3    # "mNoti":Lorg/json/JSONObject;
    :goto_3
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mUpdateURL:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/media/RemoteDisplayCallback;->broadcastDongleUpdateUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    :catch_1
    move-exception v0

    .line 455
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 462
    .end local v0    # "e":Lorg/json/JSONException;
    :sswitch_4
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 463
    const-string v5, "RemoteDisplayCallback"

    const-string v6, "WFD noti to App - weak network connection.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v5, :cond_0

    .line 465
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v5}, Landroid/media/RemoteDisplayCallback$Listener;->onWeakNetwork()V

    goto/16 :goto_0

    .line 471
    :sswitch_5
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 472
    const/4 v2, 0x0

    .line 474
    .local v2, "level":I
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 475
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v5, "level"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    .line 480
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_4
    const-string v5, "RemoteDisplayCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WFD noti to App - update QoS level : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v5, :cond_0

    .line 483
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v5, v2}, Landroid/media/RemoteDisplayCallback$Listener;->onQoSLevelChanged(I)V

    goto/16 :goto_0

    .line 476
    :catch_2
    move-exception v0

    .line 477
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v5, "RemoteDisplayCallback"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 489
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "level":I
    :sswitch_6
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 490
    const-string v5, "RemoteDisplayCallback"

    const-string v6, "WFD noti to App - WFD_NOTI_TO_APP_HEADSET_CONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    if-eqz v5, :cond_0

    .line 492
    sget-object v5, Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;

    invoke-interface {v5}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V

    goto/16 :goto_0

    .line 360
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x7 -> :sswitch_2
        0x14 -> :sswitch_3
        0x1e -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x64 -> :sswitch_0
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string v0, "RemoteDisplayCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string/jumbo v0, "res"

    invoke-direct {p0, v0, p1}, Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    const/4 v0, 0x1

    return v0
.end method

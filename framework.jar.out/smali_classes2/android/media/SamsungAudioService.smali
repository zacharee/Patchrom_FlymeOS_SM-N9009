.class public Landroid/media/SamsungAudioService;
.super Ljava/lang/Object;
.source "SamsungAudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;,
        Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG_AUDIO:Z = true

.field private static final DOCK_DEVICE_NAME:[Ljava/lang/String;

.field private static final EARJACK_COUNT_PATH:Ljava/lang/String; = "/efs/FactoryApp/earjack_count"

.field private static final MSG_CHECK_EARCARE_STATE:I = 0x1

.field private static final MSG_END_SOUND_MANNER_MODE:I = 0x5

.field private static final MSG_PERFORM_SOFT_RESET:I = 0x2

.field private static final MSG_PLAY_SOUND_MANNER_MODE:I = 0x3

.field private static final MSG_USB_CHECK_RELEASE:I = 0x0

.field private static final MSG_VIBRATE_MANNER_MODE:I = 0x4

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SMART_DOCK_CONNECTED:Ljava/lang/String; = "10"

.field private static final TAG:Ljava/lang/String;

.field private static final TMS_ACTION_TYPE_START:I = 0x1

.field private static final TMS_ACTION_TYPE_STOP:I = 0x2


# instance fields
.field private emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

.field private mAllSoundMute:I

.field private final mAudioService:Landroid/media/AudioService;

.field private mAutoHaptic:I

.field private mBackgroundMusicService:Landroid/media/BackgroundMusicService;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCpuCoreNumHelper:Landroid/os/DVFSHelper;

.field private mCpuHelper:Landroid/os/DVFSHelper;

.field private mDualMicMode:I

.field private mExternalUsbInfo:Ljava/lang/String;

.field private mFakeState:Z

.field private mIsEarCareEnabled:Z

.field private mIsEarCareSettingOn:Z

.field private mIsPlaySilentModeOff:Z

.field private mMonoMode:I

.field private mNaturalSound:I

.field private mOldIsSmartdock:Z

.field private mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

.field mSamsungAudioServiceReceiver:Landroid/content/BroadcastReceiver;

.field private mSamsungAudioSettingsObserver:Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;

.field private mSilentModeOff:Z

.field private mSoundBalance:I

.field private mStatusbarExpanded:Z

.field private mSystemReady:Z

.field private final mUEventUsbConnectObserver:Landroid/os/UEventObserver;

.field private mUSBDetected:Z

.field private mUsbSupportedFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const-class v0, Landroid/media/SamsungAudioService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Smart Dock with TA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Smart Dock+TA"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/SamsungAudioService;->DOCK_DEVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/AudioService$VolumeController;Landroid/media/AudioService;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cntxt"    # Landroid/content/Context;
    .param p3, "volumeCtrl"    # Landroid/media/AudioService$VolumeController;
    .param p4, "as"    # Landroid/media/AudioService;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mSystemReady:Z

    .line 96
    iput-object v3, p0, Landroid/media/SamsungAudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    .line 97
    iput-object v3, p0, Landroid/media/SamsungAudioService;->mCpuCoreNumHelper:Landroid/os/DVFSHelper;

    .line 104
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mIsEarCareSettingOn:Z

    .line 105
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mIsEarCareEnabled:Z

    .line 108
    iput-object v3, p0, Landroid/media/SamsungAudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 111
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mOldIsSmartdock:Z

    .line 113
    iput v2, p0, Landroid/media/SamsungAudioService;->mUsbSupportedFormat:I

    .line 115
    iput-object v3, p0, Landroid/media/SamsungAudioService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 116
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mSilentModeOff:Z

    .line 117
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mIsPlaySilentModeOff:Z

    .line 137
    iput-object v3, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    .line 262
    new-instance v1, Landroid/media/SamsungAudioService$1;

    invoke-direct {v1, p0}, Landroid/media/SamsungAudioService$1;-><init>(Landroid/media/SamsungAudioService;)V

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 594
    new-instance v1, Landroid/media/SamsungAudioService$2;

    invoke-direct {v1, p0}, Landroid/media/SamsungAudioService$2;-><init>(Landroid/media/SamsungAudioService;)V

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mUEventUsbConnectObserver:Landroid/os/UEventObserver;

    .line 142
    new-instance v1, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    invoke-direct {v1, p0, p1}, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;-><init>(Landroid/media/SamsungAudioService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    .line 143
    iput-object p2, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 145
    iput-object p4, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    .line 147
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mUSBDetected:Z

    .line 148
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mFakeState:Z

    .line 149
    new-instance v1, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;

    invoke-direct {v1, p0}, Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;-><init>(Landroid/media/SamsungAudioService;)V

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mSamsungAudioSettingsObserver:Landroid/media/SamsungAudioService$SamsungAudioSettingsObserver;

    .line 150
    iget-object v1, p0, Landroid/media/SamsungAudioService;->mUEventUsbConnectObserver:Landroid/os/UEventObserver;

    const-string v2, "USB_CONNECTION"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.app.audio.epinforequest"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "com.sec.tms.audio.server"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v1, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "android.intent.action.proximity_sensor"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.settings.MONO_AUDIO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v1, "com.android.phone.NOISE_REDUCTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v1, "com.android.phone.NATURAL_SOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    iput-object v1, p0, Landroid/media/SamsungAudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    .line 182
    iget-object v1, p0, Landroid/media/SamsungAudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/SamsungAudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    const-string v1, "emergency_mode=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 187
    :cond_0
    iput-object v3, p0, Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;

    .line 189
    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v1, p2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/media/SamsungAudioService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 191
    return-void
.end method

.method static synthetic access$000(Landroid/media/SamsungAudioService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/SamsungAudioService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/media/SamsungAudioService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/media/SamsungAudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 64
    iget v0, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    return v0
.end method

.method static synthetic access$1102(Landroid/media/SamsungAudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    return p1
.end method

.method static synthetic access$1200(Landroid/media/SamsungAudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/media/SamsungAudioService;->setMonoMode(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/SamsungAudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 64
    iget v0, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    return v0
.end method

.method static synthetic access$1302(Landroid/media/SamsungAudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    return p1
.end method

.method static synthetic access$1400(Landroid/media/SamsungAudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/media/SamsungAudioService;->setDualMicMode(I)V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/SamsungAudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 64
    iget v0, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    return v0
.end method

.method static synthetic access$1502(Landroid/media/SamsungAudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    return p1
.end method

.method static synthetic access$1600(Landroid/media/SamsungAudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/media/SamsungAudioService;->setNaturalSoundMode(I)V

    return-void
.end method

.method static synthetic access$1702(Landroid/media/SamsungAudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    return p1
.end method

.method static synthetic access$1802(Landroid/media/SamsungAudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mStatusbarExpanded:Z

    return p1
.end method

.method static synthetic access$1900(Landroid/media/SamsungAudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$200(Landroid/media/SamsungAudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mFakeState:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/media/SamsungAudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/media/SamsungAudioService;->isUSBCheckStreamActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Landroid/media/SamsungAudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mFakeState:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/media/SamsungAudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mUSBDetected:Z

    return v0
.end method

.method static synthetic access$2102(Landroid/media/SamsungAudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mUSBDetected:Z

    return p1
.end method

.method static synthetic access$300(Landroid/media/SamsungAudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/media/SamsungAudioService;->playSilentModeSound()V

    return-void
.end method

.method static synthetic access$402(Landroid/media/SamsungAudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mIsPlaySilentModeOff:Z

    return p1
.end method

.method static synthetic access$502(Landroid/media/SamsungAudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/SamsungAudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mIsEarCareSettingOn:Z

    return p1
.end method

.method static synthetic access$600(Landroid/media/SamsungAudioService;)Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 64
    invoke-static/range {p0 .. p6}, Landroid/media/SamsungAudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/SamsungAudioService;)Lcom/sec/android/emergencymode/EmergencyManager;
    .locals 1
    .param p0, "x0"    # Landroid/media/SamsungAudioService;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/media/SamsungAudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    return-object v0
.end method

.method private getActiveStreamCount()I
    .locals 3

    .prologue
    .line 744
    const/4 v0, 0x0

    .line 745
    .local v0, "nReturn":I
    const/4 v1, 0x0

    .local v1, "nStreamNum":I
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 746
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 747
    add-int/lit8 v0, v0, 0x1

    .line 745
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    :cond_1
    return v0
.end method

.method protected static getFactoryMode()Z
    .locals 5

    .prologue
    .line 779
    const/4 v1, 0x0

    .line 781
    .local v1, "userMode":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 786
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 787
    const/4 v2, 0x0

    .line 790
    :goto_1
    return v2

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e1":Ljava/io/IOException;
    const-string v1, "OFF"

    .line 784
    sget-object v2, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v3, "cannot open file : /efs/FactoryApp/factorymode "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 789
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_0
    sget-object v2, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v3, "Current mode is Factorymode, So Popup UI will not be apear"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isSmartDockConnected()Z
    .locals 20

    .prologue
    .line 953
    const-wide/16 v18, 0x64

    :try_start_0
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :goto_0
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v4, v0, [C

    .line 958
    .local v4, "buffer":[C
    const-string v3, "/sys/class/sec/switch/device"

    .line 959
    .local v3, "SmartDockFile":Ljava/lang/String;
    const-string v2, "/sys/class/sec/switch/adc"

    .line 960
    .local v2, "SmartDName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 961
    .local v9, "file":Ljava/io/FileReader;
    const/4 v12, 0x0

    .line 962
    .local v12, "in":Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 963
    .local v15, "isSmartDockString":Z
    const/4 v14, 0x0

    .line 964
    .local v14, "isSmartDockADC":Z
    const/4 v6, 0x0

    .line 965
    .local v6, "deviceValue":Ljava/lang/String;
    const/4 v5, 0x0

    .line 970
    .local v5, "deviceVal":Ljava/lang/String;
    :try_start_1
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 971
    .end local v9    # "file":Ljava/io/FileReader;
    .local v10, "file":Ljava/io/FileReader;
    const/16 v17, 0x0

    const/16 v18, 0x8

    :try_start_2
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v4, v0, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v16

    .line 972
    .local v16, "len":I
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 973
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    .line 974
    new-instance v7, Ljava/lang/String;

    const/16 v17, 0x0

    add-int/lit8 v18, v16, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v7, v4, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .end local v6    # "deviceValue":Ljava/lang/String;
    .local v7, "deviceValue":Ljava/lang/String;
    move-object v6, v7

    .line 978
    .end local v7    # "deviceValue":Ljava/lang/String;
    .restart local v6    # "deviceValue":Ljava/lang/String;
    :goto_1
    const-string v17, "10"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 979
    const/4 v14, 0x1

    .line 984
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 985
    .end local v12    # "in":Ljava/io/BufferedReader;
    .local v13, "in":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 986
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    .line 988
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v17

    if-nez v17, :cond_4

    .line 989
    :cond_0
    const/16 v17, 0x0

    .line 1016
    if-eqz v10, :cond_1

    .line 1017
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 1019
    :cond_1
    if-eqz v13, :cond_2

    .line 1020
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_2
    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 1028
    .end local v10    # "file":Ljava/io/FileReader;
    .end local v16    # "len":I
    .restart local v9    # "file":Ljava/io/FileReader;
    :goto_3
    return v17

    .line 954
    .end local v2    # "SmartDName":Ljava/lang/String;
    .end local v3    # "SmartDockFile":Ljava/lang/String;
    .end local v4    # "buffer":[C
    .end local v5    # "deviceVal":Ljava/lang/String;
    .end local v6    # "deviceValue":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .end local v14    # "isSmartDockADC":Z
    .end local v15    # "isSmartDockString":Z
    :catch_0
    move-exception v8

    .line 955
    .local v8, "e":Ljava/lang/Exception;
    sget-object v17, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error in Thread.sleep() : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 976
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "SmartDName":Ljava/lang/String;
    .restart local v3    # "SmartDockFile":Ljava/lang/String;
    .restart local v4    # "buffer":[C
    .restart local v5    # "deviceVal":Ljava/lang/String;
    .restart local v6    # "deviceValue":Ljava/lang/String;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "isSmartDockADC":Z
    .restart local v15    # "isSmartDockString":Z
    .restart local v16    # "len":I
    :cond_3
    :try_start_5
    new-instance v7, Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v7, v4, v0, v1}, Ljava/lang/String;-><init>([CII)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v6    # "deviceValue":Ljava/lang/String;
    .restart local v7    # "deviceValue":Ljava/lang/String;
    move-object v6, v7

    .end local v7    # "deviceValue":Ljava/lang/String;
    .restart local v6    # "deviceValue":Ljava/lang/String;
    goto :goto_1

    .line 1022
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v8

    .line 1024
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 991
    .end local v8    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 992
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    sget-object v17, Landroid/media/SamsungAudioService;->DOCK_DEVICE_NAME:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_6

    if-nez v15, :cond_6

    .line 993
    sget-object v17, Landroid/media/SamsungAudioService;->DOCK_DEVICE_NAME:[Ljava/lang/String;

    aget-object v17, v17, v11

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 994
    const/4 v15, 0x1

    .line 992
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 997
    :cond_6
    sget-object v17, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isSmartDockString = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1001
    if-eqz v15, :cond_9

    .line 1002
    const/16 v17, 0x1

    .line 1016
    if-eqz v10, :cond_7

    .line 1017
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 1019
    :cond_7
    if-eqz v13, :cond_8

    .line 1020
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_8
    :goto_5
    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .line 1025
    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_3

    .line 1022
    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v8

    .line 1024
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .end local v8    # "e":Ljava/io/IOException;
    :cond_9
    move-object v12, v13

    .line 1016
    .end local v11    # "i":I
    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    :cond_a
    if-eqz v10, :cond_b

    .line 1017
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    .line 1019
    :cond_b
    if-eqz v12, :cond_c

    .line 1020
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_c
    move-object v9, v10

    .line 1028
    .end local v10    # "file":Ljava/io/FileReader;
    .end local v16    # "len":I
    .restart local v9    # "file":Ljava/io/FileReader;
    :cond_d
    :goto_6
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 1022
    .end local v9    # "file":Ljava/io/FileReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v16    # "len":I
    :catch_3
    move-exception v8

    .line 1024
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .line 1026
    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_6

    .line 1005
    .end local v8    # "e":Ljava/io/IOException;
    .end local v16    # "len":I
    :catch_4
    move-exception v8

    .line 1006
    .local v8, "e":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_9
    sget-object v17, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v18, "checkSmartDock This kernel does not have wired headset support "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1016
    if-eqz v9, :cond_e

    .line 1017
    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 1019
    :cond_e
    if-eqz v12, :cond_f

    .line 1020
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :cond_f
    :goto_8
    move/from16 v17, v14

    .line 1025
    goto/16 :goto_3

    .line 1022
    .restart local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v8

    .line 1024
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 1012
    .end local v8    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 1013
    .local v8, "e":Ljava/lang/Exception;
    :goto_9
    :try_start_b
    sget-object v17, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1016
    if-eqz v9, :cond_10

    .line 1017
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 1019
    :cond_10
    if-eqz v12, :cond_d

    .line 1020
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_6

    .line 1022
    :catch_7
    move-exception v8

    .line 1024
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1015
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 1016
    :goto_a
    if-eqz v9, :cond_11

    .line 1017
    :try_start_d
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V

    .line 1019
    :cond_11
    if-eqz v12, :cond_12

    .line 1020
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 1025
    :cond_12
    :goto_b
    throw v17

    .line 1022
    :catch_8
    move-exception v8

    .line 1024
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 1015
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "file":Ljava/io/FileReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    :catchall_1
    move-exception v17

    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_a

    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "len":I
    :catchall_2
    move-exception v17

    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_a

    .line 1012
    .end local v9    # "file":Ljava/io/FileReader;
    .end local v16    # "len":I
    .restart local v10    # "file":Ljava/io/FileReader;
    :catch_9
    move-exception v8

    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_9

    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "len":I
    :catch_a
    move-exception v8

    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_9

    .line 1005
    .end local v9    # "file":Ljava/io/FileReader;
    .end local v16    # "len":I
    .restart local v10    # "file":Ljava/io/FileReader;
    :catch_b
    move-exception v8

    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_7

    .end local v9    # "file":Ljava/io/FileReader;
    .end local v12    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "file":Ljava/io/FileReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "len":I
    :catch_c
    move-exception v8

    move-object v12, v13

    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "in":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "file":Ljava/io/FileReader;
    .restart local v9    # "file":Ljava/io/FileReader;
    goto :goto_7
.end method

.method private isUSBCheckStreamActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 589
    const/4 v1, 0x4

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private playSilentModeSound()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 862
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_effects_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v1, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mSilentModeOff:Z

    if-nez v0, :cond_0

    .line 868
    iput-boolean v2, p0, Landroid/media/SamsungAudioService;->mIsPlaySilentModeOff:Z

    .line 869
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->playSoundEffect(I)V

    .line 870
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    const/4 v1, 0x5

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/media/SamsungAudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 439
    if-nez p2, :cond_1

    .line 440
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 445
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p6

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 446
    :goto_0
    return-void

    .line 441
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private setAutoHaptic(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioParam;auto_haptic_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 936
    return-void
.end method

.method private setDualMicMode(I)V
    .locals 1
    .param p1, "dualmicMode"    # I

    .prologue
    .line 901
    if-lez p1, :cond_0

    .line 902
    const-string v0, "dualmic_enabled=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 907
    :goto_0
    return-void

    .line 904
    :cond_0
    const-string v0, "dualmic_enabled=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMonoMode(I)V
    .locals 2
    .param p1, "monoMode"    # I

    .prologue
    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toMono="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 895
    return-void
.end method

.method private setNaturalSoundMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 912
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNaturalSoundMode() - mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    if-lez p1, :cond_0

    .line 914
    const-string v0, "bwe=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 918
    :goto_0
    return-void

    .line 916
    :cond_0
    const-string v0, "bwe=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSoundBalance()V
    .locals 5

    .prologue
    .line 941
    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "sound_balance"

    const/16 v3, 0x32

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 942
    .local v0, "soundBalance":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sound_balance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 943
    return-void
.end method


# virtual methods
.method protected ChangeDefaultVolume()V
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x7

    const/4 v3, 0x4

    const/16 v2, 0xb

    .line 762
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 763
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v1, 0x1

    aput v5, v0, v1

    .line 764
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 765
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aput v5, v0, v1

    .line 766
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aput v2, v0, v3

    .line 767
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 768
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v1, 0x6

    aput v4, v0, v1

    .line 769
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/16 v1, 0xe

    aput v1, v0, v4

    .line 770
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 771
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aput v2, v0, v5

    .line 772
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/16 v1, 0xa

    aput v4, v0, v1

    .line 773
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aput v3, v0, v2

    .line 774
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/16 v1, 0xc

    aput v3, v0, v1

    .line 776
    return-void
.end method

.method protected checkAndSendEarCareInfo()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 696
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mSystemReady:Z

    if-nez v0, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.audio.epinforesponse"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 701
    .local v7, "broadcast":Landroid/content/Intent;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 702
    .local v8, "extras":Landroid/os/Bundle;
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/media/AudioService;->isDeviceConnected(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/media/AudioService;->isDeviceConnected(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v9, v1

    .line 704
    .local v9, "isDeviceConnected":Z
    :goto_1
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mIsEarCareSettingOn:Z

    if-eqz v0, :cond_6

    if-eqz v9, :cond_6

    .line 705
    const/4 v11, 0x0

    .line 706
    .local v11, "nState":I
    invoke-direct {p0}, Landroid/media/SamsungAudioService;->getActiveStreamCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 707
    const-string v0, "earcare=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 708
    const/4 v11, 0x1

    .line 713
    :goto_2
    const-string v0, "earcare_percent"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 714
    .local v13, "strState":Ljava/lang/String;
    if-eqz v13, :cond_3

    const-string v0, ""

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 715
    const-string v12, "earcare_percent="

    .line 716
    .local v12, "strKey":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 717
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 720
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 721
    .local v10, "nPercent":I
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v2, "checkAndSendEarCareInfo() - send intent"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string/jumbo v0, "state"

    invoke-virtual {v8, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 723
    const-string/jumbo v0, "percent"

    invoke-virtual {v8, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 724
    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 725
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v2}, Landroid/media/AudioService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 726
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndSendEarCareInfo() state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " percent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    .end local v10    # "nPercent":I
    .end local v12    # "strKey":Ljava/lang/String;
    :cond_3
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v2, "checkAndSendEarCareInfo() - Loop"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    const/4 v5, 0x0

    const v6, 0xea60

    move v2, v1

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/media/SamsungAudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_0

    .end local v9    # "isDeviceConnected":Z
    .end local v11    # "nState":I
    .end local v13    # "strState":Ljava/lang/String;
    :cond_4
    move v9, v3

    .line 702
    goto/16 :goto_1

    .line 710
    .restart local v9    # "isDeviceConnected":Z
    .restart local v11    # "nState":I
    :cond_5
    const-string v0, "earcare=noActive"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 711
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 730
    .end local v11    # "nState":I
    :cond_6
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v2, "checkAndSendEarCareInfo() - send off"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v0, "earcare=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 732
    const-string/jumbo v0, "state"

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 733
    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 734
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v2}, Landroid/media/AudioService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 735
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    invoke-virtual {v0, v1}, Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;->removeMessages(I)V

    goto/16 :goto_0
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 195
    const-string v0, "\nSamsungAudioService dump:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method protected getAllSoundMute()I
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    return v0
.end method

.method protected getCurOutDevice()I
    .locals 3

    .prologue
    .line 809
    const-string v1, "audioParam;outDevice"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    :cond_0
    sget-object v1, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v2, "getCurOutDevice : Can\'t get outDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/4 v1, -0x1

    .line 814
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method protected increaseEARCount()V
    .locals 8

    .prologue
    .line 819
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/FactoryApp/earjack_count"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, "strEARCount":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, ""

    if-eq v1, v4, :cond_0

    .line 821
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long v2, v4, v6

    .line 822
    .local v2, "earjack_count":J
    const-string v4, "/efs/FactoryApp/earjack_count"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    .end local v1    # "strEARCount":Ljava/lang/String;
    .end local v2    # "earjack_count":J
    :goto_0
    return-void

    .line 824
    .restart local v1    # "strEARCount":Ljava/lang/String;
    :cond_0
    const-string v4, "/efs/FactoryApp/earjack_count"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 826
    .end local v1    # "strEARCount":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 828
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberFormatException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected initCPUBoost()V
    .locals 0

    .prologue
    .line 663
    return-void
.end method

.method protected isCoverOpen()Z
    .locals 2

    .prologue
    .line 835
    iget-object v1, p0, Landroid/media/SamsungAudioService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 836
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 837
    const/4 v1, 0x0

    .line 838
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isFactorySim()Z
    .locals 7

    .prologue
    .line 795
    :try_start_0
    iget-object v4, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 796
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .line 797
    .local v0, "IMSI":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 798
    .local v2, "imsi":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "999999999999999"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 799
    sget-object v4, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v5, "Factory SIM is used now, So Popup UI will not be apear"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    const/4 v4, 0x1

    .line 805
    .end local v0    # "IMSI":Ljava/lang/String;
    .end local v2    # "imsi":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return v4

    .line 802
    :catch_0
    move-exception v1

    .line 803
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error checking factory SIM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected isPlaySilentModeOff()Z
    .locals 1

    .prologue
    .line 889
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mIsPlaySilentModeOff:Z

    return v0
.end method

.method protected isRestrictionHeadphone()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1056
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1057
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isHeadPhoneEnabled"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "true"

    aput-object v5, v4, v8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1058
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1060
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1061
    const-string v0, "isHeadPhoneEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v2, "Headset disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 1069
    :goto_0
    return v0

    .line 1066
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 1069
    goto :goto_0

    .line 1066
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected isStatusbarExpanded()Z
    .locals 1

    .prologue
    .line 947
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mStatusbarExpanded:Z

    return v0
.end method

.method protected mediaServerDied()V
    .locals 4

    .prologue
    .line 495
    iget v2, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setMonoMode(I)V

    .line 497
    iget v2, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setDualMicMode(I)V

    .line 499
    invoke-virtual {p0}, Landroid/media/SamsungAudioService;->setAllSoundMute()V

    .line 501
    iget v2, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setNaturalSoundMode(I)V

    .line 503
    iget v2, p0, Landroid/media/SamsungAudioService;->mAutoHaptic:I

    invoke-direct {p0, v2}, Landroid/media/SamsungAudioService;->setAutoHaptic(I)V

    .line 505
    invoke-direct {p0}, Landroid/media/SamsungAudioService;->setSoundBalance()V

    .line 507
    const-string/jumbo v2, "persist.audio.voicetrig"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "voicetrig":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "voice_trig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 511
    :cond_0
    const-string/jumbo v2, "persist.audio.voicewakeup"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "voicewakeup":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "voice_wakeup_mic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 515
    :cond_2
    return-void
.end method

.method protected onAudioService()V
    .locals 2

    .prologue
    .line 458
    iget v0, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setMonoMode(I)V

    .line 460
    iget v0, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setDualMicMode(I)V

    .line 462
    iget v0, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 463
    invoke-virtual {p0}, Landroid/media/SamsungAudioService;->setAllSoundMute()V

    .line 465
    :cond_0
    iget v0, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setNaturalSoundMode(I)V

    .line 467
    iget v0, p0, Landroid/media/SamsungAudioService;->mAutoHaptic:I

    if-eqz v0, :cond_1

    .line 468
    iget v0, p0, Landroid/media/SamsungAudioService;->mAutoHaptic:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setAutoHaptic(I)V

    .line 470
    :cond_1
    invoke-direct {p0}, Landroid/media/SamsungAudioService;->setSoundBalance()V

    .line 471
    return-void
.end method

.method protected performSoftReset()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 520
    iput v3, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    .line 521
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mono_audio_db"

    iget v2, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 522
    iget v0, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setMonoMode(I)V

    .line 524
    iput v3, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    .line 525
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "call_noise_reduction"

    iget v2, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 526
    iget v0, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setDualMicMode(I)V

    .line 528
    iput v3, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    .line 529
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "all_sound_off"

    iget v2, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 530
    invoke-virtual {p0}, Landroid/media/SamsungAudioService;->setAllSoundMute()V

    .line 532
    iput v3, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    .line 533
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "call_natural_sound"

    iget v2, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 534
    iget v0, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setNaturalSoundMode(I)V

    .line 536
    iput v3, p0, Landroid/media/SamsungAudioService;->mAutoHaptic:I

    .line 538
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "def_tactileassist_enable"

    iget v2, p0, Landroid/media/SamsungAudioService;->mAutoHaptic:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 539
    iget v0, p0, Landroid/media/SamsungAudioService;->mAutoHaptic:I

    invoke-direct {p0, v0}, Landroid/media/SamsungAudioService;->setAutoHaptic(I)V

    .line 542
    return-void
.end method

.method public playBackgroundMusic(II)Z
    .locals 3
    .param p1, "music_id"    # I
    .param p2, "delay"    # I

    .prologue
    .line 1033
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    if-nez v0, :cond_0

    .line 1034
    new-instance v0, Landroid/media/BackgroundMusicService;

    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    invoke-direct {v0, v1, v2}, Landroid/media/BackgroundMusicService;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    .line 1035
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    invoke-virtual {v0, p1, p2}, Landroid/media/BackgroundMusicService;->play(II)V

    .line 1037
    const/4 v0, 0x1

    .line 1041
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected porcessUsbAudioDevicePlug(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 547
    const/4 v9, 0x0

    .line 548
    .local v9, "outDevice":I
    const/4 v7, 0x0

    .line 549
    .local v7, "inDevice":I
    const-string/jumbo v12, "state"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 550
    .local v11, "state":I
    const-string v12, "card"

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 551
    .local v1, "alsaCard":I
    const-string v12, "device"

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 552
    .local v2, "alsaDevice":I
    const-string v12, "hasPlayback"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 553
    .local v6, "hasPlayback":Z
    const-string v12, "hasCapture"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 554
    .local v4, "hasCapture":Z
    const-string v12, "hasMIDI"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 555
    .local v5, "hasMIDI":Z
    const/4 v12, -0x1

    if-ne v1, v12, :cond_1

    const/4 v12, -0x1

    if-ne v2, v12, :cond_1

    const-string v10, ""

    .line 558
    .local v10, "params":Ljava/lang/String;
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/media/SamsungAudioService;->isSmartDockConnected()Z

    move-result v8

    .line 559
    .local v8, "isSmartdock":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v13, "cradle_enable"

    const/4 v14, 0x0

    const/4 v15, -0x2

    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 560
    .local v3, "cradleEnabled":I
    if-eqz v8, :cond_4

    .line 561
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/media/SamsungAudioService;->mOldIsSmartdock:Z

    if-eq v8, v12, :cond_0

    .line 562
    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/media/SamsungAudioService;->mOldIsSmartdock:Z

    .line 563
    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    move-object v12, v10

    :goto_1
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;

    .line 564
    const/4 v12, 0x1

    if-ne v3, v12, :cond_3

    .line 565
    sget-object v12, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cradleEnabled change path, state : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/16 v9, 0x4000

    .line 568
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v12, v9, v11, v10}, Landroid/media/AudioService;->setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;)V

    .line 586
    :cond_0
    :goto_2
    return-void

    .line 555
    .end local v3    # "cradleEnabled":I
    .end local v8    # "isSmartdock":Z
    .end local v10    # "params":Ljava/lang/String;
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "card="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";device="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 563
    .restart local v3    # "cradleEnabled":I
    .restart local v8    # "isSmartdock":Z
    .restart local v10    # "params":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 570
    :cond_3
    sget-object v12, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v13, "cradle disabled no any action"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 574
    :cond_4
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/media/SamsungAudioService;->mOldIsSmartdock:Z

    .line 576
    if-eqz v6, :cond_5

    .line 577
    const/16 v9, 0x4000

    .line 578
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v12, v9, v11, v10}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    .line 581
    :cond_5
    if-eqz v4, :cond_0

    .line 582
    const v7, -0x7ffff000

    .line 583
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v12, v7, v11, v10}, Landroid/media/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    goto :goto_2
.end method

.method protected readPersistedSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 475
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 477
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "mono_audio_db"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mMonoMode:I

    .line 479
    const-string v1, "call_noise_reduction"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mDualMicMode:I

    .line 481
    const-string v1, "all_sound_off"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    .line 483
    const-string v1, "call_natural_sound"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mNaturalSound:I

    .line 486
    iget-object v1, p0, Landroid/media/SamsungAudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "def_tactileassist_enable"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/SamsungAudioService;->mAutoHaptic:I

    .line 490
    return-void
.end method

.method protected setAllSoundMute()V
    .locals 2

    .prologue
    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioParam;allsoundmute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 924
    const-string/jumbo v0, "persist.audio.allsoundmute"

    iget v1, p0, Landroid/media/SamsungAudioService;->mAllSoundMute:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    return-void
.end method

.method protected setRingerMode(I)V
    .locals 7
    .param p1, "ringerMode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 844
    packed-switch p1, :pswitch_data_0

    .line 859
    :goto_0
    return-void

    .line 846
    :pswitch_0
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v1, "Ringer mode : silent & set driving mode off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iput-boolean v3, p0, Landroid/media/SamsungAudioService;->mSilentModeOff:Z

    goto :goto_0

    .line 850
    :pswitch_1
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v1, "Ringer mode : vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iput-boolean v3, p0, Landroid/media/SamsungAudioService;->mSilentModeOff:Z

    .line 852
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    const/4 v1, 0x4

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/SamsungAudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 855
    :pswitch_2
    sget-object v0, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v1, "Ringer mode : normal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    const/4 v1, 0x3

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/SamsungAudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 844
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setSilentModeOff(Z)V
    .locals 0
    .param p1, "onOff"    # Z

    .prologue
    .line 885
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mSilentModeOff:Z

    .line 886
    return-void
.end method

.method protected setSystemReady(Z)V
    .locals 1
    .param p1, "bEable"    # Z

    .prologue
    .line 450
    iget-boolean v0, p0, Landroid/media/SamsungAudioService;->mSystemReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 451
    const-string/jumbo v0, "system_ready=1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 452
    :cond_0
    iput-boolean p1, p0, Landroid/media/SamsungAudioService;->mSystemReady:Z

    .line 453
    return-void
.end method

.method protected startCPUBoost()V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

.method public stopBackgroundMusic()Z
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    invoke-virtual {v0}, Landroid/media/BackgroundMusicService;->stop()V

    .line 1047
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/SamsungAudioService;->mBackgroundMusicService:Landroid/media/BackgroundMusicService;

    .line 1048
    const/4 v0, 0x1

    .line 1050
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected stopCPUBoost()V
    .locals 0

    .prologue
    .line 691
    return-void
.end method

.method protected vibrateCall()V
    .locals 4

    .prologue
    .line 875
    :try_start_0
    iget-object v2, p0, Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 876
    iget-object v2, p0, Landroid/media/SamsungAudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator;

    .line 877
    .local v1, "vibrator":Landroid/os/SystemVibrator;
    const/16 v2, 0xc

    sget-object v3, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v1, v2, v3}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    .end local v1    # "vibrator":Landroid/os/SystemVibrator;
    :cond_0
    :goto_0
    return-void

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;

    const-string v3, "Vibrator error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

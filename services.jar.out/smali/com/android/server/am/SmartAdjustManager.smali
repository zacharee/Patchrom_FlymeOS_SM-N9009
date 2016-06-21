.class public Lcom/android/server/am/SmartAdjustManager;
.super Ljava/lang/Object;
.source "SmartAdjustManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;,
        Lcom/android/server/am/SmartAdjustManager$PackageTable;,
        Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    }
.end annotation


# static fields
.field static final BG_COUNT_CACHED:I = 0x1

.field static final BG_COUNT_CACHED_HIDDEN:I = 0x3

.field static final BG_COUNT_EMPTY:I = 0x2

.field static final BG_COUNT_NON_CACHED:I = 0x4

.field private static final BROADCAST_SERVICEMANAGER_SHIRINKSERVICE:Ljava/lang/String; = "com.android.server.am.BROADCAST_SERVICEMANAGER_SHIRINKSERVICE"

.field static final CSC_FILE:Ljava/lang/String; = "/system/csc/default_application_order.xml"

.field private static final CSC_TAG:Ljava/lang/String; = "favorite"

.field static DB_CONN_KILL_SKIP:Z = false

.field static final HOTNESS_ACTIVITY:I = 0x0

.field static final HOTNESS_EMPTY:I = 0x1

.field static final MOVE_TO_INACTIVE_TIME_INTERNAL:J = 0xf731400L

.field static final PROTECTED_PACKAGES_LIMIT:I = 0x6

.field static SAMP_DEBUG:Z = false

.field static SAMP_DEBUG_SPCM:Z = false

.field static SAMP_DEBUG_TRACE:Z = false

.field static SAMP_ENABLE:Z = false

.field static SAMP_HOTNESS_ENABLE:Z = false

.field static SAMP_SPCM_ENABLE:Z = false

.field static SERVICE_KILL_LIMIT_OF_ADJ:I = 0x0

.field static SMART_DHA_BG_APPS_MAX:I = 0x0

.field static SMART_DHA_CACHED_APP_MAX:I = 0x0

.field static final SMART_DHA_HOTNESS_PROTECT_TIME:J = 0x1388L

.field public static final SPCM_APPLOCKING_RESETTIME_MSG:I = 0x321

.field static final SPCM_BASE_PACKAGE_SCORE:I = 0x2710

.field static final SPCM_COOL_TIME:J = 0x7530L

.field static SPCM_DB_ENABLE:Z = false

.field static SPCM_DB_LAUNCHER_ONLY:Z = false

.field static final SPCM_FORCESTOP_INTERVAL_TIME:J = 0x927c0L

.field static SPCM_INIT:Z = false

.field static SPCM_KILL_SKIP:Z = false

.field static SPCM_PRELOAD_ENABLE:Z = false

.field static SPCM_TRIGGER:Z = false

.field static final TAG:Ljava/lang/String; = "SAMP"

.field static final TAG_HOTNESS:Ljava/lang/String; = "SAMP_Hotness"

.field static final TAG_KILL:Ljava/lang/String; = "SPCM kill"

.field static final TAG_SDHA:Ljava/lang/String; = "SAMP_SDHA"

.field static final TAG_SPCM:Ljava/lang/String; = "SAMP_SPCM"

.field static final TAG_TEST:Ljava/lang/String; = "_test"

.field static final UPDATE_PACKAGES_INTERNAL_TIME:J = 0x36ee80L

.field static final UPDATE_PACKAGES_INTERNAL_TIME_FIRST:J = 0x1d4c0L

.field static debuggingR:Lcom/android/server/am/ProcessRecord;

.field static isFirst:Z

.field static isLogPrinted:Z

.field static strPrevAppForActivityHotness:Ljava/lang/String;

.field static strPrevAppForEmptyHotness:Ljava/lang/String;


# instance fields
.field private SAMP_HOTNESS_MAX_VALUE:I

.field protected SAMP_PPM_ENABLE:Z

.field protected SMART_SPM_ENABLE:Z

.field private UPDATE_UNUSEDPACKAGES_INTERVAL:J

.field final cscpkgName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mActivePackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/SmartAdjustManager$PackageTable;",
            ">;"
        }
    .end annotation
.end field

.field final mActivePackagesByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SmartAdjustManager$PackageTable;",
            ">;"
        }
    .end annotation
.end field

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field mAppWidgetServiceLock:Ljava/lang/Object;

.field private mCachedServiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private final mDefaultServiceLimitScale:I

.field public mExternalWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

.field private final mHotnessAdjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SmartAdjustManager$HotnessValue;",
            ">;"
        }
    .end annotation
.end field

.field public mInActivePackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/SmartAdjustManager$PackageTable;",
            ">;"
        }
    .end annotation
.end field

.field final mInActivePackagesByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SmartAdjustManager$PackageTable;",
            ">;"
        }
    .end annotation
.end field

.field final mKillingServiceGraylist:[Ljava/lang/String;

.field private final mLastKillTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSPCMExtWhiteListMod:J

.field private mLastSPCMWorkingTime:J

.field public mLatestProtectedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchedAppBeforeInit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field private mPackageScoreUpdated:Z

.field mProcessList:Lcom/android/server/am/ProcessList;

.field mProcessStats:Lcom/android/server/am/ProcessStatsService;

.field private mProcessesExtraCache:J

.field private mSPCMDBfromSMList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mUpdateActiveInActivePackagesThread:Ljava/lang/Thread;

.field public mVpnPackageName:Ljava/lang/String;

.field mWallpaperServiceLock:Ljava/lang/Object;

.field mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

.field numCached:I

.field numEmpty:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    sput-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    .line 113
    sput-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    .line 114
    sput-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    .line 115
    sput-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    .line 116
    sput-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    .line 117
    sput-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    .line 118
    sput-boolean v1, Lcom/android/server/am/SmartAdjustManager;->DB_CONN_KILL_SKIP:Z

    .line 120
    sput-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    .line 121
    sput-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_LAUNCHER_ONLY:Z

    .line 122
    sput-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SPCM_PRELOAD_ENABLE:Z

    .line 123
    sput-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SPCM_KILL_SKIP:Z

    .line 128
    sput-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SPCM_INIT:Z

    .line 129
    sput-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SPCM_TRIGGER:Z

    .line 131
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/SmartAdjustManager;->debuggingR:Lcom/android/server/am/ProcessRecord;

    .line 132
    sput-boolean v1, Lcom/android/server/am/SmartAdjustManager;->isLogPrinted:Z

    .line 137
    const/16 v0, 0xe

    sput v0, Lcom/android/server/am/SmartAdjustManager;->SERVICE_KILL_LIMIT_OF_ADJ:I

    .line 145
    const-string/jumbo v0, "ro.config.sdha_apps_bg_max"

    const-string v1, "40"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/SmartAdjustManager;->SMART_DHA_BG_APPS_MAX:I

    .line 146
    const/4 v0, 0x7

    sput v0, Lcom/android/server/am/SmartAdjustManager;->SMART_DHA_CACHED_APP_MAX:I

    .line 150
    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    .line 151
    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForEmptyHotness:Ljava/lang/String;

    .line 202
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SmartAdjustManager;->isFirst:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessStatsService;Landroid/os/Handler;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "processList"    # Lcom/android/server/am/ProcessList;
    .param p4, "processStats"    # Lcom/android/server/am/ProcessStatsService;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-boolean v2, p0, Lcom/android/server/am/SmartAdjustManager;->SAMP_PPM_ENABLE:Z

    .line 135
    iput-boolean v2, p0, Lcom/android/server/am/SmartAdjustManager;->SMART_SPM_ENABLE:Z

    .line 139
    iput v2, p0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    .line 140
    iput v2, p0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    .line 141
    iput v2, p0, Lcom/android/server/am/SmartAdjustManager;->mNumCachedHiddenProcs:I

    .line 142
    iput v2, p0, Lcom/android/server/am/SmartAdjustManager;->mNumNonCachedProcs:I

    .line 147
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessesExtraCache:J

    .line 149
    const v0, 0xf4240

    iput v0, p0, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_MAX_VALUE:I

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mCachedServiceList:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mServiceList:Ljava/util/ArrayList;

    .line 160
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/am/SmartAdjustManager;->mDefaultServiceLimitScale:I

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mLastKillTimeMap:Ljava/util/HashMap;

    .line 168
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mExternalWhiteList:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    .line 177
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    .line 189
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    .line 192
    iput-wide v4, p0, Lcom/android/server/am/SmartAdjustManager;->mLastSPCMWorkingTime:J

    .line 193
    iput-wide v4, p0, Lcom/android/server/am/SmartAdjustManager;->mLastSPCMExtWhiteListMod:J

    .line 194
    iput-boolean v2, p0, Lcom/android/server/am/SmartAdjustManager;->mPackageScoreUpdated:Z

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mVpnPackageName:Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->cscpkgName:Ljava/util/ArrayList;

    .line 205
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.dummy"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mKillingServiceGraylist:[Ljava/lang/String;

    .line 211
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 212
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    .line 213
    iput-object p2, p0, Lcom/android/server/am/SmartAdjustManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 214
    iput-object p3, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 215
    iput-object p4, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 220
    new-instance v0, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;-><init>(Lcom/android/server/am/SmartAdjustManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mHandler:Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

    .line 222
    return-void
.end method

.method private AddPackageInfoToSPCM(Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;)V
    .locals 11
    .param p1, "mSPCMDBfromSM"    # Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    .prologue
    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 817
    const/4 v2, 0x0

    .line 818
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/16 v1, 0xd

    .line 821
    .local v1, "flags":I
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v5, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v5, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-interface {v4, v5, v1, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 834
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 835
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 836
    new-instance v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    invoke-direct {v3, p0}, Lcom/android/server/am/SmartAdjustManager$PackageTable;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    .line 837
    .local v3, "pkgtable":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->name:Ljava/lang/String;

    .line 838
    iput-object v2, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->info:Landroid/content/pm/PackageInfo;

    .line 839
    const/4 v4, 0x3

    iput v4, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->active:I

    .line 840
    iput-boolean v7, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isRunning:Z

    .line 841
    iput-boolean v7, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isWidget:Z

    .line 842
    iput v7, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    .line 843
    iput v7, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score_applocking:I

    .line 844
    iput-boolean v10, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isAppLockingOnly:Z

    .line 845
    iput-wide v8, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastServiceActivityTime:J

    .line 846
    iput-wide v8, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastUsedTime:J

    .line 847
    iput-wide v8, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastForcedStopTime:J

    .line 849
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_3

    .line 853
    const-string v4, "SAMP_SPCM_test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_PACKAGE_ADDED add new package -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    .end local v3    # "pkgtable":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    :cond_3
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/server/am/SmartAdjustManager;->updateSPCMExternalWhiteList(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 861
    :catch_0
    move-exception v4

    goto :goto_0

    .line 829
    :catch_1
    move-exception v0

    .line 830
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_2

    .line 831
    const-string v4, "SAMP_SPCM_test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting package info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private RunSPCMDB()V
    .locals 22

    .prologue
    .line 959
    new-instance v2, Lcom/android/server/am/SPCMDataBaseManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/am/SPCMDataBaseManager;-><init>(Landroid/content/Context;)V

    .line 960
    .local v2, "SPCMDB":Lcom/android/server/am/SPCMDataBaseManager;
    invoke-virtual {v2}, Lcom/android/server/am/SPCMDataBaseManager;->GetLockingTimeFromSM()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/SmartAdjustManager;->setPackageLockingTimeBySPCM(I)V

    .line 962
    const-wide/16 v16, 0x0

    .line 963
    .local v16, "mSPCMDBInterval":J
    const-wide/32 v14, 0xea60

    .line 964
    .local v14, "mSPCMDBInitInterval":J
    const-wide/32 v18, 0x2bf20

    .line 966
    .local v18, "mSPCMDBUpdateInterval":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 967
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Lcom/android/server/am/SPCMDataBaseManager;->GetPackgeInfofromSM(Landroid/util/ArrayMap;)V

    .line 971
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 972
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_1

    .line 973
    const-string v3, "SAMP_SPCM_test"

    const-string v5, "SPCMDB needs update to get package list"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_1
    const-wide/32 v16, 0xea60

    .line 982
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 985
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 987
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 988
    .local v11, "strPkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/am/SmartAdjustManager;->UpdateSPCMDB(Ljava/lang/String;)V

    goto :goto_1

    .line 994
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "strPkgName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 976
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    const-wide/16 v20, 0x5

    div-long v6, v6, v20

    const-wide/32 v20, 0x2bf20

    cmp-long v3, v6, v20

    if-lez v3, :cond_3

    .line 977
    const-wide/32 v16, 0x2bf20

    goto :goto_0

    .line 980
    :cond_3
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    const-wide/16 v20, 0x0

    cmp-long v3, v6, v20

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    const-wide/16 v20, 0x5

    div-long v16, v6, v20

    :goto_2
    goto :goto_0

    :cond_4
    const-wide/32 v16, 0x36ee80

    goto :goto_2

    .line 982
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 991
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 994
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_6
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 996
    const-wide/32 v4, 0xea60

    cmp-long v3, v16, v4

    if-nez v3, :cond_9

    .line 998
    :try_start_4
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1023
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 1024
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Lcom/android/server/am/SPCMDataBaseManager;->GetPackgeInfofromSM(Landroid/util/ArrayMap;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 1027
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/am/SPCMDataBaseManager;->UpdateResetTime(Landroid/util/ArrayMap;J)V

    .line 1030
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/SmartAdjustManager;->mWallpaperServiceLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1031
    :try_start_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/SmartAdjustManager;->mAppWidgetServiceLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1032
    :try_start_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1033
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1034
    .restart local v11    # "strPkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/SmartAdjustManager;->AddPackageInfoToSPCM(Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;)V

    goto :goto_4

    .line 1038
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "strPkgName":Ljava/lang/String;
    :catchall_2
    move-exception v3

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v3

    .line 1039
    :catchall_3
    move-exception v3

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v3

    .line 1040
    :catchall_4
    move-exception v3

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v3

    .line 1041
    :catchall_5
    move-exception v3

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v3

    .line 1000
    :catch_0
    move-exception v9

    .line 1001
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1005
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1009
    .local v12, "lSleepBegin":J
    :cond_a
    :goto_5
    :try_start_c
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 1015
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    const-wide/32 v6, 0x36ee80

    cmp-long v3, v4, v6

    if-gtz v3, :cond_7

    .line 1018
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_a

    .line 1019
    const-string v3, "SAMP_SPCM_test"

    const-string v4, "SPCMDataBase need more interval time"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1011
    :catch_1
    move-exception v9

    .line 1012
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 1037
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "lSleepBegin":J
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_b
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/SmartAdjustManager;->updateActiveInActivePackagesLocked()V

    .line 1038
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1039
    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1040
    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1041
    :try_start_10
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 1043
    invoke-virtual {v2}, Lcom/android/server/am/SPCMDataBaseManager;->GetLockingTimeFromSM()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/SmartAdjustManager;->setPackageLockingTimeBySPCM(I)V

    .line 1045
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_d

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1047
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 1048
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/SPCMDataBaseManager;->UpdateDBAll(Landroid/util/ArrayMap;JJ)Z

    move-result v8

    .line 1050
    .local v8, "bRet":Z
    if-eqz v8, :cond_c

    .line 1051
    const-string v3, "SAMP"

    const-string v4, "SPCMDataBase was updated!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    .end local v8    # "bRet":Z
    :cond_c
    :goto_7
    monitor-exit v20

    .line 1059
    :cond_d
    return-void

    .line 1055
    :cond_e
    const-string v3, "SAMP"

    const-string v4, "SPCMDataBase is empty!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1057
    :catchall_6
    move-exception v3

    monitor-exit v20
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v3
.end method

.method private UpdateSPCMDB(Ljava/lang/String;)V
    .locals 6
    .param p1, "strPkgName"    # Ljava/lang/String;

    .prologue
    .line 919
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 920
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 921
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    monitor-exit v3

    .line 945
    :goto_0
    return-void

    .line 925
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 926
    monitor-exit v3

    goto :goto_0

    .line 944
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 929
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    .line 931
    .local v1, "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    if-nez v1, :cond_2

    .line 932
    monitor-exit v3

    goto :goto_0

    .line 935
    :cond_2
    const-string v2, "1"

    iget-object v4, v1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 936
    new-instance v0, Lcom/android/server/am/SPCMDataBaseManager;

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/am/SPCMDataBaseManager;-><init>(Landroid/content/Context;)V

    .line 937
    .local v0, "SPCMDB":Lcom/android/server/am/SPCMDataBaseManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/am/SPCMDataBaseManager;->UpdateDBSpecific(Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;J)V

    .line 944
    .end local v0    # "SPCMDB":Lcom/android/server/am/SPCMDataBaseManager;
    :cond_3
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 940
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    .line 941
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_3

    .line 942
    const-string v2, "SAMP_SPCM_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launched -: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/am/SmartAdjustManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/SmartAdjustManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/am/SmartAdjustManager;->UpdateSPCMDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/SmartAdjustManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/SmartAdjustManager;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/am/SmartAdjustManager;->RunSPCMDB()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/SmartAdjustManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/SmartAdjustManager;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mServiceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/SmartAdjustManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/SmartAdjustManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/am/SmartAdjustManager;->getLowestScorePackageAndKillLocked(Ljava/util/ArrayList;)V

    return-void
.end method

.method private final computeHotnessAdjLocked(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, "cchListExcludeService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_6

    .line 291
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 294
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .local v6, "provi":I
    :goto_1
    if-ltz v6, :cond_4

    .line 295
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    .line 296
    .local v3, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "j":I
    :goto_2
    if-ltz v5, :cond_3

    .line 297
    iget-object v7, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;

    .line 298
    .local v2, "conn":Lcom/android/server/am/ContentProviderConnection;
    iget-object v1, v2, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 299
    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    if-ne v1, v0, :cond_1

    .line 296
    :cond_0
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 300
    :cond_1
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    if-ge v7, v8, :cond_0

    .line 301
    sget-boolean v7, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v7, :cond_2

    .line 302
    const-string v7, "SAMP_Hotness"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content provider process:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", client process:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_2
    iget v7, v1, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    iput v7, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_3

    .line 294
    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "conn":Lcom/android/server/am/ContentProviderConnection;
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 311
    .end local v3    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v5    # "j":I
    :cond_4
    sget-boolean v7, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v7, :cond_5

    .line 312
    const-string v7, "SAMP_Hotness"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hotness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .line 314
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "provi":I
    :cond_6
    return-void
.end method

.method private createDeviceAdminInfo(Landroid/content/pm/ResolveInfo;)Landroid/app/admin/DeviceAdminInfo;
    .locals 4
    .param p1, "resolved"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 2550
    :try_start_0
    new-instance v1, Landroid/app/admin/DeviceAdminInfo;

    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2554
    :goto_0
    return-object v1

    .line 2551
    :catch_0
    move-exception v0

    .line 2552
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2554
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDefaultIMEPackage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 771
    const/4 v0, 0x0

    .line 772
    .local v0, "strPreferredIME":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 774
    if-eqz v0, :cond_0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 776
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 777
    .local v1, "tmp":[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 778
    aget-object v0, v1, v4

    .line 782
    .end local v1    # "tmp":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getLowestScorePackageAndKillLocked(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1261
    .local p1, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_0

    .line 1262
    const-string v10, "SAMP_SPCM_test"

    const-string v11, "SPCM getLowestScorePackageAndKillLocked called !!"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_2

    .line 1266
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_1

    .line 1267
    const-string v10, "SAMP_SPCM_test"

    const-string/jumbo v11, "serviceList size is 0, so don\'t have anyone to kill"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    :cond_1
    :goto_0
    return-void

    .line 1271
    :cond_2
    iget-boolean v10, p0, Lcom/android/server/am/SmartAdjustManager;->mPackageScoreUpdated:Z

    if-nez v10, :cond_3

    .line 1273
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_1

    .line 1274
    const-string v10, "SAMP_SPCM_test"

    const-string v11, "PackageScore not calclated, all are 0, so didn\'t find anyone to kill"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1278
    :cond_3
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SPCM_KILL_SKIP:Z

    if-nez v10, :cond_1

    .line 1283
    const-string v10, "FINISH"

    const-string/jumbo v11, "persist.sys.setupwizard"

    const-string/jumbo v12, "xxx"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1284
    const-string v10, "SAMP_SPCM"

    const-string v11, "Setup Wizard not finished! Keep current active lists"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1289
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    .local v9, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1292
    invoke-direct {p0}, Lcom/android/server/am/SmartAdjustManager;->getDefaultIMEPackage()Ljava/lang/String;

    move-result-object v2

    .line 1296
    .local v2, "defaultIME":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_1f

    .line 1297
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 1298
    .local v8, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v11, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1299
    .local v1, "actpkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v11, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1300
    .local v4, "inactpkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor;->resumedAppLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1302
    .local v0, "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v10, :cond_9

    .line 1303
    if-eqz v1, :cond_7

    iget-boolean v10, v1, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isAppLockingOnly:Z

    if-eqz v10, :cond_7

    .line 1304
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_5

    .line 1305
    const-string v10, "SAMPSPCMtest"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is AppLocking Only !!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_5
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1307
    add-int/lit8 v3, v3, -0x1

    .line 1296
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1312
    :cond_7
    if-eqz v4, :cond_9

    iget-boolean v10, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isAppLockingOnly:Z

    if-eqz v10, :cond_9

    .line 1313
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_8

    .line 1314
    const-string v10, "SAMPSPCMtest"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is AppLocking Only !!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_8
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1316
    add-int/lit8 v3, v3, -0x1

    .line 1318
    goto :goto_2

    .line 1322
    :cond_9
    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/am/SmartAdjustManager;->isDependsOnSystem(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1323
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_a

    .line 1324
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " system_server package, do not sort it !!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_a
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1326
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1328
    :cond_b
    if-eqz v2, :cond_d

    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1329
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_c

    .line 1330
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is DefaultIME, do not sort it !!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_c
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1332
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    .line 1334
    :cond_d
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mVpnPackageName:Ljava/lang/String;

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mVpnPackageName:Ljava/lang/String;

    iget-object v11, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1335
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_e

    .line 1336
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is VPNPackage, do not sort it !!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_e
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1338
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    .line 1340
    :cond_f
    const/4 v10, 0x1

    invoke-virtual {p0, v8, v10}, Lcom/android/server/am/SmartAdjustManager;->hasNotification(Lcom/android/server/am/ProcessRecord;Z)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1341
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_10

    .line 1342
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has notification, do not sort it !!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_10
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1344
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    .line 1346
    :cond_11
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v11, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallPaper(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1347
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_12

    .line 1348
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is active wallpaper, do not sort it !!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_12
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1350
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    .line 1352
    :cond_13
    invoke-virtual {p0, v8}, Lcom/android/server/am/SmartAdjustManager;->hasActiveWidgets(Lcom/android/server/am/ProcessRecord;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1353
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_14

    .line 1354
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hasActiveWidgets, do not sort it !!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_14
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1356
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    .line 1358
    :cond_15
    if-eqz v0, :cond_17

    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 1361
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_16

    .line 1362
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  foreground package!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_16
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1364
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    .line 1366
    :cond_17
    if-nez v1, :cond_19

    if-eqz v4, :cond_19

    .line 1367
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_18

    .line 1368
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "running process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in inactive list!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "was waiting to kill, do not sort it again!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_18
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1372
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    .line 1374
    :cond_19
    if-nez v1, :cond_1b

    if-nez v4, :cond_1b

    .line 1375
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_1a

    .line 1376
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "running process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not in inactive list!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "not in active list, think it like in white list, do not sort it !"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_1a
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1380
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    .line 1382
    :cond_1b
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    iget-object v11, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 1383
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_1c

    .line 1384
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "running process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in latest protection list!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "was waiting to kill, do not sort it again!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_1c
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1388
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    .line 1390
    :cond_1d
    if-eqz v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v1, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastForcedStopTime:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x927c0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_6

    .line 1391
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_1e

    .line 1392
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "running process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in SPCM Forcestop-interval time!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "was waiting to kill, do not sort it again!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_1e
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1395
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    .line 1399
    .end local v0    # "TOP_ACT":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "actpkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .end local v4    # "inactpkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .end local v8    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_1f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_20

    .line 1400
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_1

    .line 1401
    const-string v10, "SAMP_SPCM_test"

    const-string/jumbo v11, "processes list size is 0, so don\'t have anyone to kill"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1405
    :cond_20
    new-instance v10, Lcom/android/server/am/SmartAdjustManager$5;

    invoke-direct {v10, p0}, Lcom/android/server/am/SmartAdjustManager$5;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1435
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 1437
    .local v6, "killproc":Lcom/android/server/am/ProcessRecord;
    iget-object v10, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1439
    .local v5, "killpkgName":Ljava/lang/String;
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_21

    .line 1440
    const-string v10, "SAMP_SPCM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "choose package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_21
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1444
    .local v7, "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-eqz v7, :cond_22

    .line 1445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v7, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastForcedStopTime:J

    .line 1449
    :cond_22
    invoke-virtual {p0, v6}, Lcom/android/server/am/SmartAdjustManager;->isInGrayList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 1450
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v11, "SPCM kill lowestscore package!, but keep it as active package(GrayList)"

    invoke-virtual {v10, v5, v11}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLockedFromSmartAdjust(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1455
    :cond_23
    const/4 v10, 0x0

    invoke-virtual {p0, v6, v10}, Lcom/android/server/am/SmartAdjustManager;->hasNotification(Lcom/android/server/am/ProcessRecord;Z)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 1456
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v11, "SPCM kill lowestscore package!, but keep it as active package(Notification)"

    invoke-virtual {v10, v5, v11}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLockedFromSmartAdjust(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1468
    :cond_24
    if-eqz v7, :cond_26

    .line 1469
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1470
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1473
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    :cond_25
    :goto_3
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v11, "SPCM kill lowestscore package!"

    invoke-virtual {v10, v5, v11}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLockedFromSmartAdjust(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1476
    :cond_26
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_25

    .line 1477
    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not exspected!!!!, killingpackage "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not in active packages list"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private getPackageActivityScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ActivityInfo;Ljava/util/List;J)I
    .locals 8
    .param p1, "pkgtable"    # Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .param p2, "activities"    # [Landroid/content/pm/ActivityInfo;
    .param p4, "totaltime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/SmartAdjustManager$PackageTable;",
            "[",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 1895
    .local p3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    const-wide/32 v6, 0xf731400

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/SmartAdjustManager;->getPackageActivityScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ActivityInfo;Ljava/util/List;JJ)I

    move-result v0

    return v0
.end method

.method private getPackageActivityScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ActivityInfo;Ljava/util/List;JJ)I
    .locals 28
    .param p1, "pkgtable"    # Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .param p2, "activities"    # [Landroid/content/pm/ActivityInfo;
    .param p4, "totaltime"    # J
    .param p6, "lTimeInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/SmartAdjustManager$PackageTable;",
            "[",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;JJ)I"
        }
    .end annotation

    .prologue
    .line 1899
    .local p3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_0

    .line 1900
    const-string v22, "SAMP_SPCM_test"

    const-string v23, "--- getPackageActivityscore --- "

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    :cond_0
    move-object/from16 v0, p2

    array-length v6, v0

    .line 1903
    .local v6, "count":I
    const/16 v19, 0x0

    .line 1904
    .local v19, "score":I
    const v7, 0x20015

    .line 1911
    .local v7, "dateFormatFlags":I
    if-eqz p2, :cond_6

    if-lez v6, :cond_6

    .line 1912
    const/16 v22, 0x0

    aget-object v4, p2, v22

    .line 1914
    .local v4, "aInfo":Landroid/content/pm/ActivityInfo;
    const/4 v8, 0x0

    .line 1915
    .local v8, "foreground_score":I
    const/4 v14, 0x0

    .line 1917
    .local v14, "lasttime_score":I
    const-wide/16 v10, 0x0

    .line 1918
    .local v10, "foregroundtime":J
    const-wide/16 v12, 0x0

    .line 1919
    .local v12, "lasttime":J
    const/4 v9, 0x0

    .line 1921
    .local v9, "found":Z
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1922
    .local v5, "activityName":Ljava/lang/String;
    iget-object v15, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1923
    .local v15, "packageName":Ljava/lang/String;
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1925
    .local v18, "processName":Ljava/lang/String;
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_1

    .line 1926
    const-string v22, "SAMP_SPCM_test"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "--- ActivityInfo activityname "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " processName "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " packageName "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " uid "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    :cond_1
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_2

    .line 1939
    const-string v22, "SAMP_SPCM_test"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "--- getPackageActivityscore running in last 7 days packages size --- "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    :cond_2
    const/16 v16, 0x0

    .local v16, "pkg_i":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 1942
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/usage/UsageStats;

    .line 1944
    .local v17, "pkgstat":Landroid/app/usage/UsageStats;
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_3

    .line 1945
    const-string v22, "SAMP_SPCM_test"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "--- 3 days active packages  --- "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " foreground time "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " mLastTimeUsed "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_3
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1950
    move-object/from16 v0, v17

    iget-wide v10, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 1951
    move-object/from16 v0, v17

    iget-wide v12, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 1952
    const/4 v9, 0x1

    .line 1954
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_4

    .line 1955
    const-string v22, "SAMP_SPCM_test"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "--- find this package --- "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " foreground time "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-wide/16 v24, 0x3e8

    div-long v24, v10, v24

    invoke-static/range {v24 .. v25}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " mLastTimeUsed "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v12, v13, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    .end local v17    # "pkgstat":Landroid/app/usage/UsageStats;
    :cond_4
    if-nez v9, :cond_8

    .line 1964
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_5

    .line 1965
    const-string v22, "SAMP_SPCM_test"

    const-string v23, "--- not found in 7 days packages --- "

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :cond_5
    const/4 v8, 0x0

    .line 1967
    const/4 v14, 0x0

    .line 1993
    :goto_1
    add-int v19, v8, v14

    .line 1995
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_6

    .line 1996
    const-string v22, "SAMP_SPCM_test"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "--- getPackageActivityscore --- foreground_score "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " lasttime_score "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    .end local v4    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5    # "activityName":Ljava/lang/String;
    .end local v8    # "foreground_score":I
    .end local v9    # "found":Z
    .end local v10    # "foregroundtime":J
    .end local v12    # "lasttime":J
    .end local v14    # "lasttime_score":I
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "pkg_i":I
    .end local v18    # "processName":Ljava/lang/String;
    :cond_6
    return v19

    .line 1940
    .restart local v4    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "activityName":Ljava/lang/String;
    .restart local v8    # "foreground_score":I
    .restart local v9    # "found":Z
    .restart local v10    # "foregroundtime":J
    .restart local v12    # "lasttime":J
    .restart local v14    # "lasttime_score":I
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "pkg_i":I
    .restart local v17    # "pkgstat":Landroid/app/usage/UsageStats;
    .restart local v18    # "processName":Ljava/lang/String;
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 1969
    .end local v17    # "pkgstat":Landroid/app/usage/UsageStats;
    :cond_8
    const-wide/16 v22, 0x0

    cmp-long v22, p4, v22

    if-eqz v22, :cond_9

    .line 1970
    const-wide/16 v22, 0x2710

    mul-long v22, v22, v10

    div-long v22, v22, p4

    move-wide/from16 v0, v22

    long-to-int v8, v0

    .line 1972
    :cond_9
    if-nez v8, :cond_a

    const-wide/16 v22, 0x0

    cmp-long v22, v10, v22

    if-eqz v22, :cond_a

    .line 1973
    const/4 v8, 0x1

    .line 1975
    :cond_a
    if-lez v8, :cond_b

    .line 1976
    add-int/lit16 v8, v8, 0x7d0

    .line 1978
    :cond_b
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_c

    .line 1979
    const-string v22, "SAMP_SPCM_test"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "--- foreground_score --- totaltime "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-wide/16 v24, 0x3e8

    div-long v24, p4, v24

    invoke-static/range {v24 .. v25}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " foreground_score "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v20, v22, v12

    .line 1983
    .local v20, "tmptime":J
    const-wide/16 v22, 0x2710

    const-wide/16 v24, 0x2710

    mul-long v24, v24, v20

    div-long v24, v24, p6

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v14, v0

    .line 1985
    sget-boolean v22, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v22, :cond_d

    .line 1986
    const-string v22, "SAMP_SPCM_test"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "--- foreground_score --- tmptime "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-wide/16 v24, 0x3e8

    div-long v24, v20, v24

    invoke-static/range {v24 .. v25}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " lasttime_score "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :cond_d
    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastUsedTime:J

    goto/16 :goto_1
.end method

.method private getPackageProviderScore([Landroid/content/pm/ProviderInfo;)I
    .locals 14
    .param p1, "providers"    # [Landroid/content/pm/ProviderInfo;

    .prologue
    .line 2003
    const/4 v8, 0x0

    .line 2004
    .local v8, "score":I
    const/4 v10, 0x0

    .line 2005
    .local v10, "tmpscore":I
    if-eqz p1, :cond_7

    array-length v11, p1

    if-lez v11, :cond_7

    .line 2006
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v11, p1

    if-ge v2, v11, :cond_7

    .line 2007
    aget-object v3, p1, v2

    .line 2009
    .local v3, "pInfo":Landroid/content/pm/ProviderInfo;
    iget-object v7, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 2010
    .local v7, "providerName":Ljava/lang/String;
    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 2011
    .local v5, "processName":Ljava/lang/String;
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 2013
    .local v4, "packageName":Ljava/lang/String;
    sget-boolean v11, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v11, :cond_0

    .line 2014
    const-string v11, "SAMP_SPCM_test"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--- getPackageProviderScore --- providerName "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " processName "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " packageName "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    :cond_0
    iget-object v11, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v13, 0x1

    invoke-virtual {v11, v5, v12, v13}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 2019
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_4

    .line 2020
    sget-boolean v11, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v11, :cond_1

    .line 2021
    const-string v11, "SAMP_SPCM_test"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--- the provider process is current running --- pubProviders size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    :cond_1
    const/16 v10, 0x3e8

    .line 2026
    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    .local v6, "proi":I
    :goto_1
    if-ltz v6, :cond_4

    .line 2027
    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    .line 2028
    .local v1, "cpr":Lcom/android/server/am/ContentProviderRecord;
    sget-boolean v11, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v11, :cond_2

    .line 2029
    const-string v11, "SAMP_SPCM_test"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--- cpr.info.name "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :cond_2
    iget-object v11, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2033
    iget-object v11, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2034
    .local v9, "size":I
    sget-boolean v11, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v11, :cond_3

    .line 2035
    const-string v11, "SAMP_SPCM_test"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "--- connections.size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    :cond_3
    if-lez v9, :cond_4

    .line 2037
    add-int/lit16 v10, v10, 0xfa0

    .line 2042
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v6    # "proi":I
    .end local v9    # "size":I
    :cond_4
    if-le v10, v8, :cond_5

    move v8, v10

    .line 2006
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2026
    .restart local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v6    # "proi":I
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2045
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v2    # "i":I
    .end local v3    # "pInfo":Landroid/content/pm/ProviderInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "processName":Ljava/lang/String;
    .end local v6    # "proi":I
    .end local v7    # "providerName":Ljava/lang/String;
    :cond_7
    return v8
.end method

.method private getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J
    .locals 22
    .param p2, "lTimeInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 2049
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    const-string/jumbo v17, "usagestats"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    .line 2050
    .local v2, "usageStatsManager":Landroid/app/usage/UsageStatsManager;
    const-wide/16 v18, 0x0

    .line 2052
    .local v18, "totalForegroundtime_indays":J
    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    .line 2054
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v4, v20, p2

    .line 2055
    .local v4, "begintime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2056
    .local v6, "endtime":J
    const/4 v3, 0x3

    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v16

    .line 2059
    .local v16, "queryUsageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    const v8, 0x20015

    .line 2064
    .local v8, "dateFormatFlags":I
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_0

    .line 2065
    const-string v3, "SAMP_SPCM_test"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getTotalForegroundtimeIndays from time  "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v4, v5, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, " to time "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v6, v7, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    const-string v3, "SAMP_SPCM_test"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "queryUsageStats size--- "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_7

    .line 2072
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v15

    .line 2074
    .local v15, "pkgcnt":I
    const/4 v14, 0x0

    .local v14, "pkg_i":I
    :goto_0
    if-ge v14, v15, :cond_5

    .line 2075
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-object v9, v3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 2076
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-wide v10, v3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 2077
    .local v10, "foregroundtime":J
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    iget-wide v12, v3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 2078
    .local v12, "lasttime":J
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_1

    .line 2079
    const-string v3, "SAMP_SPCM_test"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "--- queryUsageStats query mPackageName-"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, " foregroundtime "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-wide/16 v20, 0x3e8

    div-long v20, v10, v20

    invoke-static/range {v20 .. v21}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, " laststarttime "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v12, v13, v8}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    :cond_1
    cmp-long v3, v12, v4

    if-ltz v3, :cond_2

    const-wide/32 v20, 0xea60

    add-long v20, v20, v6

    cmp-long v3, v12, v20

    if-lez v3, :cond_4

    .line 2085
    :cond_2
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_3

    .line 2086
    const-string v3, "SAMP_SPCM_test"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "--- before 7 days--- "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    :cond_3
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 2089
    :cond_4
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2090
    add-long v18, v18, v10

    goto :goto_1

    .line 2093
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "foregroundtime":J
    .end local v12    # "lasttime":J
    :cond_5
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_6

    .line 2094
    const-string v3, "SAMP_SPCM_test"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "totalForegroundtime_indays --- "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-wide/16 v20, 0x3e8

    div-long v20, v18, v20

    invoke-static/range {v20 .. v21}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    .end local v4    # "begintime":J
    .end local v6    # "endtime":J
    .end local v8    # "dateFormatFlags":I
    .end local v14    # "pkg_i":I
    .end local v15    # "pkgcnt":I
    .end local v16    # "queryUsageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_6
    :goto_2
    return-wide v18

    .line 2098
    .restart local v4    # "begintime":J
    .restart local v6    # "endtime":J
    .restart local v8    # "dateFormatFlags":I
    .restart local v16    # "queryUsageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_7
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_6

    .line 2099
    const-string v3, "SAMP_SPCM_test"

    const-string v17, "getTotalForegroundtimeIndays no packages run activit in last 3 days!!! --- "

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getWallpaperManager()Lcom/android/server/wallpaper/WallpaperManagerService;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-nez v0, :cond_0

    .line 713
    const-string/jumbo v0, "wallpaper"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    return-object v0
.end method

.method private isAccessibilityPackages(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2518
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2519
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2521
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x84

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2524
    .local v0, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2525
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_0

    const-string v2, "SAMP_SPCM_test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip Accessibility pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :cond_0
    const/4 v2, 0x1

    .line 2528
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isDependsOnSystem(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 750
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "system"

    const/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 751
    .local v0, "prSystem":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_2

    .line 752
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_0

    .line 753
    const-string v3, "SAMP_SPCM_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "system: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_0
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-eqz v3, :cond_3

    .line 761
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 762
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_1

    .line 763
    const-string v2, "SAMP_SPCM_test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is depends on system: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_1
    :goto_0
    return v1

    .line 755
    :cond_2
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_1

    .line 756
    const-string v2, "SAMP_SPCM_test"

    const-string/jumbo v3, "system is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v1, v2

    .line 767
    goto :goto_0
.end method

.method private isDeviceAdminPackages(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2532
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2533
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2535
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v5, 0x8080

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2537
    .local v1, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2538
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v3}, Lcom/android/server/am/SmartAdjustManager;->createDeviceAdminInfo(Landroid/content/pm/ResolveInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v0

    .line 2539
    .local v0, "deviceAdminInfo":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2540
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_0

    const-string v5, "SAMP_SPCM_test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip DeviceAdmin pkg : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    :cond_0
    const/4 v3, 0x1

    .line 2545
    .end local v0    # "deviceAdminInfo":Landroid/app/admin/DeviceAdminInfo;
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private isSPCMExcludePkg(Ljava/lang/String;)Z
    .locals 13
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2165
    if-nez p1, :cond_0

    const/4 v10, 0x1

    .line 2498
    :goto_0
    return v10

    .line 2167
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/SmartAdjustManager;->isAccessibilityPackages(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2168
    const/4 v10, 0x1

    goto :goto_0

    .line 2170
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/SmartAdjustManager;->isDeviceAdminPackages(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2171
    const/4 v10, 0x1

    goto :goto_0

    .line 2174
    :cond_2
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SPCM_PRELOAD_ENABLE:Z

    if-eqz v10, :cond_6

    .line 2175
    iget-object v10, p0, Lcom/android/server/am/SmartAdjustManager;->cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2176
    .local v2, "compStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2177
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_4

    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "skip CSC Preload pkg : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    :cond_4
    const/4 v10, 0x1

    goto :goto_0

    .line 2181
    .end local v2    # "compStr":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/am/SmartAdjustManager;->isSystemPackages(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2182
    const/4 v10, 0x1

    goto :goto_0

    .line 2186
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    const/16 v10, 0xb

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "com.sk"

    aput-object v11, v1, v10

    const/4 v10, 0x1

    const-string v11, "com.kt"

    aput-object v11, v1, v10

    const/4 v10, 0x2

    const-string v11, "com.lg"

    aput-object v11, v1, v10

    const/4 v10, 0x3

    const-string v11, "com.estsoft.alyac"

    aput-object v11, v1, v10

    const/4 v10, 0x4

    const-string v11, "com.uplus"

    aput-object v11, v1, v10

    const/4 v10, 0x5

    const-string v11, "com.tmobile"

    aput-object v11, v1, v10

    const/4 v10, 0x6

    const-string v11, "com.sprint"

    aput-object v11, v1, v10

    const/4 v10, 0x7

    const-string v11, "com.vzw"

    aput-object v11, v1, v10

    const/16 v10, 0x8

    const-string v11, "com.verizon"

    aput-object v11, v1, v10

    const/16 v10, 0x9

    const-string v11, "com.att"

    aput-object v11, v1, v10

    const/16 v10, 0xa

    const-string v11, "com.mizmowireless"

    aput-object v11, v1, v10

    .line 2190
    .local v1, "carrierStartingStr":[Ljava/lang/String;
    const/4 v10, 0x3

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, ".sec."

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "samsung"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    const-string v11, "com.sds"

    aput-object v11, v8, v10

    .line 2193
    .local v8, "samsungContainStr":[Ljava/lang/String;
    const/4 v10, 0x6

    new-array v3, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "kt.navi"

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const-string v11, "com.estsoft.alyac.kt"

    aput-object v11, v3, v10

    const/4 v10, 0x2

    const-string v11, "com.mtelo.ktapp"

    aput-object v11, v3, v10

    const/4 v10, 0x3

    const-string v11, "lgt.call"

    aput-object v11, v3, v10

    const/4 v10, 0x4

    const-string v11, "com.mnsoft.lgunavi"

    aput-object v11, v3, v10

    const/4 v10, 0x5

    const-string v11, "lg.uplusbox"

    aput-object v11, v3, v10

    .line 2197
    .local v3, "etcStr":[Ljava/lang/String;
    const/16 v10, 0xb9

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "com.android.systemui"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string v11, "com.android.defcontainer"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string v11, "android"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const-string v11, "com.visionobjects.resourcemanager"

    aput-object v11, v7, v10

    const/4 v10, 0x4

    const-string v11, "com.vlingo.midas"

    aput-object v11, v7, v10

    const/4 v10, 0x5

    const-string v11, "android.process.media"

    aput-object v11, v7, v10

    const/4 v10, 0x6

    const-string v11, "com.google.android.gms"

    aput-object v11, v7, v10

    const/4 v10, 0x7

    const-string/jumbo v11, "org.simalliance.openmobileapi.service"

    aput-object v11, v7, v10

    const/16 v10, 0x8

    const-string v11, "com.google.android.gsf"

    aput-object v11, v7, v10

    const/16 v10, 0x9

    const-string v11, "com.tencent.mm"

    aput-object v11, v7, v10

    const/16 v10, 0xa

    const-string v11, "com.android.providers.media"

    aput-object v11, v7, v10

    const/16 v10, 0xb

    const-string v11, "com.wildtangent.android"

    aput-object v11, v7, v10

    const/16 v10, 0xc

    const-string v11, "com.google.android.youtube"

    aput-object v11, v7, v10

    const/16 v10, 0xd

    const-string v11, "ds.cpuoverlay"

    aput-object v11, v7, v10

    const/16 v10, 0xe

    const-string v11, "android.app.enterprise.knoxcustom"

    aput-object v11, v7, v10

    const/16 v10, 0xf

    const-string v11, "com.absolute.android.persistence"

    aput-object v11, v7, v10

    const/16 v10, 0x10

    const-string v11, "com.policydm"

    aput-object v11, v7, v10

    const/16 v10, 0x11

    const-string v11, "com.android.vpndialogs"

    aput-object v11, v7, v10

    const/16 v10, 0x12

    const-string v11, "com.android.server.enterprise.vpn"

    aput-object v11, v7, v10

    const/16 v10, 0x13

    const-string v11, "android.app.enterprise.*"

    aput-object v11, v7, v10

    const/16 v10, 0x14

    const-string v11, "android.dirEncryption.*"

    aput-object v11, v7, v10

    const/16 v10, 0x15

    const-string v11, "com.android.server.enterprise.*"

    aput-object v11, v7, v10

    const/16 v10, 0x16

    const-string v11, "android.sec.enterprise.*"

    aput-object v11, v7, v10

    const/16 v10, 0x17

    const-string v11, "com.android.sdp"

    aput-object v11, v7, v10

    const/16 v10, 0x18

    const-string v11, "com.android.bluetooth"

    aput-object v11, v7, v10

    const/16 v10, 0x19

    const-string v11, "com.android.nfc"

    aput-object v11, v7, v10

    const/16 v10, 0x1a

    const-string v11, "com.vzw.apnservice"

    aput-object v11, v7, v10

    const/16 v10, 0x1b

    const-string v11, "com.osp.app.signin"

    aput-object v11, v7, v10

    const/16 v10, 0x1c

    const-string v11, "com.oculus.oculus360photos"

    aput-object v11, v7, v10

    const/16 v10, 0x1d

    const-string v11, "com.oculus.oculus360videos"

    aput-object v11, v7, v10

    const/16 v10, 0x1e

    const-string v11, "com.oculus.horizon"

    aput-object v11, v7, v10

    const/16 v10, 0x1f

    const-string v11, "com.oculus.cinema"

    aput-object v11, v7, v10

    const/16 v10, 0x20

    const-string v11, "com.oculus.home"

    aput-object v11, v7, v10

    const/16 v10, 0x21

    const-string v11, "com.oculus.systemactivities"

    aput-object v11, v7, v10

    const/16 v10, 0x22

    const-string v11, "com.facebook.appmanager"

    aput-object v11, v7, v10

    const/16 v10, 0x23

    const-string v11, "com.facebook.system"

    aput-object v11, v7, v10

    const/16 v10, 0x24

    const-string v11, "*.cocktailbarservice"

    aput-object v11, v7, v10

    const/16 v10, 0x25

    const-string v11, "com.wssnps"

    aput-object v11, v7, v10

    const/16 v10, 0x26

    const-string v11, "com.enhance.gameservice"

    aput-object v11, v7, v10

    const/16 v10, 0x27

    const-string v11, "com.yahoo.mobile.client.android.liveweather"

    aput-object v11, v7, v10

    const/16 v10, 0x28

    const-string v11, "com.ipsec.service"

    aput-object v11, v7, v10

    const/16 v10, 0x29

    const-string v11, "com.ipsec.vpnclient"

    aput-object v11, v7, v10

    const/16 v10, 0x2a

    const-string v11, "com.verizon.epdg"

    aput-object v11, v7, v10

    const/16 v10, 0x2b

    const-string v11, "com.android.mms"

    aput-object v11, v7, v10

    const/16 v10, 0x2c

    const-string v11, "com.android.providers.calendar"

    aput-object v11, v7, v10

    const/16 v10, 0x2d

    const-string v11, "com.trustonic.tuiservice"

    aput-object v11, v7, v10

    const/16 v10, 0x2e

    const-string v11, "com.myscript.atk.rmc.service.sample"

    aput-object v11, v7, v10

    const/16 v10, 0x2f

    const-string v11, "com.ws.dm"

    aput-object v11, v7, v10

    const/16 v10, 0x30

    const-string v11, "com.smlds"

    aput-object v11, v7, v10

    const/16 v10, 0x31

    const-string v11, "com.wssyncmldm"

    aput-object v11, v7, v10

    const/16 v10, 0x32

    const-string v11, "com.sprint.dsa"

    aput-object v11, v7, v10

    const/16 v10, 0x33

    const-string v11, "com.oem.smartwifisupport"

    aput-object v11, v7, v10

    const/16 v10, 0x34

    const-string v11, "com.kineto.smartwifi"

    aput-object v11, v7, v10

    const/16 v10, 0x35

    const-string v11, "com.fmm.dm"

    aput-object v11, v7, v10

    const/16 v10, 0x36

    const-string v11, "com.fmm.ds"

    aput-object v11, v7, v10

    const/16 v10, 0x37

    const-string v11, "com.android.settings"

    aput-object v11, v7, v10

    const/16 v10, 0x38

    const-string v11, "com.elevenst.deals"

    aput-object v11, v7, v10

    const/16 v10, 0x39

    const-string v11, "com.elevenst"

    aput-object v11, v7, v10

    const/16 v10, 0x3a

    const-string v11, "com.iloen.melon"

    aput-object v11, v7, v10

    const/16 v10, 0x3b

    const-string v11, "com.nate.android.portalmini"

    aput-object v11, v7, v10

    const/16 v10, 0x3c

    const-string v11, "com.tms"

    aput-object v11, v7, v10

    const/16 v10, 0x3d

    const-string v11, "com.cyworld.camera"

    aput-object v11, v7, v10

    const/16 v10, 0x3e

    const-string v11, "com.moent.vas"

    aput-object v11, v7, v10

    const/16 v10, 0x3f

    const-string v11, "com.mnet.app"

    aput-object v11, v7, v10

    const/16 v10, 0x40

    const-string v11, "com.amazon.mShop.android"

    aput-object v11, v7, v10

    const/16 v10, 0x41

    const-string v11, "com.mobitv.client.tmobiletvhd"

    aput-object v11, v7, v10

    const/16 v10, 0x42

    const-string v11, "com.lookout"

    aput-object v11, v7, v10

    const/16 v10, 0x43

    const-string v11, "com.customermobile.preload"

    aput-object v11, v7, v10

    const/16 v10, 0x44

    const-string v11, "com.whitepages.nameid.tmobile"

    aput-object v11, v7, v10

    const/16 v10, 0x45

    const-string/jumbo v11, "us.com.dt.iq.appsource.tmobile"

    aput-object v11, v7, v10

    const/16 v10, 0x46

    const-string v11, "com.smithmicro.mnd"

    aput-object v11, v7, v10

    const/16 v10, 0x47

    const-string v11, "com.smithmicro.EDM"

    aput-object v11, v7, v10

    const/16 v10, 0x48

    const-string v11, "com.locationlabs.sparkle.yellow.pre"

    aput-object v11, v7, v10

    const/16 v10, 0x49

    const-string v11, "com.coremobility.app.vnotes"

    aput-object v11, v7, v10

    const/16 v10, 0x4a

    const-string v11, "com.lookout"

    aput-object v11, v7, v10

    const/16 v10, 0x4b

    const-string v11, "com.oem.smartwifisupport"

    aput-object v11, v7, v10

    const/16 v10, 0x4c

    const-string v11, "com.kineto.smartwifi"

    aput-object v11, v7, v10

    const/16 v10, 0x4d

    const-string v11, "com.itsoninc.android.uid"

    aput-object v11, v7, v10

    const/16 v10, 0x4e

    const-string v11, "com.itsoninc.android.itsonservice"

    aput-object v11, v7, v10

    const/16 v10, 0x4f

    const-string v11, "com.telenav.app.android.scout_us"

    aput-object v11, v7, v10

    const/16 v10, 0x50

    const-string v11, "com.mobitv.client.sprinttvng"

    aput-object v11, v7, v10

    const/16 v10, 0x51

    const-string v11, "com.nextradioapp.nextradio"

    aput-object v11, v7, v10

    const/16 v10, 0x52

    const-string v11, "com.nbadigital.gametimelite"

    aput-object v11, v7, v10

    const/16 v10, 0x53

    const-string v11, "com.nascar.nascarmobile"

    aput-object v11, v7, v10

    const/16 v10, 0x54

    const-string v11, "com.pinsight.v1"

    aput-object v11, v7, v10

    const/16 v10, 0x55

    const-string v11, "msgplus.jibe.sca"

    aput-object v11, v7, v10

    const/16 v10, 0x56

    const-string v11, "com.handmark.expressweather"

    aput-object v11, v7, v10

    const/16 v10, 0x57

    const-string v11, "com.amazon.mShop"

    aput-object v11, v7, v10

    const/16 v10, 0x58

    const-string v11, "com.familyandco.familywall"

    aput-object v11, v7, v10

    const/16 v10, 0x59

    const-string v11, "com.locationlabs.finder.sprint"

    aput-object v11, v7, v10

    const/16 v10, 0x5a

    const-string v11, "com.ubercab"

    aput-object v11, v7, v10

    const/16 v10, 0x5b

    const-string v11, "com.spotify.music"

    aput-object v11, v7, v10

    const/16 v10, 0x5c

    const-string v11, "com.airg"

    aput-object v11, v7, v10

    const/16 v10, 0x5d

    const-string v11, "com.soleo.numbersearch"

    aput-object v11, v7, v10

    const/16 v10, 0x5e

    const-string v11, "com.livewiremobile.musicstore.boost"

    aput-object v11, v7, v10

    const/16 v10, 0x5f

    const-string v11, "com.wipit.android.boostwallet"

    aput-object v11, v7, v10

    const/16 v10, 0x60

    const-string v11, "com.ebay.mobile"

    aput-object v11, v7, v10

    const/16 v10, 0x61

    const-string v11, "com.asurion.android.mobilerecovery.sprint"

    aput-object v11, v7, v10

    const/16 v10, 0x62

    const-string v11, "com.itsoninc.android.itsonclient"

    aput-object v11, v7, v10

    const/16 v10, 0x63

    const-string v11, "com.onelouder.baconreader"

    aput-object v11, v7, v10

    const/16 v10, 0x64

    const-string v11, "com.livewiremobile.musicstore.vmu"

    aput-object v11, v7, v10

    const/16 v10, 0x65

    const-string v11, "com.amazon.mShop.android"

    aput-object v11, v7, v10

    const/16 v10, 0x66

    const-string v11, "com.cequint.ecid"

    aput-object v11, v7, v10

    const/16 v10, 0x67

    const-string v11, "com.nqmobile.antivirus20.uscc"

    aput-object v11, v7, v10

    const/16 v10, 0x68

    const-string v11, "com.mobitv.client.uscctv"

    aput-object v11, v7, v10

    const/16 v10, 0x69

    const-string v11, "com.synchronoss.sm"

    aput-object v11, v7, v10

    const/16 v10, 0x6a

    const-string v11, "com.LogiaGroup.LogiaDeck"

    aput-object v11, v7, v10

    const/16 v10, 0x6b

    const-string v11, "com.telenav.app.android.uscc"

    aput-object v11, v7, v10

    const/16 v10, 0x6c

    const-string v11, "com.zed.TrdWapLauncher"

    aput-object v11, v7, v10

    const/16 v10, 0x6d

    const-string v11, "com.amazon.windowshop"

    aput-object v11, v7, v10

    const/16 v10, 0x6e

    const-string v11, "com.privacystar.android.metro"

    aput-object v11, v7, v10

    const/16 v10, 0x6f

    const-string v11, "com.lookout"

    aput-object v11, v7, v10

    const/16 v10, 0x70

    const-string v11, "com.whitepages.metro411"

    aput-object v11, v7, v10

    const/16 v10, 0x71

    const-string v11, "com.handmark.metro.launcher"

    aput-object v11, v7, v10

    const/16 v10, 0x72

    const-string v11, "com.mobileposse.client"

    aput-object v11, v7, v10

    const/16 v10, 0x73

    const-string v11, "com.nuance.nmc.sihome.metropcs"

    aput-object v11, v7, v10

    const/16 v10, 0x74

    const-string v11, "com.metro.simlock"

    aput-object v11, v7, v10

    const/16 v10, 0x75

    const-string v11, "com.metropcs.service.vvm"

    aput-object v11, v7, v10

    const/16 v10, 0x76

    const-string v11, "com.amazon.kindle"

    aput-object v11, v7, v10

    const/16 v10, 0x77

    const-string v11, "com.amazon.mp3"

    aput-object v11, v7, v10

    const/16 v10, 0x78

    const-string v11, "com.amazon.venezia"

    aput-object v11, v7, v10

    const/16 v10, 0x79

    const-string v11, "com.amazon.mShop.android"

    aput-object v11, v7, v10

    const/16 v10, 0x7a

    const-string v11, "com.audible.application"

    aput-object v11, v7, v10

    const/16 v10, 0x7b

    const-string v11, "com.imdb.mobile"

    aput-object v11, v7, v10

    const/16 v10, 0x7c

    const-string v11, "com.amazon.fv"

    aput-object v11, v7, v10

    const/16 v10, 0x7d

    const-string v11, "com.gotv.nflgamecenter.us.lite"

    aput-object v11, v7, v10

    const/16 v10, 0x7e

    const-string v11, "com.slacker.radio"

    aput-object v11, v7, v10

    const/16 v10, 0x7f

    const-string v11, "com.telecomsys.directedsms.android.SCG"

    aput-object v11, v7, v10

    const/16 v10, 0x80

    const-string v11, "com.asurion.android.verizon.vms"

    aput-object v11, v7, v10

    const/16 v10, 0x81

    const-string v11, "com.LogiaGroup.LogiaDeck"

    aput-object v11, v7, v10

    const/16 v10, 0x82

    const-string v11, "com.vznavigator.Generic"

    aput-object v11, v7, v10

    const/16 v10, 0x83

    const-string v11, "com.cequint.ecid"

    aput-object v11, v7, v10

    const/16 v10, 0x84

    const-string v11, "com.motricity.verizon.ssodownloadable"

    aput-object v11, v7, v10

    const/16 v10, 0x85

    const-string v11, "com.vcast.mediamanager"

    aput-object v11, v7, v10

    const/16 v10, 0x86

    const-string v11, "com.fusionone.android.sync.vzbuaclient"

    aput-object v11, v7, v10

    const/16 v10, 0x87

    const-string v11, "net.aetherpal.device"

    aput-object v11, v7, v10

    const/16 v10, 0x88

    const-string v11, "com.yahoo.mobile.client.android.yahoo.att"

    aput-object v11, v7, v10

    const/16 v10, 0x89

    const-string v11, "com.yahoo.mobile.client.android.mail.att"

    aput-object v11, v7, v10

    const/16 v10, 0x8a

    const-string v11, "com.asurison.android.mobilerecovery.att"

    aput-object v11, v7, v10

    const/16 v10, 0x8b

    const-string v11, "com.telenav.app.android.cingular"

    aput-object v11, v7, v10

    const/16 v10, 0x8c

    const-string v11, "com.drivemode"

    aput-object v11, v7, v10

    const/16 v10, 0x8d

    const-string v11, "com.locationlabs.sparkle.blue"

    aput-object v11, v7, v10

    const/16 v10, 0x8e

    const-string v11, "com.lookout"

    aput-object v11, v7, v10

    const/16 v10, 0x8f

    const-string v11, "com.mobitv.client.tv"

    aput-object v11, v7, v10

    const/16 v10, 0x90

    const-string v11, "com.locationlabs.cni.att"

    aput-object v11, v7, v10

    const/16 v10, 0x91

    const-string v11, "com.yellowpages.android.ypmobile"

    aput-object v11, v7, v10

    const/16 v10, 0x92

    const-string v11, "com.wavemarket.waplauncher"

    aput-object v11, v7, v10

    const/16 v10, 0x93

    const-string v11, "com.ubercab"

    aput-object v11, v7, v10

    const/16 v10, 0x94

    const-string v11, "com.amazon.mShop.android"

    aput-object v11, v7, v10

    const/16 v10, 0x95

    const-string v11, "com.ampsvc.android"

    aput-object v11, v7, v10

    const/16 v10, 0x96

    const-string v11, "com.americanexpress.plenti"

    aput-object v11, v7, v10

    const/16 v10, 0x97

    const-string v11, "com.synchronoss.dcs.att.r2g"

    aput-object v11, v7, v10

    const/16 v10, 0x98

    const-string v11, "com.cequint.ecid"

    aput-object v11, v7, v10

    const/16 v10, 0x99

    const-string v11, "com.amazon.kindle"

    aput-object v11, v7, v10

    const/16 v10, 0x9a

    const-string v11, "com.matchboxmobile.wisp"

    aput-object v11, v7, v10

    const/16 v10, 0x9b

    const-string v11, "com.quickmobile.att.experienceweekend2014"

    aput-object v11, v7, v10

    const/16 v10, 0x9c

    const-string v11, "com.themarketingarm.attexpressions"

    aput-object v11, v7, v10

    const/16 v10, 0x9d

    const-string v11, "com.welldoc.diabetesmanager"

    aput-object v11, v7, v10

    const/16 v10, 0x9e

    const-string v11, "com.xora.att"

    aput-object v11, v7, v10

    const/16 v10, 0x9f

    const-string v11, "deezer.android.app"

    aput-object v11, v7, v10

    const/16 v10, 0xa0

    const-string v11, "com.quickplay.android.bellmediaplayer"

    aput-object v11, v7, v10

    const/16 v10, 0xa1

    const-string v11, "ca.bell.selfserve.mybellmobile"

    aput-object v11, v7, v10

    const/16 v10, 0xa2

    const-string v11, "com.bell.ptt"

    aput-object v11, v7, v10

    const/16 v10, 0xa3

    const-string v11, "ca.bell.wt.android.tunesappswidget"

    aput-object v11, v7, v10

    const/16 v10, 0xa4

    const-string v11, "com.suretap.suretap_wallet"

    aput-object v11, v7, v10

    const/16 v10, 0xa5

    const-string v11, "com.fivemobile.myaccount"

    aput-object v11, v7, v10

    const/16 v10, 0xa6

    const-string v11, "com.rogers.npd.appzone"

    aput-object v11, v7, v10

    const/16 v10, 0xa7

    const-string v11, "com.nhl.gc1112.free"

    aput-object v11, v7, v10

    const/16 v10, 0xa8

    const-string v11, "com.rogers.citytv.phone"

    aput-object v11, v7, v10

    const/16 v10, 0xa9

    const-string v11, "com.telus.myaccount"

    aput-object v11, v7, v10

    const/16 v10, 0xaa

    const-string v11, "com.telus.featuredapps"

    aput-object v11, v7, v10

    const/16 v10, 0xab

    const-string v11, "com.koodo.selfserve"

    aput-object v11, v7, v10

    const/16 v10, 0xac

    const-string v11, "com.android.settings"

    aput-object v11, v7, v10

    const/16 v10, 0xad

    const-string v11, "com.videotron.android.portail.launcher"

    aput-object v11, v7, v10

    const/16 v10, 0xae

    const-string v11, "ca.windmobile.selfcare.prod"

    aput-object v11, v7, v10

    const/16 v10, 0xaf

    const-string v11, "com.pelmorex.WeatherEyeAndroid"

    aput-object v11, v7, v10

    const/16 v10, 0xb0

    const-string v11, "ca.virginmobile.mybenefits"

    aput-object v11, v7, v10

    const/16 v10, 0xb1

    const-string v11, "com.netcosports.andjdm"

    aput-object v11, v7, v10

    const/16 v10, 0xb2

    const-string v11, "com.netcosports.andjdq"

    aput-object v11, v7, v10

    const/16 v10, 0xb3

    const-string v11, "com.sasktel.mysasktel"

    aput-object v11, v7, v10

    const/16 v10, 0xb4

    const-string v11, "com.android.sharedstoragebackup"

    aput-object v11, v7, v10

    const/16 v10, 0xb5

    const-string v11, "com.opera.max.global"

    aput-object v11, v7, v10

    const/16 v10, 0xb6

    const-string v11, "com.LogiaGroup.LogiaDeck"

    aput-object v11, v7, v10

    const/16 v10, 0xb7

    const-string v11, "com.google.android.projection.gearhead"

    aput-object v11, v7, v10

    const/16 v10, 0xb8

    const-string v11, "com.google.android.projection.top"

    aput-object v11, v7, v10

    .line 2468
    .local v7, "mKillingServiceWhitelist":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_9

    aget-object v2, v0, v5

    .line 2469
    .restart local v2    # "compStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2470
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_7

    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "skip Samsung pkg : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2468
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2473
    .end local v2    # "compStr":Ljava/lang/String;
    :cond_9
    move-object v0, v1

    array-length v6, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_c

    aget-object v2, v0, v5

    .line 2474
    .restart local v2    # "compStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2475
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_a

    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "skip Carrier pkg : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    :cond_a
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2473
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2478
    .end local v2    # "compStr":Ljava/lang/String;
    :cond_c
    move-object v0, v3

    array-length v6, v0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_f

    aget-object v2, v0, v5

    .line 2479
    .restart local v2    # "compStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 2480
    sget-boolean v10, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v10, :cond_d

    const-string v10, "SAMP_SPCM_test"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "skip Etc     pkg : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    :cond_d
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2478
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2483
    .end local v2    # "compStr":Ljava/lang/String;
    :cond_f
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    array-length v10, v7

    if-ge v4, v10, :cond_13

    .line 2484
    aget-object v10, v7, v4

    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 2486
    aget-object v10, v7, v4

    const-string v11, "\\*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2487
    .local v9, "tmp":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_10

    .line 2488
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2489
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2491
    :cond_10
    const/4 v10, 0x1

    aget-object v10, v9, v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2492
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2494
    .end local v9    # "tmp":[Ljava/lang/String;
    :cond_11
    aget-object v10, v7, v4

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2495
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2483
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2498
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private isSystemPackages(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2503
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2505
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2506
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    move v5, v2

    :goto_0
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_2

    move v4, v2

    :goto_1
    or-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 2507
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_0

    const-string v4, "SAMP_SPCM_test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "skip SYSTEM Flag  pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2513
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_2
    return v2

    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    move v5, v3

    .line 2506
    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    .line 2511
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    :cond_3
    move v2, v3

    .line 2513
    goto :goto_2
.end method

.method private loadPkgnameForCSC(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1622
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1625
    .local v2, "startDepth":I
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1626
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v2, :cond_2

    .line 1627
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1641
    :cond_2
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_3

    .line 1642
    const-string v4, "SAMP_SPCM_test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CSC File Preload pkgs :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_3
    return-void

    .line 1629
    :cond_4
    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 1632
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1634
    .local v1, "name":Ljava/lang/String;
    const-string v4, "favorite"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1635
    const/4 v4, 0x0

    const-string/jumbo v5, "packageName"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1636
    .local v0, "cscpkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1637
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_0

    .line 1638
    const-string v4, "SAMP_SPCM_test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cscpkgName :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected RunUpdateActiveInActivePackagesThread()V
    .locals 2

    .prologue
    .line 1062
    new-instance v0, Lcom/android/server/am/SmartAdjustManager$3;

    const-string v1, "UpdateActiveInActivePackages"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SmartAdjustManager$3;-><init>(Lcom/android/server/am/SmartAdjustManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mUpdateActiveInActivePackagesThread:Ljava/lang/Thread;

    .line 1098
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mUpdateActiveInActivePackagesThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1099
    return-void
.end method

.method public SPCMDBResetTime(Ljava/lang/String;)V
    .locals 3
    .param p1, "strPkgName"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x321

    .line 866
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_LAUNCHER_ONLY:Z

    if-nez v1, :cond_1

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    if-eqz p1, :cond_0

    .line 874
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHandler:Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;->removeMessages(I)V

    .line 875
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHandler:Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 876
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 877
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHandler:Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final SPCMLocked(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1124
    .local p1, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1125
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/android/server/am/SmartAdjustManager;->mLastSPCMWorkingTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7530

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    .line 1126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/SmartAdjustManager;->mLastSPCMWorkingTime:J

    .line 1127
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mServiceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1128
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mServiceList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1131
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1132
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1133
    const-string v3, "com.android.server.am.BROADCAST_SERVICEMANAGER_SHIRINKSERVICE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1135
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1137
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_0

    .line 1138
    const-string v3, "SAMP_SPCM_test"

    const-string v4, "SPCM sendBroadcast called !!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1140
    :cond_1
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_0

    .line 1141
    const-string v3, "SAMP_SPCM_test"

    const-string/jumbo v4, "we don\'t call sendBroadcast in cool time!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected addPackageInfo(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 12
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 1485
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v5, :cond_0

    .line 1486
    const-string v5, "SAMP_SPCM_test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent.ACTION_PACKAGE_ADDED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_0
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->isFirst:Z

    if-eqz v5, :cond_2

    .line 1537
    :cond_1
    :goto_0
    return-void

    .line 1493
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 1494
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1495
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/16 v1, 0xd

    .line 1499
    .local v1, "flags":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-interface {v5, v2, v1, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1505
    :goto_1
    if-eqz v3, :cond_4

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/SmartAdjustManager;->isSPCMExcludePkg(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1506
    new-instance v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    invoke-direct {v4, p0}, Lcom/android/server/am/SmartAdjustManager$PackageTable;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    .line 1507
    .local v4, "pkgtable":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->name:Ljava/lang/String;

    .line 1508
    iput-object v3, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->info:Landroid/content/pm/PackageInfo;

    .line 1509
    const/4 v5, 0x3

    iput v5, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->active:I

    .line 1510
    iput-boolean v8, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isRunning:Z

    .line 1511
    iput-boolean v8, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isWidget:Z

    .line 1512
    iput v8, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    .line 1513
    iput v8, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score_applocking:I

    .line 1514
    iput-boolean v8, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isAppLockingOnly:Z

    .line 1515
    iput-wide v10, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastServiceActivityTime:J

    .line 1516
    iput-wide v10, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastUsedTime:J

    .line 1517
    iput-wide v10, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastForcedStopTime:J

    .line 1519
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 1520
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1521
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    :cond_3
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v5, :cond_4

    .line 1524
    const-string v5, "SAMP_SPCM_test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_PACKAGE_ADDED add new package -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    .end local v4    # "pkgtable":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    :cond_4
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {p0, v5}, Lcom/android/server/am/SmartAdjustManager;->updateSPCMExternalWhiteList(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v5, :cond_1

    .line 1531
    const-string v5, "SAMP_SPCM_test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException in updateSPCMExternalWhiteList,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1501
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1502
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "SAMP_SPCM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error getting package info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method final decreaseHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nHotnessType"    # I

    .prologue
    .line 355
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    sget-object v1, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForEmptyHotness:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v1, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForEmptyHotness:Ljava/lang/String;

    .line 362
    const-string/jumbo v1, "unknown"

    sput-object v1, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    .line 363
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "SAMP_Hotness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decreaseHotnessAdj "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 367
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    .line 369
    .local v0, "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "SAMP_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decreaseHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v1

    if-lez v1, :cond_4

    .line 372
    invoke-virtual {v0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->decreaseHotness(I)V

    .line 373
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_4
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "SAMP_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decreaseHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v0    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dumpsampLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2558
    const-string v3, "ACTIVITY MANAGER SAMP (dumpsys activity samp)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2560
    const-string v3, " hotnessAdj value (mHotnessAdjMap) --"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2561
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2562
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2563
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2564
    .local v1, "entryHotness":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    .line 2565
    .local v0, "TempHotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tHotnessAdj: activity %8d , empty %8d "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v7}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v8}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " proc name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2567
    .end local v0    # "TempHotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    .end local v1    # "entryHotness":Ljava/util/Map$Entry;
    :cond_0
    return-void
.end method

.method dumpspcmLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2570
    const-string v5, "ACTIVITY MANAGER SPCM (dumpsys activity spcm)"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2571
    const-string v5, "mActivePackages ---"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2572
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 2573
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 2574
    .local v2, "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->info:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2575
    const-string v5, "--Score "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2577
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v5, :cond_0

    .line 2578
    const-string v5, " --Score_applocking "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score_applocking:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2579
    const-string v5, " --LockingOnly: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isAppLockingOnly:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2582
    :cond_0
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2572
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2585
    .end local v2    # "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    :cond_1
    const-string v5, "mInActivePackages ---"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2586
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 2587
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 2588
    .restart local v2    # "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->info:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2589
    const-string v5, "--Score "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2591
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v5, :cond_2

    .line 2592
    const-string v5, " --Score_applocking "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score_applocking:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2593
    const-string v5, " --LockingOnly: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isAppLockingOnly:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2596
    :cond_2
    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2586
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2599
    .end local v2    # "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    :cond_3
    const-string v5, "mExternalWhiteList ---"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2600
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mExternalWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 2601
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mExternalWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2600
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2604
    :cond_4
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v5, :cond_6

    .line 2605
    const-string v5, "mSPCMDBfromSMList ---"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2606
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2607
    .local v4, "strPkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    .line 2609
    .local v3, "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    if-eqz v3, :cond_5

    .line 2610
    const-string v5, "--PackageName "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2611
    const-string v5, " : "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2612
    const-string v5, " : "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2613
    const-string v5, " : "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 2614
    const-string v5, " : "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->AppFreezeScore:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_3

    .line 2622
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    .end local v4    # "strPkgName":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method protected forceKill(Ljava/lang/String;)V
    .locals 8
    .param p1, "procName"    # Ljava/lang/String;

    .prologue
    .line 2671
    const/4 v1, 0x0

    .line 2673
    .local v1, "killproc":Lcom/android/server/am/ProcessRecord;
    const/4 v2, 0x0

    .local v2, "nCnt":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 2674
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 2675
    .local v4, "tmpProc":Lcom/android/server/am/ProcessRecord;
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2676
    move-object v1, v4

    .line 2681
    .end local v4    # "tmpProc":Lcom/android/server/am/ProcessRecord;
    :cond_0
    if-nez v1, :cond_2

    .line 2708
    :goto_1
    return-void

    .line 2673
    .restart local v4    # "tmpProc":Lcom/android/server/am/ProcessRecord;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2684
    .end local v4    # "tmpProc":Lcom/android/server/am/ProcessRecord;
    :cond_2
    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2686
    .local v0, "killpkgName":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v5, :cond_3

    const-string v5, "SAMP_SPCM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "choose package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/am/SmartAdjustManager;->isInGrayList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2689
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "SPCM kill lowestscore package!"

    invoke-virtual {v5, v0, v6}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLockedFromSmartAdjust(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2694
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 2695
    .local v3, "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-eqz v3, :cond_6

    .line 2696
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2697
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2699
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2700
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2706
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "SPCM kill lowestscore package!"

    invoke-virtual {v5, v0, v6}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLockedFromSmartAdjust(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2702
    :cond_6
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v5, :cond_5

    .line 2703
    const-string v5, "SAMP_SPCM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not exspected!!!!, killingpackage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not in active packages list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected forceKillAll(I)V
    .locals 4
    .param p1, "killStartAdj"    # I

    .prologue
    .line 2711
    monitor-enter p0

    .line 2712
    const/4 v0, 0x0

    .local v0, "nCnt":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2713
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2714
    .local v1, "tmpProc":Lcom/android/server/am/ProcessRecord;
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-le v2, p1, :cond_0

    .line 2715
    const-string v2, "SPCM test"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 2712
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2718
    .end local v1    # "tmpProc":Lcom/android/server/am/ProcessRecord;
    :cond_1
    monitor-exit p0

    .line 2719
    return-void

    .line 2718
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected forceMoveToActive(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2654
    if-nez p1, :cond_0

    .line 2655
    const-string v1, "SAMP_SPCM"

    const-string v2, "PackageName is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    :goto_0
    return-void

    .line 2658
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 2659
    .local v0, "pt":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-eqz v0, :cond_1

    .line 2660
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2661
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2662
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2663
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2664
    const-string v1, "SAMP_SPCM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force moved into Active list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2667
    :cond_1
    const-string v1, "SAMP_SPCM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not in the InActive list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected forceMoveToInactive(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2635
    if-nez p1, :cond_0

    .line 2636
    const-string v1, "SAMP_SPCM"

    const-string v2, "PackageName is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    :goto_0
    return-void

    .line 2639
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 2640
    .local v0, "pt":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-eqz v0, :cond_1

    .line 2641
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "SPCM kill ForceInactive package!"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLockedFromSmartAdjust(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2644
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2645
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2646
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2647
    const-string v1, "SAMP_SPCM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force moved into Inactive list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2650
    :cond_1
    const-string v1, "SAMP_SPCM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not in the active list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected forceStopAll(I)V
    .locals 6
    .param p1, "killStartAdj"    # I

    .prologue
    .line 2722
    monitor-enter p0

    .line 2723
    const/4 v0, 0x0

    .local v0, "nCnt":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2724
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2725
    .local v1, "tmpProc":Lcom/android/server/am/ProcessRecord;
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-le v2, p1, :cond_0

    .line 2726
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SPCM kill ForceStop pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLockedFromSmartAdjust(Ljava/lang/String;Ljava/lang/String;)V

    .line 2723
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2730
    .end local v1    # "tmpProc":Lcom/android/server/am/ProcessRecord;
    :cond_1
    monitor-exit p0

    .line 2731
    return-void

    .line 2730
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected getBgProcCount(I)I
    .locals 1
    .param p1, "kind"    # I

    .prologue
    .line 2735
    packed-switch p1, :pswitch_data_0

    .line 2745
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2737
    :pswitch_0
    iget v0, p0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    goto :goto_0

    .line 2739
    :pswitch_1
    iget v0, p0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    goto :goto_0

    .line 2741
    :pswitch_2
    iget v0, p0, Lcom/android/server/am/SmartAdjustManager;->mNumCachedHiddenProcs:I

    goto :goto_0

    .line 2743
    :pswitch_3
    iget v0, p0, Lcom/android/server/am/SmartAdjustManager;->mNumNonCachedProcs:I

    goto :goto_0

    .line 2735
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getShortPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2749
    if-eqz p1, :cond_6

    .line 2750
    move-object v0, p1

    .line 2751
    .local v0, "shortPkgName":Ljava/lang/String;
    const-string v1, "com."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2752
    const-string v1, "com."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2754
    :cond_0
    const-string v1, "android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2755
    const-string v1, "android."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2757
    :cond_1
    const-string/jumbo v1, "samsung."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2758
    const-string/jumbo v1, "samsung."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2760
    :cond_2
    const-string/jumbo v1, "sec."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2761
    const-string/jumbo v1, "sec."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2763
    :cond_3
    const-string v1, "app."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2764
    const-string v1, "app."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2766
    :cond_4
    const-string v1, "google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2767
    const-string v1, "google."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2769
    :cond_5
    const-string v1, "%30s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2771
    .end local v0    # "shortPkgName":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_6
    const-string v1, "%30s"

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "null"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method final hasActiveWidgets(Lcom/android/server/am/ProcessRecord;)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 420
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 421
    .local v0, "awg":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetPackageList()[Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "packagelist":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 423
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    const-string v3, "SAMP_SPCM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hasActiveWidgets packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , so don\'t kill!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v3, 0x1

    .line 428
    :goto_1
    return v3

    .line 422
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method final hasActiveWidgetsForSM(Ljava/lang/String;)Z
    .locals 4
    .param p1, "strPkgName"    # Ljava/lang/String;

    .prologue
    .line 948
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 949
    .local v0, "awg":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetPackageList()[Ljava/lang/String;

    move-result-object v2

    .line 950
    .local v2, "packagelist":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 951
    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 952
    const/4 v3, 0x1

    .line 955
    :goto_1
    return v3

    .line 950
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 955
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method hasNotification(Lcom/android/server/am/ProcessRecord;Z)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "bOngoing"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 719
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 720
    .local v0, "inm":Landroid/app/INotificationManager;
    if-nez v0, :cond_1

    .line 746
    :cond_0
    :goto_0
    return v3

    .line 723
    :cond_1
    const/4 v1, 0x0

    .local v1, "nCnt":I
    :goto_1
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 724
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 726
    .local v2, "strPkg":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_2

    const-string v5, "android"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 723
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 729
    :cond_3
    if-eqz p2, :cond_5

    .line 730
    :try_start_0
    invoke-interface {v0, v2}, Landroid/app/INotificationManager;->hasOngoingNotification(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 731
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v5, :cond_4

    .line 732
    const-string v5, "SAMP_SPCM_test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " processName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has important Notification"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v3, v4

    .line 733
    goto :goto_0

    .line 737
    :cond_5
    invoke-interface {v0, v2}, Landroid/app/INotificationManager;->hasNotification(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 738
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v5, :cond_6

    .line 739
    const-string v5, "SAMP_SPCM_test"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " processName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has important Notification"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    move v3, v4

    .line 740
    goto/16 :goto_0

    .line 744
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public isActivePackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;)Z
    .locals 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Landroid/app/IApplicationThread;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "hostingType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1157
    const/4 v1, 0x0

    .line 1161
    .local v1, "allowed":Z
    iget-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 1253
    :cond_0
    :goto_0
    return v5

    .line 1166
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1167
    .local v3, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1168
    .local v0, "actpkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    iget-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1169
    .local v2, "inactpkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-eqz v0, :cond_2

    iget v6, v0, Lcom/android/server/am/SmartAdjustManager$PackageTable;->active:I

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 1173
    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_0

    .line 1179
    :cond_3
    const-string/jumbo v5, "service"

    if-ne p5, v5, :cond_7

    .line 1180
    const/4 v1, 0x1

    .line 1229
    :cond_4
    :goto_1
    if-eqz v1, :cond_6

    .line 1231
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1232
    .local v4, "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-eqz v4, :cond_9

    .line 1233
    const/4 v5, 0x3

    iput v5, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->active:I

    .line 1234
    const-string/jumbo v5, "service"

    if-ne p5, v5, :cond_5

    .line 1235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastServiceActivityTime:J

    .line 1238
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1239
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    const-string v5, "SAMP_SPCM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " move to active."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    :cond_6
    :goto_2
    move v5, v1

    .line 1253
    goto :goto_0

    .line 1224
    :cond_7
    const-string v5, "activity"

    if-eq p5, v5, :cond_8

    const-string v5, "broadcast"

    if-eq p5, v5, :cond_8

    const-string/jumbo v5, "provider"

    if-ne p5, v5, :cond_4

    .line 1226
    :cond_8
    const/4 v1, 0x1

    goto :goto_1

    .line 1248
    .restart local v4    # "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    :cond_9
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v5, :cond_a

    .line 1249
    const-string v5, "SAMP_SPCM_test"

    const-string v6, "not in active and inactive list, allow it, think it\'s in white list"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_a
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public isInGrayList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 786
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mKillingServiceGraylist:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 787
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mKillingServiceGraylist:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 789
    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mKillingServiceGraylist:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, "\\*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 791
    .local v1, "tmp":[Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 799
    .end local v1    # "tmp":[Ljava/lang/String;
    :cond_0
    :goto_1
    return v2

    .line 794
    :cond_1
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mKillingServiceGraylist:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 786
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    .line 799
    goto :goto_1
.end method

.method protected registSPCM()V
    .locals 3

    .prologue
    .line 2776
    sget-boolean v0, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/SmartAdjustManager;->SPCM_INIT:Z

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2785
    :cond_0
    :goto_0
    return-void

    .line 2781
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/SmartAdjustManager;->getWallpaperManager()Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2782
    invoke-virtual {p0}, Lcom/android/server/am/SmartAdjustManager;->RunUpdateActiveInActivePackagesThread()V

    .line 2783
    invoke-virtual {p0}, Lcom/android/server/am/SmartAdjustManager;->registerReceiver()V

    .line 2784
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SmartAdjustManager;->SPCM_INIT:Z

    goto :goto_0
.end method

.method protected registerReceiver()V
    .locals 3

    .prologue
    .line 1102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1103
    .local v0, "SevicemanagerFilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.server.am.BROADCAST_SERVICEMANAGER_SHIRINKSERVICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1105
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/SmartAdjustManager$4;

    invoke-direct {v2, p0}, Lcom/android/server/am/SmartAdjustManager$4;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1121
    return-void
.end method

.method public setAppWidgetServiceLock(Ljava/lang/Object;)V
    .locals 0
    .param p1, "lock"    # Ljava/lang/Object;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager;->mAppWidgetServiceLock:Ljava/lang/Object;

    .line 705
    return-void
.end method

.method public setPackageLockingTimeBySPCM(I)V
    .locals 4
    .param p1, "nTime"    # I

    .prologue
    .line 804
    const-string v0, "SAMP_SPCMtest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackageLockingTimeBySPCM() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    if-gez p1, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    const v0, 0x15630

    if-ge p1, v0, :cond_2

    mul-int/lit8 v0, p1, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    :goto_1
    iput-wide v0, p0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    .line 812
    sget-boolean v0, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v0, :cond_0

    .line 813
    const-string v0, "SAMP_SPCMtest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_UNUSEDPACKAGES_INTERVAL :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 810
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public setWallpaperManagerServiceLock(Ljava/lang/Object;)V
    .locals 0
    .param p1, "lock"    # Ljava/lang/Object;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager;->mWallpaperServiceLock:Ljava/lang/Object;

    .line 709
    return-void
.end method

.method protected final smartAdjustProcessesLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
    .locals 54
    .param p2, "TOP_APP"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    if-eqz v44, :cond_0

    .line 433
    const-wide/16 v44, 0x40

    const-string/jumbo v46, "smartAdjustProcessesLocked"

    const/16 v47, 0x0

    invoke-static/range {v44 .. v47}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 435
    :cond_0
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v32, "smartDHACachedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v33, "smartDHAEmptyProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v34, "smartDHAServiceProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 443
    .local v4, "N":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    .line 444
    .local v28, "now":J
    const-wide/32 v44, 0x1b7740

    sub-long v30, v28, v44

    .line 446
    .local v30, "oldTime":J
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    .line 447
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    .line 448
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->mNumNonCachedProcs:I

    .line 449
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->mNumCachedHiddenProcs:I

    .line 451
    add-int/lit8 v11, v4, -0x1

    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_9

    .line 452
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 453
    .local v5, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v0, v5, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    move/from16 v44, v0

    if-nez v44, :cond_1

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v44, v0

    if-eqz v44, :cond_1

    .line 457
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v44

    const/16 v45, 0x64

    move/from16 v0, v44

    move/from16 v1, v45

    if-ge v0, v1, :cond_2

    const-string v44, "android.process.acore"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_1

    const-string v44, "com.sec.android.provider.logsprovider"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_1

    const-string v44, "com.samsung.klmsagent"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_1

    const-string v44, "com.android.contacts"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_1

    const-string v44, "android.process.media"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_2

    .line 451
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 466
    :cond_2
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curProcState:I

    move/from16 v44, v0

    packed-switch v44, :pswitch_data_0

    .line 497
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->mNumNonCachedProcs:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->mNumNonCachedProcs:I

    .line 500
    :goto_2
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    if-eqz v44, :cond_3

    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    if-eqz v44, :cond_3

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v44, v0

    const/16 v45, 0x7

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_3

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v44, v0

    const/16 v45, 0x8

    move/from16 v0, v44

    move/from16 v1, v45

    if-gt v0, v1, :cond_3

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_3

    .line 504
    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_3
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curProcState:I

    move/from16 v44, v0

    const/16 v45, 0x7

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v44, v0

    const/16 v45, 0x9

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_1

    .line 508
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v44

    if-lez v44, :cond_8

    const/16 v44, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 469
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->mNumCachedHiddenProcs:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->mNumCachedHiddenProcs:I

    .line 470
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    .line 471
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    move/from16 v44, v0

    sget v45, Lcom/android/server/am/SmartAdjustManager;->SMART_DHA_CACHED_APP_MAX:I

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_5

    .line 473
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v44

    if-eqz v44, :cond_4

    .line 474
    const-string v44, "com.android.vending"

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_4

    .line 475
    const-string v44, "GATE"

    const-string v45, "<GATE-M> MARKET_LAUNCHED_FAIL </GATE-M>"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_4
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "cachedCount ##"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 481
    :cond_5
    const/16 v44, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 485
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    move/from16 v44, v0

    sget v45, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_6

    iget-wide v0, v5, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    move-wide/from16 v44, v0

    cmp-long v44, v44, v30

    if-gez v44, :cond_6

    .line 486
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "empty for "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-wide/32 v46, 0x1b7740

    add-long v46, v46, v30

    iget-wide v0, v5, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    move-wide/from16 v48, v0

    sub-long v46, v46, v48

    const-wide/16 v48, 0x3e8

    div-long v46, v46, v48

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, "s"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 488
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    .line 489
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    move/from16 v44, v0

    sget v45, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_7

    .line 490
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "emptyCount ##"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 492
    :cond_7
    const/16 v44, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v44

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 509
    :cond_8
    const/16 v44, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v44

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 515
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_9
    const/16 v27, 0x0

    .line 516
    .local v27, "skipKillBGCount":I
    const-wide/16 v6, 0x0

    .line 517
    .local v6, "avgUSS":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/am/ProcessList;->getSmartDHADefaultMargin()J

    move-result-wide v22

    .line 518
    .local v22, "margin":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numCached:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/SmartAdjustManager;->numEmpty:I

    move/from16 v45, v0

    add-int v10, v44, v45

    .line 521
    .local v10, "bgCount":I
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    if-eqz v44, :cond_a

    .line 522
    const-wide/16 v44, 0x40

    const-string v46, "get memory size"

    const/16 v47, 0x0

    invoke-static/range {v44 .. v47}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 523
    :cond_a
    new-instance v15, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v15}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 524
    .local v15, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 525
    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v38

    .line 527
    .local v38, "szFreeMem":J
    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v36

    .line 529
    .local v36, "szCached":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessesExtraCache:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-lez v44, :cond_b

    .line 531
    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v44

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessesExtraCache:J

    move-wide/from16 v48, v0

    mul-long v44, v44, v48

    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v48, v0

    sget-boolean v44, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    if-eqz v44, :cond_d

    const-wide/high16 v44, 0x3ff8000000000000L    # 1.5

    :goto_3
    mul-double v44, v44, v48

    sub-double v44, v46, v44

    move-wide/from16 v0, v44

    double-to-long v0, v0

    move-wide/from16 v36, v0

    .line 533
    :cond_b
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    if-eqz v44, :cond_c

    .line 534
    const-wide/16 v44, 0x40

    const-string v46, "get memory size"

    const/16 v47, 0x0

    invoke-static/range {v44 .. v47}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 537
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v44, v0

    const/16 v45, 0xf

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/am/ProcessList;->getLMKThreshold(I)J

    move-result-wide v20

    .line 538
    .local v20, "lmkThreshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/am/ProcessList;->getKswapdWatermark()J

    move-result-wide v16

    .line 539
    .local v16, "kswapdWatermark":J
    add-long v44, v16, v22

    sub-long v42, v44, v38

    .line 542
    .local v42, "szNeedFree":J
    const-wide/16 v40, 0x0

    .line 543
    .local v40, "szFreed":J
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v35, "targetKillingProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v44

    add-int/lit8 v14, v44, -0x1

    .local v14, "j":I
    :goto_4
    if-ltz v14, :cond_f

    .line 548
    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 549
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_e

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v44

    move/from16 v0, v44

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    .line 546
    :goto_5
    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    .line 531
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "j":I
    .end local v16    # "kswapdWatermark":J
    .end local v20    # "lmkThreshold":J
    .end local v35    # "targetKillingProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v40    # "szFreed":J
    .end local v42    # "szNeedFree":J
    :cond_d
    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    .line 552
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "j":I
    .restart local v16    # "kswapdWatermark":J
    .restart local v20    # "lmkThreshold":J
    .restart local v35    # "targetKillingProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v40    # "szFreed":J
    .restart local v42    # "szNeedFree":J
    :cond_e
    const/16 v44, 0x0

    move/from16 v0, v44

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_5

    .line 554
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_f
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v44

    add-int/lit8 v14, v44, -0x1

    :goto_6
    if-ltz v14, :cond_11

    .line 556
    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 557
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_10

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v44

    move/from16 v0, v44

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    .line 554
    :goto_7
    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    .line 560
    :cond_10
    const/16 v44, 0x0

    move/from16 v0, v44

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    goto :goto_7

    .line 563
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_11
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v44, :cond_13

    .line 564
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 565
    .local v25, "nEmptyNum":I
    div-int/lit8 v26, v25, 0xa

    .line 567
    .local v26, "nHotnessSlot":I
    if-lez v26, :cond_13

    .line 568
    new-instance v44, Lcom/android/server/am/SmartAdjustManager$1;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/SmartAdjustManager$1;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 580
    const/16 v24, 0x1

    .local v24, "nCnt":I
    :goto_8
    move/from16 v0, v24

    move/from16 v1, v26

    if-gt v0, v1, :cond_13

    .line 581
    sub-int v44, v25, v24

    move-object/from16 v0, v33

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 582
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    sub-int v44, v25, v24

    move-object/from16 v0, v33

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 583
    add-int/lit8 v27, v27, 0x1

    .line 584
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v44, :cond_12

    .line 585
    const-string v44, "SAMP"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Protected empty proc: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "("

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->setAdj:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "/"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ")"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_12
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 591
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v24    # "nCnt":I
    .end local v25    # "nEmptyNum":I
    .end local v26    # "nHotnessSlot":I
    :cond_13
    const-wide/16 v44, 0x0

    cmp-long v44, v42, v44

    if-lez v44, :cond_1c

    add-long v44, v42, v20

    cmp-long v44, v36, v44

    if-gtz v44, :cond_1c

    sget v44, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    move/from16 v0, v44

    if-le v10, v0, :cond_1c

    .line 594
    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 595
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 597
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/am/SmartAdjustManager;->computeHotnessAdjLocked(Ljava/util/ArrayList;)V

    .line 599
    new-instance v44, Lcom/android/server/am/SmartAdjustManager$2;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/SmartAdjustManager$2;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 624
    const/4 v11, 0x0

    :goto_9
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v44

    move/from16 v0, v44

    if-ge v11, v0, :cond_1a

    .line 625
    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 626
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    if-nez v5, :cond_15

    .line 624
    :cond_14
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 629
    :cond_15
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v44, v0

    const/16 v45, 0xa

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_16

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v44, v0

    const/16 v45, 0x9

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_17

    .line 630
    :cond_16
    add-int/lit8 v27, v27, 0x1

    .line 631
    goto :goto_a

    .line 634
    :cond_17
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->DB_CONN_KILL_SKIP:Z

    if-nez v44, :cond_18

    iget-boolean v0, v5, Lcom/android/server/am/ProcessRecord;->hasProviderClient:Z

    move/from16 v44, v0

    if-eqz v44, :cond_18

    .line 635
    const-string v44, "SAMP_SDHA"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "No longer want but don\'t kill provider connected empty : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " (pid "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ") (adj "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ") "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "(clientLowAdj "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->lowestClientAdj:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ") (clientName : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->lowestClientName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ")"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/16 v44, 0x10

    move/from16 v0, v44

    iput v0, v5, Lcom/android/server/am/ProcessRecord;->lowestClientAdj:I

    .line 639
    const/16 v44, 0x0

    move-object/from16 v0, v44

    iput-object v0, v5, Lcom/android/server/am/ProcessRecord;->lowestClientName:Ljava/lang/String;

    .line 640
    add-int/lit8 v27, v27, 0x1

    .line 641
    goto/16 :goto_a

    .line 644
    :cond_18
    const-wide/16 v18, 0x0

    .line 645
    .local v18, "lastKillTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mLastKillTimeMap:Ljava/util/HashMap;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_19

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mLastKillTimeMap:Ljava/util/HashMap;

    move-object/from16 v44, v0

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/Long;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 647
    sub-long v12, v28, v18

    .line 648
    .local v12, "interval":J
    const-wide/16 v44, 0x1388

    cmp-long v44, v12, v44

    if-gez v44, :cond_19

    .line 649
    const-string v44, "SAMP_SDHA"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "No longer want but don\'t kill hotness protected bg : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " (pid "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ") (lastKillTime: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-wide/16 v46, 0x3e8

    div-long v46, v12, v46

    invoke-virtual/range {v45 .. v47}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " sec ago)"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    add-int/lit8 v27, v27, 0x1

    .line 652
    goto/16 :goto_a

    .line 656
    .end local v12    # "interval":J
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v44, v0

    const/16 v45, 0x2

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->getHistoricallyAvgUSS(Lcom/android/server/am/ProcessStatsService;I)J

    move-result-wide v8

    .line 657
    .local v8, "avgUssSize":J
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v45, "BG, "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-wide/16 v46, 0x400

    div-long v46, v8, v46

    move-object/from16 v0, v44

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, "K, hotnessAdj="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", XmlFlag="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget-boolean v0, v5, Lcom/android/server/am/ProcessRecord;->xmlFlag:Z

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, ", oom_adj="

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    const/16 v45, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 658
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/am/SmartAdjustManager;->updateLastKillTime(Lcom/android/server/am/ProcessRecord;J)V

    .line 659
    add-long v40, v40, v8

    .line 660
    add-int/lit8 v10, v10, -0x1

    .line 662
    cmp-long v44, v40, v42

    if-gez v44, :cond_1a

    sget v44, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    move/from16 v0, v44

    if-gt v10, v0, :cond_14

    .line 667
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "avgUssSize":J
    .end local v18    # "lastKillTime":J
    :cond_1a
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    if-eqz v44, :cond_1c

    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SPCM_TRIGGER:Z

    if-eqz v44, :cond_1c

    if-eqz v34, :cond_1c

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v44

    if-lez v44, :cond_1c

    .line 669
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v44, :cond_1b

    .line 670
    const-string v44, "SAMP_SPCM_test"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "call SPCMLocked in SAMP : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v46, v0

    sget v46, Lcom/android/server/am/ActivityManagerService;->mLastMemFactor:I

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/am/SmartAdjustManager;->SPCMLocked(Ljava/util/ArrayList;)V

    .line 676
    const/16 v44, 0x0

    sput-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SPCM_TRIGGER:Z

    .line 681
    :cond_1c
    const-wide/16 v44, 0x0

    cmp-long v44, v40, v44

    if-gtz v44, :cond_1d

    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v44, :cond_1e

    .line 682
    :cond_1d
    const-string v45, "SAMP_SDHA"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "F:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%03d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-wide/16 v50, 0x400

    div-long v50, v38, v50

    const-wide/16 v52, 0x400

    div-long v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "M, C:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%03d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-wide/16 v50, 0x400

    div-long v50, v36, v50

    const-wide/16 v52, 0x400

    div-long v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "M, ProcCnt:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%03d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "K, mgn:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%03d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-wide/16 v50, 0x400

    div-long v50, v22, v50

    const-wide/16 v52, 0x400

    div-long v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "M, nF:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-wide/16 v48, 0x0

    cmp-long v44, v42, v48

    if-gtz v44, :cond_20

    const-string v44, "-----"

    :goto_b
    move-object/from16 v0, v46

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "K, fd:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-wide/16 v48, 0x0

    cmp-long v44, v40, v48

    if-nez v44, :cond_21

    const-string v44, "-----"

    :goto_c
    move-object/from16 v0, v46

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "K, thd:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%03d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-wide/16 v50, 0x400

    div-long v50, v20, v50

    const-wide/16 v52, 0x400

    div-long v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "M, wm:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%02d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-wide/16 v50, 0x400

    div-long v50, v16, v50

    const-wide/16 v52, 0x400

    div-long v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "M, cch:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%02d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "M, emp:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%02d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, ", svcB:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%02d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, ", skipBG:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, "%02d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v46, ", TOP:"

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    if-eqz p2, :cond_22

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v44, v0

    const-string v47, "com."

    const-string v48, ""

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v44

    const-string v47, "android."

    const-string v48, ""

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v44

    const-string/jumbo v47, "sec."

    const-string v48, ""

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v44

    const-string/jumbo v47, "samsung."

    const-string v48, ""

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v44

    const-string v47, "app."

    const-string v48, ""

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v44

    :goto_d
    move-object/from16 v0, v46

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_1e
    sget-boolean v44, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    if-eqz v44, :cond_1f

    .line 699
    const-wide/16 v44, 0x40

    const-string/jumbo v46, "smartAdjustProcessesLocked"

    const/16 v47, 0x0

    invoke-static/range {v44 .. v47}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 700
    :cond_1f
    return-void

    .line 682
    :cond_20
    const-string v44, "%05d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-wide/16 v50, 0x400

    div-long v50, v42, v50

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    aput-object v49, v47, v48

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    goto/16 :goto_b

    :cond_21
    const-string v44, "%05d"

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const-wide/16 v50, 0x400

    div-long v50, v40, v50

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    aput-object v49, v47, v48

    move-object/from16 v0, v44

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    goto/16 :goto_c

    :cond_22
    const-string/jumbo v44, "null"

    goto :goto_d

    .line 466
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected updateActiveInActivePackagesLocked()V
    .locals 36

    .prologue
    .line 1682
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_0

    .line 1683
    const-string v2, "SAMP_SPCM_test"

    const-string/jumbo v4, "updateActiveInActivePackagesLocked "

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->isFirst:Z

    if-eqz v2, :cond_6

    .line 1688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    .line 1690
    .local v27, "pm":Landroid/content/pm/PackageManager;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1691
    .local v22, "installedPackagesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/16 v19, 0xd

    .line 1694
    .local v19, "flags":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v35

    .line 1695
    .local v35, "users":[I
    const/16 v34, 0x0

    .local v34, "ui":I
    :goto_0
    move-object/from16 v0, v35

    array-length v2, v0

    move/from16 v0, v34

    if-ge v0, v2, :cond_1

    .line 1696
    aget v2, v35, v34

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1695
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 1699
    :cond_1
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_2

    .line 1700
    const-string v2, "SAMP_SPCM_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateActiveInActivePackagesLocked --- all pakgs size "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_2
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1703
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->isFirst:Z

    .line 1705
    :cond_3
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_1d

    .line 1706
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/PackageInfo;

    .line 1708
    .local v26, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/SmartAdjustManager;->isSPCMExcludePkg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1709
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_4

    .line 1710
    const-string v2, "SAMP_SPCM_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateActiveInActivePackagesLocked - Skip package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    :cond_4
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 1713
    :cond_5
    new-instance v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/SmartAdjustManager$PackageTable;-><init>(Lcom/android/server/am/SmartAdjustManager;)V

    .line 1714
    .local v3, "pkgtable":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->name:Ljava/lang/String;

    .line 1715
    move-object/from16 v0, v26

    iput-object v0, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->info:Landroid/content/pm/PackageInfo;

    .line 1716
    const/4 v2, 0x3

    iput v2, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->active:I

    .line 1717
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isRunning:Z

    .line 1718
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->isWidget:Z

    .line 1719
    const/4 v2, 0x0

    iput v2, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    .line 1720
    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastServiceActivityTime:J

    .line 1721
    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastUsedTime:J

    .line 1722
    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastForcedStopTime:J

    .line 1724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1735
    .end local v3    # "pkgtable":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .end local v19    # "flags":I
    .end local v20    # "i":I
    .end local v22    # "installedPackagesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "pi":Landroid/content/pm/PackageInfo;
    .end local v27    # "pm":Landroid/content/pm/PackageManager;
    .end local v34    # "ui":I
    .end local v35    # "users":[I
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/SmartAdjustManager;->mPackageScoreUpdated:Z

    .line 1739
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1740
    .local v5, "activePackages_indays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    const-wide/16 v6, 0x0

    .line 1741
    .local v6, "totalForegroundtime_indays":J
    const-wide/32 v8, 0xf731400

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v9}, Lcom/android/server/am/SmartAdjustManager;->getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J

    move-result-wide v6

    .line 1743
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1744
    .local v11, "activePackages_indays_applocking":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    const-wide/16 v12, 0x0

    .line 1746
    .local v12, "totalForegroundtime_indays_applocking":J
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_LAUNCHER_ONLY:Z

    if-nez v2, :cond_7

    .line 1747
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v9}, Lcom/android/server/am/SmartAdjustManager;->getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J

    move-result-wide v12

    .line 1751
    :cond_7
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1752
    .local v23, "mPackagesForScoring":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/SmartAdjustManager$PackageTable;>;"
    const/16 v21, 0x0

    .line 1753
    .local v21, "inm":Landroid/app/INotificationManager;
    const/16 v32, 0x0

    .line 1755
    .local v32, "strPreferredIME":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1758
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v2, :cond_9

    .line 1759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1760
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v21

    .line 1761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "default_input_method"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1763
    if-eqz v32, :cond_8

    const-string v2, "/"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1765
    const-string v2, "/"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 1766
    .local v33, "tmp":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v33, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 1767
    const/4 v2, 0x0

    aget-object v32, v33, v2

    .line 1771
    .end local v33    # "tmp":[Ljava/lang/String;
    :cond_8
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_9

    .line 1772
    const-string v2, "SAMP_SPCMtest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PreferredIMEPackage -: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_9
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_3
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_1d

    .line 1777
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1778
    .restart local v3    # "pkgtable":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    iget-object v0, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->info:Landroid/content/pm/PackageInfo;

    move-object/from16 v26, v0

    .line 1779
    .restart local v26    # "pi":Landroid/content/pm/PackageInfo;
    const/16 v24, 0x0

    .line 1781
    .local v24, "packageScore":I
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_a

    .line 1782
    const-string v2, "SAMP_SPCM_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--- mActivePackages PackageInfo name"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :cond_a
    const/16 v16, 0x0

    .line 1786
    .local v16, "activityScore":I
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_b

    .line 1787
    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/SmartAdjustManager;->getPackageActivityScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ActivityInfo;Ljava/util/List;J)I

    move-result v16

    .line 1790
    :cond_b
    const/16 v29, 0x0

    .line 1791
    .local v29, "serviceScore":I
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_c

    .line 1792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActiveServices;->getPackageServiceScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ServiceInfo;)I

    move-result v29

    .line 1796
    :cond_c
    const/16 v28, 0x0

    .line 1797
    .local v28, "providerScore":I
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_d

    .line 1798
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/SmartAdjustManager;->getPackageProviderScore([Landroid/content/pm/ProviderInfo;)I

    move-result v28

    .line 1802
    :cond_d
    add-int v2, v16, v29

    add-int v24, v2, v28

    .line 1804
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_e

    .line 1805
    const-string v2, "SAMP_SPCM_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--- packageScore "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " activityScore "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " serviceScore  "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " providerScore "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_e
    move/from16 v0, v24

    iput v0, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    .line 1811
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v2, :cond_14

    .line 1812
    const/16 v25, 0x0

    .line 1814
    .local v25, "packageScore_applocking":I
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_LAUNCHER_ONLY:Z

    if-nez v2, :cond_12

    .line 1815
    const/16 v17, 0x0

    .line 1817
    .local v17, "activityScore_applocking":I
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_f

    .line 1818
    move-object/from16 v0, v26

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    move-object/from16 v8, p0

    move-object v9, v3

    invoke-direct/range {v8 .. v15}, Lcom/android/server/am/SmartAdjustManager;->getPackageActivityScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ActivityInfo;Ljava/util/List;JJ)I

    move-result v17

    .line 1821
    :cond_f
    const/16 v30, 0x0

    .line 1823
    .local v30, "serviceScore_applocking":I
    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_10

    .line 1824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    invoke-virtual {v2, v3, v4, v8, v9}, Lcom/android/server/am/ActiveServices;->getPackageServiceScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ServiceInfo;J)I

    move-result v30

    .line 1827
    :cond_10
    add-int v2, v17, v30

    const/16 v4, 0x3e8

    move/from16 v0, v28

    if-ne v0, v4, :cond_11

    const/16 v28, 0x0

    .end local v28    # "providerScore":I
    :cond_11
    add-int v25, v2, v28

    .line 1828
    move/from16 v0, v25

    iput v0, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score_applocking:I

    .line 1831
    .end local v17    # "activityScore_applocking":I
    .end local v30    # "serviceScore_applocking":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mSPCMDBfromSMList:Landroid/util/ArrayMap;

    iget-object v4, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    .line 1833
    .local v31, "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    if-eqz v31, :cond_14

    .line 1834
    move/from16 v0, v25

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->AppFreezeScore:I

    .line 1836
    move-object/from16 v0, v31

    iget v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->AppFreezeScore:I

    if-nez v2, :cond_14

    .line 1837
    if-eqz v32, :cond_15

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1838
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_13

    .line 1839
    const-string v2, "SAMP_SPCMtest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "preferredIME - "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    :cond_13
    const/4 v2, 0x1

    move-object/from16 v0, v31

    iput-boolean v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    .line 1775
    .end local v25    # "packageScore_applocking":I
    .end local v31    # "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    :cond_14
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 1842
    .restart local v25    # "packageScore_applocking":I
    .restart local v31    # "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    :cond_15
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/SmartAdjustManager;->hasActiveWidgetsForSM(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1843
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_16

    .line 1844
    const-string v2, "SAMP_SPCMtest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ActiveWidget - "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    :cond_16
    const/4 v2, 0x1

    move-object/from16 v0, v31

    iput-boolean v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    goto :goto_4

    .line 1847
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallPaper(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1848
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_18

    .line 1849
    const-string v2, "SAMP_SPCMtest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wallpaper - "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    :cond_18
    const/4 v2, 0x1

    move-object/from16 v0, v31

    iput-boolean v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    goto :goto_4

    .line 1852
    :cond_19
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-wide v8, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->lastUsedTime:J

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v2, v8, v14

    if-lez v2, :cond_1b

    .line 1853
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_1a

    .line 1854
    const-string v2, "SAMP_SPCMtest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ByUsageStats - "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :cond_1a
    const/4 v2, 0x1

    move-object/from16 v0, v31

    iput-boolean v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    goto/16 :goto_4

    .line 1857
    :cond_1b
    if-eqz v21, :cond_14

    .line 1859
    :try_start_0
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/app/INotificationManager;->hasNotificationForAppLocking(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1860
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_1c

    .line 1861
    const-string v2, "SAMP_SPCMtest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notification - "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    iget-object v8, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_1c
    const/4 v2, 0x1

    move-object/from16 v0, v31

    iput-boolean v2, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 1865
    :catch_0
    move-exception v2

    goto/16 :goto_4

    .line 1887
    .end local v3    # "pkgtable":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .end local v5    # "activePackages_indays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    .end local v6    # "totalForegroundtime_indays":J
    .end local v11    # "activePackages_indays_applocking":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    .end local v12    # "totalForegroundtime_indays_applocking":J
    .end local v16    # "activityScore":I
    .end local v21    # "inm":Landroid/app/INotificationManager;
    .end local v23    # "mPackagesForScoring":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/SmartAdjustManager$PackageTable;>;"
    .end local v24    # "packageScore":I
    .end local v25    # "packageScore_applocking":I
    .end local v26    # "pi":Landroid/content/pm/PackageInfo;
    .end local v29    # "serviceScore":I
    .end local v31    # "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    .end local v32    # "strPreferredIME":Ljava/lang/String;
    :cond_1d
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/SmartAdjustManager;->updateSPCMExternalWhiteList(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1892
    :cond_1e
    :goto_5
    return-void

    .line 1888
    :catch_1
    move-exception v18

    .line 1889
    .local v18, "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_1e

    .line 1890
    const-string v2, "SAMP_SPCM_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException in updateSPCMExternalWhiteList,"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method protected updateCSCPackagesList()V
    .locals 10

    .prologue
    .line 1646
    const/4 v0, 0x0

    .line 1648
    .local v0, "cscFile":Ljava/io/FileReader;
    :try_start_0
    const-string v6, "SAMP_SPCM_test"

    const-string v7, "CSC File load.. "

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const/4 v5, 0x0

    .line 1650
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/File;

    const-string v6, "/system/csc/default_application_order.xml"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1651
    .local v2, "cscFileChk":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 1652
    new-instance v1, Ljava/io/FileReader;

    const-string v6, "/system/csc/default_application_order.xml"

    invoke-direct {v1, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1653
    .end local v0    # "cscFile":Ljava/io/FileReader;
    .local v1, "cscFile":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 1654
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 1655
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1656
    invoke-interface {v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1657
    if-eqz v5, :cond_0

    .line 1658
    invoke-direct {p0, v5}, Lcom/android/server/am/SmartAdjustManager;->loadPkgnameForCSC(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    move-object v0, v1

    .line 1670
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v0    # "cscFile":Ljava/io/FileReader;
    :cond_1
    if-eqz v0, :cond_2

    .line 1672
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1679
    .end local v2    # "cscFileChk":Ljava/io/File;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :goto_0
    return-void

    .line 1674
    .restart local v2    # "cscFileChk":Ljava/io/File;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v3

    .line 1675
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1661
    .end local v2    # "cscFileChk":Ljava/io/File;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v3

    .line 1662
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    :try_start_3
    const-string v6, "SAMP_SPCM_test"

    const-string v7, "XmlPullParserException in updateActiveInActivePackageLocked"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1670
    if-eqz v0, :cond_2

    .line 1672
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1674
    :catch_2
    move-exception v3

    .line 1675
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1665
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 1666
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v6, "SAMP_SPCM_test"

    const-string v7, "IOException in updateActiveInActivePackageLocked"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1670
    if-eqz v0, :cond_2

    .line 1672
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 1674
    :catch_4
    move-exception v3

    .line 1675
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1670
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_3

    .line 1672
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1676
    :cond_3
    :goto_4
    throw v6

    .line 1674
    :catch_5
    move-exception v3

    .line 1675
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1670
    .end local v0    # "cscFile":Ljava/io/FileReader;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFileChk":Ljava/io/File;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v0    # "cscFile":Ljava/io/FileReader;
    goto :goto_3

    .line 1665
    .end local v0    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v0    # "cscFile":Ljava/io/FileReader;
    goto :goto_2

    .line 1661
    .end local v0    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v0    # "cscFile":Ljava/io/FileReader;
    goto :goto_1
.end method

.method final updateHotnessAdj(Landroid/content/pm/ApplicationInfo;I)V
    .locals 8
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "nHotnessType"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 382
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 383
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_0

    .line 384
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1, v7, v6, v6}, Lcom/android/server/am/ActivityManagerService;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZI)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 385
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 387
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 388
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SAMP_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find package record and new a Process Reccord in updateHotnessAdj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    sget-object v2, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 408
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v2, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    .line 395
    const-string/jumbo v2, "unknown"

    sput-object v2, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForEmptyHotness:Ljava/lang/String;

    .line 397
    iget-object v3, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 398
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 399
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    .line 400
    .local v1, "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    invoke-virtual {v1, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->increaseHotness(I)V

    .line 401
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SAMP_Hotness"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateHotnessAdj right after finishboot in PPM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    .end local v1    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    :cond_3
    :try_start_1
    new-instance v1, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    invoke-direct {v1, p0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;-><init>(Lcom/android/server/am/SmartAdjustManager;I)V

    .line 404
    .restart local v1    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 406
    .end local v1    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method final updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "nHotnessType"    # I

    .prologue
    .line 319
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    sget-object v5, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 325
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    sput-object v5, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForActivityHotness:Ljava/lang/String;

    .line 326
    const-string/jumbo v5, "unknown"

    sput-object v5, Lcom/android/server/am/SmartAdjustManager;->strPrevAppForEmptyHotness:Ljava/lang/String;

    .line 328
    iget-object v6, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 329
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 330
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    .line 331
    .local v3, "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    invoke-virtual {v3, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->increaseHotness(I)V

    .line 332
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :goto_1
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v5, :cond_5

    invoke-virtual {v3, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v5

    iget v7, p0, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_MAX_VALUE:I

    if-le v5, v7, :cond_5

    .line 339
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "SAMP_Hotness"

    const-string v7, "hotness value reached MAX, the hotness value of all app will be tuned half"

    invoke-static {v5, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_2
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 342
    .local v4, "it":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 343
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 344
    .local v2, "entryHotness":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    move-object v0, v5

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    move-object v1, v0

    .line 345
    .local v1, "TempHotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    invoke-virtual {v1, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->setHalf(I)V

    .line 346
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "SAMP_Hotness"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HotnessMAX! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 350
    .end local v1    # "TempHotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    .end local v2    # "entryHotness":Ljava/util/Map$Entry;
    .end local v3    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    .end local v4    # "it":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 334
    :cond_4
    :try_start_1
    new-instance v3, Lcom/android/server/am/SmartAdjustManager$HotnessValue;

    invoke-direct {v3, p0, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;-><init>(Lcom/android/server/am/SmartAdjustManager;I)V

    .line 335
    .restart local v3    # "hotness":Lcom/android/server/am/SmartAdjustManager$HotnessValue;
    iget-object v5, p0, Lcom/android/server/am/SmartAdjustManager;->mHotnessAdjMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 350
    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    sget-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "SAMP_Hotness"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateHotnessAdj "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hotness="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, p2}, Lcom/android/server/am/SmartAdjustManager$HotnessValue;->getHotness(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method final updateLastKillTime(Lcom/android/server/am/ProcessRecord;J)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J

    .prologue
    .line 411
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mLastKillTimeMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SmartAdjustManager;->mLastKillTimeMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    sget-boolean v0, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SAMP_SDHA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLastKillTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updatePackageResetTime(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "strPkgName"    # Ljava/lang/String;
    .param p2, "strCallerPkgName"    # Ljava/lang/String;
    .param p3, "isFullScreen"    # Z

    .prologue
    const/16 v2, 0x321

    .line 900
    if-nez p1, :cond_1

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_0

    .line 912
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHandler:Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;->removeMessages(I)V

    .line 913
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHandler:Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 914
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 915
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager;->mHandler:Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public updatePackageScore(Ljava/lang/String;)V
    .locals 24
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 1546
    .local v3, "pkg":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_LAUNCHER_ONLY:Z

    if-nez v2, :cond_0

    .line 1547
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/SmartAdjustManager;->UpdateSPCMDB(Ljava/lang/String;)V

    .line 1550
    :cond_0
    if-nez v3, :cond_2

    .line 1551
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_1

    .line 1552
    const-string v2, "SAMP_SPCM_test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePackageScore  packageName "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " not in Active list, not update it.."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_1
    :goto_0
    return-void

    .line 1558
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/SmartAdjustManager;->mPackageScoreUpdated:Z

    if-eqz v2, :cond_1

    .line 1561
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1562
    .local v5, "activePackages_indays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    const-wide/16 v6, 0x0

    .line 1564
    .local v6, "totalForegroundtime_indays":J
    const-wide/32 v8, 0xf731400

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v9}, Lcom/android/server/am/SmartAdjustManager;->getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J

    move-result-wide v6

    .line 1566
    iget-object v0, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->info:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    .line 1567
    .local v20, "pi":Landroid/content/pm/PackageInfo;
    const/16 v18, 0x0

    .line 1570
    .local v18, "packageScore":I
    const/16 v16, 0x0

    .line 1571
    .local v16, "activityScore":I
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_3

    .line 1572
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/SmartAdjustManager;->getPackageActivityScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ActivityInfo;Ljava/util/List;J)I

    move-result v16

    .line 1575
    :cond_3
    if-nez v16, :cond_4

    .line 1576
    const/16 v16, 0x2710

    .line 1579
    :cond_4
    const/16 v22, 0x0

    .line 1580
    .local v22, "serviceScore":I
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_5

    .line 1581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActiveServices;->getPackageServiceScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ServiceInfo;)I

    move-result v22

    .line 1585
    :cond_5
    const/16 v21, 0x0

    .line 1586
    .local v21, "providerScore":I
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_6

    .line 1587
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/SmartAdjustManager;->getPackageProviderScore([Landroid/content/pm/ProviderInfo;)I

    move-result v21

    .line 1590
    :cond_6
    add-int v2, v16, v22

    add-int v18, v2, v21

    .line 1592
    move/from16 v0, v18

    iput v0, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score:I

    .line 1594
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_LAUNCHER_ONLY:Z

    if-nez v2, :cond_1

    .line 1595
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1596
    .local v11, "activePackages_indays_applocking":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/UsageStats;>;"
    const-wide/16 v12, 0x0

    .line 1597
    .local v12, "totalForegroundtime_indays_applocking":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v9}, Lcom/android/server/am/SmartAdjustManager;->getTotalForegroundtimeIndays(Ljava/util/ArrayList;J)J

    move-result-wide v12

    .line 1599
    const/16 v19, 0x0

    .line 1600
    .local v19, "packageScore_applocking":I
    const/16 v17, 0x0

    .line 1602
    .local v17, "activityScore_applocking":I
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_7

    .line 1603
    move-object/from16 v0, v20

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    move-object/from16 v8, p0

    move-object v9, v3

    invoke-direct/range {v8 .. v15}, Lcom/android/server/am/SmartAdjustManager;->getPackageActivityScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ActivityInfo;Ljava/util/List;JJ)I

    move-result v17

    .line 1606
    :cond_7
    if-nez v17, :cond_8

    .line 1607
    const/16 v17, 0x2710

    .line 1609
    :cond_8
    const/16 v23, 0x0

    .line 1611
    .local v23, "serviceScore_applocking":I
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_9

    .line 1612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/SmartAdjustManager;->UPDATE_UNUSEDPACKAGES_INTERVAL:J

    invoke-virtual {v2, v3, v4, v8, v9}, Lcom/android/server/am/ActiveServices;->getPackageServiceScore(Lcom/android/server/am/SmartAdjustManager$PackageTable;[Landroid/content/pm/ServiceInfo;J)I

    move-result v23

    .line 1615
    :cond_9
    add-int v2, v17, v23

    const/16 v4, 0x3e8

    move/from16 v0, v21

    if-ne v0, v4, :cond_a

    const/16 v21, 0x0

    .end local v21    # "providerScore":I
    :cond_a
    add-int v19, v2, v21

    .line 1616
    move/from16 v0, v19

    iput v0, v3, Lcom/android/server/am/SmartAdjustManager$PackageTable;->score_applocking:I

    goto/16 :goto_0
.end method

.method protected updateProperty()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2789
    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    .line 2790
    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    .line 2796
    const-string/jumbo v2, "sys.config.samp_enable"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2797
    .local v1, "systemPropString":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    .line 2798
    :cond_0
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    .line 2800
    :cond_1
    const-string/jumbo v2, "sys.config.samp_hotness_enable"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2801
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    .line 2802
    :cond_2
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    .line 2804
    :cond_3
    const-string/jumbo v2, "sys.config.samp_spcm_enable"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2805
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    .line 2806
    :cond_4
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    .line 2808
    :cond_5
    const-string/jumbo v2, "sys.config.spcm_db_enable"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2809
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    .line 2810
    :cond_6
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    .line 2812
    :cond_7
    const-string/jumbo v2, "sys.config.spcm_db_launcher"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2813
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_LAUNCHER_ONLY:Z

    .line 2814
    :cond_8
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_LAUNCHER_ONLY:Z

    .line 2816
    :cond_9
    const-string/jumbo v2, "sys.config.spcm_preload_enable"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2817
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SPCM_PRELOAD_ENABLE:Z

    .line 2818
    :cond_a
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SPCM_PRELOAD_ENABLE:Z

    .line 2820
    :cond_b
    const-string/jumbo v2, "sys.config.spcm_kill_skip"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2821
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SPCM_KILL_SKIP:Z

    .line 2822
    :cond_c
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SPCM_KILL_SKIP:Z

    .line 2824
    :cond_d
    const-string/jumbo v2, "sys.config.samp_debug"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2825
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    .line 2826
    :cond_e
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    .line 2827
    :cond_f
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    invoke-static {v2}, Lcom/android/server/am/ProcessRecord;->setSmartDHADebugMode(Z)V

    .line 2829
    const-string/jumbo v2, "sys.config.samp_debug_trace"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2830
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sput-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    .line 2831
    :cond_10
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    sput-boolean v5, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    .line 2833
    :cond_11
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    if-eqz v2, :cond_18

    .line 2835
    :try_start_0
    const-string/jumbo v2, "sys.config.s_dha_margin"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2836
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_12

    .line 2837
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x400

    mul-int/lit16 v3, v3, 0x400

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ProcessList;->setSmartDHADefaultMargin(J)V

    .line 2838
    :cond_12
    const-string/jumbo v2, "sys.config.s_dha_bg_max"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2839
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    .line 2840
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    .line 2841
    :cond_13
    const-string/jumbo v2, "sys.config.s_dha_bg_min"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2842
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    .line 2843
    iget-object v2, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    .line 2844
    :cond_14
    const-string/jumbo v2, "sys.config.s_dha_db_kill"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2845
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15

    .line 2846
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->DB_CONN_KILL_SKIP:Z

    .line 2847
    :cond_15
    const-string/jumbo v2, "sys.config.s_dha_extra_cache"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2848
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_16

    .line 2849
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessesExtraCache:J

    .line 2850
    :cond_16
    const-string/jumbo v2, "sys.config.s_dha_cache_max"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2851
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_17

    .line 2852
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/SmartAdjustManager;->SMART_DHA_CACHED_APP_MAX:I

    .line 2853
    :cond_17
    const-string/jumbo v2, "sys.config.service_kill_adj"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2854
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_18

    .line 2855
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/SmartAdjustManager;->SERVICE_KILL_LIMIT_OF_ADJ:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2862
    :cond_18
    :goto_0
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    if-eqz v2, :cond_1a

    .line 2863
    const-string/jumbo v2, "sys.config.service_kill_adj"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2864
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_19

    .line 2865
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/SmartAdjustManager;->SERVICE_KILL_LIMIT_OF_ADJ:I

    .line 2866
    :cond_19
    const-string/jumbo v2, "sys.config.samp_debug_spcm"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2867
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1a

    .line 2868
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    .line 2871
    :cond_1a
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAMP       : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    if-eqz v2, :cond_1c

    const-string v2, "Enabled"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hotness    : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v2, :cond_1d

    const-string v2, "Enabled"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SPCM       : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    if-eqz v2, :cond_1e

    const-string v2, "Enabled"

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "samp debug : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG:Z

    if-eqz v2, :cond_1f

    const-string v2, "Enabled"

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spcm debug : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v2, :cond_20

    const-string v2, "Enabled"

    :goto_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "samp trace : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_TRACE:Z

    if-eqz v2, :cond_21

    const-string v2, "Enabled"

    :goto_6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_ENABLE:Z

    if-eqz v2, :cond_1b

    .line 2878
    const-string v3, "SAMP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DftMgn : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessList;->getSmartDHADefaultMargin()J

    move-result-wide v4

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "M, ExtraC : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessesExtraCache:J

    div-long/2addr v4, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "M, MaxBg :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    sget v4, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", MinBg :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/SmartAdjustManager;->mProcessList:Lcom/android/server/am/ProcessList;

    sget v4, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", MaxC :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/android/server/am/SmartAdjustManager;->SMART_DHA_CACHED_APP_MAX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", DBcKill :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->DB_CONN_KILL_SKIP:Z

    if-eqz v2, :cond_22

    const-string v2, "Y"

    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Hotness :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v2, :cond_23

    const-string v2, "Y"

    :goto_8
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    :cond_1b
    return-void

    .line 2856
    :catch_0
    move-exception v0

    .line 2857
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "SAMP_SDHA"

    const-string v3, "Smart DHA parameter incorrect format!"

    invoke-static {v2, v3}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    .line 2871
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1c
    const-string v2, "Disabled"

    goto/16 :goto_1

    .line 2872
    :cond_1d
    const-string v2, "Disabled"

    goto/16 :goto_2

    .line 2873
    :cond_1e
    const-string v2, "Disabled"

    goto/16 :goto_3

    .line 2874
    :cond_1f
    const-string v2, "Disabled"

    goto/16 :goto_4

    .line 2875
    :cond_20
    const-string v2, "Disabled"

    goto/16 :goto_5

    .line 2876
    :cond_21
    const-string v2, "Disabled"

    goto/16 :goto_6

    .line 2878
    :cond_22
    const-string v2, "N"

    goto :goto_7

    :cond_23
    const-string v2, "N"

    goto :goto_8
.end method

.method protected updateSPCMExternalWhiteList(Z)V
    .locals 15
    .param p1, "readFromFile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2106
    if-eqz p1, :cond_2

    .line 2107
    const/4 v3, 0x0

    .line 2109
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_0
    const-string v1, "/data/misc/lpnet/lpnetConfig"

    .line 2110
    .local v1, "CONFIG_FILE":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2111
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    .line 2113
    .local v8, "latestFileModifiedtime":J
    iget-wide v12, p0, Lcom/android/server/am/SmartAdjustManager;->mLastSPCMExtWhiteListMod:J

    cmp-long v12, v12, v8

    if-eqz v12, :cond_5

    .line 2114
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2117
    .end local v3    # "br":Ljava/io/BufferedReader;
    .local v4, "br":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "line":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 2118
    const-string v12, "[SPCMExternalWhiteList]"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2119
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 2120
    const-string v12, "SPCMExternalWhiteListend"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 2123
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mExternalWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_1

    .line 2124
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mExternalWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2125
    const-string v12, "SAMP_SPCM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ExtWhiteList pkg : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 2132
    .end local v10    # "line":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 2133
    .end local v1    # "CONFIG_FILE":Ljava/lang/String;
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "latestFileModifiedtime":J
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .local v5, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v12, "SAMP_SPCM"

    const-string/jumbo v13, "updateSPCMExternalWhiteList Error! ---- "

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2136
    if-eqz v3, :cond_2

    .line 2138
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2145
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mExternalWhiteList:Ljava/util/ArrayList;

    if-nez v12, :cond_7

    .line 2162
    :cond_3
    return-void

    .line 2130
    .restart local v1    # "CONFIG_FILE":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "latestFileModifiedtime":J
    .restart local v10    # "line":Ljava/lang/String;
    :cond_4
    :try_start_4
    iput-wide v8, p0, Lcom/android/server/am/SmartAdjustManager;->mLastSPCMExtWhiteListMod:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v3, v4

    .line 2136
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v10    # "line":Ljava/lang/String;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :cond_5
    if-eqz v3, :cond_2

    .line 2138
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 2139
    :catch_1
    move-exception v12

    goto :goto_2

    .line 2136
    .end local v1    # "CONFIG_FILE":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "latestFileModifiedtime":J
    :catchall_0
    move-exception v12

    :goto_3
    if-eqz v3, :cond_6

    .line 2138
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2140
    :cond_6
    :goto_4
    throw v12

    .line 2148
    .end local v3    # "br":Ljava/io/BufferedReader;
    :cond_7
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mExternalWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2149
    .local v11, "pkgName":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 2150
    .local v0, "ActivePt":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-eqz v0, :cond_9

    .line 2151
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2152
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    sget-boolean v12, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v12, :cond_9

    const-string v12, "SAMP_SPCM_test"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removed pkg in ActivePackageList"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    :cond_9
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SmartAdjustManager$PackageTable;

    .line 2156
    .local v2, "InActivePt":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    if-eqz v2, :cond_8

    .line 2157
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackages:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2158
    iget-object v12, p0, Lcom/android/server/am/SmartAdjustManager;->mInActivePackagesByName:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2159
    sget-boolean v12, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v12, :cond_8

    const-string v12, "SAMP_SPCM_test"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removed pkg in InActivePackageList"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2139
    .end local v0    # "ActivePt":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .end local v2    # "InActivePt":Lcom/android/server/am/SmartAdjustManager$PackageTable;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "pkgName":Ljava/lang/String;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v12

    goto/16 :goto_2

    .end local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v13

    goto :goto_4

    .line 2136
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "CONFIG_FILE":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "latestFileModifiedtime":J
    :catchall_1
    move-exception v12

    move-object v3, v4

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 2132
    .end local v1    # "CONFIG_FILE":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "latestFileModifiedtime":J
    :catch_4
    move-exception v5

    goto/16 :goto_1
.end method

.class public Lcom/android/server/epm/overlay/ThemeManagerService;
.super Lcom/android/server/epm/overlay/OverlayManagerService;
.source "ThemeManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;,
        Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;,
        Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;
    }
.end annotation


# static fields
.field private static final COMPONENT_PREFERENCES:Ljava/lang/String; = "samsung.andorid.themes.component_preference"

.field private static final DEBUG_ELASTIC:Z = false

.field private static final PREF_ACTIVE_COMPONENTS:Ljava/lang/String; = "samsung.andorid.themes.pref_active_component"

.field private static final TAG:Ljava/lang/String;

.field static isVisible:Z


# instance fields
.field final ACTION_EVENT_ENDED:Ljava/lang/String;

.field final ACTION_EVENT_OCCUR:Ljava/lang/String;

.field private KEY_VALUE:Ljava/lang/String;

.field private final SCROLL_THRESHOLD:F

.field private activeComponentMasterPackageArr:[Ljava/lang/String;

.field private activeComponentPackageArr:[Ljava/lang/String;

.field buggy:Z

.field private componentOrder:[Ljava/lang/String;

.field public componentPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentPackageToBeInstalled:Ljava/lang/String;

.field eventIndex:I

.field eventMasterPackageName:Ljava/lang/String;

.field private expiryTime:I

.field inProgress:Z

.field private isLiveWallpaper:Z

.field private mComponentCount:I

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

.field mFloatingViewClickListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mInitX:F

.field private mInitY:F

.field private mMasterInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

.field private mMasterPackageName:Ljava/lang/String;

.field private mNoOfOverlays:I

.field private mOverlay:Ljava/io/File;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

.field private mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

.field final mTimer:Ljava/util/Timer;

.field private mTrialInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

.field private mView:Landroid/view/View;

.field private mViewClicked:Z

.field mViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private masterDetailsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;",
            ">;"
        }
    .end annotation
.end field

.field private masterEventTimeDetails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;>;"
        }
    .end annotation
.end field

.field private masterPackageName:Ljava/lang/String;

.field private masterStatus:Z

.field private masterThemesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private masterVersion:Ljava/lang/String;

.field private overlayCount:I

.field private overlaysForuninstall:I

.field private trialMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private trialPackage:Ljava/lang/String;

.field private wallManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    .line 1573
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/epm/overlay/ThemeManagerService;->isVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/OverlayManagerService;-><init>(Landroid/content/Context;)V

    .line 104
    iput-boolean v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->isLiveWallpaper:Z

    .line 114
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "themes"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "lock"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "home"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "wallpaper"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "appicon"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "font"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "sound"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "event"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "phonestyle"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    .line 120
    new-array v1, v6, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    .line 121
    new-array v1, v6, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    .line 123
    const-string/jumbo v1, "theme.installer.action"

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->ACTION_EVENT_OCCUR:Ljava/lang/String;

    .line 124
    const-string/jumbo v1, "theme.uninstaller.action"

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->ACTION_EVENT_ENDED:Ljava/lang/String;

    .line 129
    iput v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mNoOfOverlays:I

    .line 130
    iput v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->overlayCount:I

    .line 132
    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    .line 140
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->SCROLL_THRESHOLD:F

    .line 143
    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterPackageName:Ljava/lang/String;

    .line 144
    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterVersion:Ljava/lang/String;

    .line 145
    iput v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->expiryTime:I

    .line 146
    const-string/jumbo v1, "value"

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->KEY_VALUE:Ljava/lang/String;

    .line 147
    iput v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->overlaysForuninstall:I

    .line 149
    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 330
    iput v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 331
    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    .line 1498
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    .line 1571
    iput-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    .line 1572
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    .line 1659
    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$5;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mFloatingViewClickListener:Landroid/view/View$OnClickListener;

    .line 1702
    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$6;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 1879
    iput-boolean v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    .line 1880
    iput-boolean v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->buggy:Z

    .line 159
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    .line 160
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 163
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 167
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->setStoredActiveComponents()V

    .line 172
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    if-nez v1, :cond_2

    .line 173
    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    if-nez v1, :cond_3

    .line 177
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    if-nez v1, :cond_4

    .line 183
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    .line 186
    :cond_4
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v1, :cond_5

    .line 187
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 191
    :cond_5
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMasterInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

    if-nez v1, :cond_6

    .line 192
    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

    invoke-direct {v1, p0, v5}, Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMasterInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

    .line 196
    :cond_6
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

    if-nez v1, :cond_7

    .line 197
    new-instance v1, Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

    invoke-direct {v1, p0, v5}, Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

    .line 200
    :cond_7
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 201
    .local v0, "eventFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "theme.installer.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v1, "theme.uninstaller.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEventReceiver:Lcom/android/server/epm/overlay/ThemeManagerService$EventBroadCastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/epm/overlay/ThemeManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->expiryTime:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/epm/overlay/ThemeManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeTrialPackage(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/epm/overlay/ThemeManagerService;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->showEventBubble()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/epm/overlay/ThemeManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mViewClicked:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/epm/overlay/ThemeManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mViewClicked:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/epm/overlay/ThemeManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mInitX:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/epm/overlay/ThemeManagerService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # F

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mInitX:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/epm/overlay/ThemeManagerService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mInitY:F

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/epm/overlay/ThemeManagerService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # F

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mInitY:F

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/epm/overlay/ThemeManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/epm/overlay/ThemeManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    return p1
.end method

.method static synthetic access$2210(Lcom/android/server/epm/overlay/ThemeManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/epm/overlay/ThemeManagerService;->onEventPassed(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->onEventOccur()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/InputStream;
    .param p3, "x3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/epm/overlay/ThemeManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/epm/overlay/ThemeManagerService;->onMasterInstalled(Ljava/lang/String;Z)V

    return-void
.end method

.method private applyDefaultWallpaper()V
    .locals 6

    .prologue
    .line 1804
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    .line 1805
    .local v4, "wallManager":Landroid/app/WallpaperManager;
    iget-boolean v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->isLiveWallpaper:Z

    if-eqz v5, :cond_1

    .line 1806
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1807
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1808
    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1820
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1810
    :cond_1
    const-string v3, "/data/overlays/defalut.png"

    .line 1811
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1813
    .local v2, "mBitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 1814
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1816
    :catch_0
    move-exception v0

    .line 1817
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private applyNewWallpaper()V
    .locals 6

    .prologue
    .line 1749
    :try_start_0
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->wallManager:Landroid/app/WallpaperManager;

    if-nez v2, :cond_0

    .line 1750
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->wallManager:Landroid/app/WallpaperManager;

    .line 1752
    :cond_0
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWallpaperName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1753
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWallpaperName:Ljava/lang/String;

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1756
    .local v1, "id":I
    if-eqz v1, :cond_1

    .line 1757
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->wallManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2, v1}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1766
    .end local v1    # "id":I
    :cond_1
    :goto_0
    return-void

    .line 1763
    :catch_0
    move-exception v0

    .line 1764
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private changeState(Ljava/lang/String;IIIZ)Z
    .locals 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "order"    # I
    .param p4, "index"    # I
    .param p5, "isTrial"    # Z

    .prologue
    .line 1197
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_0

    .line 1199
    const/16 v18, 0x0

    .line 1200
    .local v18, "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    if-eqz p5, :cond_1

    .line 1201
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    .line 1207
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 1439
    .end local v18    # "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_0
    :goto_1
    :pswitch_0
    const/16 v21, 0x0

    :goto_2
    return v21

    .line 1204
    .restart local v18    # "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Landroid/util/SparseArray;

    move-object/from16 v18, v0

    goto :goto_0

    .line 1210
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v22, v21, p3

    const/16 v21, -0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_0

    :cond_2
    :goto_3
    packed-switch v21, :pswitch_data_1

    goto :goto_1

    .line 1213
    :pswitch_2
    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, p3

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 1214
    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, p3

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1215
    .local v15, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "current_sec_home_theme_package"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "activity"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1222
    .local v3, "am":Landroid/app/ActivityManager;
    if-eqz v3, :cond_3

    .line 1223
    const-string v21, "com.sec.android.app.launcher"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1225
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v15, v21, p3

    .line 1227
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 1210
    .end local v3    # "am":Landroid/app/ActivityManager;
    .end local v15    # "pkg":Ljava/lang/String;
    :sswitch_0
    const-string v23, "home"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v21, 0x0

    goto/16 :goto_3

    :sswitch_1
    const-string v23, "lock"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v21, 0x1

    goto/16 :goto_3

    :sswitch_2
    const-string/jumbo v23, "wallpaper"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v21, 0x2

    goto/16 :goto_3

    :sswitch_3
    const-string/jumbo v23, "phonestyle"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v21, 0x3

    goto/16 :goto_3

    :sswitch_4
    const-string v23, "font"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v21, 0x4

    goto/16 :goto_3

    :sswitch_5
    const-string v23, "appicon"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v21, 0x5

    goto/16 :goto_3

    :sswitch_6
    const-string/jumbo v23, "sound"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v21, 0x6

    goto/16 :goto_3

    :sswitch_7
    const-string v23, "event"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const/16 v21, 0x7

    goto/16 :goto_3

    .line 1231
    :pswitch_3
    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, p3

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 1232
    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, p3

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1233
    .restart local v15    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v15, v21, p3

    .line 1236
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 1240
    .end local v15    # "pkg":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, p3

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 1242
    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, p3

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1243
    .restart local v15    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "current_sec_wallpaper_theme_package"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1245
    const-string v21, "homescreen_wallpaper"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/android/server/epm/overlay/ThemeManagerService;->getItemBitmap(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "."

    const-string v23, "_"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".png"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1247
    .local v19, "wallName":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/data/overlays/lockwallpaper/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1248
    .local v13, "locWall":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "lockscreen_wallpaper_path"

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    const/16 v24, -0x2

    invoke-static/range {v21 .. v24}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1254
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v15, v21, p3

    .line 1256
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 1260
    .end local v13    # "locWall":Ljava/io/File;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v19    # "wallName":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, p3

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 1261
    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, p3

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1262
    .restart local v15    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1434
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1435
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1264
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "#"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v21, p3

    .line 1265
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 1270
    .end local v11    # "i$":Ljava/util/Iterator;
    :pswitch_6
    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, p3

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 1271
    new-instance v12, Landroid/content/Intent;

    const-string v21, "FONT_THEME_CHANGED"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1272
    .local v12, "intent":Landroid/content/Intent;
    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, p3

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1273
    .local v17, "str":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/data/overlays/fonts/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1274
    .local v9, "fontPath":Ljava/lang/String;
    const-string v21, "#"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1275
    .local v8, "fontArr":[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v21, v8, v21

    const-string/jumbo v22, "system"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 1276
    const-string/jumbo v21, "system"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1277
    const-string/jumbo v21, "sip"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/DroidSans.ttf"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    :cond_6
    :goto_6
    sget-object v21, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "sending Broadcast..confirmed...."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1279
    :cond_7
    const/16 v21, 0x0

    aget-object v21, v8, v21

    const-string v22, "clock"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1281
    const-string v21, "clock"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v23, v8, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 1283
    :cond_8
    const/16 v21, 0x0

    aget-object v21, v8, v21

    const-string/jumbo v22, "numeric"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1285
    const-string/jumbo v21, "numeric"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v23, v8, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_6

    .line 1298
    .end local v8    # "fontArr":[Ljava/lang/String;
    .end local v9    # "fontPath":Ljava/lang/String;
    .end local v17    # "str":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v21, p3

    .line 1301
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 1306
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "intent":Landroid/content/Intent;
    :pswitch_7
    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, p3

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 1307
    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, p3

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1308
    .restart local v15    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "current_sec_appicon_theme_package"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v15, v21, p3

    .line 1320
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 1328
    .end local v15    # "pkg":Ljava/lang/String;
    :pswitch_8
    const/4 v14, 0x0

    .line 1329
    .local v14, "pendingIndex":I
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_7
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_a

    .line 1330
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    const-string/jumbo v22, "starttime"

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1331
    .local v16, "startTime":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    const-string v22, "endtime"

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1332
    .local v7, "endTime":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v7, v14}, Lcom/android/server/epm/overlay/ThemeManagerService;->setAlarmForEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1333
    add-int/lit8 v14, v14, 0x1

    .line 1329
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1337
    .end local v7    # "endTime":Ljava/lang/String;
    .end local v16    # "startTime":Ljava/lang/String;
    :cond_a
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 1349
    .end local v10    # "i":I
    .end local v14    # "pendingIndex":I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, p3

    if-eqz v21, :cond_0

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v22, v21, p3

    const/16 v21, -0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_1

    :cond_b
    :goto_8
    packed-switch v21, :pswitch_data_2

    goto/16 :goto_1

    .line 1353
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, p3

    const/16 v23, 0x2

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "current_sec_home_theme_package"

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "activity"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1359
    .restart local v3    # "am":Landroid/app/ActivityManager;
    if-eqz v3, :cond_c

    .line 1360
    const-string v21, "com.sec.android.app.launcher"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1362
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v22, v21, p3

    .line 1363
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 1350
    .end local v3    # "am":Landroid/app/ActivityManager;
    :sswitch_8
    const-string v23, "home"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v21, 0x0

    goto :goto_8

    :sswitch_9
    const-string v23, "lock"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v21, 0x1

    goto :goto_8

    :sswitch_a
    const-string/jumbo v23, "wallpaper"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v21, 0x2

    goto :goto_8

    :sswitch_b
    const-string/jumbo v23, "phonestyle"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v21, 0x3

    goto :goto_8

    :sswitch_c
    const-string v23, "font"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v21, 0x4

    goto/16 :goto_8

    :sswitch_d
    const-string v23, "appicon"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v21, 0x5

    goto/16 :goto_8

    :sswitch_e
    const-string/jumbo v23, "sound"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v21, 0x6

    goto/16 :goto_8

    :sswitch_f
    const-string v23, "event"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v21, 0x7

    goto/16 :goto_8

    .line 1366
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, p3

    const/16 v23, 0x2

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v22, v21, p3

    .line 1368
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 1370
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, p3

    const/16 v23, 0x2

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "current_sec_wallpaper_theme_package"

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1375
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "wallpaper"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/WallpaperManager;

    .line 1376
    .local v20, "wpm":Landroid/app/WallpaperManager;
    invoke-virtual/range {v20 .. v20}, Landroid/app/WallpaperManager;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1381
    .end local v20    # "wpm":Landroid/app/WallpaperManager;
    :goto_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "lockscreen_wallpaper_path"

    const-string v23, ""

    const/16 v24, -0x2

    invoke-static/range {v21 .. v24}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v22, v21, p3

    .line 1383
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 1378
    :catch_1
    move-exception v6

    .line 1379
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 1386
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, p3

    const-string v22, "#"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1387
    .local v4, "appStyleCurrentArr":[Ljava/lang/String;
    const/16 v21, 0x1

    aget-object v21, v4, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1388
    .local v5, "currentInd":I
    if-eqz p5, :cond_d

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    .line 1393
    :goto_a
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, p3

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1394
    .restart local v15    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_b

    .line 1391
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "pkg":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v22, v4, v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Landroid/util/SparseArray;

    move-object/from16 v18, v0

    goto :goto_a

    .line 1397
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v22, v21, p3

    .line 1398
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 1400
    .end local v4    # "appStyleCurrentArr":[Ljava/lang/String;
    .end local v5    # "currentInd":I
    .end local v11    # "i$":Ljava/util/Iterator;
    :pswitch_e
    new-instance v12, Landroid/content/Intent;

    const-string v21, "FONT_THEME_CHANGED"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1401
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v22, v21, p3

    .line 1403
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 1405
    .end local v12    # "intent":Landroid/content/Intent;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, p3

    const/16 v23, 0x2

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "current_sec_appicon_theme_package"

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v22, v21, p3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1415
    const/16 v21, 0x1

    goto/16 :goto_2

    .line 1207
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_9
    .end packed-switch

    .line 1210
    :sswitch_data_0
    .sparse-switch
        -0x6b9ceafd -> :sswitch_3
        -0x2f4941e6 -> :sswitch_5
        0x300c4f -> :sswitch_4
        0x30f4df -> :sswitch_0
        0x32c52b -> :sswitch_1
        0x5c6729a -> :sswitch_7
        0x688c90f -> :sswitch_6
        0x57e60e02 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch

    .line 1350
    :sswitch_data_1
    .sparse-switch
        -0x6b9ceafd -> :sswitch_b
        -0x2f4941e6 -> :sswitch_d
        0x300c4f -> :sswitch_c
        0x30f4df -> :sswitch_8
        0x32c52b -> :sswitch_9
        0x5c6729a -> :sswitch_f
        0x688c90f -> :sswitch_e
        0x57e60e02 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "dirPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x1ff

    const/4 v5, -0x1

    .line 590
    const/4 v0, 0x0

    .line 592
    .local v0, "fileToBeCopied":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0    # "fileToBeCopied":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    .restart local v0    # "fileToBeCopied":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 597
    .local v1, "os":Ljava/io/OutputStream;
    invoke-virtual {p0, p2, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 598
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 599
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 600
    invoke-static {p3, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v2

    .line 604
    .local v2, "stat":I
    invoke-static {v0, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    move-result v2

    .line 607
    return-object v0
.end method

.method private isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J
    .locals 12
    .param p1, "aRingToneAbsolutePath"    # Ljava/lang/String;
    .param p2, "aUri"    # Landroid/net/Uri;

    .prologue
    .line 545
    const-wide/16 v8, -0x1

    .line 546
    .local v8, "lRingToneEntryId":J
    const/4 v7, 0x0

    .line 547
    .local v7, "lCursor":Landroid/database/Cursor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 549
    .local v10, "token":J
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "lWhereClause":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 556
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 557
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 558
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 563
    :cond_0
    if-eqz v7, :cond_1

    .line 564
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 565
    const/4 v7, 0x0

    .line 567
    :cond_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 569
    .end local v3    # "lWhereClause":Ljava/lang/String;
    :goto_0
    return-wide v8

    .line 560
    :catch_0
    move-exception v6

    .line 561
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    if-eqz v7, :cond_2

    .line 564
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 565
    const/4 v7, 0x0

    .line 567
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 563
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 564
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 565
    const/4 v7, 0x0

    .line 567
    :cond_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private onEventOccur()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 1625
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 1626
    const/4 v0, 0x7

    if-eq v3, v0, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v0, v3

    const/4 v2, 0x3

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->changeState(Ljava/lang/String;IIIZ)Z

    .line 1629
    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventMasterPackageName:Ljava/lang/String;

    const/4 v7, 0x2

    iget v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->eventIndex:I

    move-object v5, p0

    move v8, v3

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->changeState(Ljava/lang/String;IIIZ)Z

    .line 1625
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1635
    :cond_1
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    .line 1636
    return-void
.end method

.method private onEventPassed(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 1612
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 1613
    const/4 v0, 0x7

    if-eq v3, v0, :cond_0

    .line 1614
    const/4 v2, 0x3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->changeState(Ljava/lang/String;IIIZ)Z

    .line 1615
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1616
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v0, v3

    const/4 v2, 0x2

    move-object v0, p0

    move v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->changeState(Ljava/lang/String;IIIZ)Z

    .line 1612
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1620
    :cond_1
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    .line 1623
    return-void
.end method

.method private onMasterInstalled(Ljava/lang/String;Z)V
    .locals 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isTrial"    # Z

    .prologue
    .line 334
    sget-object v3, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMasterInstalled , thread id is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "--->"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    if-nez v3, :cond_0

    .line 337
    new-instance v3, Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    .line 340
    :cond_0
    new-instance v18, Ljava/io/File;

    const-string v3, "/data/overlays"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .local v18, "overlayDir":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 342
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 344
    :cond_1
    new-instance v22, Ljava/io/File;

    const-string v3, "/data/overlays/lockwallpaper"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .local v22, "wallPaperDir":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 346
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdir()Z

    .line 347
    const/16 v3, 0x1ff

    const/4 v4, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, v22

    invoke-static {v0, v3, v4, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 351
    :cond_2
    new-instance v17, Ljava/io/File;

    const-string v3, "/data/overlays/jsonfiles"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v17, "jsonDir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 353
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdir()Z

    .line 356
    :cond_3
    new-instance v14, Ljava/io/File;

    const-string v3, "/data/overlays/fonts"

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .local v14, "fontsDir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 358
    invoke-virtual {v14}, Ljava/io/File;->mkdir()Z

    .line 359
    const/16 v3, 0x1ff

    const/4 v4, -0x1

    const/4 v6, -0x1

    invoke-static {v14, v3, v4, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 361
    :cond_4
    new-instance v20, Ljava/io/File;

    const-string v3, "/data/overlays/sound"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v20, "soundDir":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 363
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 365
    :cond_5
    const/16 v3, 0x1ff

    const/4 v4, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v3, v4, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 367
    const/4 v10, 0x0

    .line 369
    .local v10, "aInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 370
    .local v5, "masterContext":Landroid/content/Context;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->parseJSonData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 371
    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    .line 372
    .local v11, "am":Landroid/content/res/AssetManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "themes.txt"

    invoke-virtual {v11, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v6, "/data/overlays/jsonfiles"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v6}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 373
    const/16 v21, 0x0

    .line 374
    .local v21, "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    if-nez p2, :cond_a

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    check-cast v21, Landroid/util/SparseArray;

    .line 388
    .restart local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;

    .line 389
    if-eqz p2, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v4, "themes"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 391
    :cond_6
    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v4, "event"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v4, "event"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v4, "event"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 393
    :cond_7
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_1
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_9

    .line 394
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 395
    .local v7, "compMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move/from16 v9, v16

    .line 396
    .local v9, "index":I
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 397
    .local v8, "str":Ljava/lang/String;
    if-eqz p2, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 399
    :cond_8
    new-instance v23, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/epm/overlay/ThemeManagerService$2;

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/epm/overlay/ThemeManagerService$2;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)V

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_2

    .line 408
    .end local v5    # "masterContext":Landroid/content/Context;
    .end local v7    # "compMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "index":I
    .end local v11    # "am":Landroid/content/res/AssetManager;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "j":I
    .end local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :catch_0
    move-exception v13

    .line 409
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 418
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_9
    :goto_3
    return-void

    .line 379
    .restart local v5    # "masterContext":Landroid/content/Context;
    .restart local v11    # "am":Landroid/content/res/AssetManager;
    .restart local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    move-object/from16 v21, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 381
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.themecenter"

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v12

    .line 382
    .local v12, "ct":Landroid/content/Context;
    const-string/jumbo v3, "samsung.andorid.themes.component_preference"

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 383
    .local v19, "prefs":Landroid/content/SharedPreferences;
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "TrialPackage"

    move-object/from16 v0, p1

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 384
    .end local v12    # "ct":Landroid/content/Context;
    .end local v19    # "prefs":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v13

    .line 385
    .local v13, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 411
    .end local v5    # "masterContext":Landroid/content/Context;
    .end local v11    # "am":Landroid/content/res/AssetManager;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :catch_2
    move-exception v13

    .line 412
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 393
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v5    # "masterContext":Landroid/content/Context;
    .restart local v7    # "compMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v9    # "index":I
    .restart local v11    # "am":Landroid/content/res/AssetManager;
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v16    # "j":I
    .restart local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 413
    .end local v5    # "masterContext":Landroid/content/Context;
    .end local v7    # "compMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "index":I
    .end local v11    # "am":Landroid/content/res/AssetManager;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "j":I
    .end local v21    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :catch_3
    move-exception v13

    .line 414
    .local v13, "e":Lorg/json/JSONException;
    invoke-virtual {v13}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method private removeTrialPackage(Z)V
    .locals 6
    .param p1, "switchToNormal"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1521
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1522
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v0, v0

    if-ge v3, v0, :cond_1

    .line 1523
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->changeState(Ljava/lang/String;IIIZ)Z

    .line 1525
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v0, v3

    const/4 v2, 0x2

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->changeState(Ljava/lang/String;IIIZ)Z

    .line 1522
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1529
    :cond_1
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeThemePackage(Ljava/lang/String;)V

    .line 1530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    .line 1532
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private saveDefaultWallpaper()V
    .locals 3

    .prologue
    .line 1771
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 1772
    .local v0, "wallManager":Landroid/app/WallpaperManager;
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1773
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/epm/overlay/ThemeManagerService$7;

    invoke-direct {v2, p0, v0}, Lcom/android/server/epm/overlay/ThemeManagerService$7;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/app/WallpaperManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1799
    :goto_0
    return-void

    .line 1797
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->isLiveWallpaper:Z

    goto :goto_0
.end method

.method private setAlarmForEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "startEventThemeTime"    # Ljava/lang/String;
    .param p3, "endEventThemeTime"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    .line 1536
    const-string v8, "USER_EVENT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USER_EVENT -- startTimerForEventThemeUninstall pkgName= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1538
    .local v7, "startTimeCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1539
    .local v2, "endTimeCalendar":Ljava/util/Calendar;
    const-string v8, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1540
    .local v6, "splitsStartTime":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 1541
    .local v4, "month_start":I
    sget-object v8, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "value of splits year--->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Month --->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Day-->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",hours --->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",minutes--->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x4

    aget-object v10, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const/4 v8, 0x2

    invoke-virtual {v7, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 1544
    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1545
    const/4 v8, 0x5

    const/4 v9, 0x2

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1546
    const/16 v8, 0xb

    const/4 v9, 0x3

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1547
    const/16 v8, 0xc

    const/4 v9, 0x4

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1548
    const/16 v8, 0xd

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1549
    const-string v8, ":"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1550
    .local v5, "splitsEndTime":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 1551
    .local v3, "month_end":I
    const/4 v8, 0x2

    invoke-virtual {v2, v8, v3}, Ljava/util/Calendar;->set(II)V

    .line 1552
    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1553
    const/4 v8, 0x5

    const/4 v9, 0x2

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1554
    const/16 v8, 0xb

    const/4 v9, 0x3

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1555
    const/16 v8, 0xc

    const/4 v9, 0x4

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1556
    const/16 v8, 0xd

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 1557
    sget-object v8, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "endTimecalendar value of splits year--->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Month --->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Day --->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",Hours -->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",minutes-->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x4

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 1561
    sget-object v9, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setting alarmaa "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    invoke-virtual {v9, v10, v12, v13, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1563
    add-int/lit8 p4, p4, 0x1

    .line 1564
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move/from16 v0, p4

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    invoke-virtual {v9, v10, v12, v13, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1570
    :cond_0
    return-void
.end method

.method private setStoredActiveComponents()V
    .locals 7

    .prologue
    .line 237
    :try_start_0
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.themecenter"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 238
    .local v0, "ct":Landroid/content/Context;
    const-string/jumbo v4, "samsung.andorid.themes.component_preference"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 240
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 241
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 242
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "active"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "ct":Landroid/content/Context;
    .end local v2    # "i":I
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private setThemeRingtone(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 505
    const/4 v13, 0x0

    const/16 v14, 0x2e

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 506
    .local v8, "title":Ljava/lang/String;
    if-lez p4, :cond_1

    .line 507
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 508
    .local v9, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 509
    .local v3, "newUri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 511
    .local v10, "token":J
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J

    move-result-wide v6

    .line 514
    .local v6, "lRingToneId":J
    const-wide/16 v14, -0x1

    cmp-long v13, v14, v6

    if-eqz v13, :cond_0

    .line 518
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v9, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 520
    :cond_0
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 521
    .local v12, "values":Landroid/content/ContentValues;
    const-string v13, "_data"

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string/jumbo v13, "title"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v13, "_size"

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 524
    const-string v13, "mime_type"

    const-string v14, "audio/*"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v13, "artist"

    const-string v14, "elastic"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v14, "is_ringtone"

    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_2

    const/4 v13, 0x1

    :goto_0
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 527
    const-string v14, "is_notification"

    const/4 v13, 0x2

    move/from16 v0, p4

    if-ne v0, v13, :cond_3

    const/4 v13, 0x1

    :goto_1
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 528
    const-string v14, "is_alarm"

    const/4 v13, 0x4

    move/from16 v0, p4

    if-ne v0, v13, :cond_4

    const/4 v13, 0x1

    :goto_2
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 529
    const-string v13, "is_music"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 530
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v9, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 534
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    .end local v6    # "lRingToneId":J
    .end local v12    # "values":Landroid/content/ContentValues;
    :goto_3
    if-eqz v3, :cond_1

    .line 537
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 538
    .local v4, "ident":J
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 539
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 542
    .end local v3    # "newUri":Landroid/net/Uri;
    .end local v4    # "ident":J
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "token":J
    :cond_1
    return-void

    .line 526
    .restart local v3    # "newUri":Landroid/net/Uri;
    .restart local v6    # "lRingToneId":J
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v10    # "token":J
    .restart local v12    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 527
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 528
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 531
    .end local v6    # "lRingToneId":J
    .end local v12    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 532
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
.end method

.method private showEventBubble()V
    .locals 8

    .prologue
    const/16 v1, 0x96

    .line 1640
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowManager:Landroid/view/WindowManager;

    .line 1641
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/16 v5, 0x7d3

    const v6, 0x40028

    const/4 v7, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 1647
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1648
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "EventTheme"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1650
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    .line 1651
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1652
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mFloatingViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1653
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1654
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1655
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/epm/overlay/ThemeManagerService;->isVisible:Z

    .line 1657
    return-void
.end method

.method private startExpiryTimerForUninstall(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1503
    new-instance v0, Lcom/android/server/epm/overlay/ThemeManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$4;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    .line 1517
    .local v0, "mTask":Ljava/util/TimerTask;
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1518
    return-void
.end method

.method private storeActiveComponents()V
    .locals 7

    .prologue
    .line 220
    :try_start_0
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.themecenter"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 221
    .local v0, "ct":Landroid/content/Context;
    const-string/jumbo v4, "samsung.andorid.themes.component_preference"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 223
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 224
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "active"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentOrder:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentPackageArr:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "ct":Landroid/content/Context;
    .end local v2    # "i":I
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public changeThemeState(Ljava/lang/String;IIZ)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "order"    # I
    .param p4, "isTrial"    # Z

    .prologue
    .line 1124
    if-nez p4, :cond_7

    .line 1125
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeTrialPackage(Z)V

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v0, v0, p3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1130
    :cond_1
    if-nez p3, :cond_5

    .line 1131
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/16 v0, 0x9

    if-ge v3, v0, :cond_3

    .line 1132
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v0, p3

    const/4 v2, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->changeState(Ljava/lang/String;IIIZ)Z

    .line 1133
    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->changeState(Ljava/lang/String;IIIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1134
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object p1, v0, v3

    .line 1131
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1138
    :cond_2
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v3

    goto :goto_1

    .line 1143
    :cond_3
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1156
    .end local v3    # "i":I
    :goto_2
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V

    .line 1176
    :cond_4
    :goto_3
    return-void

    .line 1146
    :cond_5
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v5, v0, p3

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->changeState(Ljava/lang/String;IIIZ)Z

    .line 1147
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object p1, v0, p3

    .line 1148
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->changeState(Ljava/lang/String;IIIZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1149
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aput-object p1, v0, p3

    goto :goto_2

    .line 1151
    :cond_6
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p3

    goto :goto_2

    .line 1160
    :cond_7
    if-eqz p1, :cond_4

    .line 1161
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1162
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeTrialPackage(Z)V

    .line 1165
    :cond_8
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    .line 1166
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_4
    const/16 v0, 0x9

    if-ge v3, v0, :cond_a

    .line 1167
    const/4 v0, 0x7

    if-eq v3, v0, :cond_9

    .line 1168
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v1, v0, p3

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->changeState(Ljava/lang/String;IIIZ)Z

    .line 1169
    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->changeState(Ljava/lang/String;IIIZ)Z

    .line 1166
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1172
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/epm/overlay/ThemeManagerService;->startExpiryTimerForUninstall(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 579
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 580
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 582
    :cond_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 583
    return-void
.end method

.method public extractWallpaper()V
    .locals 0

    .prologue
    .line 1741
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->saveDefaultWallpaper()V

    .line 1742
    invoke-direct {p0}, Lcom/android/server/epm/overlay/ThemeManagerService;->applyNewWallpaper()V

    .line 1743
    return-void
.end method

.method public getActiveComponents()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 1184
    const/16 v2, 0x9

    new-array v1, v2, [Ljava/lang/String;

    .line 1185
    .local v1, "returnArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 1186
    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 1187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    iget-object v2, v2, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1185
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1189
    :cond_0
    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_1

    .line 1192
    :cond_1
    return-object v1
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public getComponentPackageMap()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1082
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1083
    .local v5, "tempComponentPackageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1084
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1085
    .local v3, "packageListForComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1087
    .local v4, "pkg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    iget-object v6, v6, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1089
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1091
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "packageListForComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-object v5
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getItemBitmap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "bitmapId"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1445
    :try_start_0
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 1446
    .local v7, "appContext":Landroid/content/Context;
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/WallpaperManager;

    .line 1447
    .local v6, "wpm":Landroid/app/WallpaperManager;
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 1448
    .local v2, "r":Landroid/content/res/Resources;
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1449
    .local v5, "hl":Landroid/os/Handler;
    if-eqz v2, :cond_0

    .line 1450
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/epm/overlay/ThemeManagerService$3;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/epm/overlay/ThemeManagerService$3;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/app/WallpaperManager;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1495
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v5    # "hl":Landroid/os/Handler;
    .end local v6    # "wpm":Landroid/app/WallpaperManager;
    .end local v7    # "appContext":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 1490
    :catch_0
    move-exception v8

    .line 1491
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public installThemePackage(Landroid/net/Uri;Z)V
    .locals 6
    .param p1, "path"    # Landroid/net/Uri;
    .param p2, "isTrial"    # Z

    .prologue
    const/4 v5, 0x0

    .line 920
    if-eqz p2, :cond_0

    .line 921
    :try_start_0
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mTrialInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$TrialInstallObserver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 932
    :goto_0
    return-void

    .line 923
    :cond_0
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mMasterInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$MasterInstallObserver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 926
    :catch_0
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v5, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    .line 928
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected installThemes(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V
    .locals 23
    .param p1, "masterContext"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "str"    # Ljava/lang/String;
    .param p5, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 424
    .local v5, "am":Landroid/content/res/AssetManager;
    const/16 v18, -0x1

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v18, :pswitch_data_0

    .line 502
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 424
    :sswitch_0
    const-string v19, "home"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x0

    goto :goto_0

    :sswitch_1
    const-string v19, "lock"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v19, "wallpaper"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v19, "phonestyle"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x3

    goto :goto_0

    :sswitch_4
    const-string v19, "font"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x4

    goto :goto_0

    :sswitch_5
    const-string v19, "appicon"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v19, "sound"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x6

    goto :goto_0

    :sswitch_7
    const-string v19, "event"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v18, 0x7

    goto :goto_0

    .line 426
    :pswitch_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 492
    :catch_0
    move-exception v6

    .line 493
    .local v6, "e":Ljava/lang/Exception;
    sget-object v18, Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "exception in component :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 495
    .local v13, "msg":Landroid/os/Message;
    const-string/jumbo v18, "phonestyle"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 496
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    iput v0, v13, Landroid/os/Message;->arg1:I

    .line 499
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 500
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 430
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v13    # "msg":Landroid/os/Message;
    :pswitch_2
    :try_start_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 434
    :pswitch_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 438
    :pswitch_4
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    .line 439
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 438
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 444
    .end local v11    # "i":I
    :pswitch_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/overlays/fonts/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 445
    .local v10, "fontPath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    .local v9, "fontDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_2

    .line 447
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 449
    :cond_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 450
    .local v7, "font":Ljava/lang/String;
    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 451
    .local v8, "fontArr":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v8, v18

    const-string/jumbo v19, "system"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 452
    const-string v18, "DroidSans.ttf"

    const/16 v19, 0x1

    aget-object v19, v8, v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 453
    const-string v18, "DroidSans-Bold.ttf"

    const/16 v19, 0x1

    aget-object v19, v8, v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    goto :goto_4

    .line 456
    :cond_3
    const/16 v18, 0x1

    aget-object v18, v8, v18

    const/16 v19, 0x1

    aget-object v19, v8, v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    goto :goto_4

    .line 462
    .end local v7    # "font":Ljava/lang/String;
    .end local v8    # "fontArr":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 465
    .end local v9    # "fontDir":Ljava/io/File;
    .end local v10    # "fontPath":Ljava/lang/String;
    .end local v12    # "i$":Ljava/util/Iterator;
    :pswitch_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".apk"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    const-string v20, "/data/overlays"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 469
    :pswitch_7
    const-string v17, "/data/overlays/sound"

    .line 470
    .local v17, "soundPath":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    .local v16, "soundDir":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_5

    .line 472
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    .line 474
    :cond_5
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 475
    .local v14, "sound":Ljava/lang/String;
    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 476
    .local v15, "soundArr":[Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v18, v15, v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "sound/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v15, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 477
    const/16 v18, 0x0

    aget-object v18, v15, v18

    const-string/jumbo v19, "ringtone"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v19, v15, v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->setThemeRingtone(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_5

    .line 479
    :cond_7
    const/16 v18, 0x0

    aget-object v18, v15, v18

    const-string v19, "notification"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v19, v15, v19

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->setThemeRingtone(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 481
    :cond_8
    const/16 v18, 0x0

    aget-object v18, v15, v18

    const-string v19, "alarm"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v19, v15, v19

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->setThemeRingtone(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 485
    .end local v14    # "sound":Ljava/lang/String;
    .end local v15    # "soundArr":[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 498
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "soundDir":Ljava/io/File;
    .end local v17    # "soundPath":Ljava/lang/String;
    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local v13    # "msg":Landroid/os/Message;
    :cond_a
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v13, Landroid/os/Message;->arg1:I

    goto/16 :goto_2

    .line 424
    :sswitch_data_0
    .sparse-switch
        -0x6b9ceafd -> :sswitch_3
        -0x2f4941e6 -> :sswitch_5
        0x300c4f -> :sswitch_4
        0x30f4df -> :sswitch_0
        0x32c52b -> :sswitch_1
        0x5c6729a -> :sswitch_7
        0x688c90f -> :sswitch_6
        0x57e60e02 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method public onPluginInstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgManager"    # Landroid/content/pm/PackageManager;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    if-nez v2, :cond_0

    .line 259
    new-instance v2, Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemesInstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesInstallObserver;

    .line 262
    :cond_0
    new-instance v17, Ljava/io/File;

    const-string v2, "/data/overlays"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v17, "overlayDir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdir()Z

    .line 266
    :cond_1
    new-instance v20, Ljava/io/File;

    const-string v2, "/data/overlays/lockwallpaper"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v20, "wallPaperDir":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 268
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdir()Z

    .line 270
    :cond_2
    const/16 v2, 0x1ff

    const/4 v3, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 272
    new-instance v15, Ljava/io/File;

    const-string v2, "/data/overlays/jsonfiles"

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v15, "jsonDir":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 274
    invoke-virtual {v15}, Ljava/io/File;->mkdir()Z

    .line 276
    :cond_3
    new-instance v16, Ljava/io/File;

    const-string v2, "/data/overlays/jsonfiles"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v16, "masterJsonDir":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 278
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdir()Z

    .line 280
    :cond_4
    new-instance v12, Ljava/io/File;

    const-string v2, "/data/overlays/fonts"

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    .local v12, "fontsDir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 282
    invoke-virtual {v12}, Ljava/io/File;->mkdir()Z

    .line 283
    const/16 v2, 0x1ff

    const/4 v3, -0x1

    const/4 v5, -0x1

    invoke-static {v12, v2, v3, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 285
    :cond_5
    new-instance v18, Ljava/io/File;

    const-string v2, "/data/overlays/sound"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v18, "soundDir":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 287
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 289
    :cond_6
    const/16 v2, 0x1ff

    const/4 v3, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, v18

    invoke-static {v0, v2, v3, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 291
    const/4 v9, 0x0

    .line 293
    .local v9, "aInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 294
    .local v4, "masterContext":Landroid/content/Context;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->parseJSonData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 295
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    .line 296
    .local v10, "am":Landroid/content/res/AssetManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "themes.txt"

    invoke-virtual {v10, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v5, "/data/overlays/jsonfiles"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5}, Lcom/android/server/epm/overlay/ThemeManagerService;->doCopy(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mOverlay:Ljava/io/File;

    .line 297
    const/16 v19, 0x0

    .line 299
    .local v19, "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    check-cast v19, Landroid/util/SparseArray;

    .line 306
    .restart local v19    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_0
    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v14, v2, :cond_7

    .line 307
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 308
    .local v6, "compMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move v8, v14

    .line 309
    .local v8, "index":I
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 310
    .local v7, "str":Ljava/lang/String;
    new-instance v21, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/epm/overlay/ThemeManagerService$1;

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/epm/overlay/ThemeManagerService$1;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)V

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 319
    .end local v4    # "masterContext":Landroid/content/Context;
    .end local v6    # "compMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v10    # "am":Landroid/content/res/AssetManager;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "j":I
    .end local v19    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :catch_0
    move-exception v11

    .line 320
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 327
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    :goto_2
    return-void

    .line 306
    .restart local v4    # "masterContext":Landroid/content/Context;
    .restart local v6    # "compMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v8    # "index":I
    .restart local v10    # "am":Landroid/content/res/AssetManager;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "j":I
    .restart local v19    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 322
    .end local v4    # "masterContext":Landroid/content/Context;
    .end local v6    # "compMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "index":I
    .end local v10    # "am":Landroid/content/res/AssetManager;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "j":I
    .end local v19    # "spArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :catch_1
    move-exception v11

    .line 323
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 324
    .end local v11    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 325
    .local v11, "e":Lorg/json/JSONException;
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public onPluginUninstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgManager"    # Landroid/content/pm/PackageManager;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1019
    return-void
.end method

.method public parseJSonData(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 43
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isTrial"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 676
    const/4 v13, 0x0

    .line 677
    .local v13, "is":Ljava/io/InputStream;
    const/16 v33, 0x0

    .line 678
    .local v33, "reader":Ljava/io/BufferedReader;
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 679
    if-eqz p1, :cond_0

    .line 680
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v37

    const-string/jumbo v38, "themes.txt"

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    .line 681
    new-instance v33, Ljava/io/BufferedReader;

    .end local v33    # "reader":Ljava/io/BufferedReader;
    new-instance v37, Ljava/io/InputStreamReader;

    move-object/from16 v0, v37

    invoke-direct {v0, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 689
    .restart local v33    # "reader":Ljava/io/BufferedReader;
    :goto_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 691
    .local v22, "jsonData":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual/range {v33 .. v33}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    .local v24, "line":Ljava/lang/String;
    if-eqz v24, :cond_1

    .line 692
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 684
    .end local v22    # "jsonData":Ljava/lang/StringBuilder;
    .end local v24    # "line":Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/io/File;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "/data/overlays/jsonfiles/"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ".txt"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 685
    .local v8, "fl":Ljava/io/File;
    new-instance v33, Ljava/io/BufferedReader;

    .end local v33    # "reader":Ljava/io/BufferedReader;
    new-instance v37, Ljava/io/InputStreamReader;

    new-instance v38, Ljava/io/FileInputStream;

    move-object/from16 v0, v38

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v37 .. v38}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v33    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 696
    .end local v8    # "fl":Ljava/io/File;
    .restart local v22    # "jsonData":Ljava/lang/StringBuilder;
    .restart local v24    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 698
    .local v28, "parsedJson":Ljava/lang/String;
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 700
    .local v16, "jObject":Lorg/json/JSONObject;
    new-instance v27, Landroid/util/SparseArray;

    invoke-direct/range {v27 .. v27}, Landroid/util/SparseArray;-><init>()V

    .line 701
    .local v27, "packsMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    const-string v37, "header"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 702
    .local v18, "jObjectHeader":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterDetailsMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    new-instance v38, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;

    const-string/jumbo v39, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string v40, "description"

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-direct/range {v38 .. v42}, Lcom/android/server/epm/overlay/ThemeManagerService$MasterDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string/jumbo v38, "themes"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    if-nez v37, :cond_2

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string/jumbo v38, "themes"

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string/jumbo v38, "themes"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_3

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string/jumbo v38, "themes"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_3
    const/16 v29, 0x0

    .line 711
    .local v29, "pendingIntenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v37, "isTrial"

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_4

    .line 712
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    .line 715
    :cond_4
    const-string/jumbo v37, "themes"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 716
    .local v19, "jObjectThemeArr":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v37

    move/from16 v0, v37

    if-ge v10, v0, :cond_2a

    .line 719
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 721
    .local v6, "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 723
    .local v17, "jObject1":Lorg/json/JSONObject;
    const-string v37, "lock"

    const/16 v38, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 724
    .local v7, "element":Ljava/lang/String;
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v35, "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_7

    .line 726
    move-object/from16 v0, v35

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    const-string v37, "lock"

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "lock"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    if-nez v37, :cond_5

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "lock"

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "lock"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_6

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "lock"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    :cond_6
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .restart local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_7

    .line 735
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 737
    :cond_7
    const-string v37, "home"

    const/16 v38, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 738
    if-eqz v7, :cond_a

    .line 739
    move-object/from16 v0, v35

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    const-string v37, "home"

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "home"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    if-nez v37, :cond_8

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "home"

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "home"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_9

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "home"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_9
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .restart local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_a

    .line 748
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 750
    :cond_a
    const-string/jumbo v37, "phonestyle"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 751
    .local v20, "jPhoneStyleObject":Lorg/json/JSONObject;
    if-eqz v20, :cond_10

    .line 752
    const-string v37, "applications"

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 753
    .local v4, "appArr":Lorg/json/JSONArray;
    if-eqz v4, :cond_b

    .line 754
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v37

    move/from16 v0, v37

    if-ge v14, v0, :cond_b

    .line 755
    invoke-virtual {v4, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 756
    .local v32, "pstylePackage":Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 760
    .end local v14    # "j":I
    .end local v32    # "pstylePackage":Ljava/lang/String;
    :cond_b
    const-string v37, "framework"

    const/16 v38, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 761
    .local v9, "fwkPackage":Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 762
    move-object/from16 v0, v35

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    :cond_c
    const-string/jumbo v37, "phonestyle"

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string/jumbo v38, "phonestyle"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    if-nez v37, :cond_d

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string/jumbo v38, "phonestyle"

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string/jumbo v38, "phonestyle"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_e

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string/jumbo v38, "phonestyle"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    :cond_e
    if-eqz p1, :cond_f

    .line 771
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    move/from16 v37, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 772
    :cond_f
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 776
    .end local v4    # "appArr":Lorg/json/JSONArray;
    .end local v9    # "fwkPackage":Ljava/lang/String;
    .restart local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    const-string/jumbo v37, "wallpaper"

    const/16 v38, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 777
    if-eqz v7, :cond_13

    .line 778
    move-object/from16 v0, v35

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    const-string/jumbo v37, "wallpaper"

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string/jumbo v38, "wallpaper"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    if-nez v37, :cond_11

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string/jumbo v38, "wallpaper"

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string/jumbo v38, "wallpaper"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_12

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string/jumbo v38, "wallpaper"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_12
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 786
    .restart local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_13

    .line 787
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 789
    :cond_13
    const-string v37, "appicon"

    const/16 v38, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 790
    if-eqz v7, :cond_16

    .line 791
    move-object/from16 v0, v35

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 792
    const-string v37, "appicon"

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "appicon"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    if-nez v37, :cond_14

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "appicon"

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "appicon"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_15

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "appicon"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    :cond_15
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .restart local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_16

    .line 800
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 802
    :cond_16
    const-string v37, "font"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 803
    .local v15, "jFontsObject":Lorg/json/JSONObject;
    if-eqz v15, :cond_1c

    .line 804
    const-string/jumbo v37, "system"

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 805
    .local v36, "sysFont":Ljava/lang/String;
    if-eqz v36, :cond_17

    .line 806
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "system#"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 807
    invoke-interface/range {v35 .. v36}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_17
    const-string v37, "clock"

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 811
    .local v5, "clockFont":Ljava/lang/String;
    if-eqz v5, :cond_18

    .line 812
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "clock#"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 813
    move-object/from16 v0, v35

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    :cond_18
    const-string/jumbo v37, "numeric"

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 816
    .local v26, "numFont":Ljava/lang/String;
    if-eqz v26, :cond_19

    .line 817
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "numeric#"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 818
    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    :cond_19
    const-string v37, "font"

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "font"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    if-nez v37, :cond_1a

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "font"

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "font"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_1b

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "font"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_1b
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 827
    .restart local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1c

    .line 828
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 830
    .end local v5    # "clockFont":Ljava/lang/String;
    .end local v26    # "numFont":Ljava/lang/String;
    .end local v36    # "sysFont":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v37, "sound"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 831
    .local v21, "jSoundObject":Lorg/json/JSONObject;
    if-eqz v21, :cond_22

    .line 832
    const-string/jumbo v37, "ringtone"

    const/16 v38, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 833
    .local v34, "ringSound":Ljava/lang/String;
    if-eqz v34, :cond_1d

    .line 834
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "ringtone#"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 835
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_1d
    const-string v37, "notification"

    const/16 v38, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 838
    .local v25, "notiSound":Ljava/lang/String;
    if-eqz v25, :cond_1e

    .line 839
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "notification#"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 840
    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_1e
    const-string v37, "alarm"

    const/16 v38, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 843
    .local v3, "alarmSound":Ljava/lang/String;
    if-eqz v3, :cond_1f

    .line 844
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "alarm#"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 845
    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 847
    :cond_1f
    const-string/jumbo v37, "sound"

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string/jumbo v38, "sound"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    if-nez v37, :cond_20

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string/jumbo v38, "sound"

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string/jumbo v38, "sound"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_21

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string/jumbo v38, "sound"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_21
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 854
    .restart local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_22

    .line 855
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 858
    .end local v3    # "alarmSound":Ljava/lang/String;
    .end local v25    # "notiSound":Ljava/lang/String;
    .end local v34    # "ringSound":Ljava/lang/String;
    :cond_22
    const-string/jumbo v37, "thirdparty"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 859
    .local v23, "jsonElementArr":Lorg/json/JSONArray;
    if-eqz v23, :cond_25

    .line 860
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_4
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v37

    move/from16 v0, v37

    if-ge v14, v0, :cond_23

    .line 861
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 863
    :cond_23
    const-string/jumbo v37, "thirdparty"

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    if-eqz p1, :cond_24

    .line 865
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    move/from16 v37, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v38

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I

    .line 866
    :cond_24
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 868
    .end local v14    # "j":I
    .restart local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_25
    if-eqz v10, :cond_29

    .line 869
    const-string/jumbo v37, "notifyuser"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 870
    if-eqz v7, :cond_26

    .line 871
    move-object/from16 v0, v35

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    const-string/jumbo v37, "notifyuser"

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 876
    .restart local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "event"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    if-nez v37, :cond_27

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "event"

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "event"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_28

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    const-string v38, "event"

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/List;

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    :cond_28
    new-instance v29, Ljava/util/ArrayList;

    .end local v29    # "pendingIntenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 882
    .restart local v29    # "pendingIntenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string/jumbo v37, "starttime"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 883
    move-object/from16 v0, v35

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    const-string/jumbo v37, "starttime"

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v37, "theme.installer.action"

    move-object/from16 v0, v37

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 886
    .local v12, "i1_start":Landroid/content/Intent;
    const-string/jumbo v37, "package"

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    const-string v37, "index"

    move-object/from16 v0, v37

    invoke-virtual {v12, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->hashCode()I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v31

    .line 889
    .local v31, "pi_start":Landroid/app/PendingIntent;
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 891
    .restart local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v37, "endtime"

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 892
    move-object/from16 v0, v35

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    const-string v37, "endtime"

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v37, "theme.uninstaller.action"

    move-object/from16 v0, v37

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 895
    .local v11, "i1_end":Landroid/content/Intent;
    const-string/jumbo v37, "package"

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 896
    const-string v37, "index"

    move-object/from16 v0, v37

    invoke-virtual {v11, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->hashCode()I

    move-result v38

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v30

    .line 898
    .local v30, "pi_end":Landroid/app/PendingIntent;
    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    .end local v11    # "i1_end":Landroid/content/Intent;
    .end local v12    # "i1_start":Landroid/content/Intent;
    .end local v30    # "pi_end":Landroid/app/PendingIntent;
    .end local v31    # "pi_start":Landroid/app/PendingIntent;
    :cond_29
    move-object/from16 v0, v27

    invoke-virtual {v0, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 716
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 903
    .end local v6    # "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v7    # "element":Ljava/lang/String;
    .end local v15    # "jFontsObject":Lorg/json/JSONObject;
    .end local v17    # "jObject1":Lorg/json/JSONObject;
    .end local v20    # "jPhoneStyleObject":Lorg/json/JSONObject;
    .end local v21    # "jSoundObject":Lorg/json/JSONObject;
    .end local v23    # "jsonElementArr":Lorg/json/JSONArray;
    .end local v35    # "strList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2a
    if-eqz p3, :cond_2b

    .line 904
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    .line 911
    :goto_5
    return-void

    .line 907
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterEventTimeDetails:Ljava/util/HashMap;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p2

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method public parsePlugins()V
    .locals 23

    .prologue
    .line 1840
    :try_start_0
    new-instance v11, Ljava/io/File;

    const-string v20, "/data/overlays/jsonfiles"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1841
    .local v11, "masterFiles":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "com.samsung.android.themecenter"

    const/16 v22, 0x2

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 1842
    .local v4, "ct":Landroid/content/Context;
    const-string/jumbo v20, "samsung.andorid.themes.component_preference"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 1843
    .local v15, "prefs":Landroid/content/SharedPreferences;
    const-string v20, "TrialPackage"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1844
    .local v19, "trialPkg":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1845
    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 1846
    .local v7, "files":[Ljava/lang/String;
    move-object v3, v7

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v17, v3, v9

    .line 1847
    .local v17, "str":Ljava/lang/String;
    const/16 v20, 0x0

    const-string v21, ".txt"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1848
    .local v14, "pkgName":Ljava/lang/String;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1849
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->parseJSonData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1846
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1852
    :cond_0
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->parseJSonData(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1872
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "ct":Landroid/content/Context;
    .end local v7    # "files":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "masterFiles":Ljava/io/File;
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v15    # "prefs":Landroid/content/SharedPreferences;
    .end local v17    # "str":Ljava/lang/String;
    .end local v19    # "trialPkg":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1873
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1877
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 1856
    .restart local v4    # "ct":Landroid/content/Context;
    .restart local v11    # "masterFiles":Ljava/io/File;
    .restart local v15    # "prefs":Landroid/content/SharedPreferences;
    .restart local v19    # "trialPkg":Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-object v20, v20, v21

    if-eqz v20, :cond_3

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-object v12, v20, v21

    .line 1858
    .local v12, "packageName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1859
    .local v13, "pendingIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/SparseArray;

    .line 1860
    .local v18, "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_3
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 1861
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashMap;

    const-string/jumbo v21, "starttime"

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1862
    .local v16, "startTime":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashMap;

    const-string v21, "endtime"

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1863
    .local v6, "endTime":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v1, v6, v13}, Lcom/android/server/epm/overlay/ThemeManagerService;->setAlarmForEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1864
    add-int/lit8 v13, v13, 0x1

    .line 1860
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1867
    .end local v6    # "endTime":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "pendingIndex":I
    .end local v16    # "startTime":Ljava/lang/String;
    .end local v18    # "themeSparsedArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    :cond_3
    if-eqz v19, :cond_1

    .line 1868
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    .line 1869
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeTrialPackage(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public removeThemePackage(Ljava/lang/String;)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1032
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    if-nez v9, :cond_0

    .line 1033
    new-instance v9, Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;Lcom/android/server/epm/overlay/ThemeManagerService$1;)V

    iput-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    .line 1035
    :cond_0
    if-nez p1, :cond_2

    .line 1074
    :cond_1
    :goto_0
    return-void

    .line 1037
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/overlays/jsonfiles/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1038
    .local v2, "fl":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1039
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1046
    :cond_3
    const/4 v8, 0x0

    .line 1047
    .local v8, "themeArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialPackage:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1048
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->trialMap:Landroid/util/SparseArray;

    .line 1055
    :goto_1
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 1056
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_8

    .line 1057
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1058
    .local v1, "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1059
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1060
    .local v0, "apkName":Ljava/lang/String;
    move-object v6, v0

    .line 1061
    .local v6, "pkgName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v10, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mThemeUninstallObserver:Lcom/android/server/epm/overlay/ThemeManagerService$ThemesUninstallObserver;

    const/4 v11, 0x0

    invoke-virtual {v9, v6, v10, v11}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 1062
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1063
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1050
    .end local v0    # "apkName":Ljava/lang/String;
    .end local v1    # "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "themeArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    check-cast v8, Landroid/util/SparseArray;

    .restart local v8    # "themeArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;>;"
    goto :goto_1

    .line 1056
    .restart local v1    # "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v3    # "i":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1068
    .end local v1    # "componentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_8
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v10, "themes"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v10, "themes"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1069
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v10, "themes"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1070
    :cond_9
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v10, "event"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v10, "event"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1071
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string v10, "event"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1072
    :cond_a
    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->masterThemesMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 1883
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1884
    new-instance v0, Lcom/android/server/epm/overlay/ThemeManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$8;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    iput-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;

    .line 1982
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1983
    return-void
.end method

.method public setCallback(Landroid/app/epm/IPluginManagerCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/epm/IPluginManagerCallback;

    .prologue
    .line 1828
    invoke-super {p0, p1}, Lcom/android/server/epm/overlay/OverlayManagerService;->setCallback(Landroid/app/epm/IPluginManagerCallback;)V

    .line 1829
    return-void
.end method

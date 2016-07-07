.class public final Lcom/android/server/am/ActivityStackSupervisor;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;,
        Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;,
        Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    }
.end annotation


# static fields
.field private static final ANDROID_INTERNAL_PKGNAME:Ljava/lang/String; = "com.android.internal.app"

.field static final CONTAINER_CALLBACK_TASK_LIST_EMPTY:I = 0x6f

.field static final CONTAINER_CALLBACK_VISIBILITY:I = 0x6c

.field static final CONTAINER_TASK_LIST_EMPTY_TIMEOUT:I = 0x70

.field static final DEBUG:Z = false

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_APP:Z = false

.field static final DEBUG_CONTAINERS:Z = false

.field static final DEBUG_IDLE:Z = false

.field static final DEBUG_MULTIWINDOW:Z = false

.field static final DEBUG_RELEASE:Z = false

.field static final DEBUG_SAVED_STATE:Z = false

.field static final DEBUG_SCREENSHOTS:Z = false

.field static final DEBUG_STATES:Z = false

.field static final DEBUG_VISIBLE_BEHIND:Z = false

.field public static final FLOATING_APP_STACK_TYPE:I = 0x3

.field static final FLOATING_TASK_LIST_EMPTY_MSG:I = 0xc9

.field private static final FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile"

.field static final HANDLE_DISPLAY_ADDED:I = 0x69

.field static final HANDLE_DISPLAY_CHANGED:I = 0x6a

.field static final HANDLE_DISPLAY_REMOVED:I = 0x6b

.field public static final HOME_STACK_ID:I = 0x0

.field public static final HOME_STACK_TYPE:I = 0x1

.field static final IDLE_NOW_MSG:I = 0x65

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x64

.field public static final KNOX_PACKAGE_PREFIX:Ljava/lang/String; = "sec_container_1"

.field static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0x71

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final LOCK_TASK_END_MSG:I = 0x6e

.field static final LOCK_TASK_START_MSG:I = 0x6d

.field private static final LOCK_TASK_TAG:Ljava/lang/String; = "Lock-to-App"

.field public static final NORMAL_APP_STACK_TYPE:I = 0x2

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x66

.field static final SHOW_TOAST_UNABLE_PENWINDOW_MSG:I = 0xc8

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x67

.field public static final STACK_EXTRA_TYPE_DEFAULT:I = 0x0

.field public static final STACK_EXTRA_TYPE_VR:I = 0x1

.field static final VALIDATE_WAKE_LOCK_CALLER:Z = false

.field private static final VIRTUAL_DISPLAY_BASE_NAME:Ljava/lang/String; = "ActivityViewVirtualDisplay"

.field private static isLaunchKnoxApps:Z

.field private static final sEmptyGlobalTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final PENDING_RESUME_TOP_ACTIVITIES_TIMEOUT_DURATION:I

.field public lBoostCpuBoost:I

.field public lBoostKsmBoost:I

.field public lBoostPcDisblBoost:I

.field public lBoostSchedBoost:I

.field public lBoostTimeOut:I

.field private mActivityContainers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private mCurTaskId:I

.field private mCurrentUser:I

.field private mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusedStack:Lcom/android/server/am/ActivityStack;

.field mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field private mHasMultiWindowStack:Z

.field private mHasRunningCascadeApp:Z

.field private mHasRunningSplitApp:Z

.field private mHomeStack:Lcom/android/server/am/ActivityStack;

.field mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field public mIsPerfBoostEnabled:Z

.field private mLastFocusedStack:Lcom/android/server/am/ActivityStack;

.field private mLastStackId:I

.field mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field private mLeanbackOnlyDevice:Z

.field private mLockTaskIsLocked:Z

.field mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

.field private mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

.field private mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

.field final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

.field public mPerf:Lorg/codeaurora/Performance;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field final mStartingBackgroundUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserStartedState;",
            ">;"
        }
    .end annotation
.end field

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserStartedState;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:Landroid/os/IBinder;

.field mUserLeaving:Z

.field mUserStackInFront:Landroid/util/SparseIntArray;

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->isLaunchKnoxApps:Z

    .line 6362
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$2;

    invoke-direct {v0}, Lcom/android/server/am/ActivityStackSupervisor$2;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->sEmptyGlobalTaskHistory:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v2, 0x0

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf:Lorg/codeaurora/Performance;

    .line 225
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostEnabled:Z

    .line 226
    iput v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostTimeOut:I

    .line 227
    iput v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostCpuBoost:I

    .line 228
    iput v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostSchedBoost:I

    .line 229
    iput v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostPcDisblBoost:I

    .line 230
    iput v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostKsmBoost:I

    .line 257
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;

    .line 274
    iput v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    .line 278
    iput v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    .line 329
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 332
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 354
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 362
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    .line 365
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    .line 3986
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->PENDING_RESUME_TOP_ACTIVITIES_TIMEOUT_DURATION:I

    .line 3987
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor$1;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

    .line 5955
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasMultiWindowStack:Z

    .line 5956
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningCascadeApp:Z

    .line 5957
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningSplitApp:Z

    .line 404
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 405
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 407
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_enableCpuBoostForAppLaunch#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostEnabled:Z

    .line 409
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostEnabled:Z

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@launchboost_schedboost_param#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostSchedBoost:I

    .line 412
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@launchboost_timeout_param#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostTimeOut:I

    .line 414
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@launchboost_cpuboost_param#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostCpuBoost:I

    .line 416
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@launchboost_pcdisbl_param#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostPcDisblBoost:I

    .line 418
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@launchboost_ksmboost_param#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostKsmBoost:I

    .line 421
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # Lcom/android/server/am/LockTaskNotify;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityStackSupervisor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/am/ActivityStackSupervisor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/ActivityStackSupervisor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 183
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    return v0
.end method

.method private checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z
    .locals 14
    .param p1, "sr"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6429
    const-string v8, ""

    .line 6430
    .local v8, "simNum":Ljava/lang/String;
    const-string v5, ""

    .line 6431
    .local v5, "imsi":Ljava/lang/String;
    const/4 v9, 0x0

    .line 6433
    .local v9, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 6434
    .restart local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v9, :cond_1

    .line 6435
    const/4 v0, 0x0

    .line 6496
    :cond_0
    :goto_0
    return v0

    .line 6437
    :cond_1
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_6

    .line 6438
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v3

    .line 6439
    .local v3, "currentDataActiveSim":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 6440
    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    .line 6445
    .end local v3    # "currentDataActiveSim":I
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_3

    .line 6446
    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 6449
    :cond_3
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v12, "connectivity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 6450
    .local v2, "connMgr":Landroid/net/ConnectivityManager;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 6451
    .local v10, "wifiNetwork":Landroid/net/NetworkInfo;
    const/4 v0, 0x0

    .line 6453
    .local v0, "checkFlag":Z
    const/4 v7, 0x0

    .line 6454
    .local v7, "packages":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 6455
    .local v1, "classes":[Ljava/lang/String;
    const-string v11, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "46001"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "45407"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "46009"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v11, v12, :cond_7

    .line 6457
    const/16 v11, 0xc

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "packages":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "com.neusoft.td.android.wo116114"

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-string v12, "com.android.wo3g"

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "com.infinit.wostore.ui"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    const-string v12, "com.sinovatech.unicom.ui"

    aput-object v12, v7, v11

    const/4 v11, 0x4

    const-string v12, "com.neusoft.td.android.wo116114"

    aput-object v12, v7, v11

    const/4 v11, 0x5

    const-string v12, "com.asiainfo.android"

    aput-object v12, v7, v11

    const/4 v11, 0x6

    const-string v12, "com.asiainfo.android"

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, "com.samsung.wo3g"

    aput-object v12, v7, v11

    const/16 v11, 0x8

    const-string v12, "com.samsung.mobilebusinesshall"

    aput-object v12, v7, v11

    const/16 v11, 0x9

    const-string v12, "com.neusoft.td.android.wo116114"

    aput-object v12, v7, v11

    const/16 v11, 0xa

    const-string v12, "cn.com.wo"

    aput-object v12, v7, v11

    const/16 v11, 0xb

    const-string v12, "com.infinit.wostore.ui"

    aput-object v12, v7, v11

    .line 6459
    .restart local v7    # "packages":[Ljava/lang/String;
    const/16 v11, 0xc

    new-array v1, v11, [Ljava/lang/String;

    .end local v1    # "classes":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "com.neusoft.td.android.wo116114.ui.main.MainActivity"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    const-string v12, "com.android.wo3g.wo3g"

    aput-object v12, v1, v11

    const/4 v11, 0x2

    const-string v12, "com.infinit.wostore.ui.ZBeginActivity"

    aput-object v12, v1, v11

    const/4 v11, 0x3

    const-string v12, "com.sinovatech.unicom.ui.WelcomeClient"

    aput-object v12, v1, v11

    const/4 v11, 0x4

    const-string v12, "com.neusoft.td.android.wo116114.activity.WelcomeActivity"

    aput-object v12, v1, v11

    const/4 v11, 0x5

    const-string v12, "com.asiainfo.android.MainActivity"

    aput-object v12, v1, v11

    const/4 v11, 0x6

    const-string v12, "com.asiainfo.mail.ui.LoginAcivity"

    aput-object v12, v1, v11

    const/4 v11, 0x7

    const-string v12, "com.samsung.wo3g.wo3g"

    aput-object v12, v1, v11

    const/16 v11, 0x8

    const-string v12, "com.samsung.mobilebusinesshall.MobileBusinessHall"

    aput-object v12, v1, v11

    const/16 v11, 0x9

    const-string v12, "com.neusoft.td.android.wo116114.activity.StartActivity"

    aput-object v12, v1, v11

    const/16 v11, 0xa

    const-string v12, "cn.com.wo.ui.TipActivity"

    aput-object v12, v1, v11

    const/16 v11, 0xb

    const-string v12, "com.infinit.wostore.ui.BeginActivity"

    aput-object v12, v1, v11

    .line 6468
    .restart local v1    # "classes":[Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v7, :cond_0

    .line 6469
    const-string v11, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 6470
    if-eqz p1, :cond_0

    .line 6472
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 6473
    .local v6, "in":Landroid/content/Intent;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 6474
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 6477
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 6478
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v11, v1

    if-ge v4, v11, :cond_0

    .line 6479
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v7, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v1, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 6480
    const/4 v0, 0x1

    .line 6481
    goto/16 :goto_0

    .line 6443
    .end local v0    # "checkFlag":Z
    .end local v1    # "classes":[Ljava/lang/String;
    .end local v2    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v4    # "i":I
    .end local v6    # "in":Landroid/content/Intent;
    .end local v7    # "packages":[Ljava/lang/String;
    .end local v10    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_6
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 6462
    .restart local v0    # "checkFlag":Z
    .restart local v1    # "classes":[Ljava/lang/String;
    .restart local v2    # "connMgr":Landroid/net/ConnectivityManager;
    .restart local v7    # "packages":[Ljava/lang/String;
    .restart local v10    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_7
    const-string v11, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "46000"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "46002"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "46007"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 6464
    const/16 v11, 0x9

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "packages":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "com.aspire.mm"

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-string v12, "com.autonavi.cmccmap"

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "com.cmcc.mobilevideo"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    const-string v12, "cmccwm.mobilemusic"

    aput-object v12, v7, v11

    const/4 v11, 0x4

    const-string v12, "com.chinamobile.cmccwifi"

    aput-object v12, v7, v11

    const/4 v11, 0x5

    const-string v12, "cn.emagsoftware.gamehall"

    aput-object v12, v7, v11

    const/4 v11, 0x6

    const-string v12, "com.hisunflytone.android"

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, "com.huawei.pisa.activity"

    aput-object v12, v7, v11

    const/16 v11, 0x8

    const-string v12, "com.sec.android.app.customerservice"

    aput-object v12, v7, v11

    .restart local v7    # "packages":[Ljava/lang/String;
    goto/16 :goto_2

    .line 6478
    .restart local v4    # "i":I
    .restart local v6    # "in":Landroid/content/Intent;
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 6485
    .end local v4    # "i":I
    .end local v6    # "in":Landroid/content/Intent;
    :cond_9
    const-string v11, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 6486
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 6487
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    array-length v11, v7

    if-ge v4, v11, :cond_0

    .line 6488
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v7, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 6489
    const/4 v0, 0x1

    .line 6490
    goto/16 :goto_0

    .line 6487
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method private checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILandroid/os/Bundle;Landroid/content/ComponentName;Ljava/lang/String;)I
    .locals 30
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "callingUid"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "cmp"    # Landroid/content/ComponentName;
    .param p6, "className"    # Ljava/lang/String;

    .prologue
    .line 5731
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v22

    .line 5732
    .local v22, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5735
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v28

    .line 5737
    .local v28, "userId":I
    :goto_0
    if-eqz p5, :cond_a

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 5739
    :try_start_0
    const-string/jumbo v3, "restriction_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v25

    .line 5740
    .local v25, "rp":Landroid/app/enterprise/IRestrictionPolicy;
    if-eqz v25, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-interface {v0, v3, v1}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5741
    const/16 v16, 0x0

    .line 5742
    .local v16, "isActivityAllowed":Z
    const-string v3, ":android:show_fragment"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5743
    .local v9, "activity":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 5744
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 5746
    :cond_0
    sget-object v12, Landroid/app/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v20, v0

    .local v20, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_1
    move/from16 v0, v20

    if-ge v15, v0, :cond_1

    aget-object v14, v12, v15

    .line 5747
    .local v14, "exception":Ljava/lang/String;
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5748
    const/16 v16, 0x1

    .line 5752
    .end local v14    # "exception":Ljava/lang/String;
    :cond_1
    if-eqz v16, :cond_9

    .line 5753
    const/high16 v3, 0x800000

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5754
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Start activity "

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v29, " succeeded"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5804
    .end local v9    # "activity":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "isActivityAllowed":Z
    .end local v20    # "len$":I
    .end local v25    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :cond_2
    :goto_2
    if-eqz p5, :cond_11

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 5806
    :try_start_1
    const-string/jumbo v3, "password_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPasswordPolicy;

    move-result-object v24

    .line 5807
    .local v24, "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    const-string/jumbo v3, "security_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ISecurityPolicy;

    move-result-object v26

    .line 5808
    .local v26, "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    if-eqz v24, :cond_3

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/app/enterprise/IPasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v3

    if-gtz v3, :cond_4

    :cond_3
    if-eqz v26, :cond_10

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/app/enterprise/ISecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 5810
    :cond_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v21

    .line 5811
    .local v21, "list":Ljava/util/List;
    if-eqz v21, :cond_10

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 5812
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v27

    .line 5813
    .local v27, "topActivity":Ljava/lang/String;
    const/16 v16, 0x0

    .line 5814
    .restart local v16    # "isActivityAllowed":Z
    const/16 v18, 0x0

    .line 5815
    .local v18, "isTopActivityException":Z
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 5816
    .restart local v9    # "activity":Ljava/lang/String;
    sget-object v12, Landroid/app/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    .restart local v12    # "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v20, v0

    .restart local v20    # "len$":I
    const/4 v15, 0x0

    .restart local v15    # "i$":I
    :goto_3
    move/from16 v0, v20

    if-ge v15, v0, :cond_6

    aget-object v14, v12, v15

    .line 5817
    .restart local v14    # "exception":Ljava/lang/String;
    if-eqz v27, :cond_5

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5818
    const/16 v18, 0x1

    .line 5820
    :cond_5
    if-eqz v9, :cond_f

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 5821
    const/16 v16, 0x1

    .line 5825
    .end local v14    # "exception":Ljava/lang/String;
    :cond_6
    if-eqz v18, :cond_10

    if-nez v16, :cond_10

    .line 5826
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5827
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Start activity "

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v29, " failed. Blocked due to password change enforcement."

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 5830
    const/4 v3, 0x0

    .line 5895
    .end local v9    # "activity":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "isActivityAllowed":Z
    .end local v18    # "isTopActivityException":Z
    .end local v20    # "len$":I
    .end local v21    # "list":Ljava/util/List;
    .end local v24    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .end local v26    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .end local v27    # "topActivity":Ljava/lang/String;
    :goto_4
    return v3

    .line 5735
    .end local v28    # "userId":I
    :cond_7
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 5746
    .restart local v9    # "activity":Ljava/lang/String;
    .restart local v12    # "arr$":[Ljava/lang/String;
    .restart local v14    # "exception":Ljava/lang/String;
    .restart local v15    # "i$":I
    .restart local v16    # "isActivityAllowed":Z
    .restart local v20    # "len$":I
    .restart local v25    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    .restart local v28    # "userId":I
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 5758
    .end local v14    # "exception":Ljava/lang/String;
    :cond_9
    const/4 v3, 0x1

    :try_start_2
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-interface {v0, v3, v1}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    .line 5759
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5760
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Start activity "

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v29, " failed. Blocked due to settings changes not allowed."

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 5763
    const/4 v3, 0x0

    goto :goto_4

    .line 5766
    .end local v9    # "activity":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "isActivityAllowed":Z
    .end local v20    # "len$":I
    .end local v25    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :catch_0
    move-exception v13

    .line 5767
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 5769
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_a
    if-eqz p5, :cond_c

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    sget-object v3, Landroid/app/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    sget-object v3, Landroid/app/enterprise/kioskmode/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5773
    :cond_b
    :try_start_3
    const-string v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v19

    .line 5775
    .local v19, "km":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v19, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-interface {v0, v3, v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->isTaskManagerAllowedAsUser(ZI)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5776
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5777
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Start activity "

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v29, " failed. Task manager is not allowed."

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 5780
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 5782
    .end local v19    # "km":Landroid/app/enterprise/kioskmode/IKioskMode;
    :catch_1
    move-exception v13

    .line 5783
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    const-string v4, "Is edm running?"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5785
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_c
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.vlingo.midas"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5787
    :try_start_4
    const-string/jumbo v3, "restriction_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v25

    .line 5788
    .restart local v25    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    if-eqz v25, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-interface {v0, v3, v1}, Landroid/app/enterprise/IRestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-interface {v0, v3, v1}, Landroid/app/enterprise/IRestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5789
    :cond_d
    const-string v3, ":android:show_fragment"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5790
    .restart local v9    # "activity":Ljava/lang/String;
    if-nez v9, :cond_e

    .line 5791
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 5793
    :cond_e
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5794
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Start activity "

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v29, " failed. Blocked due to S Voice not allowed."

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 5797
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 5799
    .end local v9    # "activity":Ljava/lang/String;
    .end local v25    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :catch_2
    move-exception v13

    .line 5800
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 5816
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v9    # "activity":Ljava/lang/String;
    .restart local v12    # "arr$":[Ljava/lang/String;
    .restart local v14    # "exception":Ljava/lang/String;
    .restart local v15    # "i$":I
    .restart local v16    # "isActivityAllowed":Z
    .restart local v18    # "isTopActivityException":Z
    .restart local v20    # "len$":I
    .restart local v21    # "list":Ljava/util/List;
    .restart local v24    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .restart local v26    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .restart local v27    # "topActivity":Ljava/lang/String;
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 5834
    .end local v9    # "activity":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v14    # "exception":Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "isActivityAllowed":Z
    .end local v18    # "isTopActivityException":Z
    .end local v20    # "len$":I
    .end local v21    # "list":Ljava/util/List;
    .end local v24    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .end local v26    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .end local v27    # "topActivity":Ljava/lang/String;
    :catch_3
    move-exception v13

    .line 5835
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 5840
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_10
    :try_start_5
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move/from16 v0, v28

    invoke-virtual {v3, v4, v5, v0}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v17

    .line 5843
    .local v17, "isAllowed":Z
    if-nez v17, :cond_11

    .line 5844
    const-string v3, "ActivityStack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5845
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 5846
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 5848
    .end local v17    # "isAllowed":Z
    :catch_4
    move-exception v13

    .line 5849
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 5855
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_11
    if-eqz p4, :cond_12

    const-string v3, "edm:nonSystemUid"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "edm:startedByAdmin"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 5858
    :cond_12
    if-eqz p2, :cond_14

    .line 5860
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 5861
    .local v23, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 5865
    .local v11, "ar":Lcom/android/server/am/ActivityRecord;
    if-nez v11, :cond_14

    .line 5867
    :try_start_6
    const-string v3, "application_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v10

    .line 5870
    .local v10, "appPolicy":Landroid/app/enterprise/IApplicationPolicy;
    if-eqz v10, :cond_13

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v10, v0, v1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 5871
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is at prevent start black list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5873
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5874
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Start activity "

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v29, " failed"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 5876
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 5879
    :cond_13
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Start activity "

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v29, " succeeded"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 5893
    .end local v10    # "appPolicy":Landroid/app/enterprise/IApplicationPolicy;
    .end local v11    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v23    # "pkgName":Ljava/lang/String;
    :cond_14
    :goto_5
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5895
    const/4 v3, -0x1

    goto/16 :goto_4

    .line 5882
    .restart local v11    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v23    # "pkgName":Ljava/lang/String;
    :catch_5
    move-exception v13

    .line 5883
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 5890
    .end local v11    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v23    # "pkgName":Ljava/lang/String;
    :cond_15
    const/16 p4, 0x0

    goto :goto_5
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "complete"    # Z
    .param p6, "brief"    # Z
    .param p7, "client"    # Z
    .param p8, "dumpPackage"    # Ljava/lang/String;
    .param p9, "needNL"    # Z
    .param p10, "header1"    # Ljava/lang/String;
    .param p11, "header2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4634
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v7, 0x0

    .line 4635
    .local v7, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v6, 0x0

    .line 4636
    .local v6, "innerPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4637
    .local v2, "args":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 4638
    .local v8, "printed":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_e

    .line 4639
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 4640
    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p8, :cond_1

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 4638
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 4643
    :cond_1
    if-nez v6, :cond_2

    .line 4644
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "      "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4645
    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/String;

    .line 4647
    :cond_2
    const/4 v8, 0x1

    .line 4648
    if-nez p6, :cond_9

    if-nez p5, :cond_3

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v11

    if-nez v11, :cond_9

    :cond_3
    const/4 v4, 0x1

    .line 4649
    .local v4, "full":Z
    :goto_2
    if-eqz p9, :cond_4

    .line 4650
    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4651
    const/16 p9, 0x0

    .line 4653
    :cond_4
    if-eqz p10, :cond_5

    .line 4654
    move-object/from16 v0, p10

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4655
    const/16 p10, 0x0

    .line 4657
    :cond_5
    if-eqz p11, :cond_6

    .line 4658
    move-object/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4659
    const/16 p11, 0x0

    .line 4661
    :cond_6
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v7, v11, :cond_7

    .line 4662
    iget-object v7, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4663
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4664
    if-eqz v4, :cond_a

    const-string v11, "* "

    :goto_3
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4665
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4666
    if-eqz v4, :cond_b

    .line 4667
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, p1, v11}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4676
    :cond_7
    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_c

    const-string v11, "  * "

    :goto_5
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4677
    const-string v11, " #"

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4678
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4679
    if-eqz v4, :cond_d

    .line 4680
    invoke-virtual {v9, p1, v6}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4688
    :cond_8
    :goto_6
    if-eqz p7, :cond_0

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_0

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v11, :cond_0

    .line 4691
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 4693
    :try_start_0
    new-instance v10, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v10}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4695
    .local v10, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v11, v12, v13, v6, v2}, Landroid/app/IApplicationThread;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4699
    const-wide/16 v12, 0x7d0

    invoke-virtual {v10, p0, v12, v13}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4701
    :try_start_2
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4708
    .end local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_7
    const/16 p9, 0x1

    goto/16 :goto_1

    .line 4648
    .end local v4    # "full":Z
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 4664
    .restart local v4    # "full":Z
    :cond_a
    const-string v11, "  "

    goto :goto_3

    .line 4668
    :cond_b
    if-eqz p5, :cond_7

    .line 4670
    iget-object v11, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v11, :cond_7

    .line 4671
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  "

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4672
    iget-object v11, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 4676
    :cond_c
    const-string v11, "    "

    goto :goto_5

    .line 4681
    :cond_d
    if-eqz p5, :cond_8

    .line 4683
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4684
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_8

    .line 4685
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    .line 4701
    .restart local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_0
    move-exception v11

    :try_start_3
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4703
    .end local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v3

    .line 4704
    .local v3, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Failure while dumping the activity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 4705
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 4706
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Got a RemoteException while dumping the activity"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 4711
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "full":Z
    .end local v9    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_e
    return v8
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .locals 3

    .prologue
    .line 451
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 453
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 455
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 456
    const-string v0, "ActivityManager"

    const-string/jumbo v2, "warning: no DEVICE_POLICY_SERVICE"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    monitor-exit v1

    return-object v0

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getHomeIndex(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 6194
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 6195
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6196
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 6199
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 3

    .prologue
    .line 438
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 440
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 442
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 443
    const-string v0, "StatusBarManager"

    const-string/jumbo v2, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getTopActivityByZone(I)Lcom/android/server/am/ActivityRecord;
    .locals 11
    .param p1, "zone"    # I

    .prologue
    .line 6025
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 6026
    if-nez p1, :cond_0

    .line 6027
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 6028
    .local v1, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v8

    if-nez v8, :cond_4

    .line 6029
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    monitor-exit v9

    .line 6050
    .end local v1    # "focusedStack":Lcom/android/server/am/ActivityStack;
    :goto_0
    return-object v7

    .line 6032
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 6033
    .local v2, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 6034
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6035
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6036
    .local v3, "size":I
    add-int/lit8 v5, v3, -0x1

    .local v5, "stackNdx":I
    :goto_2
    if-ltz v5, :cond_3

    .line 6037
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 6038
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 6036
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 6041
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 6042
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_1

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v10, :cond_1

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v8

    if-ne v8, p1, :cond_1

    .line 6045
    monitor-exit v9

    goto :goto_0

    .line 6051
    .end local v0    # "displayNdx":I
    .end local v2    # "numDisplays":I
    .end local v3    # "size":I
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v7    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 6033
    .restart local v0    # "displayNdx":I
    .restart local v2    # "numDisplays":I
    .restart local v3    # "size":I
    .restart local v5    # "stackNdx":I
    .restart local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6050
    .end local v0    # "displayNdx":I
    .end local v2    # "numDisplays":I
    .end local v3    # "size":I
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    const/4 v7, 0x0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isKnoxmode()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 6504
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6505
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6506
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 6508
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 6509
    .local v0, "HomeReceiver":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.android.internal.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6510
    const/4 v3, 0x1

    .line 6512
    :cond_0
    return v3
.end method

.method private isLeanbackOnlyDevice()Z
    .locals 3

    .prologue
    .line 5714
    const/4 v0, 0x0

    .line 5716
    .local v0, "onLeanbackOnly":Z
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "android.software.leanback_only"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5722
    :goto_0
    return v0

    .line 5718
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private needsCascadeForceHidden()Z
    .locals 1

    .prologue
    .line 6294
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6295
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6296
    const/4 v0, 0x1

    .line 6299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 4541
    if-eqz p1, :cond_2

    .line 4542
    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4543
    :cond_0
    if-eqz p3, :cond_1

    .line 4544
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 4546
    :cond_1
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4547
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4548
    const/4 v0, 0x1

    .line 4551
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method acquireLaunchWakelock()V
    .locals 4

    .prologue
    const/16 v1, 0x68

    .line 3124
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3125
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3127
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3129
    :cond_0
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .locals 19
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromTimeout"    # Z
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 3136
    const/16 v18, 0x0

    .line 3137
    .local v18, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v14, 0x0

    .line 3138
    .local v14, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v17, 0x0

    .line 3139
    .local v17, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    const/4 v10, 0x0

    .line 3140
    .local v10, "NS":I
    const/4 v2, 0x0

    .line 3141
    .local v2, "NF":I
    const/4 v12, 0x0

    .line 3142
    .local v12, "booting":Z
    const/4 v13, 0x0

    .line 3143
    .local v13, "enableScreen":Z
    const/4 v11, 0x0

    .line 3145
    .local v11, "activityRemoved":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 3146
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_3

    .line 3149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3152
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 3153
    if-eqz p2, :cond_0

    .line 3154
    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object/from16 v3, p0

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 3162
    :cond_0
    if-eqz p3, :cond_1

    .line 3163
    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 3168
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 3171
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_9

    .line 3172
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v12, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 3173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 3174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v3, :cond_3

    .line 3175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 3176
    const/4 v13, 0x1

    .line 3189
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesIdle()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3190
    if-eqz v5, :cond_4

    .line 3191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 3194
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 3200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3202
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 3206
    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    move-result-object v18

    .line 3207
    if-eqz v18, :cond_b

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3208
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 3209
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3210
    .restart local v14    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3213
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 3214
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3215
    .restart local v17    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3220
    :cond_8
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v10, :cond_d

    .line 3221
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3222
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v16, v0

    .line 3223
    .local v16, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_c

    .line 3224
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 3220
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 3178
    .end local v15    # "i":I
    .end local v16    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-eqz v3, :cond_3

    .line 3179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_a

    .line 3181
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@Boot: FocusedStack is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v6, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3184
    :cond_a
    const-string v3, "ActivityManager"

    const-string v4, "!@Boot: mFocusedStack is not mHomeStack "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3207
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 3226
    .restart local v15    # "i":I
    .restart local v16    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_3

    .line 3232
    .end local v16    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_d
    const/4 v15, 0x0

    :goto_4
    if-ge v15, v2, :cond_e

    .line 3233
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3234
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x1

    const-string v6, "finish-idle"

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v3

    or-int/2addr v11, v3

    .line 3232
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 3237
    :cond_e
    if-nez v12, :cond_10

    .line 3239
    if-eqz v17, :cond_f

    .line 3240
    const/4 v15, 0x0

    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_f

    .line 3241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserStartedState;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->finishUserSwitch(Lcom/android/server/am/UserStartedState;)V

    .line 3240
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 3245
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 3246
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3247
    .restart local v17    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3248
    const/4 v15, 0x0

    :goto_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_10

    .line 3249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserStartedState;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->finishUserBoot(Lcom/android/server/am/UserStartedState;)V

    .line 3248
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 3254
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 3258
    if-nez v12, :cond_11

    if-eqz v13, :cond_12

    .line 3259
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v12, v13}, Lcom/android/server/am/ActivityManagerService;->postFinishBooting(ZZ)V

    .line 3262
    :cond_12
    if-eqz v11, :cond_13

    .line 3263
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 3266
    :cond_13
    return-object v5
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 4027
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4028
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 4029
    return-void
.end method

.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z

    .prologue
    .line 2104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2108
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2118
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/am/MultiWindowPolicy;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method allPausedActivitiesComplete()Z
    .locals 9

    .prologue
    .line 944
    const/4 v2, 0x1

    .line 945
    .local v2, "pausing":Z
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 946
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 947
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "stackNdx":I
    :goto_1
    if-ltz v5, :cond_3

    .line 948
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 951
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v7, v4, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 952
    .local v3, "record":Lcom/android/server/am/ActivityRecord;
    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_0

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_0

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_0

    .line 959
    const/4 v2, 0x0

    .line 979
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pausing":Z
    .end local v3    # "record":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return v2

    .line 947
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "pausing":Z
    .restart local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "stackNdx":I
    .restart local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 945
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method allResumedActivitiesComplete()Z
    .locals 1

    .prologue
    .line 872
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete(Z)Z

    move-result v0

    return v0
.end method

.method allResumedActivitiesComplete(Z)Z
    .locals 7
    .param p1, "resumedActivityMustBeNotNull"    # Z

    .prologue
    .line 876
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 877
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 878
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_2

    .line 879
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 880
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 883
    if-eqz p1, :cond_0

    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:Z

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 886
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    :goto_2
    if-eqz v1, :cond_1

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_1

    .line 887
    const/4 v5, 0x0

    .line 904
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_3
    return v5

    .line 883
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_0
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_2

    .line 878
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 876
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 903
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 904
    const/4 v5, 0x1

    goto :goto_3
.end method

.method allResumedActivitiesIdle()Z
    .locals 6

    .prologue
    .line 852
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 853
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 854
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_3

    .line 855
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 856
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v5

    if-nez v5, :cond_1

    .line 854
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 859
    :cond_1
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 860
    .local v1, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_2

    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v5, :cond_0

    .line 863
    :cond_2
    const/4 v5, 0x0

    .line 867
    .end local v1    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return v5

    .line 852
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 867
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    const/4 v5, 0x1

    goto :goto_2
.end method

.method allResumedActivitiesVisible()Z
    .locals 6

    .prologue
    .line 908
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 909
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 910
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_2

    .line 911
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 912
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 913
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_1

    .line 914
    :cond_0
    const/4 v5, 0x0

    .line 918
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return v5

    .line 910
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 908
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 918
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    const/4 v5, 0x1

    goto :goto_2
.end method

.method anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 750
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 751
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 752
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 753
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 754
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 755
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 756
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_0

    .line 761
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :goto_2
    return-object v5

    .line 753
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 751
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 761
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method arrangeTaskToReturnTo(I)V
    .locals 6
    .param p1, "displayId"    # I

    .prologue
    .line 3964
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 3965
    .local v0, "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3966
    const/4 v1, -0x1

    .line 3967
    .local v1, "homeTaskNdx":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 3968
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 3969
    .local v4, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3970
    move v1, v2

    .line 3967
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3971
    :cond_1
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3972
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_1

    .line 3975
    .end local v4    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    const/4 v5, -0x1

    if-le v1, v5, :cond_3

    .line 3976
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3977
    .local v3, "overHomeTask":Lcom/android/server/am/TaskRecord;
    iget-object v5, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3978
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 3982
    .end local v1    # "homeTaskNdx":I
    .end local v2    # "i":I
    .end local v3    # "overHomeTask":Lcom/android/server/am/TaskRecord;
    :cond_3
    return-void
.end method

.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 819
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 820
    .local v4, "processName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 821
    .local v0, "didSomething":Z
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 822
    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 823
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "stackNdx":I
    :goto_1
    if-ltz v6, :cond_2

    .line 824
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 825
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 823
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 828
    :cond_1
    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 829
    .local v3, "hr":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_0

    .line 830
    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v8, :cond_0

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v8, v9, :cond_0

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 833
    const/4 v8, 0x1

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {p0, v3, p1, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 834
    const/4 v0, 0x1

    goto :goto_2

    .line 836
    :catch_0
    move-exception v2

    .line 837
    .local v2, "e":Landroid/os/RemoteException;
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in new application when starting activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    throw v2

    .line 821
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "hr":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 845
    .end local v6    # "stackNdx":I
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    if-nez v0, :cond_4

    .line 846
    const/4 v8, 0x0

    invoke-virtual {p0, v10, v8}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 848
    :cond_4
    return v0
.end method

.method public changeTypeOfTaskToCascade(Landroid/graphics/Point;IZ)Z
    .locals 26
    .param p1, "touchPoint"    # Landroid/graphics/Point;
    .param p2, "zone"    # I
    .param p3, "bMinimize"    # Z

    .prologue
    .line 6103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6104
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getTopActivityByZone(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    .line 6105
    .local v18, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v18, :cond_8

    .line 6106
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v11

    .line 6107
    .local v11, "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 6108
    .local v8, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v8, :cond_2

    .line 6109
    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 6110
    .local v9, "metaData":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v11, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v21

    if-nez v21, :cond_2

    if-eqz v9, :cond_0

    const-string v21, "com.samsung.android.sdk.multiwindow.penwindow.enable"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 6112
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    move-object/from16 v21, v0

    const/16 v23, 0xc8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 6113
    .local v10, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    move-object/from16 v21, v0

    const-wide/16 v24, 0xc8

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6114
    const/16 v21, 0x0

    monitor-exit v22

    .line 6183
    .end local v8    # "info":Landroid/content/pm/ActivityInfo;
    .end local v9    # "metaData":Landroid/os/Bundle;
    .end local v10    # "msg":Landroid/os/Message;
    .end local v11    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :goto_1
    return v21

    .line 6109
    .restart local v8    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_1
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    .line 6118
    :cond_2
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 6119
    .local v7, "displaySize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/MultiWindowPolicy;->getDefaultScale()F

    move-result v4

    .line 6120
    .local v4, "defaultPenWindowScale":F
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 6121
    .local v6, "displayId":I
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v5

    .line 6122
    .local v5, "display":Landroid/view/Display;
    if-eqz v5, :cond_3

    invoke-virtual {v5, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 6123
    :cond_3
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v4

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .line 6124
    .local v20, "windowDefWidth":I
    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v4

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 6126
    .local v19, "windowDefHeight":I
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 6127
    .local v15, "rect":Landroid/graphics/Rect;
    if-eqz p1, :cond_a

    .line 6128
    if-eqz p3, :cond_9

    .line 6129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1, v7}, Lcom/android/server/am/MultiWindowPolicy;->calculateMinimizePosition(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v14

    .line 6131
    .local v14, "point":Landroid/graphics/Point;
    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    add-int v24, v24, v20

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    add-int v25, v25, v19

    move/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 6140
    .end local v14    # "point":Landroid/graphics/Point;
    :goto_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    const/16 v23, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 6141
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    const/16 v23, 0x800

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 6142
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 6143
    if-eqz p3, :cond_4

    .line 6144
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    const/16 v23, 0x4

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 6147
    :cond_4
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 6148
    if-eqz p3, :cond_5

    .line 6149
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 6150
    .local v17, "tmp":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_5

    .line 6151
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 6154
    .end local v17    # "tmp":Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 6155
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 6158
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 6162
    .local v12, "newFloatingStack":Lcom/android/server/am/ActivityStack;
    const/16 v21, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    .line 6163
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    if-eq v12, v0, :cond_7

    .line 6164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    const/16 v23, 0x64

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 6165
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v21, v0

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStack(IIZ)V

    .line 6166
    if-nez p3, :cond_7

    .line 6167
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 6171
    :cond_7
    if-eqz p3, :cond_c

    .line 6172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowManagerService;->findNextFocusableFloatingStackIdFromTop()I

    move-result v13

    .line 6173
    .local v13, "nextStackId":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v13, v0, :cond_b

    .line 6174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 6182
    .end local v4    # "defaultPenWindowScale":F
    .end local v5    # "display":Landroid/view/Display;
    .end local v6    # "displayId":I
    .end local v7    # "displaySize":Landroid/graphics/Point;
    .end local v8    # "info":Landroid/content/pm/ActivityInfo;
    .end local v11    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .end local v12    # "newFloatingStack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "nextStackId":I
    .end local v15    # "rect":Landroid/graphics/Rect;
    .end local v19    # "windowDefHeight":I
    .end local v20    # "windowDefWidth":I
    :cond_8
    :goto_3
    monitor-exit v22

    .line 6183
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 6133
    .restart local v4    # "defaultPenWindowScale":F
    .restart local v5    # "display":Landroid/view/Display;
    .restart local v6    # "displayId":I
    .restart local v7    # "displaySize":Landroid/graphics/Point;
    .restart local v8    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .restart local v15    # "rect":Landroid/graphics/Rect;
    .restart local v19    # "windowDefHeight":I
    .restart local v20    # "windowDefWidth":I
    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    div-int/lit8 v23, v20, 0x2

    sub-int v21, v21, v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    div-int/lit8 v25, v20, 0x2

    add-int v24, v24, v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    add-int v25, v25, v19

    move/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    .line 6182
    .end local v4    # "defaultPenWindowScale":F
    .end local v5    # "display":Landroid/view/Display;
    .end local v6    # "displayId":I
    .end local v7    # "displaySize":Landroid/graphics/Point;
    .end local v8    # "info":Landroid/content/pm/ActivityInfo;
    .end local v11    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .end local v15    # "rect":Landroid/graphics/Rect;
    .end local v18    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "windowDefHeight":I
    .end local v20    # "windowDefWidth":I
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21

    .line 6136
    .restart local v4    # "defaultPenWindowScale":F
    .restart local v5    # "display":Landroid/view/Display;
    .restart local v6    # "displayId":I
    .restart local v7    # "displaySize":Landroid/graphics/Point;
    .restart local v8    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .restart local v15    # "rect":Landroid/graphics/Rect;
    .restart local v18    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v19    # "windowDefHeight":I
    .restart local v20    # "windowDefWidth":I
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v23, #android:dimen@status_bar_height#t

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 6137
    .local v16, "statusBarHeight":I
    const/16 v21, 0x0

    add-int v23, v16, v19

    move/from16 v0, v21

    move/from16 v1, v16

    move/from16 v2, v20

    move/from16 v3, v23

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    .line 6176
    .end local v16    # "statusBarHeight":I
    .restart local v12    # "newFloatingStack":Lcom/android/server/am/ActivityStack;
    .restart local v13    # "nextStackId":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto :goto_3

    .line 6179
    .end local v13    # "nextStackId":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    iget v0, v12, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method

.method public changeTypeOfTaskToNormal(I)V
    .locals 14
    .param p1, "zone"    # I

    .prologue
    .line 6055
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 6056
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getTopActivityByZone(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 6057
    .local v9, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v9, :cond_4

    .line 6058
    iget-object v6, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 6059
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_4

    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v10, :cond_4

    .line 6060
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v12, v12, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v10, v12}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 6061
    const/4 v10, 0x0

    iget-object v12, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v12, v12, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p0, v10, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 6062
    .local v2, "normalStack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_0

    .line 6063
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(III)I

    move-result v3

    .line 6064
    .local v3, "normalStackId":I
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 6068
    .end local v3    # "normalStackId":I
    :cond_0
    const-string/jumbo v10, "type-change"

    invoke-virtual {p0, v2, v10}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 6069
    const/4 v10, 0x1

    invoke-virtual {p0, v2, v10}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 6071
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 6072
    .local v8, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v8, :cond_2

    .line 6073
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 6074
    .local v1, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 6075
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10, v6, v1}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 6076
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v10, v8, v12, v13}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 6078
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v10, v10, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6079
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_2

    .line 6080
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 6081
    .local v5, "target":Lcom/android/server/am/ActivityStack;
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v5, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v10, :cond_1

    iget-object v10, v5, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v10, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 6083
    iget-object v10, v5, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 6084
    .local v7, "tmp":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    .line 6085
    iget-object v10, v5, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v12, 0x0

    invoke-virtual {v10, v7, v12}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 6079
    .end local v7    # "tmp":Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6090
    .end local v0    # "i":I
    .end local v1    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v5    # "target":Lcom/android/server/am/ActivityStack;
    :cond_2
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v12, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v10, v12, :cond_3

    .line 6092
    const/4 v10, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {p0, v10, v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    .line 6093
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10, v9}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 6094
    iget v10, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v12, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {p0, v10, v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStack(IIZ)V

    .line 6096
    :cond_3
    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v12}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 6099
    .end local v2    # "normalStack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v8    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4
    monitor-exit v11

    .line 6100
    return-void

    .line 6099
    .end local v9    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method checkFullScreenOnlyExist(Ljava/util/ArrayList;Lcom/android/server/am/ActivityStack;)Z
    .locals 12
    .param p2, "curStack"    # Lcom/android/server/am/ActivityStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/ActivityStack;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v10, 0x0

    .line 533
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 534
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_6

    .line 535
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    iget-object v5, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 536
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v5, :cond_0

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 534
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 538
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 539
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .local v7, "taskNdx":I
    :goto_1
    if-ltz v7, :cond_0

    .line 540
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 541
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget v9, v6, Lcom/android/server/am/TaskRecord;->userId:I

    iget v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-ne v9, v11, :cond_5

    .line 542
    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 543
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "activityNdx":I
    :goto_2
    if-ltz v2, :cond_5

    .line 544
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 545
    .local v3, "activityRecord":Lcom/android/server/am/ActivityRecord;
    iget-boolean v9, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_2

    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 543
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 548
    :cond_3
    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v11, 0x200000

    invoke-virtual {v9, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 550
    iget-boolean v9, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v9, :cond_2

    .line 551
    const/4 v9, 0x1

    .line 560
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    .end local v3    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "taskNdx":I
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :goto_3
    return v9

    .restart local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v2    # "activityNdx":I
    .restart local v3    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "taskNdx":I
    .restart local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_4
    move v9, v10

    .line 554
    goto :goto_3

    .line 539
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    .end local v3    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "taskNdx":I
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_6
    move v9, v10

    .line 560
    goto :goto_3
.end method

.method checkReadyForSleepLocked()V
    .locals 6

    .prologue
    .line 4032
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4087
    :cond_0
    :goto_0
    return-void

    .line 4037
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    if-nez v4, :cond_6

    .line 4038
    const/4 v1, 0x0

    .line 4039
    .local v1, "dontSleep":Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_1
    if-ltz v0, :cond_3

    .line 4040
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4041
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_2
    if-ltz v2, :cond_2

    .line 4042
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v4

    or-int/2addr v1, v4

    .line 4041
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 4039
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4046
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 4050
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 4051
    const/4 v1, 0x1

    .line 4054
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 4058
    const/4 v1, 0x1

    .line 4061
    :cond_5
    if-nez v1, :cond_0

    .line 4068
    .end local v0    # "displayNdx":I
    .end local v1    # "dontSleep":Z
    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 4072
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0    # "displayNdx":I
    :goto_3
    if-ltz v0, :cond_8

    .line 4073
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4074
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .restart local v2    # "stackNdx":I
    :goto_4
    if-ltz v2, :cond_7

    .line 4075
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 4074
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 4072
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 4079
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 4081
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4082
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4084
    :cond_9
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v4, :cond_0

    .line 4085
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_0
.end method

.method closeSystemDialogsLocked()V
    .locals 4

    .prologue
    .line 3281
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3282
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3283
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_0

    .line 3284
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->closeSystemDialogsLocked()V

    .line 3283
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3281
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3287
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .locals 1

    .prologue
    .line 3997
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->comeOutOfSleepIfNeededLocked(Z)V

    .line 3998
    return-void
.end method

.method comeOutOfSleepIfNeededLocked(Z)V
    .locals 8
    .param p1, "causeKeyguardWaitingForActivityDrawn"    # Z

    .prologue
    .line 4002
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 4003
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4004
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4006
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 4007
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4008
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_3

    .line 4009
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 4010
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    .line 4011
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4013
    if-nez p1, :cond_2

    .line 4014
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4008
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4016
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4017
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 4006
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4023
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4024
    return-void
.end method

.method createActivityContainer(Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .locals 3
    .param p1, "parentActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "callback"    # Landroid/app/IActivityContainerCallback;

    .prologue
    .line 3547
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)V

    .line 3549
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3551
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3552
    return-object v0
.end method

.method createStackForRestoredTaskHistory(Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3637
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)I

    move-result v6

    .line 3638
    .local v6, "stackId":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v17

    .line 3639
    .local v17, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v19, v2, -0x1

    .local v19, "taskNdx":I
    :goto_0
    if-ltz v19, :cond_3

    .line 3640
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/TaskRecord;

    .line 3641
    .local v18, "task":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3642
    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 3643
    .local v5, "taskId":I
    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3644
    .local v14, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .local v15, "activityNdx":I
    :goto_1
    if-ltz v15, :cond_2

    .line 3645
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ActivityRecord;

    .line 3646
    .local v16, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, v16

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v0, v16

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, v16

    iget-boolean v13, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    .line 3644
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 3646
    :cond_0
    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    goto :goto_3

    .line 3639
    .end local v16    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v19, v19, -0x1

    goto :goto_0

    .line 3653
    .end local v5    # "taskId":I
    .end local v14    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v15    # "activityNdx":I
    .end local v18    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    return-void
.end method

.method createStackOnDisplay(II)I
    .locals 1
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 3592
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(III)I

    move-result v0

    return v0
.end method

.method public createStackOnDisplay(III)I
    .locals 5
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "zone"    # I

    .prologue
    .line 3597
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3598
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v1, :cond_0

    .line 3599
    const/4 p1, -0x1

    .line 3621
    .end local p1    # "stackId":I
    :goto_0
    return p1

    .line 3604
    .restart local p1    # "stackId":I
    :cond_0
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-nez p1, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-direct {v0, p0, p1, v3, p3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;III)V

    .line 3608
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3609
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    .line 3612
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v3, :cond_2

    .line 3613
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3614
    .local v2, "outRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v3, v2, p3}, Lcom/android/server/am/MultiWindowPolicy;->getBounds(Landroid/graphics/Rect;I)V

    .line 3615
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 3604
    .end local v0    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v2    # "outRect":Landroid/graphics/Rect;
    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    .line 3617
    .restart local v0    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_2
    const-string v3, "ActivityManager"

    const-string v4, "createStackOnDisplay: System is not ready yet!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createStackOnDisplay(IILandroid/graphics/Rect;)I
    .locals 4
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3578
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3579
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v1, :cond_0

    .line 3580
    const/4 p1, -0x1

    .line 3586
    .end local p1    # "stackId":I
    :goto_0
    return p1

    .line 3582
    .restart local p1    # "stackId":I
    :cond_0
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;III)V

    .line 3583
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3584
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    .line 3585
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method deleteActivityContainer(Landroid/app/IActivityContainer;)V
    .locals 3
    .param p1, "container"    # Landroid/app/IActivityContainer;

    .prologue
    .line 3566
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 3567
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_0

    .line 3570
    iget v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    .line 3571
    .local v1, "stackId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 3572
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->removeStack(I)V

    .line 3574
    .end local v1    # "stackId":I
    :cond_0
    return-void
.end method

.method final doPendingActivityLaunchesLocked(Z)V
    .locals 11
    .param p1, "doResume"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 3104
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3105
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 3106
    .local v9, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v9, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v5, v9, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    :goto_1
    move-object v0, p0

    move-object v4, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I

    goto :goto_0

    :cond_0
    move v6, v10

    goto :goto_1

    .line 3109
    .end local v9    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 4510
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFocusedStack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4511
    const-string v4, " mLastFocusedStack="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4512
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSleepTimeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4513
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurTaskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4514
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUserStackInFront="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4515
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mActivityContainers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4518
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v4, "GlobalTaskHistory"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4519
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 4520
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 4521
    .local v0, "d":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityDisplay #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4524
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_1

    .line 4525
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 4526
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TASK id #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t(Stack #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v5, v5, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "f)"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4524
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4527
    :cond_0
    const-string v4, ")"

    goto :goto_2

    .line 4519
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 4533
    .end local v0    # "d":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .locals 31
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    .prologue
    .line 4556
    const/16 v26, 0x0

    .line 4557
    .local v26, "printed":Z
    const/4 v9, 0x0

    .line 4558
    .local v9, "needSep":Z
    const/16 v23, 0x0

    .local v23, "displayNdx":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_8

    .line 4559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 4560
    .local v22, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    const-string v4, "Display #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4561
    const-string v4, " (activities from top to bottom):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4562
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    .line 4563
    .local v30, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v29, v4, -0x1

    .local v29, "stackNdx":I
    :goto_1
    if-ltz v29, :cond_7

    .line 4564
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 4565
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v28, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4566
    .local v28, "stackHeader":Ljava/lang/StringBuilder;
    const-string v4, "  Stack #"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4567
    iget v4, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4568
    const-string v4, ":"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4569
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 4571
    iget-object v12, v3, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v13, "    "

    const-string v14, "Run"

    const/4 v15, 0x0

    if-nez p3, :cond_2

    const/16 v16, 0x1

    :goto_2
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "    Running activities (most recent first):"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 4575
    move/from16 v9, v26

    .line 4576
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const-string v5, "    mPausingActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v25

    .line 4578
    .local v25, "pr":Z
    if-eqz v25, :cond_0

    .line 4579
    const/16 v26, 0x1

    .line 4580
    const/4 v9, 0x0

    .line 4585
    :cond_0
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/am/ActivityRecord;

    .line 4586
    .local v27, "r":Lcom/android/server/am/ActivityRecord;
    move/from16 v9, v26

    .line 4587
    const-string v4, "    mPausingActivities: "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2, v9, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v25

    .line 4588
    if-eqz v25, :cond_1

    .line 4589
    const/16 v26, 0x1

    .line 4590
    const/4 v9, 0x0

    goto :goto_3

    .line 4571
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "pr":Z
    .end local v27    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    .line 4596
    .restart local v24    # "i$":Ljava/util/Iterator;
    .restart local v25    # "pr":Z
    :cond_3
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v5, "    mResumedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v25

    .line 4598
    if-eqz v25, :cond_4

    .line 4599
    const/16 v26, 0x1

    .line 4600
    const/4 v9, 0x0

    .line 4602
    :cond_4
    if-eqz p3, :cond_6

    .line 4603
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v5, "    mLastPausedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v25

    .line 4605
    if-eqz v25, :cond_5

    .line 4606
    const/16 v26, 0x1

    .line 4607
    const/4 v9, 0x1

    .line 4609
    :cond_5
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    const-string v5, "    mLastNoHistoryActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 4612
    :cond_6
    move/from16 v9, v26

    .line 4563
    add-int/lit8 v29, v29, -0x1

    goto/16 :goto_1

    .line 4558
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "pr":Z
    .end local v28    # "stackHeader":Ljava/lang/StringBuilder;
    :cond_7
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 4616
    .end local v22    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v29    # "stackNdx":I
    .end local v30    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Fin"

    const/4 v15, 0x0

    if-nez p3, :cond_9

    const/16 v16, 0x1

    :goto_4
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting to finish:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 4618
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Stop"

    const/4 v15, 0x0

    if-nez p3, :cond_a

    const/16 v16, 0x1

    :goto_5
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting to stop:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 4620
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Wait"

    const/4 v15, 0x0

    if-nez p3, :cond_b

    const/16 v16, 0x1

    :goto_6
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting for another to become visible:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 4623
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Sleep"

    const/4 v15, 0x0

    if-nez p3, :cond_c

    const/16 v16, 0x1

    :goto_7
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting to sleep:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 4625
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Sleep"

    const/4 v15, 0x0

    if-nez p3, :cond_d

    const/16 v16, 0x1

    :goto_8
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting to sleep:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 4628
    return v26

    .line 4616
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 4618
    :cond_a
    const/16 v16, 0x0

    goto :goto_5

    .line 4620
    :cond_b
    const/16 v16, 0x0

    goto :goto_6

    .line 4623
    :cond_c
    const/16 v16, 0x0

    goto :goto_7

    .line 4625
    :cond_d
    const/16 v16, 0x0

    goto :goto_8
.end method

.method endLockTaskModeIfTaskEnding(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 4884
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-ne v1, p1, :cond_0

    .line 4885
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4886
    .local v0, "lockTaskMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4887
    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4888
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    .line 4889
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4891
    .end local v0    # "lockTaskMsg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 19
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 4258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    .local v5, "displayNdx":I
    :goto_0
    if-ltz v5, :cond_9

    .line 4259
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v13

    .line 4261
    .local v13, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->updateLastShownWhenLocked(I)V

    .line 4263
    const/4 v9, 0x0

    .line 4264
    .local v9, "obscuredZone":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4266
    .local v3, "N":I
    add-int/lit8 v6, v3, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_5

    .line 4267
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/TaskRecord;

    .line 4268
    .local v15, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v10, v15, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 4269
    .local v10, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v17

    if-eqz v17, :cond_1

    iget-boolean v0, v15, Lcom/android/server/am/TaskRecord;->bHidden:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    invoke-virtual {v15}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 4266
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 4271
    :cond_1
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 4272
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    .line 4276
    .local v14, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->isFullscreenVisible()Z

    move-result v8

    .line 4277
    .local v8, "isFullscreen":Z
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/server/am/TaskRecord;->getVisibleObscuredZone(Z)I

    move-result v12

    .line 4278
    .local v12, "taskObscuredZone":I
    const/16 v17, 0xf

    move/from16 v0, v17

    if-eq v9, v0, :cond_4

    if-eqz v8, :cond_2

    and-int v17, v9, v12

    move/from16 v0, v17

    if-eq v0, v12, :cond_4

    :cond_2
    const/16 v16, 0x1

    .line 4282
    .local v16, "visible":Z
    :goto_3
    const/16 v17, 0xf

    move/from16 v0, v17

    if-eq v9, v0, :cond_3

    .line 4283
    const/16 v16, 0x1

    .line 4285
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v10, v0, v1, v11, v2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Z)V

    .line 4286
    or-int/2addr v9, v12

    goto :goto_2

    .line 4278
    .end local v16    # "visible":Z
    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    .line 4289
    .end local v8    # "isFullscreen":Z
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "taskObscuredZone":I
    .end local v14    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v15    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStack;

    .line 4290
    .restart local v10    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 4291
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 4292
    .local v4, "ar":Lcom/android/server/am/ActivityRecord;
    if-nez v4, :cond_7

    const/4 v11, 0x0

    .line 4293
    .restart local v11    # "task":Lcom/android/server/am/TaskRecord;
    :goto_5
    if-eqz v11, :cond_6

    .line 4294
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v10, v0, v1, v11, v2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Z)V

    goto :goto_4

    .line 4292
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    :cond_7
    iget-object v11, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    goto :goto_5

    .line 4258
    .end local v4    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 4311
    .end local v3    # "N":I
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "obscuredZone":I
    .end local v13    # "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_9
    return-void
.end method

.method exchangeTaskToStack(IIZ)V
    .locals 15
    .param p1, "task1Id"    # I
    .param p2, "task2Id"    # I
    .param p3, "toTop"    # Z

    .prologue
    .line 3748
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 3749
    .local v8, "task1":Lcom/android/server/am/TaskRecord;
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v9

    .line 3750
    .local v9, "task2":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_0

    if-nez v9, :cond_1

    .line 3813
    :cond_0
    return-void

    .line 3754
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3755
    .local v2, "ar1":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 3756
    .local v3, "ar2":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3757
    .local v6, "stack1":Lcom/android/server/am/ActivityStack;
    iget-object v7, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3758
    .local v7, "stack2":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    .line 3762
    iget-object v12, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v10

    .line 3763
    .local v10, "zone1":I
    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v11

    .line 3766
    .local v11, "zone2":I
    const/4 v12, 0x3

    if-ne v10, v12, :cond_2

    const/16 v12, 0xc

    if-eq v11, v12, :cond_3

    :cond_2
    const/16 v12, 0xc

    if-ne v10, v12, :cond_4

    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    .line 3768
    :cond_3
    iget-object v12, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v12, v13, v14}, Lcom/android/server/wm/WindowManagerService;->prepareMutiWindowTransition(Landroid/os/IBinder;I)V

    .line 3772
    :cond_4
    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v7, v9, v12, v13}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3773
    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v6, v8, v12, v13}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3776
    const/4 v12, 0x1

    move/from16 v0, p3

    invoke-virtual {v7, v8, v0, v12}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3777
    const/4 v12, 0x1

    move/from16 v0, p3

    invoke-virtual {v6, v9, v0, v12}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3779
    iget-object v12, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    const/4 v14, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v12, v0, v13, v1, v14}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZZ)V

    .line 3780
    iget-object v12, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    const/4 v14, 0x1

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v12, v0, v13, v1, v14}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZZ)V

    .line 3783
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 3784
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 3785
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6, v8, v12}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 3786
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7, v9, v12}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 3787
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v6, v12, v13, v14}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3788
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v7, v12, v13, v14}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3790
    if-eqz p3, :cond_6

    .line 3791
    iget-object v12, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3792
    iget-object v12, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v13, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 3793
    iput-object v3, v6, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3794
    iput-object v2, v7, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3799
    :goto_0
    iget-object v12, v6, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .local v4, "index":I
    :goto_1
    if-ltz v4, :cond_7

    .line 3800
    iget-object v12, v6, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3801
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v12, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v0, p1

    if-ne v0, v12, :cond_5

    .line 3802
    iget-object v12, v6, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3803
    iget-object v12, v7, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3799
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 3796
    .end local v4    # "index":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto :goto_0

    .line 3806
    .restart local v4    # "index":I
    :cond_7
    iget-object v12, v7, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    :goto_2
    if-ltz v4, :cond_0

    .line 3807
    iget-object v12, v7, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3808
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v12, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v0, p2

    if-ne v0, v12, :cond_8

    .line 3809
    iget-object v12, v7, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3810
    iget-object v12, v6, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3806
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 3876
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 3877
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3878
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 3879
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3880
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 3885
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return-object v0

    .line 3878
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "stackNdx":I
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3876
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3885
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3890
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 3891
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3892
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 3893
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/ActivityStack;->findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3894
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 3899
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return-object v0

    .line 3892
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "stackNdx":I
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3890
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3899
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x1

    .line 3820
    const/4 v2, 0x0

    .line 3822
    .local v2, "multiInstanceAr":Lcom/android/server/am/ActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_6

    .line 3823
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3824
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_5

    .line 3825
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 3826
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3824
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 3830
    :cond_1
    iget-object v6, v3, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isEligibleForNewTasks()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3835
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3836
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 3838
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3840
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getSpecificTaskId()I

    move-result v6

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v6, v8, :cond_3

    .line 3872
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    :goto_3
    return-object v0

    .line 3843
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "stackNdx":I
    .restart local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v8, 0x8000000

    and-int/2addr v6, v8

    if-eqz v6, :cond_4

    .line 3844
    move-object v2, v0

    goto :goto_2

    .line 3845
    :cond_4
    invoke-virtual {v3, v7, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-ne v0, v6, :cond_2

    .line 3846
    move-object v2, v0

    goto :goto_2

    .line 3822
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3858
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_6
    if-eqz v2, :cond_7

    move-object v0, v2

    .line 3859
    goto :goto_3

    .line 3863
    :cond_7
    iget-boolean v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsPerfBoostEnabled:Z

    if-ne v6, v12, :cond_8

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf:Lorg/codeaurora/Performance;

    if-nez v6, :cond_8

    .line 3864
    new-instance v6, Lorg/codeaurora/Performance;

    invoke-direct {v6}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf:Lorg/codeaurora/Performance;

    .line 3866
    :cond_8
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf:Lorg/codeaurora/Performance;

    if-eqz v6, :cond_9

    .line 3867
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerf:Lorg/codeaurora/Performance;

    iget v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostTimeOut:I

    const/4 v9, 0x4

    new-array v9, v9, [I

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostPcDisblBoost:I

    aput v11, v9, v10

    iget v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostSchedBoost:I

    aput v10, v9, v12

    const/4 v10, 0x2

    iget v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostCpuBoost:I

    aput v11, v9, v10

    const/4 v10, 0x3

    iget v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->lBoostKsmBoost:I

    aput v11, v9, v10

    invoke-virtual {v6, v8, v9}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    :cond_9
    move-object v0, v7

    .line 3872
    goto :goto_3
.end method

.method findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 3422
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_0

    .line 3423
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 3425
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 3428
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 3432
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3, p2}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;I)V

    .line 3442
    return-void
.end method

.method finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3400
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3401
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3402
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3403
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 3404
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3405
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3403
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3400
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3408
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 6
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .prologue
    .line 3411
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3412
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3413
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3414
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 3415
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3416
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 3414
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3411
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3419
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method forceStopPackageLocked(Ljava/lang/String;ZZI)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doit"    # Z
    .param p3, "evenPersistent"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 3297
    const/4 v0, 0x0

    .line 3298
    .local v0, "didSomething":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 3299
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3300
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3301
    .local v2, "numStacks":I
    const/4 v4, 0x0

    .local v4, "stackNdx":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 3302
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 3303
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStack;->forceStopPackageLocked(Ljava/lang/String;ZZI)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3304
    const/4 v0, 0x1

    .line 3301
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3298
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3308
    .end local v2    # "numStacks":I
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return v0
.end method

.method getAllStackInfosLocked()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4837
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4838
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 4839
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4840
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "ndx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 4841
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4840
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4838
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4844
    .end local v2    # "ndx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-object v1
.end method

.method public getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .locals 1

    .prologue
    .line 6241
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4536
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getFocusedStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method public getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6415
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 6416
    .local v0, "d":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v0, :cond_0

    .line 6417
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->sEmptyGlobalTaskHistory:Ljava/util/ArrayList;

    .line 6419
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method getHomeActivity()Lcom/android/server/am/ActivityRecord;
    .locals 7

    .prologue
    .line 3516
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 3517
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    .line 3518
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3519
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3520
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3521
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 3522
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3523
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3529
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_2
    return-object v2

    .line 3521
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3517
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3529
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method getHomeActivityToken()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 3508
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3509
    .local v0, "homeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 3510
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 3512
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getHomeStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .prologue
    .line 6423
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getHomeTask()Lcom/android/server/am/TaskRecord;
    .locals 4

    .prologue
    .line 3534
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 3535
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3536
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 3537
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3541
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :goto_1
    return-object v0

    .line 3535
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3541
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getLastStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getNextStackId()I
    .locals 1

    .prologue
    .line 3626
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    if-gtz v0, :cond_1

    .line 3627
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    .line 3629
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3633
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    return v0
.end method

.method getNextTaskId()I
    .locals 1

    .prologue
    .line 786
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 787
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    if-gtz v0, :cond_1

    .line 788
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 790
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 791
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    return v0
.end method

.method getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .prologue
    .line 5949
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_0

    .line 5950
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 5952
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0
.end method

.method getStack(I)Lcom/android/server/am/ActivityStack;
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 3445
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 3446
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_0

    .line 3447
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    .line 3449
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getStack(II)Lcom/android/server/am/ActivityStack;
    .locals 5
    .param p1, "zone"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 3458
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3459
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_2

    .line 3460
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3461
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3462
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3460
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3465
    :cond_1
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 3477
    .end local v1    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getStack(III)Lcom/android/server/am/ActivityStack;
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "stackType"    # I
    .param p3, "extraType"    # I

    .prologue
    .line 3483
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3484
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_2

    .line 3485
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3486
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3487
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3485
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3490
    :cond_1
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackType:I

    if-ne v3, p2, :cond_0

    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackExtraType:I

    if-ne v3, p3, :cond_0

    .line 3495
    .end local v1    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;
    .locals 1
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "displayId"    # I

    .prologue
    .line 3454
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method public getStackCount(I)I
    .locals 6
    .param p1, "stackType"    # I

    .prologue
    .line 6349
    const/4 v0, 0x0

    .line 6350
    .local v0, "count":I
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 6351
    .local v2, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 6352
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6353
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 6354
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    iget v5, v5, Lcom/android/server/am/ActivityStack;->mStackType:I

    if-ne v5, p1, :cond_0

    .line 6355
    add-int/lit8 v0, v0, 0x1

    .line 6353
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 6351
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6359
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return v0
.end method

.method getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .locals 10
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 4806
    new-instance v1, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .line 4807
    .local v1, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v9, v1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(ILandroid/graphics/Rect;)V

    .line 4808
    const/4 v7, 0x0

    iput v7, v1, Landroid/app/ActivityManager$StackInfo;->displayId:I

    .line 4809
    iget v7, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iput v7, v1, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 4811
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 4812
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4813
    .local v2, "numTasks":I
    new-array v4, v2, [I

    .line 4814
    .local v4, "taskIds":[I
    new-array v5, v2, [Ljava/lang/String;

    .line 4815
    .local v5, "taskNames":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 4816
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 4817
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v7, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    aput v7, v4, v0

    .line 4818
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_0

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    aput-object v7, v5, v0

    .line 4815
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4818
    :cond_0
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_1

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string/jumbo v7, "unknown"

    goto :goto_1

    .line 4823
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    iput-object v4, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    .line 4824
    iput-object v5, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    .line 4825
    return-object v1
.end method

.method getStackInfoLocked(I)Landroid/app/ActivityManager$StackInfo;
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 4829
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4830
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    .line 4831
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 4833
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getStackOrder(ZLcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "allStack"    # Z
    .param p2, "display"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 6245
    if-nez p2, :cond_1

    move-object v4, v8

    .line 6287
    :cond_0
    :goto_0
    return-object v4

    .line 6248
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6249
    .local v4, "resultStackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v7, p2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    .line 6251
    .local v7, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v1, -0x1

    .line 6255
    .local v1, "currStackId":I
    const/4 v3, 0x0

    .line 6257
    .local v3, "mask":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_0

    .line 6258
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 6259
    .local v6, "taskInfo":Lcom/android/server/am/TaskRecord;
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v9, :cond_3

    .line 6257
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 6261
    :cond_3
    iget-object v5, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 6262
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v9, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eq v1, v9, :cond_2

    if-eqz v5, :cond_2

    .line 6265
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v1, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 6267
    if-nez p1, :cond_4

    .line 6268
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v9

    if-nez v9, :cond_4

    .line 6269
    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 6270
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    .line 6271
    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v9

    or-int/2addr v3, v9

    .line 6277
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v9, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 6278
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v9, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6280
    :cond_5
    if-nez p1, :cond_2

    .line 6281
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0xf

    if-eq v3, v9, :cond_0

    if-nez v3, :cond_2

    goto :goto_0
.end method

.method getStacks()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3501
    .local v0, "allStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "displayNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3502
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3501
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3504
    :cond_0
    return-object v0
.end method

.method getTasksLocked(ILjava/util/List;IZI)V
    .locals 20
    .param p1, "maxNum"    # I
    .param p3, "callingUid"    # I
    .param p4, "allowed"    # Z
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 1083
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1085
    .local v11, "runningTaskLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1086
    .local v5, "numDisplays":I
    const/4 v4, 0x0

    .local v4, "displayNdx":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 1088
    .local v16, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v14, v18, -0x1

    .local v14, "stackNdx":I
    :goto_1
    if-ltz v14, :cond_0

    .line 1089
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityStack;

    .line 1090
    .local v13, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    .local v15, "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v13, v15, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Ljava/util/List;IZI)V

    .line 1088
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 1086
    .end local v13    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1098
    .end local v14    # "stackNdx":I
    .end local v16    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    :goto_2
    if-lez p1, :cond_7

    .line 1099
    const-wide/high16 v8, -0x8000000000000000L

    .line 1100
    .local v8, "mostRecentActiveTime":J
    const/4 v12, 0x0

    .line 1102
    .local v12, "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v17, 0x0

    .line 1104
    .local v17, "taskIsInitState":Z
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1105
    .local v10, "numTaskLists":I
    const/4 v14, 0x0

    .restart local v14    # "stackNdx":I
    :goto_3
    if-ge v14, v10, :cond_2

    .line 1106
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 1107
    .restart local v15    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_5

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v18

    if-nez v18, :cond_3

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1113
    move-object v12, v15

    .line 1133
    .end local v15    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2
    :goto_4
    if-eqz v12, :cond_6

    .line 1134
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_2

    .line 1117
    .restart local v15    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_3
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v18

    iget-wide v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 1121
    .local v6, "lastActiveTime":J
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_4

    .line 1122
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1123
    const/16 v17, 0x1

    .line 1124
    goto :goto_4

    .line 1127
    :cond_4
    cmp-long v18, v6, v8

    if-lez v18, :cond_5

    .line 1128
    move-wide v8, v6

    .line 1129
    move-object v12, v15

    .line 1105
    .end local v6    # "lastActiveTime":J
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 1139
    .end local v15    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_6
    if-nez v17, :cond_1

    .line 1144
    .end local v8    # "mostRecentActiveTime":J
    .end local v10    # "numTaskLists":I
    .end local v12    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v14    # "stackNdx":I
    .end local v17    # "taskIsInitState":Z
    :cond_7
    return-void
.end method

.method goingToSleepLocked()V
    .locals 2

    .prologue
    .line 3905
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleSleepTimeout()V

    .line 3906
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3907
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3908
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3912
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3913
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 3916
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 3917
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 4128
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4129
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4130
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4131
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 4132
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 4133
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4131
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4128
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4136
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3270
    const/4 v1, 0x0

    .line 3271
    .local v1, "hasVisibleActivities":Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3272
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3273
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_0

    .line 3274
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 3273
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3271
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3277
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return v1
.end method

.method public handleDisplayAddedLocked(I)V
    .locals 6
    .param p1, "displayId"    # I

    .prologue
    .line 4765
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4766
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 4767
    .local v1, "newDisplay":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 4768
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 4769
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_2

    .line 4770
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gone before initialization complete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4771
    monitor-exit v3

    .line 4779
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :cond_0
    :goto_1
    return-void

    .line 4766
    .end local v1    # "newDisplay":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4773
    .restart local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .restart local v1    # "newDisplay":Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4775
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4776
    if-eqz v1, :cond_0

    .line 4777
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayAdded(I)V

    goto :goto_1

    .line 4775
    .end local v1    # "newDisplay":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public handleDisplayChangedLocked(I)V
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 4796
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 4797
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 4798
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_0

    .line 4801
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4802
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayChanged(I)V

    .line 4803
    return-void

    .line 4801
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public handleDisplayRemovedLocked(I)V
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    .line 4782
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 4783
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 4784
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_1

    .line 4785
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4786
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 4787
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->detachLocked()V

    .line 4786
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4789
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4791
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4792
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    .line 4793
    return-void

    .line 4791
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 4192
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 4193
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4194
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setLastThumbnail(Landroid/graphics/Bitmap;)Z

    .line 4195
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 4196
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 4197
    return-void
.end method

.method initPowerManagement()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 428
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 429
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 430
    const-string v1, "ActivityManager-Launch"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 432
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 433
    return-void
.end method

.method isFrontStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 13
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 568
    if-nez p1, :cond_0

    .line 569
    const/4 v2, 0x0

    .line 655
    :goto_0
    return v2

    .line 573
    :cond_0
    iget-object v9, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v9

    if-nez v9, :cond_1

    .line 574
    const/4 v2, 0x0

    goto :goto_0

    .line 575
    :cond_1
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1, v9, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 576
    .local v8, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v8, :cond_3

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_3

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v10, 0x800000

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v9

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v10}, Lcom/android/server/am/MultiWindowPolicy;->getTabFrontStack()I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 581
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 584
    :cond_3
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 585
    :try_start_0
    iget-object v9, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v9, :cond_4

    .line 586
    const/4 v2, 0x0

    monitor-exit v10

    goto :goto_0

    .line 656
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 591
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isAllHidden()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 592
    const/4 v2, 0x0

    monitor-exit v10

    goto :goto_0

    .line 597
    :cond_5
    iget v9, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 598
    .local v7, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v4, 0x0

    .line 599
    .local v4, "obscuredZone":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 600
    .local v0, "N":I
    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 601
    const/4 v2, 0x1

    monitor-exit v10

    goto :goto_0

    .line 604
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v9

    if-nez v9, :cond_9

    .line 605
    const/4 v2, 0x1

    .line 606
    .local v2, "homeIsFront":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_7

    .line 607
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 608
    const/4 v2, 0x0

    .line 612
    :cond_7
    if-eqz v2, :cond_9

    .line 613
    monitor-exit v10

    goto/16 :goto_0

    .line 606
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 626
    .end local v2    # "homeIsFront":Z
    .end local v3    # "i":I
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {p0, v7, p1}, Lcom/android/server/am/ActivityStackSupervisor;->checkFullScreenOnlyExist(Ljava/util/ArrayList;Lcom/android/server/am/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 628
    const/4 v2, 0x0

    monitor-exit v10

    goto/16 :goto_0

    .line 630
    :cond_a
    add-int/lit8 v3, v0, -0x1

    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_13

    .line 631
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 632
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v1, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 633
    .local v1, "currStack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_c

    .line 634
    const-string v9, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isFrontStack: stack is not exist. id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 637
    :cond_c
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/android/server/am/TaskRecord;->getVisibleObscuredZone(Z)I

    move-result v6

    .line 638
    .local v6, "taskObscuredZone":I
    if-ne v1, p1, :cond_12

    .line 640
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v9

    if-eqz v9, :cond_d

    const/16 v9, 0xf

    if-ne v4, v9, :cond_d

    .line 641
    const/4 v2, 0x0

    monitor-exit v10

    goto/16 :goto_0

    .line 642
    :cond_d
    const/16 v9, 0xf

    if-ne v6, v9, :cond_f

    .line 643
    and-int/lit8 v9, v4, 0xf

    if-nez v9, :cond_e

    const/4 v2, 0x1

    :goto_3
    monitor-exit v10

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    goto :goto_3

    .line 644
    :cond_f
    if-nez v6, :cond_10

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 648
    :cond_10
    const/16 v9, 0xf

    if-eq v4, v9, :cond_11

    const/4 v2, 0x1

    :goto_4
    monitor-exit v10

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x0

    goto :goto_4

    .line 651
    :cond_12
    or-int/2addr v4, v6

    .line 652
    const/16 v9, 0xf

    if-ne v4, v9, :cond_b

    .line 653
    const/4 v2, 0x0

    monitor-exit v10

    goto/16 :goto_0

    .line 655
    .end local v1    # "currStack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v6    # "taskObscuredZone":I
    :cond_13
    const/4 v2, 0x0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 765
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 766
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 767
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 768
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 769
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 770
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 775
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2
    return-object v2

    .line 768
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 766
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 775
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method isInLockTaskMode()Z
    .locals 1

    .prologue
    .line 4894
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isIsolated(I)Z
    .locals 7
    .param p1, "displayId"    # I

    .prologue
    const/16 v6, 0x1000

    const/4 v4, 0x1

    .line 505
    const/4 v2, 0x0

    .line 506
    .local v2, "bPopup":Z
    const/4 v1, 0x0

    .line 507
    .local v1, "bHasVisible":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 508
    .local v0, "as":Lcom/android/server/am/ActivityStack;
    iget v5, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-ne v5, p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 509
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 529
    .end local v0    # "as":Lcom/android/server/am/ActivityStack;
    :cond_1
    :goto_1
    return v4

    .line 514
    .restart local v0    # "as":Lcom/android/server/am/ActivityStack;
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v5, :cond_0

    .line 516
    const/4 v2, 0x1

    goto :goto_0

    .line 518
    :cond_3
    iget v5, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-ne v5, p1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 523
    const/4 v1, 0x1

    goto :goto_0

    .line 526
    .end local v0    # "as":Lcom/android/server/am/ActivityStack;
    :cond_4
    if-eqz v1, :cond_5

    if-nez v2, :cond_1

    .line 529
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 4880
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method keyguardWaitingForActivityDrawn()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->keyguardWaitingForActivityDrawn()V

    .line 747
    return-void
.end method

.method moveHomeStack(Z)V
    .locals 1
    .param p1, "toFront"    # Z

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 675
    return-void
.end method

.method moveHomeStackTaskToTop(I)V
    .locals 1
    .param p1, "homeStackTaskType"    # I

    .prologue
    .line 713
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 719
    :goto_0
    return-void

    .line 717
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 718
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop(I)V

    goto :goto_0
.end method

.method moveStack(Lcom/android/server/am/ActivityStack;Z)V
    .locals 5
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toFront"    # Z

    .prologue
    .line 699
    iget-object v1, p1, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 700
    .local v1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 701
    .local v2, "topNdx":I
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 702
    if-eqz p2, :cond_1

    move v3, v2

    :goto_0
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 703
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 704
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, v3, :cond_0

    .line 705
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 706
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movestack to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 709
    :cond_0
    return-void

    .line 702
    .end local v0    # "focusedStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method moveTaskToStack(IIZ)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    .prologue
    .line 3657
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStack(IIZZ)V

    .line 3658
    return-void
.end method

.method moveTaskToStack(IIZZ)V
    .locals 10
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z
    .param p4, "needsResumeTop"    # Z

    .prologue
    .line 3662
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .line 3663
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    if-nez v4, :cond_1

    .line 3743
    :cond_0
    :goto_0
    return-void

    .line 3666
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3667
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_2

    .line 3668
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "moveTaskToStack: no stack for id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3686
    :cond_2
    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    .line 3687
    .local v5, "wasInFloatingStack":Z
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v6

    .line 3689
    .local v6, "willBeInFloatingStack":Z
    iget-object v1, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3694
    .local v1, "prevStack":Lcom/android/server/am/ActivityStack;
    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3700
    const/4 v7, 0x1

    invoke-virtual {v3, v4, p3, v7}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3716
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x1

    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZZ)V

    .line 3717
    invoke-virtual {v1, v4, v3, p3}, Lcom/android/server/am/ActivityStack;->postProcessAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V

    .line 3718
    const/4 v0, 0x0

    .line 3719
    .local v0, "isNeedEnsureVisibleCall":Z
    if-eqz p3, :cond_5

    .line 3720
    if-nez v5, :cond_3

    if-eqz v6, :cond_4

    .line 3721
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Z)V

    .line 3722
    const/4 v0, 0x1

    .line 3724
    :cond_4
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, p1}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 3726
    :cond_5
    if-eqz p4, :cond_6

    .line 3727
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 3728
    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    iget-object v8, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3729
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    iget-boolean v7, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_6

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 3731
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 3739
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    if-eqz p4, :cond_0

    .line 3741
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto/16 :goto_0
.end method

.method public multiWindowSettingChanged(Z)V
    .locals 13
    .param p1, "value"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 6203
    if-nez p1, :cond_5

    .line 6204
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_4

    .line 6205
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 6206
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    new-instance v7, Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6207
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 6208
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 6209
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    .line 6212
    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->isMultiWindowStack()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 6215
    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v11

    if-nez v11, :cond_0

    .line 6218
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-direct {p0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeIndex(Ljava/util/ArrayList;)I

    move-result v12

    if-le v11, v12, :cond_1

    move v8, v9

    .line 6220
    .local v8, "toTop":Z
    :goto_2
    iget v11, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 6221
    .local v4, "normalStack":Lcom/android/server/am/ActivityStack;
    const/4 v5, -0x1

    .line 6222
    .local v5, "normalStackId":I
    if-nez v4, :cond_2

    .line 6223
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v11

    iget v12, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v11, v12, v10}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(III)I

    move-result v5

    .line 6227
    :goto_3
    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 6228
    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v12, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11, v6, v12}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 6229
    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v11, v1, v10, v9}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 6230
    iget v11, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v11, v5, v8, v10}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStack(IIZZ)V

    goto :goto_1

    .end local v4    # "normalStack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "normalStackId":I
    .end local v8    # "toTop":Z
    :cond_1
    move v8, v10

    .line 6218
    goto :goto_2

    .line 6225
    .restart local v4    # "normalStack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "normalStackId":I
    .restart local v8    # "toTop":Z
    :cond_2
    iget v5, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_3

    .line 6204
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "normalStack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "normalStackId":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v8    # "toTop":Z
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6233
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 6235
    .end local v2    # "displayNdx":I
    :cond_5
    return-void
.end method

.method notifyActivityDrawnForKeyguard()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->notifyActivityDrawnForKeyguard()V

    .line 493
    return-void
.end method

.method final notifyGlobalMultiWindowStatusChangedLocked()V
    .locals 12

    .prologue
    .line 5960
    const/4 v1, 0x0

    .line 5961
    .local v1, "hasMultiWindowStack":Z
    const/4 v2, 0x0

    .line 5962
    .local v2, "hasRunningCascadeApp":Z
    const/4 v3, 0x0

    .line 5964
    .local v3, "hasRunningSplitApp":Z
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 5965
    .local v6, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v6, :cond_3

    .line 5966
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v8, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 5967
    .local v8, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStack;

    .line 5968
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v9, 0x0

    .line 5969
    .local v9, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 5970
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    if-eqz v10, :cond_0

    .line 5971
    const/4 v1, 0x1

    .line 5972
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 5973
    const/4 v2, 0x1

    goto :goto_1

    .line 5974
    :cond_1
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 5975
    const/4 v3, 0x1

    goto :goto_1

    .line 5965
    .end local v7    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5982
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-boolean v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasMultiWindowStack:Z

    if-ne v1, v10, :cond_4

    iget-boolean v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningCascadeApp:Z

    if-ne v2, v10, :cond_4

    iget-boolean v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningSplitApp:Z

    if-eq v3, v10, :cond_5

    .line 5984
    :cond_4
    const-string/jumbo v11, "sys.multiwindow.running"

    if-eqz v1, :cond_6

    const-string v10, "1"

    :goto_2
    invoke-static {v11, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5986
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5987
    .local v5, "multiWindowModeIntent":Landroid/content/Intent;
    const-string v10, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {v5, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5988
    const-string v10, "com.sec.android.extra.MULTIWINDOW_FREESTYLE"

    invoke-virtual {v5, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5989
    const-string v10, "com.sec.android.extra.MULTIWINDOW_SPLIT"

    invoke-virtual {v5, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5990
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 5992
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasMultiWindowStack:Z

    .line 5993
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningCascadeApp:Z

    .line 5994
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasRunningSplitApp:Z

    .line 5996
    .end local v5    # "multiWindowModeIntent":Landroid/content/Intent;
    :cond_5
    return-void

    .line 5984
    :cond_6
    const-string v10, "0"

    goto :goto_2
.end method

.method public notifyMinimizeMultiWindow(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 6187
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 6188
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 6189
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStack;->onNotifyMinimizeMultiWindow(Lcom/android/server/am/ActivityRecord;)V

    .line 6191
    :cond_0
    return-void
.end method

.method public notifyResizeStack()V
    .locals 15

    .prologue
    .line 5999
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 6000
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6001
    .local v7, "taskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 6002
    .local v4, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 6003
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6004
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 6005
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 6006
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 6007
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 6008
    .local v8, "taskRecord":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v12, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v12, :cond_1

    .line 6009
    iget v10, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6021
    .end local v0    # "displayNdx":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "numDisplays":I
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v7    # "taskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "taskRecord":Lcom/android/server/am/TaskRecord;
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 6002
    .restart local v0    # "displayNdx":I
    .restart local v4    # "numDisplays":I
    .restart local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v7    # "taskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6015
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    :try_start_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_5

    .line 6016
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 6017
    .restart local v8    # "taskRecord":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_4

    .line 6018
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v10, v12, v13, v14}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 6015
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6021
    .end local v8    # "taskRecord":Lcom/android/server/am/TaskRecord;
    :cond_5
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6022
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 4747
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display added displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4748
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4749
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 4759
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display changed displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4760
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4761
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 4753
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display removed displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4754
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4755
    return-void
.end method

.method pauseBackStacks(ZZZ)Z
    .locals 6
    .param p1, "userLeaving"    # Z
    .param p2, "resuming"    # Z
    .param p3, "dontWait"    # Z

    .prologue
    .line 927
    const/4 v1, 0x0

    .line 928
    .local v1, "someActivityPaused":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 929
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 930
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 931
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 932
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_0

    .line 935
    const/4 v5, 0x0

    invoke-virtual {v2, p1, v5, p2, p3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    move-result v5

    or-int/2addr v1, v5

    .line 930
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 928
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 940
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return v1
.end method

.method pauseChildStacks(Lcom/android/server/am/ActivityRecord;ZZZZ)V
    .locals 5
    .param p1, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "userLeaving"    # Z
    .param p3, "uiSleeping"    # Z
    .param p4, "resuming"    # Z
    .param p5, "dontWait"    # Z

    .prologue
    .line 985
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 986
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 987
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 988
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 989
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_0

    .line 991
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 987
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 985
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 995
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    return-void
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .locals 8
    .param p1, "remove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 4434
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4435
    .local v0, "N":I
    if-gtz v0, :cond_1

    const/4 v4, 0x0

    .line 4470
    :cond_0
    return-object v4

    .line 4437
    :cond_1
    const/4 v4, 0x0

    .line 4439
    .local v4, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesVisible()Z

    move-result v2

    .line 4440
    .local v2, "nowVisible":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4441
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4445
    .local v3, "s":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 4446
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4447
    iput-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 4448
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_2

    .line 4455
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 4458
    :cond_2
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    if-eqz p1, :cond_5

    .line 4460
    if-nez v4, :cond_4

    .line 4461
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4463
    .restart local v4    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_4
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4464
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4465
    add-int/lit8 v0, v0, -0x1

    .line 4466
    add-int/lit8 v1, v1, -0x1

    .line 4440
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 36
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "andResume"    # Z
    .param p4, "checkConfig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1476
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1490
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 1498
    if-eqz p4, :cond_0

    .line 1499
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_0
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v26

    .line 1502
    .local v26, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 1505
    .end local v26    # "config":Landroid/content/res/Configuration;
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1506
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 1507
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 1508
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 1513
    const-string v4, "com.sec.android.app.camera/.Camera"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.sec.android.app.ocr/.OCR"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.cyworld.camera/com.cyworld.cymera.CameraMain"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1520
    :cond_1
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "realStartActivityLocked aggressive kill try "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const-string/jumbo v4, "persist.sys.kill_support"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1525
    .local v29, "mSupportAggrKill":I
    if-lez v29, :cond_2

    .line 1526
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string v6, "camera-start"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->killProcessesForMemoryLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1530
    .end local v29    # "mSupportAggrKill":I
    :cond_2
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v28

    .line 1531
    .local v28, "idx":I
    if-gez v28, :cond_3

    .line 1532
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1534
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 1537
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v35, v0

    .line 1539
    .local v35, "stack":Lcom/android/server/am/ActivityStack;
    :try_start_0
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v4, :cond_5

    .line 1540
    new-instance v4, Landroid/os/RemoteException;

    invoke-direct {v4}, Landroid/os/RemoteException;-><init>()V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1631
    :catch_0
    move-exception v27

    .line 1632
    .local v27, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v4, :cond_13

    .line 1635
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second failure launching "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", giving up"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1639
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "2nd-crash"

    const/16 v25, 0x0

    move-object/from16 v20, v35

    invoke-virtual/range {v20 .. v25}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1641
    const/4 v4, 0x0

    .line 1683
    .end local v27    # "e":Landroid/os/RemoteException;
    :goto_1
    return v4

    .line 1499
    .end local v28    # "idx":I
    .end local v35    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1542
    .restart local v28    # "idx":I
    .restart local v35    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_5
    const/4 v15, 0x0

    .line 1543
    .local v15, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/16 v16, 0x0

    .line 1544
    .local v16, "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_6

    .line 1545
    :try_start_1
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1546
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 1552
    :cond_6
    if-eqz p3, :cond_7

    .line 1553
    const/16 v4, 0x7536

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1557
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1559
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v5, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 1561
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 1562
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1563
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 1564
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 1566
    const/16 v32, 0x0

    .line 1567
    .local v32, "profileFile":Ljava/lang/String;
    const/16 v31, 0x0

    .line 1568
    .local v31, "profileFd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-ne v4, v0, :cond_a

    .line 1570
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 1571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 1572
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v31, v0

    .line 1575
    :cond_a
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 1576
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1577
    if-eqz v31, :cond_b

    .line 1579
    :try_start_2
    invoke-virtual/range {v31 .. v31}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v31

    .line 1591
    :cond_b
    :goto_2
    if-eqz v32, :cond_11

    :try_start_3
    new-instance v19, Landroid/app/ProfilerInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mSamplingInterval:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZ)V

    .line 1594
    .local v19, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_3
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1596
    new-instance v9, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v9, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1597
    .local v9, "tmpConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->isScaledPid(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDssHelper:Landroid/os/DssHelper;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/DssHelper;->getScalingFactor(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v34

    .line 1599
    .local v34, "scalfac":Ljava/lang/Double;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Double;->floatValue()F

    move-result v33

    .line 1600
    .local v33, "resolutionFactorf":F
    iget v4, v9, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v4, v4

    mul-float v4, v4, v33

    float-to-int v4, v4

    iput v4, v9, Landroid/content/res/Configuration;->densityDpi:I

    .line 1603
    .end local v33    # "resolutionFactorf":F
    .end local v34    # "scalfac":Ljava/lang/Double;
    :cond_c
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    if-nez p3, :cond_12

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    invoke-interface/range {v4 .. v20}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1611
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_e

    .line 1616
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1617
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-eq v4, v0, :cond_d

    .line 1619
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting new heavy weight process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when already running "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 1624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v30

    .line 1626
    .local v30, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1627
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1650
    .end local v30    # "msg":Landroid/os/Message;
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1651
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1652
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " being launched, but already in LRU list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_f
    if-eqz p3, :cond_14

    .line 1659
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1675
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1676
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    .line 1681
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1683
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1580
    .end local v9    # "tmpConfig":Landroid/content/res/Configuration;
    .end local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    :catch_1
    move-exception v27

    .line 1581
    .local v27, "e":Ljava/io/IOException;
    if-eqz v31, :cond_b

    .line 1583
    :try_start_4
    invoke-virtual/range {v31 .. v31}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1586
    :goto_6
    const/16 v31, 0x0

    goto/16 :goto_2

    .line 1591
    .end local v27    # "e":Ljava/io/IOException;
    :cond_11
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1603
    .restart local v9    # "tmpConfig":Landroid/content/res/Configuration;
    .restart local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1646
    .end local v9    # "tmpConfig":Landroid/content/res/Configuration;
    .end local v15    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v16    # "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v31    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v32    # "profileFile":Ljava/lang/String;
    .local v27, "e":Landroid/os/RemoteException;
    :cond_13
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1647
    throw v27

    .line 1667
    .end local v27    # "e":Landroid/os/RemoteException;
    .restart local v9    # "tmpConfig":Landroid/content/res/Configuration;
    .restart local v15    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v16    # "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v31    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .restart local v32    # "profileFile":Ljava/lang/String;
    :cond_14
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1668
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_5

    .line 1584
    .end local v9    # "tmpConfig":Landroid/content/res/Configuration;
    .end local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v27, "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    goto :goto_6
.end method

.method releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 4326
    const/4 v1, 0x0

    .line 4328
    .local v1, "firstTask":Lcom/android/server/am/TaskRecord;
    const/4 v8, 0x0

    .line 4330
    .local v8, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_6

    .line 4331
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4335
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_0

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_0

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_1

    .line 4380
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-void

    .line 4342
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v9, :cond_2

    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v9, :cond_2

    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v9, :cond_2

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_2

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_2

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_2

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_3

    .line 4330
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4348
    :cond_3
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_2

    .line 4351
    if-nez v1, :cond_4

    .line 4352
    iget-object v1, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    goto :goto_1

    .line 4353
    :cond_4
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v1, v9, :cond_2

    .line 4354
    if-nez v8, :cond_5

    .line 4355
    new-instance v8, Landroid/util/ArraySet;

    .end local v8    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 4356
    .restart local v8    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4358
    :cond_5
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4362
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    if-eqz v8, :cond_0

    .line 4368
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 4369
    .local v3, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 4370
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4372
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    const/4 v6, 0x0

    .local v6, "stackNdx":I
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_7

    .line 4373
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 4375
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5, p1, v8, p2}, Lcom/android/server/am/ActivityStack;->releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_0

    .line 4372
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 4369
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "parentActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3556
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    .line 3557
    .local v0, "childStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "containerNdx":I
    :goto_0
    if-ltz v2, :cond_0

    .line 3558
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 3561
    .local v1, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->release()V

    .line 3557
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3563
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_0
    return-void
.end method

.method removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 3112
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "palNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3113
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 3114
    .local v0, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->stack:Lcom/android/server/am/ActivityStack;

    if-ne v2, p1, :cond_0

    .line 3115
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3112
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3118
    .end local v0    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method removeSleepTimeouts()V
    .locals 2

    .prologue
    .line 4736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 4737
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 4738
    return-void
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 4726
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4727
    return-void
.end method

.method removeUserLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 3290
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3291
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .locals 7
    .param p1, "timeout"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "thisTime"    # J
    .param p5, "totalTime"    # J

    .prologue
    .line 1023
    const/4 v0, 0x0

    .line 1024
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1025
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager$WaitResult;

    .line 1026
    .local v2, "w":Landroid/app/IActivityManager$WaitResult;
    iget-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    .line 1027
    const/4 v0, 0x1

    .line 1028
    iput-boolean p1, v2, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 1029
    if-eqz p2, :cond_0

    .line 1030
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 1032
    :cond_0
    iput-wide p3, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 1033
    iput-wide p5, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 1024
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1036
    .end local v2    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_2
    if-eqz v0, :cond_3

    .line 1037
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1039
    :cond_3
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 998
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 999
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    .line 1000
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4090
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 4091
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4092
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 4095
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStarted(Lcom/android/server/am/ActivityRecord;)V

    .line 4101
    :cond_0
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    if-eqz v3, :cond_2

    .line 4102
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_ENABLE:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SPCM_DB_LAUNCHER_ONLY:Z

    if-eqz v3, :cond_1

    .line 4103
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/SmartAdjustManager;->updatePackageResetTime(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4106
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/am/SmartAdjustManager;->updatePackageScore(Ljava/lang/String;)V

    .line 4108
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    iget-object v3, v3, Lcom/android/server/am/SmartAdjustManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4109
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    iget-object v3, v3, Lcom/android/server/am/SmartAdjustManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4110
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    iget-object v3, v3, Lcom/android/server/am/SmartAdjustManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4119
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4120
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 4121
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 4124
    :goto_1
    return v1

    .line 4111
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    iget-object v3, v3, Lcom/android/server/am/SmartAdjustManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 4112
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    iget-object v3, v3, Lcom/android/server/am/SmartAdjustManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4113
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    iget-object v3, v3, Lcom/android/server/am/SmartAdjustManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4115
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    iget-object v3, v3, Lcom/android/server/am/SmartAdjustManager;->mLatestProtectedPackages:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move v1, v2

    .line 4124
    goto :goto_1
.end method

.method requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4139
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 4140
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_0

    move v4, v5

    .line 4187
    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_0
    return v4

    .line 4145
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v0

    .line 4149
    .local v0, "isVisible":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4150
    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_1

    if-eq v3, p1, :cond_1

    if-ne p2, v0, :cond_3

    .line 4152
    :cond_1
    if-eqz p2, :cond_2

    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    move v4, v6

    .line 4153
    goto :goto_0

    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    move-object p1, v4

    .line 4152
    goto :goto_1

    .line 4157
    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v7, :cond_4

    move v4, v5

    .line 4162
    goto :goto_0

    .line 4163
    :cond_4
    if-nez p2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eq v7, p1, :cond_5

    move v4, v5

    .line 4169
    goto :goto_0

    .line 4172
    :cond_5
    if-eqz p2, :cond_6

    move-object v4, p1

    :cond_6
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 4173
    if-nez p2, :cond_7

    .line 4175
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 4176
    .local v1, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_7

    .line 4177
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->convertFromTranslucent(Landroid/os/IBinder;)Z

    .line 4180
    .end local v1    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_8

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_8

    .line 4183
    :try_start_0
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v5, p2}, Landroid/app/IApplicationThread;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_2
    move v4, v6

    .line 4187
    goto :goto_0

    .line 4184
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "userId"    # I

    .prologue
    .line 1150
    const/4 v2, 0x0

    .line 1155
    .local v2, "rInfo":Landroid/content/pm/ResolveInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const v4, 0x10480

    invoke-interface {v3, p1, p2, v4, p5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1160
    if-eqz v2, :cond_4

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v0, :cond_3

    .line 1180
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1184
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.android.internal.app.ForwardIntentToManagedProfile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 1185
    const-string v3, "crossProfileTargetUserId"

    iget v4, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1190
    :cond_0
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_1

    .line 1191
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v4, "system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1192
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1196
    :cond_1
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_2

    .line 1197
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v4, "system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1198
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->setOpenGlTraceApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 1202
    :cond_2
    if-eqz p4, :cond_3

    .line 1203
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v4, "system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1204
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p4}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;)V

    .line 1208
    :cond_3
    return-object v0

    .line 1160
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1171
    :catch_0
    move-exception v1

    .line 1172
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .restart local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_0
.end method

.method resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "homeStackTaskType"    # I
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 722
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_0

    .line 742
    :goto_0
    return v1

    .line 727
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 728
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    goto :goto_0

    .line 731
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(I)V

    .line 732
    if-eqz p2, :cond_2

    .line 733
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 736
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 738
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 739
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 740
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v1, p2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_0

    .line 742
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(I)Z

    move-result v1

    goto :goto_0
.end method

.method resumeTopActivitiesLocked()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3346
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 3352
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3355
    if-nez p1, :cond_0

    .line 3356
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 3359
    :cond_0
    const/4 v1, 0x0

    .line 3362
    .local v1, "result":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5, p1}, Lcom/android/server/am/MultiWindowPolicy;->arrangeMultiWindowStyleOnResumeTopActivities(Lcom/android/server/am/ActivityStack;)V

    .line 3365
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3366
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v1

    .line 3368
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_5

    .line 3369
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3370
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_4

    .line 3371
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3372
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-ne v2, p1, :cond_3

    .line 3370
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3378
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5, v2}, Lcom/android/server/am/MultiWindowPolicy;->arrangeMultiWindowStyleOnResumeTopActivities(Lcom/android/server/am/ActivityStack;)V

    .line 3381
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3382
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_2

    .line 3368
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3388
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyGlobalMultiWindowStatusChangedLocked()V

    .line 3389
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3390
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    const/4 v6, 0x1

    invoke-virtual {v5, v7, v6}, Lcom/android/server/am/MultiWindowPolicy;->resize2Split(IZ)V

    .line 3396
    :goto_3
    return v1

    .line 3392
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5, v7, v7}, Lcom/android/server/am/MultiWindowPolicy;->resize2Split(IZ)V

    goto :goto_3
.end method

.method resumedAppLocked()Lcom/android/server/am/ActivityRecord;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 795
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 796
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_1

    move-object v1, v3

    .line 815
    :cond_0
    :goto_0
    return-object v1

    .line 799
    :cond_1
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 800
    .local v1, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_0

    .line 801
    :cond_2
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 804
    iget-object v4, v2, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 805
    .local v0, "N":I
    if-lez v0, :cond_3

    .line 807
    iget-object v4, v2, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 811
    .restart local v1    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-eqz v1, :cond_4

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_0

    .line 812
    :cond_4
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_0
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 4314
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4315
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4316
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4317
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 4318
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 4319
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4317
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4314
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4322
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    return-void
.end method

.method final scheduleIdleLocked()V
    .locals 2

    .prologue
    .line 4721
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4722
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 4716
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4717
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4718
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 4200
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4201
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .locals 2

    .prologue
    const/16 v1, 0x66

    .line 4730
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4731
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4733
    :cond_0
    return-void
.end method

.method final scheduleSleepTimeout()V
    .locals 4

    .prologue
    .line 4741
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 4742
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4743
    return-void
.end method

.method sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1003
    const/4 v0, 0x0

    .line 1004
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1005
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager$WaitResult;

    .line 1006
    .local v2, "w":Landroid/app/IActivityManager$WaitResult;
    iget-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    .line 1007
    const/4 v0, 0x1

    .line 1008
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 1009
    if-eqz p1, :cond_0

    .line 1010
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 1012
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 1013
    iget-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 1004
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1016
    .end local v2    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_2
    if-eqz v0, :cond_3

    .line 1017
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1019
    :cond_3
    return-void
.end method

.method setFocusedStack(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2175
    if-eqz p1, :cond_2

    .line 2176
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2177
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v3

    .line 2178
    .local v0, "isHomeActivity":Z
    :goto_0
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 2179
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v3

    .line 2181
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 2182
    iget-object v5, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v5, v5, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 2183
    .local v1, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v3

    .line 2187
    .end local v1    # "parent":Lcom/android/server/am/ActivityRecord;
    :cond_1
    :goto_2
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 2193
    .end local v0    # "isHomeActivity":Z
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return-void

    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    move v0, v4

    .line 2177
    goto :goto_0

    .restart local v0    # "isHomeActivity":Z
    :cond_4
    move v0, v4

    .line 2179
    goto :goto_1

    .restart local v1    # "parent":Lcom/android/server/am/ActivityRecord;
    :cond_5
    move v0, v4

    .line 2183
    goto :goto_2
.end method

.method setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;Z)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "isLocked"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 4852
    if-nez p1, :cond_1

    .line 4854
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_0

    .line 4855
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4856
    .local v0, "lockTaskMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4857
    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4858
    iput-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    .line 4859
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4877
    .end local v0    # "lockTaskMsg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 4863
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4864
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "setLockTaskMode: Attempt to start a second Lock Task Mode task."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4867
    :cond_2
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    .line 4868
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;)V

    .line 4869
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4871
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4872
    .restart local v0    # "lockTaskMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4873
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->userId:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 4874
    const/16 v2, 0x6d

    iput v2, v0, Landroid/os/Message;->what:I

    .line 4875
    if-nez p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 4876
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method setNextTaskId(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 779
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    if-le p1, v0, :cond_0

    .line 780
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 782
    :cond_0
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 7
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 464
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 465
    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 467
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "display"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 469
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 471
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    .line 472
    .local v3, "displays":[Landroid/view/Display;
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "displayNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 473
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 474
    .local v1, "displayId":I
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 475
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    if-nez v4, :cond_0

    .line 476
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "Default Display does not exist"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 487
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    .end local v2    # "displayNdx":I
    .end local v3    # "displays":[Landroid/view/Display;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 478
    .restart local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .restart local v1    # "displayId":I
    .restart local v2    # "displayNdx":I
    .restart local v3    # "displays":[Landroid/view/Display;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 472
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 480
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)I

    .line 481
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 483
    const-class v4, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManagerInternal;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 486
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->isLeanbackOnlyDevice()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLeanbackOnlyDevice:Z

    .line 487
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    return-void
.end method

.method showLockTaskToast()V
    .locals 2

    .prologue
    .line 4848
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskNotify;->showToast(Z)V

    .line 4849
    return-void
.end method

.method shutdownLocked(I)Z
    .locals 14
    .param p1, "timeout"    # I

    .prologue
    .line 3920
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 3922
    const/4 v8, 0x0

    .line 3923
    .local v8, "timedout":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    int-to-long v12, p1

    add-long v2, v10, v12

    .line 3925
    .local v2, "endTime":J
    :goto_0
    const/4 v0, 0x0

    .line 3926
    .local v0, "cantShutdown":Z
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "displayNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 3927
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3928
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "stackNdx":I
    :goto_2
    if-ltz v4, :cond_0

    .line 3929
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v9

    or-int/2addr v0, v9

    .line 3928
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 3926
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3932
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_1
    if-eqz v0, :cond_3

    .line 3933
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v2, v10

    .line 3934
    .local v6, "timeRemaining":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-lez v9, :cond_2

    .line 3936
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3937
    :catch_0
    move-exception v9

    goto :goto_0

    .line 3940
    :cond_2
    const-string v9, "ActivityManager"

    const-string v10, "Activity manager shutdown timed out"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    const/4 v8, 0x1

    .line 3950
    .end local v6    # "timeRemaining":J
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 3951
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 3953
    return v8
.end method

.method final startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 31
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .prologue
    .line 1396
    if-nez p4, :cond_0

    .line 1397
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "intents is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1399
    :cond_0
    if-nez p5, :cond_1

    .line 1400
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "resolvedTypes is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1402
    :cond_1
    move-object/from16 v0, p4

    array-length v2, v0

    move-object/from16 v0, p5

    array-length v4, v0

    if-eq v2, v4, :cond_2

    .line 1403
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "intents are length different than resolvedTypes"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1408
    :cond_2
    if-ltz p2, :cond_3

    .line 1409
    const/4 v14, -0x1

    .line 1416
    .local v14, "callingPid":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 1418
    .local v28, "origId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    monitor-enter v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1419
    const/4 v2, 0x1

    :try_start_1
    new-array v0, v2, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v22, v0

    .line 1420
    .local v22, "outActivity":[Lcom/android/server/am/ActivityRecord;
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1
    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, v25

    if-ge v0, v2, :cond_c

    .line 1421
    aget-object v26, p4, v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1422
    .local v26, "intent":Landroid/content/Intent;
    if-nez v26, :cond_5

    move-object/from16 v3, v26

    .line 1420
    .end local v26    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_2
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 1410
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v14    # "callingPid":I
    .end local v22    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v25    # "i":I
    .end local v28    # "origId":J
    :cond_3
    if-nez p1, :cond_4

    .line 1411
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 1412
    .restart local v14    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_0

    .line 1414
    .end local v14    # "callingPid":I
    :cond_4
    const/16 p2, -0x1

    move/from16 v14, p2

    .restart local v14    # "callingPid":I
    goto :goto_0

    .line 1427
    .restart local v22    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v25    # "i":I
    .restart local v26    # "intent":Landroid/content/Intent;
    .restart local v28    # "origId":J
    :cond_5
    if-eqz v26, :cond_6

    :try_start_2
    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1428
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1464
    .end local v22    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v25    # "i":I
    .end local v26    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v30
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1466
    :catchall_1
    move-exception v2

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1431
    .restart local v22    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v25    # "i":I
    .restart local v26    # "intent":Landroid/content/Intent;
    :cond_6
    :try_start_4
    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_7

    const/16 v21, 0x1

    .line 1434
    .local v21, "componentSpecified":Z
    :goto_3
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1437
    .end local v26    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    aget-object v4, p5, v25

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 1439
    .local v8, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p8

    invoke-virtual {v2, v8, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 1441
    if-eqz v8, :cond_8

    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x10000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_8

    .line 1444
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1431
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v21    # "componentSpecified":Z
    .restart local v26    # "intent":Landroid/content/Intent;
    :cond_7
    const/16 v21, 0x0

    goto :goto_3

    .line 1449
    .end local v26    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v21    # "componentSpecified":Z
    :cond_8
    if-eqz p7, :cond_9

    move-object/from16 v0, p4

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_9

    .line 1450
    move-object/from16 v20, p7

    .line 1454
    .local v20, "theseOptions":Landroid/os/Bundle;
    :goto_4
    aget-object v7, p5, v25

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v3

    move-object/from16 v11, p6

    move/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v17, v14

    move/from16 v18, p2

    invoke-virtual/range {v4 .. v24}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v27

    .line 1458
    .local v27, "res":I
    if-gez v27, :cond_a

    .line 1459
    monitor-exit v30
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1466
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1469
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "theseOptions":Landroid/os/Bundle;
    .end local v21    # "componentSpecified":Z
    .end local v27    # "res":I
    :goto_5
    return v27

    .line 1452
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v21    # "componentSpecified":Z
    :cond_9
    const/16 v20, 0x0

    .restart local v20    # "theseOptions":Landroid/os/Bundle;
    goto :goto_4

    .line 1462
    .restart local v27    # "res":I
    :cond_a
    const/4 v2, 0x0

    :try_start_5
    aget-object v2, v22, v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    aget-object v2, v22, v2

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p6, v0

    :goto_6
    goto/16 :goto_2

    :cond_b
    const/16 p6, 0x0

    goto :goto_6

    .line 1464
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "theseOptions":Landroid/os/Bundle;
    .end local v21    # "componentSpecified":Z
    .end local v27    # "res":I
    :cond_c
    monitor-exit v30
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1466
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1469
    const/16 v27, 0x0

    goto :goto_5
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .locals 63
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingUid"    # I
    .param p12, "callingPackage"    # Ljava/lang/String;
    .param p13, "realCallingPid"    # I
    .param p14, "realCallingUid"    # I
    .param p15, "startFlags"    # I
    .param p16, "options"    # Landroid/os/Bundle;
    .param p17, "componentSpecified"    # Z
    .param p18, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p19, "container"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p20, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 1755
    const/16 v51, 0x0

    .line 1757
    .local v51, "err":I
    const/16 v27, 0x0

    .line 1758
    .local v27, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    .line 1759
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v27

    .line 1760
    if-eqz v27, :cond_2

    .line 1761
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p10, v0

    .line 1762
    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p11, v0

    .line 1771
    :cond_0
    :goto_0
    const/4 v11, 0x0

    .line 1772
    .local v11, "cmp":Landroid/content/ComponentName;
    const-string v12, ""

    .line 1776
    .local v12, "className":Ljava/lang/String;
    :try_start_0
    new-instance v56, Landroid/content/Intent;

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1777
    .local v56, "mEdmIntent":Landroid/content/Intent;
    invoke-virtual/range {v56 .. v56}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 1778
    const-string v6, ":android:show_fragment"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1779
    if-nez v12, :cond_1

    if-eqz v11, :cond_1

    .line 1780
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .end local v56    # "mEdmIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move/from16 v9, p11

    move-object/from16 v10, p16

    .line 1786
    invoke-direct/range {v6 .. v12}, Lcom/android/server/am/ActivityStackSupervisor;->checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILandroid/os/Bundle;Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 1788
    const/4 v6, 0x0

    .line 2099
    :goto_2
    return v6

    .line 1764
    .end local v11    # "cmp":Landroid/content/ComponentName;
    .end local v12    # "className":Ljava/lang/String;
    :cond_2
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find app for caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p10

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") when starting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    const/16 v51, -0x4

    goto :goto_0

    .line 1782
    .restart local v11    # "cmp":Landroid/content/ComponentName;
    .restart local v12    # "className":Ljava/lang/String;
    :catch_0
    move-exception v50

    .line 1783
    .local v50, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "unknown"

    goto :goto_1

    .line 1792
    .end local v50    # "e":Ljava/lang/Exception;
    :cond_3
    if-nez v51, :cond_4

    .line 1793
    if-eqz p4, :cond_8

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v61

    .line 1794
    .local v61, "userId":I
    :goto_3
    const-string v7, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "START u"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " {"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9, v10, v14}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "} from uid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " on display "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p19, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v6, :cond_9

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    .end local v61    # "userId":I
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_EnableItsOn"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1804
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v53

    .line 1805
    .local v53, "intentData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v54

    .line 1806
    .local v54, "intentType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v52

    .line 1807
    .local v52, "intentAction":Ljava/lang/String;
    if-eqz v52, :cond_6

    const-string v6, "android.intent.action.VIEW"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v54, :cond_6

    const-string/jumbo v6, "video"

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "audio"

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    if-eqz v53, :cond_6

    const-string v6, "http"

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1810
    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->getInstance()Lcom/itsoninc/android/ItsOnOemApi;

    move-result-object v6

    move-object/from16 v0, v53

    move/from16 v1, p11

    invoke-virtual {v6, v0, v1}, Lcom/itsoninc/android/ItsOnOemApi;->registerActivityMapping(Ljava/lang/String;I)V

    .line 1815
    .end local v52    # "intentAction":Ljava/lang/String;
    .end local v53    # "intentData":Ljava/lang/String;
    .end local v54    # "intentType":Ljava/lang/String;
    :cond_6
    const/16 v41, 0x0

    .line 1816
    .local v41, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v15, 0x0

    .line 1817
    .local v15, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz p7, :cond_7

    .line 1818
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v41

    .line 1821
    if-eqz v41, :cond_7

    .line 1822
    if-ltz p9, :cond_7

    move-object/from16 v0, v41

    iget-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_7

    .line 1823
    move-object/from16 v15, v41

    .line 1827
    :cond_7
    if-nez v15, :cond_c

    const/4 v13, 0x0

    .line 1829
    .local v13, "resultStack":Lcom/android/server/am/ActivityStack;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v55

    .line 1831
    .local v55, "launchFlags":I
    const/high16 v6, 0x2000000

    and-int v6, v6, v55

    if-eqz v6, :cond_f

    if-eqz v41, :cond_f

    .line 1834
    if-ltz p9, :cond_d

    .line 1835
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1836
    const/4 v6, -0x3

    goto/16 :goto_2

    .line 1793
    .end local v13    # "resultStack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v41    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .end local v55    # "launchFlags":I
    :cond_8
    const/16 v61, 0x0

    goto/16 :goto_3

    .line 1794
    .restart local v61    # "userId":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p19

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v6, :cond_b

    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p19

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v6, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    goto/16 :goto_4

    .line 1827
    .end local v61    # "userId":I
    .restart local v15    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v41    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_c
    iget-object v6, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    goto :goto_5

    .line 1838
    .restart local v13    # "resultStack":Lcom/android/server/am/ActivityStack;
    .restart local v55    # "launchFlags":I
    :cond_d
    move-object/from16 v0, v41

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1839
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p8, v0

    .line 1840
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p9, v0

    .line 1841
    const/4 v6, 0x0

    move-object/from16 v0, v41

    iput-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1842
    if-eqz v15, :cond_e

    .line 1843
    move-object/from16 v0, v41

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 1845
    :cond_e
    move-object/from16 v0, v41

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v0, p11

    if-ne v6, v0, :cond_f

    .line 1856
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 p12, v0

    .line 1860
    :cond_f
    if-nez v51, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_10

    .line 1863
    const/16 v51, -0x1

    .line 1866
    :cond_10
    if-nez v51, :cond_11

    if-nez p4, :cond_11

    .line 1869
    const/16 v51, -0x2

    .line 1872
    :cond_11
    if-nez v51, :cond_12

    if-eqz v41, :cond_12

    move-object/from16 v0, v41

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v6, :cond_12

    .line 1878
    const/high16 v6, 0x10000000

    and-int v6, v6, v55

    if-nez v6, :cond_12

    move-object/from16 v0, v41

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v6, v7, :cond_12

    .line 1881
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v6, v7, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-nez v6, :cond_12

    .line 1883
    const/16 v51, -0x7

    .line 1891
    :cond_12
    :goto_6
    if-nez v51, :cond_13

    if-eqz p5, :cond_13

    .line 1895
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v6, v7, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    if-nez v6, :cond_13

    .line 1897
    const/16 v51, -0x7

    .line 1904
    :cond_13
    :goto_7
    if-eqz v51, :cond_15

    .line 1905
    if-eqz v13, :cond_14

    if-eqz v15, :cond_14

    .line 1906
    const/4 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p8

    move/from16 v17, p9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1910
    :cond_14
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1912
    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v16 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move/from16 v6, v51

    .line 1917
    goto/16 :goto_2

    .line 1885
    :catch_1
    move-exception v50

    .line 1886
    .local v50, "e":Landroid/os/RemoteException;
    const/16 v51, -0x7

    goto :goto_6

    .line 1899
    .end local v50    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v50

    .line 1900
    .restart local v50    # "e":Landroid/os/RemoteException;
    const/16 v51, -0x7

    goto :goto_7

    .line 1920
    .end local v50    # "e":Landroid/os/RemoteException;
    :cond_15
    const/16 v24, 0x0

    .line 1922
    .local v24, "allowLaunchIntent":Z
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const-string v6, "android.intent.category.HOME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    :goto_8
    if-eqz v6, :cond_16

    .line 1924
    const/16 v24, 0x1

    .line 1929
    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "android.permission.START_ANY_ACTIVITY"

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v60

    .line 1934
    .local v60, "startAnyPerm":I
    const/16 v49, -0x1

    .line 1936
    .local v49, "componentPerm":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v0

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p4

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move/from16 v23, v0

    move-object/from16 v17, p2

    move/from16 v19, p10

    move/from16 v20, p11

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v49

    .line 1943
    if-eqz v60, :cond_1a

    if-eqz v49, :cond_1a

    .line 1944
    if-eqz v13, :cond_17

    if-eqz v15, :cond_17

    .line 1945
    const/4 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p8

    move/from16 v17, p9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1950
    :cond_17
    move-object/from16 v0, p4

    iget-boolean v6, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v6, :cond_19

    .line 1951
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not exported from uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    .line 1961
    .local v57, "msg":Ljava/lang/String;
    :goto_9
    const-string v6, "ActivityManager"

    move-object/from16 v0, v57

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v16 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1967
    new-instance v6, Ljava/lang/SecurityException;

    move-object/from16 v0, v57

    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1922
    .end local v49    # "componentPerm":I
    .end local v57    # "msg":Ljava/lang/String;
    .end local v60    # "startAnyPerm":I
    :cond_18
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 1956
    .restart local v49    # "componentPerm":I
    .restart local v60    # "startAnyPerm":I
    :cond_19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requires "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    .restart local v57    # "msg":Ljava/lang/String;
    goto/16 :goto_9

    .line 1970
    .end local v57    # "msg":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v16, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v17, p2

    move/from16 v18, p11

    move/from16 v19, p10

    move-object/from16 v20, p3

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_1d

    const/16 v48, 0x1

    .line 1973
    .local v48, "abort":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v6, :cond_1b

    .line 1977
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v62

    .line 1978
    .local v62, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v62

    invoke-interface {v6, v0, v7}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    if-nez v6, :cond_1e

    const/4 v6, 0x1

    :goto_b
    or-int v48, v48, v6

    .line 1985
    .end local v62    # "watchIntent":Landroid/content/Intent;
    :cond_1b
    :goto_c
    if-eqz v48, :cond_1f

    .line 1986
    if-eqz v13, :cond_1c

    if-eqz v15, :cond_1c

    .line 1987
    const/4 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p8

    move/from16 v17, p9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1992
    :cond_1c
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1994
    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " succeeded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v16 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1999
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 1970
    .end local v48    # "abort":Z
    :cond_1d
    const/16 v48, 0x0

    goto :goto_a

    .line 1978
    .restart local v48    # "abort":Z
    .restart local v62    # "watchIntent":Landroid/content/Intent;
    :cond_1e
    const/4 v6, 0x0

    goto :goto_b

    .line 1980
    .end local v62    # "watchIntent":Landroid/content/Intent;
    :catch_3
    move-exception v50

    .line 1981
    .restart local v50    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_c

    .line 2002
    .end local v50    # "e":Landroid/os/RemoteException;
    :cond_1f
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p11

    invoke-static {v0, v1, v2}, Lcom/android/server/am/InjectorAMS;->hookActivityInfoBeforeCreatingActivityRecord(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p4

    new-instance v25, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v33, v0

    move/from16 v28, p11

    move-object/from16 v29, p12

    move-object/from16 v30, p2

    move-object/from16 v31, p3

    move-object/from16 v32, p4

    move-object/from16 v34, v15

    move-object/from16 v35, p8

    move/from16 v36, p9

    move/from16 v37, p17

    move-object/from16 v38, p0

    move-object/from16 v39, p19

    move-object/from16 v40, p16

    move-object/from16 v42, p7

    invoke-direct/range {v25 .. v42}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)V

    .line 2006
    .local v25, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p18, :cond_20

    .line 2007
    const/4 v6, 0x0

    aput-object v25, p18, v6

    .line 2011
    :cond_20
    sget-boolean v6, Lcom/android/server/am/SmartAdjustManager;->SAMP_SPCM_ENABLE:Z

    if-eqz v6, :cond_22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    if-eqz v6, :cond_22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    move-object/from16 v16, v0

    new-instance v17, Landroid/content/ComponentName;

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v21, "activity"

    move-object/from16 v18, p1

    move/from16 v19, p10

    move/from16 v20, p11

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/SmartAdjustManager;->isActivePackage(Landroid/content/ComponentName;Landroid/app/IApplicationThread;IILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 2013
    sget-boolean v6, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v6, :cond_21

    .line 2014
    const-string v6, "ActivityManager_SPCM"

    const-string v7, "SPCM start service blocked-- not in active list."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    :cond_21
    const/4 v6, -0x4

    goto/16 :goto_2

    .line 2020
    :cond_22
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 2021
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    .line 2029
    :goto_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->applyMultiWindowLaunchStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 2030
    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 2031
    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 2036
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v59

    .line 2037
    .local v59, "stack":Lcom/android/server/am/ActivityStack;
    if-nez p5, :cond_26

    move-object/from16 v0, v59

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_24

    move-object/from16 v0, v59

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p11

    if-eq v6, v0, :cond_26

    .line 2039
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    const-string v21, "Activity start"

    move/from16 v17, p10

    move/from16 v18, p11

    move/from16 v19, p13

    move/from16 v20, p14

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 2041
    new-instance v58, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    move-object/from16 v0, v58

    move-object/from16 v1, v25

    move-object/from16 v2, v41

    move/from16 v3, p15

    move-object/from16 v4, v59

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 2043
    .local v58, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2044
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2046
    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v16 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2051
    const/4 v6, 0x4

    goto/16 :goto_2

    .line 2023
    .end local v58    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v59    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_25
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_d

    .line 2055
    .restart local v59    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_26
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v6, :cond_28

    .line 2061
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 2066
    :goto_e
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->doPendingActivityLaunchesLocked(Z)V

    .line 2089
    const/16 v45, 0x1

    move-object/from16 v39, p0

    move-object/from16 v40, v25

    move-object/from16 v42, p5

    move-object/from16 v43, p6

    move/from16 v44, p15

    move-object/from16 v46, p16

    move-object/from16 v47, p20

    invoke-virtual/range {v39 .. v47}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I

    move-result v51

    .line 2092
    if-gez v51, :cond_27

    .line 2097
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    :cond_27
    move/from16 v6, v51

    .line 2099
    goto/16 :goto_2

    .line 2063
    :cond_28
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_e
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .locals 42
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/IActivityManager$WaitResult;
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "options"    # Landroid/os/Bundle;
    .param p16, "userId"    # I
    .param p17, "iContainer"    # Landroid/app/IActivityContainer;
    .param p18, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 1224
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1225
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1227
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_a

    const/16 v25, 0x1

    .line 1230
    .local v25, "componentSpecified":Z
    :goto_0
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .end local p4    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    move-object/from16 v2, p0

    move-object/from16 v4, p5

    move/from16 v5, p11

    move-object/from16 v6, p12

    move/from16 v7, p16

    .line 1233
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v29

    .local v29, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v27, p17

    .line 1236
    check-cast v27, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 1237
    .local v27, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1238
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    .line 1239
    .local v21, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    .line 1241
    .local v22, "realCallingUid":I
    if-ltz p2, :cond_b

    .line 1242
    const/16 v18, -0x1

    .line 1251
    .local v18, "callingPid":I
    :goto_1
    if-eqz v27, :cond_1

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1252
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v39

    .line 1256
    .local v39, "stack":Lcom/android/server/am/ActivityStack;
    :goto_2
    if-eqz p14, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, v39

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    .line 1263
    .local v34, "origId":J
    if-eqz v29, :cond_15

    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x10000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_15

    .line 1267
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1271
    :cond_2
    move/from16 v7, p2

    .line 1272
    .local v7, "appCallingUid":I
    if-eqz p1, :cond_3

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v30

    .line 1274
    .local v30, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v30, :cond_f

    .line 1275
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1285
    .end local v30    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x2

    const-string v6, "android"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x1

    new-array v12, v2, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v3, v12, v2

    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p5, v13, v2

    const/high16 v14, 0x50000000

    const/4 v15, 0x0

    move/from16 v8, p16

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v40

    .line 1291
    .local v40, "target":Landroid/content/IIntentSender;
    new-instance v33, Landroid/content/Intent;

    invoke-direct/range {v33 .. v33}, Landroid/content/Intent;-><init>()V

    .line 1292
    .local v33, "newIntent":Landroid/content/Intent;
    if-ltz p10, :cond_4

    .line 1294
    const-string v2, "has_result"

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1296
    :cond_4
    const-string v2, "intent"

    new-instance v4, Landroid/content/IntentSender;

    move-object/from16 v0, v40

    invoke-direct {v4, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/am/ActivityRecord;

    .line 1300
    .local v32, "hist":Lcom/android/server/am/ActivityRecord;
    const-string v2, "cur_app"

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1302
    const-string v2, "cur_task"

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1305
    .end local v32    # "hist":Lcom/android/server/am/ActivityRecord;
    :cond_5
    const-string v2, "new_app"

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1307
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1308
    const-string v2, "android"

    const-class v4, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1310
    move-object/from16 p4, v33

    .line 1311
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    const/16 p5, 0x0

    .line 1312
    const/16 p1, 0x0

    .line 1313
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 1314
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v18

    .line 1315
    const/16 v25, 0x1

    .line 1317
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x10480

    move-object/from16 v0, p4

    move/from16 v1, p16

    invoke-interface {v2, v0, v4, v5, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v37

    .line 1322
    .local v37, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v37, :cond_10

    move-object/from16 v0, v37

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1323
    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p16

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .line 1331
    .end local v7    # "appCallingUid":I
    .end local v33    # "newIntent":Landroid/content/Intent;
    .end local v37    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v40    # "target":Landroid/content/IIntentSender;
    :goto_5
    const/16 v26, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move/from16 v17, p10

    move/from16 v19, p2

    move-object/from16 v20, p3

    move/from16 v23, p11

    move-object/from16 v24, p15

    move-object/from16 v28, p18

    :try_start_4
    invoke-virtual/range {v8 .. v28}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v38

    .line 1337
    .local v38, "res":I
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1339
    move-object/from16 v0, v39

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v2, :cond_6

    .line 1344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v5, "updateConfiguration()"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const/4 v2, 0x0

    move-object/from16 v0, v39

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p14

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 1353
    :cond_6
    if-eqz v27, :cond_7

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1354
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v39

    .line 1359
    :goto_6
    if-eqz p13, :cond_9

    .line 1360
    move/from16 v0, v38

    move-object/from16 v1, p13

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 1361
    if-nez v38, :cond_12

    .line 1362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1365
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1368
    :goto_7
    :try_start_6
    move-object/from16 v0, p13

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p13

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v2, :cond_8

    .line 1389
    :cond_9
    :goto_8
    monitor-exit v41
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v38    # "res":I
    :goto_9
    return v38

    .line 1227
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v18    # "callingPid":I
    .end local v21    # "realCallingPid":I
    .end local v22    # "realCallingUid":I
    .end local v25    # "componentSpecified":Z
    .end local v27    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v34    # "origId":J
    .end local v39    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_a
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1243
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v21    # "realCallingPid":I
    .restart local v22    # "realCallingUid":I
    .restart local v25    # "componentSpecified":Z
    .restart local v27    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .restart local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_b
    if-nez p1, :cond_c

    .line 1244
    move/from16 v18, v21

    .line 1245
    .restart local v18    # "callingPid":I
    move/from16 p2, v22

    goto/16 :goto_1

    .line 1247
    .end local v18    # "callingPid":I
    :cond_c
    const/16 p2, -0x1

    move/from16 v18, p2

    .restart local v18    # "callingPid":I
    goto/16 :goto_1

    .line 1254
    :cond_d
    :try_start_7
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v39, v0

    .restart local v39    # "stack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_2

    .line 1256
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1277
    .restart local v7    # "appCallingUid":I
    .restart local v30    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v34    # "origId":J
    :cond_f
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") when starting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    invoke-static/range {p15 .. p15}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1281
    const/16 v38, -0x4

    monitor-exit v41
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v12, v29

    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_9

    .line 1322
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v30    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "newIntent":Landroid/content/Intent;
    .restart local v37    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v40    # "target":Landroid/content/IIntentSender;
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 1324
    .end local v37    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v31

    move-object/from16 v12, v29

    .line 1325
    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v31, "e":Landroid/os/RemoteException;
    :goto_a
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 1356
    .end local v7    # "appCallingUid":I
    .end local v31    # "e":Landroid/os/RemoteException;
    .end local v33    # "newIntent":Landroid/content/Intent;
    .end local v40    # "target":Landroid/content/IIntentSender;
    .restart local v38    # "res":I
    :cond_11
    :try_start_8
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v39, v0

    goto/16 :goto_6

    .line 1369
    :cond_12
    const/4 v2, 0x2

    move/from16 v0, v38

    if-ne v0, v2, :cond_9

    .line 1370
    const/4 v2, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v36

    .line 1371
    .local v36, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v36

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v4, :cond_13

    .line 1372
    const/4 v2, 0x0

    move-object/from16 v0, p13

    iput-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 1373
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p13

    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 1374
    const-wide/16 v4, 0x0

    move-object/from16 v0, p13

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 1375
    const-wide/16 v4, 0x0

    move-object/from16 v0, p13

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto/16 :goto_8

    .line 1390
    .end local v18    # "callingPid":I
    .end local v21    # "realCallingPid":I
    .end local v22    # "realCallingUid":I
    .end local v34    # "origId":J
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "res":I
    .end local v39    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v2

    :goto_b
    monitor-exit v41
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    .line 1377
    .restart local v18    # "callingPid":I
    .restart local v21    # "realCallingPid":I
    .restart local v22    # "realCallingUid":I
    .restart local v34    # "origId":J
    .restart local v36    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v38    # "res":I
    .restart local v39    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_13
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p13

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 1378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1381
    :cond_14
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1384
    :goto_c
    :try_start_b
    move-object/from16 v0, p13

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p13

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v2, :cond_14

    goto/16 :goto_8

    .line 1390
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v18    # "callingPid":I
    .end local v21    # "realCallingPid":I
    .end local v22    # "realCallingUid":I
    .end local v34    # "origId":J
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "res":I
    .end local v39    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_1
    move-exception v2

    move-object/from16 v12, v29

    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_b

    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "appCallingUid":I
    .restart local v18    # "callingPid":I
    .restart local v21    # "realCallingPid":I
    .restart local v22    # "realCallingUid":I
    .restart local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "newIntent":Landroid/content/Intent;
    .restart local v34    # "origId":J
    .restart local v39    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v40    # "target":Landroid/content/IIntentSender;
    :catchall_2
    move-exception v2

    move-object/from16 v12, v29

    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_b

    .line 1382
    .end local v7    # "appCallingUid":I
    .end local v33    # "newIntent":Landroid/content/Intent;
    .end local v40    # "target":Landroid/content/IIntentSender;
    .restart local v36    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v38    # "res":I
    :catch_1
    move-exception v2

    goto :goto_c

    .line 1366
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_2
    move-exception v2

    goto/16 :goto_7

    .line 1324
    .end local v38    # "res":I
    .restart local v7    # "appCallingUid":I
    .restart local v33    # "newIntent":Landroid/content/Intent;
    .restart local v37    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v40    # "target":Landroid/content/IIntentSender;
    :catch_3
    move-exception v31

    goto/16 :goto_a

    .end local v7    # "appCallingUid":I
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v33    # "newIntent":Landroid/content/Intent;
    .end local v37    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v40    # "target":Landroid/content/IIntentSender;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_15
    move-object/from16 v12, v29

    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_5
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I
    .locals 57
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 2200
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->applyMultiInstanceStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 2201
    if-eqz p2, :cond_0

    .line 2202
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    .line 2206
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v27, v0

    .line 2207
    .local v27, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 2213
    .local v15, "callingUid":I
    if-eqz p8, :cond_1

    move-object/from16 v0, p8

    iget-boolean v5, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v5, :cond_1

    .line 2214
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting activity in task not in recents: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    const/16 p8, 0x0

    .line 2218
    :cond_1
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    const/16 v36, 0x1

    .line 2219
    .local v36, "launchSingleTop":Z
    :goto_0
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b

    const/16 v34, 0x1

    .line 2220
    .local v34, "launchSingleInstance":Z
    :goto_1
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    const/16 v35, 0x1

    .line 2222
    .local v35, "launchSingleTask":Z
    :goto_2
    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getFlags()I

    move-result v33

    .line 2223
    .local v33, "launchFlags":I
    const/high16 v5, 0x80000

    and-int v5, v5, v33

    if-eqz v5, :cond_d

    if-nez v34, :cond_2

    if-eqz v35, :cond_d

    .line 2226
    :cond_2
    const-string v5, "ActivityManager"

    const-string v6, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    const v5, -0x8080001

    and-int v33, v33, v5

    .line 2246
    :goto_3
    :pswitch_0
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v5, :cond_e

    if-nez v35, :cond_e

    if-nez v34, :cond_e

    const/high16 v5, 0x80000

    and-int v5, v5, v33

    if-eqz v5, :cond_e

    const/16 v37, 0x1

    .line 2250
    .local v37, "launchTaskBehind":Z
    :goto_4
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_3

    const/high16 v5, 0x10000000

    and-int v5, v5, v33

    if-eqz v5, :cond_3

    .line 2256
    const-string v5, "ActivityManager"

    const-string v6, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v5, -0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2260
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2263
    :cond_3
    const/high16 v5, 0x80000

    and-int v5, v5, v33

    if-eqz v5, :cond_4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_4

    .line 2266
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v5, :cond_f

    if-eqz p2, :cond_f

    const-string v5, "android"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2268
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2270
    const/high16 v5, 0x10000000

    or-int v33, v33, v5

    .line 2283
    :cond_4
    :goto_5
    const/high16 v5, 0x10000000

    and-int v5, v5, v33

    if-eqz v5, :cond_6

    .line 2284
    if-nez v37, :cond_5

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 2286
    :cond_5
    const/high16 v5, 0x8000000

    or-int v33, v33, v5

    .line 2292
    :cond_6
    const/high16 v5, 0x40000

    and-int v5, v5, v33

    if-nez v5, :cond_10

    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2298
    if-nez p6, :cond_7

    .line 2299
    const/4 v5, 0x1

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 2302
    :cond_7
    const/high16 v5, 0x1000000

    and-int v5, v5, v33

    if-eqz v5, :cond_11

    move-object/from16 v42, p1

    .line 2309
    .local v42, "notTop":Lcom/android/server/am/ActivityRecord;
    :goto_7
    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_9

    .line 2310
    move-object/from16 v16, p2

    .line 2311
    .local v16, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez v16, :cond_8

    .line 2312
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    .line 2314
    :cond_8
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 2316
    and-int/lit8 p5, p5, -0x2

    .line 2320
    .end local v16    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_9
    const/4 v12, 0x0

    .line 2321
    .local v12, "addingToTask":Z
    const/16 v45, 0x0

    .line 2326
    .local v45, "reuseTask":Lcom/android/server/am/TaskRecord;
    if-nez p2, :cond_21

    if-eqz p8, :cond_21

    move-object/from16 v0, p8

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_21

    move-object/from16 v0, p8

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 2331
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v14

    .line 2332
    .local v14, "baseIntent":Landroid/content/Intent;
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v46

    .line 2333
    .local v46, "root":Lcom/android/server/am/ActivityRecord;
    if-nez v14, :cond_12

    .line 2334
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2335
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Launching into task without base intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2218
    .end local v12    # "addingToTask":Z
    .end local v14    # "baseIntent":Landroid/content/Intent;
    .end local v33    # "launchFlags":I
    .end local v34    # "launchSingleInstance":Z
    .end local v35    # "launchSingleTask":Z
    .end local v36    # "launchSingleTop":Z
    .end local v37    # "launchTaskBehind":Z
    .end local v42    # "notTop":Lcom/android/server/am/ActivityRecord;
    .end local v45    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .end local v46    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_a
    const/16 v36, 0x0

    goto/16 :goto_0

    .line 2219
    .restart local v36    # "launchSingleTop":Z
    :cond_b
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 2220
    .restart local v34    # "launchSingleInstance":Z
    :cond_c
    const/16 v35, 0x0

    goto/16 :goto_2

    .line 2231
    .restart local v33    # "launchFlags":I
    .restart local v35    # "launchSingleTask":Z
    :cond_d
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    .line 2235
    :pswitch_1
    const/high16 v5, 0x80000

    or-int v33, v33, v5

    .line 2236
    goto/16 :goto_3

    .line 2238
    :pswitch_2
    const/high16 v5, 0x80000

    or-int v33, v33, v5

    .line 2239
    goto/16 :goto_3

    .line 2241
    :pswitch_3
    const v5, -0x8000001

    and-int v33, v33, v5

    goto/16 :goto_3

    .line 2246
    :cond_e
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2273
    .restart local v37    # "launchTaskBehind":Z
    :cond_f
    const/high16 v5, 0x10000000

    or-int v33, v33, v5

    goto/16 :goto_5

    .line 2292
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 2302
    :cond_11
    const/16 v42, 0x0

    goto/16 :goto_7

    .line 2341
    .restart local v12    # "addingToTask":Z
    .restart local v14    # "baseIntent":Landroid/content/Intent;
    .restart local v42    # "notTop":Lcom/android/server/am/ActivityRecord;
    .restart local v45    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .restart local v46    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_12
    if-nez v34, :cond_13

    if-eqz v35, :cond_15

    .line 2342
    :cond_13
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 2343
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2344
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to launch singleInstance/Task "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " into different task "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2347
    :cond_14
    if-eqz v46, :cond_15

    .line 2348
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2349
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caller with inTask "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has root "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v46

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but target is singleInstance/Task"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2356
    :cond_15
    if-nez v46, :cond_1f

    .line 2357
    const v21, 0x18082000

    .line 2360
    .local v21, "flagsOfInterest":I
    const v5, -0x18082001

    and-int v5, v5, v33

    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const v7, 0x18082000

    and-int/2addr v6, v7

    or-int v33, v5, v6

    .line 2362
    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2363
    move-object/from16 v0, p8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2364
    const/4 v12, 0x1

    .line 2376
    .end local v21    # "flagsOfInterest":I
    :goto_8
    move-object/from16 v45, p8

    .line 2381
    .end local v14    # "baseIntent":Landroid/content/Intent;
    .end local v46    # "root":Lcom/android/server/am/ActivityRecord;
    :goto_9
    if-nez p8, :cond_16

    .line 2382
    if-nez p2, :cond_22

    .line 2385
    const/high16 v5, 0x10000000

    and-int v5, v5, v33

    if-nez v5, :cond_16

    if-nez p8, :cond_16

    .line 2386
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    const/high16 v5, 0x10000000

    or-int v33, v33, v5

    .line 2402
    :cond_16
    :goto_a
    const/16 v40, 0x0

    .line 2403
    .local v40, "newTaskInfo":Landroid/content/pm/ActivityInfo;
    const/16 v41, 0x0

    .line 2405
    .local v41, "newTaskIntent":Landroid/content/Intent;
    if-eqz p2, :cond_26

    .line 2406
    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_25

    .line 2412
    const/high16 v5, 0x10000000

    and-int v5, v5, v33

    if-nez v5, :cond_17

    .line 2413
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startActivity called from finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; forcing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    const/high16 v5, 0x10000000

    or-int v33, v33, v5

    .line 2416
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v40, v0

    .line 2417
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v41, v0

    .line 2421
    :cond_17
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p2

    if-ne v5, v0, :cond_18

    .line 2422
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity is launching from finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", so cancelling activity result."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v5, -0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2427
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2431
    :cond_18
    const/16 v47, 0x0

    .line 2433
    .local v47, "sourceStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_19

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_19

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 2436
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v47, v0

    .line 2439
    :cond_19
    const/16 p2, 0x0

    .line 2447
    :goto_b
    const/16 v38, 0x0

    .line 2449
    .local v38, "movedHome":Z
    const/4 v4, 0x0

    .line 2452
    .local v4, "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2459
    const/high16 v5, 0x10000000

    and-int v5, v5, v33

    if-eqz v5, :cond_1a

    const/high16 v5, 0x8000000

    and-int v5, v5, v33

    if-eqz v5, :cond_1c

    :cond_1a
    if-nez v34, :cond_1b

    if-eqz v35, :cond_53

    :cond_1b
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-nez v5, :cond_53

    .line 2467
    :cond_1c
    if-nez p8, :cond_53

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_53

    .line 2472
    if-nez v34, :cond_27

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v28

    .line 2479
    .local v28, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_c
    const/16 v29, 0x0

    .line 2480
    .local v29, "isKnoxLauncher":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2481
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "sec_container_1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2482
    const/16 v29, 0x1

    .line 2485
    :cond_1d
    if-eqz v29, :cond_29

    .line 2486
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v20, v5, -0x1

    .local v20, "displayNdx":I
    :goto_d
    if-ltz v20, :cond_29

    .line 2487
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_e
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/am/ActivityStack;

    .line 2488
    .local v49, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2489
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/am/ActivityStack;->finishAllActivities()Z

    goto :goto_e

    .line 2369
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v20    # "displayNdx":I
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v28    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v29    # "isKnoxLauncher":Z
    .end local v38    # "movedHome":Z
    .end local v40    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .end local v41    # "newTaskIntent":Landroid/content/Intent;
    .end local v47    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v49    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "baseIntent":Landroid/content/Intent;
    .restart local v46    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_1f
    const/high16 v5, 0x10000000

    and-int v5, v5, v33

    if-eqz v5, :cond_20

    .line 2370
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 2373
    :cond_20
    const/4 v12, 0x1

    goto/16 :goto_8

    .line 2378
    .end local v14    # "baseIntent":Landroid/content/Intent;
    .end local v46    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_21
    const/16 p8, 0x0

    goto/16 :goto_9

    .line 2390
    :cond_22
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_23

    .line 2394
    const/high16 v5, 0x10000000

    or-int v33, v33, v5

    goto/16 :goto_a

    .line 2395
    :cond_23
    if-nez v34, :cond_24

    if-eqz v35, :cond_16

    .line 2398
    :cond_24
    const/high16 v5, 0x10000000

    or-int v33, v33, v5

    goto/16 :goto_a

    .line 2441
    .restart local v40    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .restart local v41    # "newTaskIntent":Landroid/content/Intent;
    :cond_25
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v47, v0

    .restart local v47    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_b

    .line 2444
    .end local v47    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_26
    const/16 v47, 0x0

    .restart local v47    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_b

    .line 2472
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v38    # "movedHome":Z
    :cond_27
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v28

    goto/16 :goto_c

    .line 2486
    .restart local v20    # "displayNdx":I
    .restart local v24    # "i$":Ljava/util/Iterator;
    .restart local v28    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v29    # "isKnoxLauncher":Z
    :cond_28
    add-int/lit8 v20, v20, -0x1

    goto :goto_d

    .line 2496
    .end local v20    # "displayNdx":I
    .end local v24    # "i$":Ljava/util/Iterator;
    :cond_29
    if-eqz v28, :cond_53

    .line 2497
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 2498
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 2499
    const-string v5, "ActivityManager"

    const-string/jumbo v6, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    const/4 v5, 0x5

    .line 3100
    .end local v28    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v29    # "isKnoxLauncher":Z
    :goto_f
    return v5

    .line 2502
    .restart local v28    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v29    # "isKnoxLauncher":Z
    :cond_2a
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v5, :cond_2b

    .line 2503
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2505
    :cond_2b
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2506
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2509
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->moveToFront()V

    .line 2512
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2c

    .line 2513
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 2519
    :cond_2c
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v5, :cond_2d

    .line 2524
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2532
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v32

    .line 2544
    .local v32, "lastStack":Lcom/android/server/am/ActivityStack;
    if-nez v32, :cond_36

    const/16 v19, 0x0

    .line 2546
    .local v19, "curTop":Lcom/android/server/am/ActivityRecord;
    :goto_10
    if-eqz v19, :cond_34

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v5, v6, :cond_2e

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-ne v5, v6, :cond_2e

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_34

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-nez v5, :cond_34

    .line 2554
    :cond_2e
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 2557
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->isKnoxmode()Z

    move-result v5

    if-nez v5, :cond_37

    .line 2558
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v6, 0x400000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2559
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/am/ActivityStackSupervisor;->isLaunchKnoxApps:Z

    .line 2574
    :cond_2f
    :goto_11
    if-eqz p2, :cond_30

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_34

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v5, v6, :cond_34

    .line 2578
    :cond_30
    if-eqz v37, :cond_31

    if-eqz p2, :cond_31

    .line 2579
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 2581
    :cond_31
    const/16 v38, 0x1

    .line 2584
    if-eqz v4, :cond_32

    .line 2585
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2586
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v4, v5, :cond_39

    .line 2587
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2588
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2589
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStack(IIZ)V

    .line 2593
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2594
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/am/ActivityStack;->prepareTaskToFrontTransition(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 2595
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    move-result v5

    if-nez v5, :cond_32

    .line 2596
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 2597
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    .line 2608
    :cond_32
    :goto_12
    const v5, 0x10004000

    and-int v5, v5, v33

    const v6, 0x10004000

    if-ne v5, v6, :cond_33

    .line 2612
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 2614
    :cond_33
    const/16 p7, 0x0

    .line 2619
    :cond_34
    const/high16 v5, 0x200000

    and-int v5, v5, v33

    if-eqz v5, :cond_35

    .line 2620
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v28

    .line 2622
    :cond_35
    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_3b

    .line 2627
    if-eqz p6, :cond_3a

    .line 2628
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 2632
    :goto_13
    const/4 v5, 0x1

    goto/16 :goto_f

    .line 2544
    .end local v19    # "curTop":Lcom/android/server/am/ActivityRecord;
    :cond_36
    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v19

    goto/16 :goto_10

    .line 2561
    .restart local v19    # "curTop":Lcom/android/server/am/ActivityRecord;
    :cond_37
    sget-boolean v5, Lcom/android/server/am/ActivityStackSupervisor;->isLaunchKnoxApps:Z

    if-eqz v5, :cond_38

    .line 2562
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v6, 0x400000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2563
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/am/ActivityStackSupervisor;->isLaunchKnoxApps:Z

    goto/16 :goto_11

    .line 2566
    :cond_38
    :try_start_0
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    const-string v6, "com.sec.android.app.launcher"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2f

    .line 2567
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/am/ActivityStackSupervisor;->isLaunchKnoxApps:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_11

    .line 2568
    :catch_0
    move-exception v43

    .line 2569
    .local v43, "npe":Ljava/lang/NullPointerException;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_11

    .line 2600
    .end local v43    # "npe":Ljava/lang/NullPointerException;
    :cond_39
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 2601
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    goto :goto_12

    .line 2630
    :cond_3a
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_13

    .line 2636
    :cond_3b
    const/16 v25, 0x0

    .line 2639
    .local v25, "ignoreIntentActivity":Z
    const v5, 0x10008000

    and-int v5, v5, v33

    const v6, 0x10008000

    if-ne v5, v6, :cond_3e

    .line 2645
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v45, v0

    .line 2646
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 2647
    move-object/from16 v0, v45

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2739
    :cond_3c
    :goto_14
    if-nez v12, :cond_53

    if-nez v45, :cond_53

    if-nez v25, :cond_53

    .line 2746
    if-eqz p6, :cond_52

    .line 2750
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 2751
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v20, v5, -0x1

    .restart local v20    # "displayNdx":I
    :goto_15
    if-ltz v20, :cond_50

    .line 2752
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    .line 2753
    .local v51, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v50, v5, -0x1

    .local v50, "stackNdx":I
    :goto_16
    if-ltz v50, :cond_4f

    .line 2754
    move-object/from16 v0, v51

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/am/ActivityStack;

    .line 2755
    .restart local v49    # "stack":Lcom/android/server/am/ActivityStack;
    const/4 v5, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v55

    .line 2756
    .local v55, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v55, :cond_4a

    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_4a

    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v6, 0x20000

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 2758
    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2759
    .local v11, "N":I
    add-int/lit8 v23, v11, -0x1

    .local v23, "i":I
    :goto_17
    if-ltz v23, :cond_4e

    .line 2760
    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ActivityRecord;

    .line 2761
    .local v17, "cr":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_3d

    move-object/from16 v0, v17

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_3d

    .line 2762
    const/16 v5, 0x10

    const/4 v6, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2759
    :cond_3d
    add-int/lit8 v23, v23, -0x1

    goto :goto_17

    .line 2648
    .end local v11    # "N":I
    .end local v17    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v20    # "displayNdx":I
    .end local v23    # "i":I
    .end local v49    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v50    # "stackNdx":I
    .end local v51    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v55    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_3e
    const/high16 v5, 0x4000000

    and-int v5, v5, v33

    if-nez v5, :cond_3f

    if-nez v34, :cond_3f

    if-eqz v35, :cond_44

    .line 2654
    :cond_3f
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v55

    .line 2656
    .restart local v55    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v55, :cond_41

    .line 2657
    move-object/from16 v0, v55

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v5, :cond_40

    .line 2662
    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2664
    :cond_40
    const/16 v5, 0x7533

    move-object/from16 v0, v55

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2666
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v55

    invoke-virtual {v0, v15, v5}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_14

    .line 2668
    :cond_41
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v5, v5, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_42

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-nez v5, :cond_43

    .line 2674
    :cond_42
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2675
    const/16 v25, 0x1

    .line 2677
    const/high16 v5, 0x10000000

    and-int v5, v5, v33

    if-nez v5, :cond_3c

    .line 2681
    if-eqz p2, :cond_3c

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v6

    xor-int/2addr v5, v6

    if-eqz v5, :cond_3c

    .line 2684
    const/16 p2, 0x0

    goto/16 :goto_14

    .line 2693
    :cond_43
    const/4 v12, 0x1

    .line 2697
    move-object/from16 p2, v28

    goto/16 :goto_14

    .line 2699
    .end local v55    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_44
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 2706
    const/high16 v5, 0x20000000

    and-int v5, v5, v33

    if-nez v5, :cond_45

    if-eqz v36, :cond_47

    :cond_45
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 2708
    const/16 v5, 0x7533

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2710
    move-object/from16 v0, v28

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v5, :cond_46

    .line 2711
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2713
    :cond_46
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v28

    invoke-virtual {v0, v15, v5}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_14

    .line 2714
    :cond_47
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 2718
    const/4 v12, 0x1

    .line 2719
    move-object/from16 p2, v28

    goto/16 :goto_14

    .line 2721
    :cond_48
    const/high16 v5, 0x200000

    and-int v5, v5, v33

    if-nez v5, :cond_49

    .line 2727
    const/4 v12, 0x1

    .line 2728
    move-object/from16 p2, v28

    goto/16 :goto_14

    .line 2729
    :cond_49
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v5, v5, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v5, :cond_3c

    .line 2737
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_14

    .line 2766
    .restart local v20    # "displayNdx":I
    .restart local v49    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v50    # "stackNdx":I
    .restart local v51    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v55    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4a
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 2767
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v13

    .line 2770
    .local v13, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v23, v5, -0x1

    .restart local v23    # "i":I
    :goto_18
    if-ltz v23, :cond_4e

    .line 2771
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/TaskRecord;

    .line 2772
    .local v18, "curTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/server/am/TaskRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    if-eq v5, v6, :cond_4c

    .line 2770
    :cond_4b
    add-int/lit8 v23, v23, -0x1

    goto :goto_18

    .line 2775
    :cond_4c
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v55

    .line 2776
    if-eqz v55, :cond_4b

    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_4b

    .line 2777
    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2778
    .restart local v11    # "N":I
    add-int/lit8 v30, v11, -0x1

    .local v30, "j":I
    :goto_19
    if-ltz v30, :cond_4b

    .line 2779
    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ActivityRecord;

    .line 2780
    .restart local v17    # "cr":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_4d

    move-object/from16 v0, v17

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_4d

    .line 2781
    const/16 v5, 0x10

    const/4 v6, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2778
    :cond_4d
    add-int/lit8 v30, v30, -0x1

    goto :goto_19

    .line 2753
    .end local v11    # "N":I
    .end local v13    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v17    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "curTask":Lcom/android/server/am/TaskRecord;
    .end local v23    # "i":I
    .end local v30    # "j":I
    :cond_4e
    add-int/lit8 v50, v50, -0x1

    goto/16 :goto_16

    .line 2751
    .end local v49    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v55    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4f
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_15

    .line 2791
    .end local v20    # "displayNdx":I
    .end local v50    # "stackNdx":I
    .end local v51    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_50
    if-eqz v4, :cond_51

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 2792
    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v4, v5, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 2793
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v22

    .line 2794
    .local v22, "focusedActivity":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2803
    .end local v22    # "focusedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_51
    :goto_1a
    const/4 v5, 0x2

    goto/16 :goto_f

    .line 2801
    :cond_52
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_1a

    .end local v19    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v25    # "ignoreIntentActivity":Z
    .end local v28    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v29    # "isKnoxLauncher":Z
    .end local v32    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_53
    move-object/from16 v52, v4

    .line 2815
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .local v52, "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_57

    .line 2819
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v56

    .line 2820
    .local v56, "topStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v56

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v55

    .line 2821
    .restart local v55    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v55, :cond_59

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_59

    .line 2822
    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    move-object/from16 v0, v55

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, v6, :cond_59

    .line 2823
    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_59

    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_59

    .line 2824
    const/high16 v5, 0x20000000

    and-int v5, v5, v33

    if-nez v5, :cond_54

    if-nez v36, :cond_54

    if-eqz v35, :cond_59

    :cond_54
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-nez v5, :cond_59

    .line 2827
    const/16 v5, 0x7533

    move-object/from16 v0, v55

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v55

    invoke-static {v5, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2831
    const/4 v5, 0x0

    move-object/from16 v0, v56

    iput-object v5, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2832
    if-eqz p6, :cond_55

    .line 2833
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 2835
    :cond_55
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2836
    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_56

    .line 2840
    const/4 v5, 0x1

    move-object/from16 v4, v52

    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_f

    .line 2842
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_56
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v55

    invoke-virtual {v0, v15, v5}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2843
    const/4 v5, 0x3

    move-object/from16 v4, v52

    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_f

    .line 2850
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v55    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v56    # "topStack":Lcom/android/server/am/ActivityStack;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_57
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_58

    .line 2851
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v5, -0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2854
    :cond_58
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2855
    const/4 v5, -0x2

    move-object/from16 v4, v52

    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_f

    .line 2858
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v55    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v56    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_59
    const-string v5, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 2859
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_5b

    const-string v5, "CU_Flag"

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 2860
    new-instance v26, Landroid/content/Intent;

    const-string v5, "android.intent.action.CHECK_CU_VAS"

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2861
    .local v26, "in":Landroid/content/Intent;
    const/high16 v5, 0x50000000

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2862
    const-string v5, "CU_Vas"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2863
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2864
    const/4 v5, 0x4

    move-object/from16 v4, v52

    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_f

    .line 2866
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v26    # "in":Landroid/content/Intent;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_5a
    const-string v5, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 2867
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 2868
    new-instance v26, Landroid/content/Intent;

    const-string v5, "android.intent.action.CHECK_CMCC_VAS"

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2869
    .restart local v26    # "in":Landroid/content/Intent;
    const/high16 v5, 0x50000000

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2870
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2871
    const/4 v5, 0x4

    move-object/from16 v4, v52

    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_f

    .line 2875
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v26    # "in":Landroid/content/Intent;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_5b
    const/16 v39, 0x0

    .line 2876
    .local v39, "newTask":Z
    const/16 v31, 0x0

    .line 2878
    .local v31, "keepCurTransition":Z
    if-eqz v37, :cond_5c

    if-eqz p2, :cond_5c

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v54, v0

    .line 2882
    .local v54, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :goto_1b
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_69

    if-nez p8, :cond_69

    if-nez v12, :cond_69

    const/high16 v5, 0x10000000

    and-int v5, v5, v33

    if-eqz v5, :cond_69

    .line 2884
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 2885
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 2886
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted Lock Task Mode violation r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    const/4 v5, 0x5

    move-object/from16 v4, v52

    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_f

    .line 2878
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v54    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_5c
    const/16 v54, 0x0

    goto :goto_1b

    .line 2889
    .restart local v54    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :cond_5d
    const/16 v39, 0x1

    .line 2890
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2891
    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    if-nez v37, :cond_5e

    .line 2892
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->moveToFront()V

    .line 2894
    :cond_5e
    if-nez v45, :cond_68

    .line 2895
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v5

    if-eqz v40, :cond_65

    move-object/from16 v6, v40

    :goto_1c
    if-eqz v41, :cond_66

    move-object/from16 v7, v41

    :goto_1d
    if-nez v37, :cond_67

    const/4 v10, 0x1

    :goto_1e
    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, v54

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2905
    :goto_1f
    if-nez v38, :cond_5f

    .line 2906
    const v5, 0x10004000

    and-int v5, v5, v33

    const v6, 0x10004000

    if-ne v5, v6, :cond_5f

    .line 2911
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 3074
    :cond_5f
    :goto_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move v6, v15

    move-object/from16 v8, v27

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 3077
    if-eqz p2, :cond_60

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v5

    if-eqz v5, :cond_60

    .line 3078
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 3080
    :cond_60
    if-eqz v39, :cond_61

    .line 3081
    const/16 v5, 0x7534

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3085
    :cond_61
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-eqz v5, :cond_62

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_62

    .line 3086
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/high16 v6, 0x8000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3088
    :cond_62
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v5, :cond_63

    .line 3089
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->resetSpecificTaskId()V

    .line 3093
    :cond_63
    const/16 v5, 0x7535

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3094
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v5, p1

    move/from16 v6, v39

    move/from16 v7, p6

    move/from16 v8, v31

    move-object/from16 v9, p7

    .line 3095
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V

    .line 3096
    if-nez v37, :cond_64

    .line 3098
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3100
    :cond_64
    const/4 v5, 0x0

    goto/16 :goto_f

    .line 2895
    :cond_65
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto/16 :goto_1c

    :cond_66
    move-object/from16 v7, v27

    goto/16 :goto_1d

    :cond_67
    const/4 v10, 0x0

    goto/16 :goto_1e

    .line 2903
    :cond_68
    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_1f

    .line 2914
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_69
    if-eqz p2, :cond_71

    .line 2915
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v48, v0

    .line 2916
    .local v48, "sourceTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 2917
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 2918
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted Lock Task Mode violation r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    const/4 v5, 0x5

    move-object/from16 v4, v52

    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_f

    .line 2921
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_6a
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2924
    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 2925
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 2926
    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v48

    invoke-virtual {v5, v0, v6}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2927
    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2939
    :cond_6b
    if-nez v12, :cond_6d

    const/high16 v5, 0x4000000

    and-int v5, v5, v33

    if-eqz v5, :cond_6d

    .line 2943
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v55

    .line 2944
    const/16 v31, 0x1

    .line 2945
    if-eqz v55, :cond_70

    .line 2946
    const/16 v5, 0x7533

    move-object/from16 v0, v55

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2947
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v55

    invoke-virtual {v0, v15, v5}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2950
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2951
    if-eqz p6, :cond_6c

    .line 2952
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2954
    if-nez v37, :cond_6c

    .line 2955
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v55

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2959
    :cond_6c
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2960
    const/4 v5, 0x3

    goto/16 :goto_f

    .line 2962
    :cond_6d
    if-nez v12, :cond_70

    const/high16 v5, 0x20000

    and-int v5, v5, v33

    if-eqz v5, :cond_70

    .line 2967
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v55

    .line 2968
    if-eqz v55, :cond_70

    .line 2969
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v53, v0

    .line 2972
    .local v53, "task":Lcom/android/server/am/TaskRecord;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 2975
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v55

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V

    .line 2978
    :cond_6e
    move-object/from16 v0, v53

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2979
    const/16 v5, 0x7533

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-static {v5, v0, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2980
    move-object/from16 v0, v55

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 2981
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v55

    invoke-virtual {v0, v15, v5}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2982
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2983
    if-eqz p6, :cond_6f

    .line 2984
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2986
    if-nez v37, :cond_6f

    .line 2987
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v55

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2991
    :cond_6f
    const/4 v5, 0x3

    goto/16 :goto_f

    .line 2997
    .end local v53    # "task":Lcom/android/server/am/TaskRecord;
    :cond_70
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_20

    .line 3001
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v48    # "sourceTask":Lcom/android/server/am/TaskRecord;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_71
    if-eqz p8, :cond_78

    .line 3004
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 3005
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    .line 3006
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted Lock Task Mode violation r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    const/4 v5, 0x5

    move-object/from16 v4, v52

    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_f

    .line 3012
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_72
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 3013
    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p8

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v4, v5, :cond_74

    .line 3014
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p8

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 3015
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3016
    move-object/from16 v0, p8

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStack(IIZZ)V

    .line 3033
    :goto_21
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v55

    .line 3034
    if-eqz v55, :cond_76

    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    move-object/from16 v0, v55

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, v6, :cond_76

    .line 3035
    const/high16 v5, 0x20000000

    and-int v5, v5, v33

    if-nez v5, :cond_73

    if-nez v36, :cond_73

    if-eqz v35, :cond_76

    .line 3037
    :cond_73
    const/16 v5, 0x7533

    move-object/from16 v0, v55

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v55

    invoke-static {v5, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3038
    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_75

    .line 3042
    const/4 v5, 0x1

    goto/16 :goto_f

    .line 3018
    :cond_74
    move-object/from16 v0, p8

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3019
    move-object/from16 v0, p8

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 3020
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->moveToFront()V

    .line 3021
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p8

    iget v6, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    goto :goto_21

    .line 3044
    :cond_75
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v55

    invoke-virtual {v0, v15, v5}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 3045
    const/4 v5, 0x3

    goto/16 :goto_f

    .line 3049
    :cond_76
    if-nez v12, :cond_77

    .line 3052
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3053
    const/4 v5, 0x2

    goto/16 :goto_f

    .line 3056
    :cond_77
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_20

    .line 3064
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 3065
    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->moveToFront()V

    .line 3066
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v44

    .line 3067
    .local v44, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v44, :cond_79

    move-object/from16 v0, v44

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_22
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3069
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    goto/16 :goto_20

    .line 3067
    :cond_79
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v7, v27

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    goto :goto_22

    .line 2231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startBackgroundUserLocked(ILcom/android/server/am/UserStartedState;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserStartedState;

    .prologue
    .line 4430
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4431
    return-void
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1212
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(I)V

    .line 1213
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    .line 1215
    return-void
.end method

.method startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "andResume"    # Z
    .param p3, "checkConfig"    # Z

    .prologue
    .line 1689
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v14

    .line 1692
    .local v14, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1694
    if-eqz v14, :cond_4

    iget-object v4, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_4

    .line 1696
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v4, :cond_0

    .line 1697
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    if-eqz v4, :cond_0

    .line 1698
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v14, v5}, Lcom/android/server/am/SmartAdjustManager;->updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V

    .line 1702
    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    const-string v4, "android"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1708
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->versionCode:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v14, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    .line 1711
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v14, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1745
    :cond_3
    :goto_0
    return-void

    .line 1713
    :catch_0
    move-exception v15

    .line 1714
    .local v15, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when starting activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1722
    .end local v15    # "e":Landroid/os/RemoteException;
    :cond_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "activity"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v16

    .line 1729
    .local v16, "startedApp":Lcom/android/server/am/ProcessRecord;
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_HOTNESS_ENABLE:Z

    if-eqz v4, :cond_5

    .line 1730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    if-eqz v4, :cond_5

    .line 1731
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSmartAdjustManager:Lcom/android/server/am/SmartAdjustManager;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/SmartAdjustManager;->updateHotnessAdj(Lcom/android/server/am/ProcessRecord;I)V

    .line 1736
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1739
    if-eqz v14, :cond_3

    .line 1740
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v6, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v4, v5, v6}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStart(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method switchUserLocked(ILcom/android/server/am/UserStartedState;)Z
    .locals 11
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserStartedState;

    .prologue
    const/4 v10, 0x1

    .line 4383
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 4384
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 4385
    .local v2, "restoreStackId":I
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 4387
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4388
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4389
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4390
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "stackNdx":I
    :goto_1
    if-ltz v4, :cond_1

    .line 4391
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 4392
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->switchUserLocked(I)V

    .line 4393
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 4394
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_0

    .line 4395
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 4390
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 4388
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4400
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4401
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_3

    .line 4402
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 4404
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v1

    .line 4405
    .local v1, "homeInFront":Z
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4408
    invoke-virtual {p0, v3, v10}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 4413
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 4414
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_4

    .line 4415
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 4421
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    :goto_2
    return v1

    .line 4419
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {p0, v10, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;)Z

    goto :goto_2
.end method

.method topResumedActivityExceptFloatingLocked(ZI)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "absoluteTop"    # Z
    .param p2, "displayId"    # I

    .prologue
    const/4 v4, 0x0

    .line 5902
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 5903
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is no ActivityDisplay for displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5920
    :goto_0
    return-object v4

    .line 5907
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    .line 5908
    .local v2, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 5909
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    goto :goto_0

    .line 5911
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "taskNdx":I
    :goto_1
    if-ltz v1, :cond_3

    .line 5912
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 5913
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2

    .line 5914
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v5, :cond_2

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    .line 5916
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_0

    .line 5911
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 5920
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :goto_2
    move-object v4, v3

    goto :goto_0

    :cond_4
    move-object v3, v4

    goto :goto_2
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .prologue
    .line 1043
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 11
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v8, 0x0

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1049
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    const/4 v2, 0x0

    .line 1050
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1051
    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1052
    if-eqz v2, :cond_1

    if-eq p1, v2, :cond_1

    move-object v7, v2

    .line 1078
    :cond_0
    :goto_0
    return-object v7

    .line 1058
    :cond_1
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 1059
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 1060
    .local v6, "top":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v6, v8}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 1061
    .local v7, "topRunningActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_2

    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1058
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1068
    .end local v6    # "top":Lcom/android/server/am/TaskRecord;
    .end local v7    # "topRunningActivity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, v9, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1069
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "stackNdx":I
    :goto_2
    if-ltz v4, :cond_5

    .line 1070
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 1071
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v3, v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1072
    invoke-virtual {v3, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1073
    if-eqz v2, :cond_4

    move-object v7, v2

    .line 1074
    goto :goto_0

    .line 1069
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_5
    move-object v7, v8

    .line 1078
    goto :goto_0
.end method

.method updateCascadeHiddenFlag(Z)V
    .locals 15
    .param p1, "resumed"    # Z

    .prologue
    .line 6306
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->needsCascadeForceHidden()Z

    move-result v5

    .line 6307
    .local v5, "needsFlags":Z
    const/4 v1, 0x0

    .line 6308
    .local v1, "flagChanged":Z
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 6309
    .local v7, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_0
    if-ge v0, v7, :cond_2

    .line 6310
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v9, v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6311
    .local v9, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    .line 6312
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 6313
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 6314
    .local v10, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_0

    .line 6315
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eq v11, v5, :cond_0

    .line 6316
    const/4 v1, 0x1

    .line 6317
    new-instance v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v4, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 6318
    .local v4, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v11, 0x8

    invoke-virtual {v4, v11, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 6319
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v11, v4}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_1

    .line 6309
    .end local v4    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6326
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v9    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 6327
    if-eqz v5, :cond_5

    .line 6328
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    .line 6334
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 6335
    .local v2, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_4

    .line 6336
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 6337
    .restart local v10    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_4

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 6338
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->findNextFocusableFloatingStackIdFromTop()I

    move-result v6

    .line 6339
    .local v6, "nextStackId":I
    const/4 v11, -0x1

    if-le v6, v11, :cond_6

    .line 6340
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 6346
    .end local v6    # "nextStackId":I
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_3
    return-void

    .line 6329
    .end local v2    # "focusedStack":Lcom/android/server/am/ActivityStack;
    :cond_5
    if-eqz p1, :cond_3

    .line 6330
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto :goto_2

    .line 6342
    .restart local v2    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "nextStackId":I
    .restart local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    iget v12, v12, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto :goto_3
.end method

.method updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V
    .locals 4
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 5926
    if-eqz p1, :cond_2

    .line 5927
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5928
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 5934
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, p1, :cond_1

    .line 5937
    const v1, 0x12c4b5

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    if-nez p1, :cond_3

    const/4 v0, -0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5938
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->hasLastDrawnFocusedStackFrameId()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5939
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->setLastDrawnFocusedStackFrameId(I)V

    .line 5945
    :cond_1
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 5946
    return-void

    .line 5931
    :cond_2
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 5937
    :cond_3
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_1
.end method

.method updateLastShownWhenLocked(I)V
    .locals 15
    .param p1, "displayId"    # I

    .prologue
    .line 4205
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v11

    if-nez v11, :cond_1

    .line 4252
    :cond_0
    :goto_0
    return-void

    .line 4208
    :cond_1
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 4209
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 4210
    .local v0, "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    .line 4211
    .local v10, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v11, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 4212
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->mIsLastShownWhenLocked:Z

    .line 4213
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Lcom/android/server/wm/WindowManagerService;->setAppWindowIsLastShownWhenLocked(Landroid/view/IApplicationToken;Z)Z

    goto :goto_1

    .line 4251
    .end local v0    # "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 4217
    .restart local v0    # "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_3
    const/4 v6, 0x0

    .line 4218
    .local v6, "lastShowWhenLockedActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v4, 0x0

    .line 4220
    .local v4, "isUpperShowWhenLockedActivityFound":Z
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_a

    .line 4221
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    .line 4222
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .local v5, "j":I
    :goto_3
    if-ltz v5, :cond_9

    .line 4223
    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 4224
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v11, :cond_5

    .line 4222
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 4228
    :cond_5
    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v11

    const/high16 v13, 0x40000000    # 2.0f

    and-int/2addr v11, v13

    if-nez v11, :cond_4

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v11, v11, 0x80

    if-nez v11, :cond_4

    .line 4233
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v11, v13}, Lcom/android/server/wm/WindowManagerService;->getMainWindowAttributesLocked(Landroid/view/IApplicationToken;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 4234
    .local v7, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v7, :cond_4

    .line 4235
    iget v11, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x80000

    and-int/2addr v11, v13

    if-eqz v11, :cond_7

    .line 4236
    if-nez v4, :cond_6

    .line 4237
    const/4 v4, 0x1

    goto :goto_4

    .line 4239
    :cond_6
    move-object v6, v8

    goto :goto_4

    .line 4242
    :cond_7
    if-eqz v6, :cond_8

    .line 4243
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/android/server/am/ActivityRecord;->mIsLastShownWhenLocked:Z

    .line 4244
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Lcom/android/server/wm/WindowManagerService;->setAppWindowIsLastShownWhenLocked(Landroid/view/IApplicationToken;Z)Z

    .line 4246
    :cond_8
    monitor-exit v12

    goto/16 :goto_0

    .line 4220
    .end local v7    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 4251
    .end local v5    # "j":I
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    :cond_a
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3319
    const/4 v1, 0x0

    .line 3320
    .local v1, "fgApp":Lcom/android/server/am/ProcessRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 3321
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3322
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 3323
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3324
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3325
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_1

    .line 3326
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3320
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3327
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_0

    .line 3328
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_2

    .line 3322
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3337
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v1, :cond_4

    iget-wide v6, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v8, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v6, :cond_4

    .line 3340
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 3341
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v6, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    .line 3343
    :cond_4
    return-void
.end method

.method validateTopActivitiesLocked()V
    .locals 0

    .prologue
    return-void
.end method

.method mzNotifyActivityDrawnForKeyguard()V
    .locals 0

    .prologue
    .line 4507
    return-void
.end method

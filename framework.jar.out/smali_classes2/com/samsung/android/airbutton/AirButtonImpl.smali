.class public final Lcom/samsung/android/airbutton/AirButtonImpl;
.super Ljava/lang/Object;
.source "AirButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;,
        Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;,
        Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;
    }
.end annotation


# static fields
.field private static final ACTION_MULTI_WINDOW:Ljava/lang/String; = "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

.field private static final AIR_VIEW_MODE:Ljava/lang/String; = "air_view_mode"

.field private static final BROADCAST_ALARM:Ljava/lang/String; = "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

.field private static final BROADCAST_SCOVER:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field public static final DATA_TYPE_COMBINATION:I = 0x3

.field public static final DATA_TYPE_DRAWABLE:I = 0x2

.field public static final DATA_TYPE_STRING:I = 0x1

.field public static final DEFAULT_CLIPED_TEXT_ADAPTER:I = 0x1

.field public static final DEFAULT_FREEQUENT_CONTACT_ADAPTER:I = 0x2

.field public static final DEFAULT_RECENT_MEDIA_ADAPTER:I = 0x3

.field public static final DEFAULT_RECENT_SNOTE:I = 0x4

.field public static final DIRECTION_AUTO:I = -0x1

.field public static final DIRECTION_LEFT:I = 0x3

.field public static final DIRECTION_LOWER:I = 0x2

.field public static final DIRECTION_RIGHT:I = 0x4

.field public static final DIRECTION_UPPER:I = 0x1

.field public static final GLOBAL_APP_EASY_CLIP:I = 0x5

.field public static final GLOBAL_APP_FLASH_ANNO:I = 0x2

.field public static final GLOBAL_APP_PEN_WINDOW:I = 0x4

.field public static final GLOBAL_APP_QUICK_MEMO:I = 0x0

.field public static final GLOBAL_APP_RAKEINSELECT:I = 0x7

.field public static final GLOBAL_APP_SCRAPBOOKER:I = 0x1

.field public static final GLOBAL_APP_S_FINDER:I = 0x3

.field public static final GLOBAL_APP_S_NOTE:I = 0x6

.field public static final GRAVITY_AUTO:I = -0x1

.field public static final GRAVITY_BOTTOM:I = 0x2

.field public static final GRAVITY_HOVER_POINT:I = 0x5

.field public static final GRAVITY_LEFT:I = 0x3

.field public static final GRAVITY_RIGHT:I = 0x4

.field public static final GRAVITY_TOP:I = 0x1

.field private static final IS_KEYPAD_VISIBLE:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field public static final MENU_ITEM_HEIGHT:I = 0x48

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field public static final STATE_DISMISS:I = 0x3

.field public static final STATE_HIDE:I = 0x2

.field public static final STATE_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AirButtonImpl"

.field public static final UI_TYPE_GLOBAL:I = 0x3

.field public static final UI_TYPE_LIST:I = 0x2

.field public static final UI_TYPE_MENU:I = 0x1

.field private static final URI_AIR_BUTTON_ONOFF:Ljava/lang/String; = "air_button_onoff"

.field private static final URI_AIR_VIEW_ONOFF:Ljava/lang/String; = "air_view_master_onoff"

.field private static mAirButtonAnimationViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;",
            ">;"
        }
    .end annotation
.end field

.field private static mLoggingEnabled:Z

.field private static mUspLevel:I


# instance fields
.field private mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

.field private mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

.field private mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

.field private mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

.field private mAirButtonViewCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

.field private mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mAttrs:Lcom/samsung/android/airbutton/Attributes;

.field private mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

.field private mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDataType:I

.field protected mDensity:F

.field private mHandler:Landroid/os/Handler;

.field private mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

.field private mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mHoverEnterTime:J

.field protected mHoverPressedPointX:F

.field protected mHoverPressedPointY:F

.field private mIsAirButtonAttached:Z

.field private mIsEditTextParentView:Z

.field private mIsEnabled:Z

.field private mIsHoverAnimationViewAttached:Z

.field private mIsHoverEnter:Z

.field private mIsHoverPointerEnabled:Z

.field private mIsSpenDetached:Z

.field private mIsToastShown:Z

.field private mIsWidgetDismissed:Z

.field private mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

.field private mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

.field private mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

.field private mKeypadHideRunnable:Ljava/lang/Runnable;

.field private mMultiWindowIntentFilter:Landroid/content/IntentFilter;

.field private mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

.field private mParentView:Landroid/view/View;

.field protected mParentViewHeight:I

.field private mParentViewHoverListener:Landroid/view/View$OnHoverListener;

.field protected mParentViewWidth:I

.field protected mParentViewX:I

.field protected mParentViewY:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRootViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field protected mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

.field private mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

.field protected mStatusbarHeight:I

.field private mUIType:I

.field private mWM:Landroid/view/WindowManager;

.field protected mWindowHeight:I

.field protected mWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    sput v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    .line 250
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    .line 330
    sput-boolean v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mLoggingEnabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p4, "UIType"    # I
    .param p5, "enabled"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    .line 233
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mRootViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 234
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    .line 235
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    .line 237
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    .line 238
    iput v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    .line 240
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 241
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    .line 242
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 243
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 244
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .line 245
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .line 246
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    .line 247
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 248
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    .line 249
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 257
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    .line 259
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    .line 261
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    .line 263
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    .line 265
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    .line 267
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    .line 269
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    .line 271
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    .line 278
    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointX:F

    .line 280
    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointY:F

    .line 282
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    .line 283
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverEnterTime:J

    .line 289
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEditTextParentView:Z

    .line 290
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    .line 291
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    .line 292
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    .line 293
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    .line 294
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverEnter:Z

    .line 295
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsToastShown:Z

    .line 296
    iput-boolean v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    .line 297
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    .line 305
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHandler:Landroid/os/Handler;

    .line 306
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    .line 307
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    .line 315
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 316
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    .line 317
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    .line 324
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    .line 325
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    .line 733
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$2;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    .line 770
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$3;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHoverListener:Landroid/view/View$OnHoverListener;

    .line 1710
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$5;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeypadHideRunnable:Ljava/lang/Runnable;

    .line 1848
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$7;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1858
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$8;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 364
    if-nez p2, :cond_0

    .line 365
    const-string v0, "AirButtonImpl"

    const-string v1, "Parent view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    if-nez p3, :cond_1

    .line 368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapter is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    .line 372
    sget-object v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    .line 375
    :cond_2
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-direct {v0, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    .line 376
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    new-instance v1, Lcom/samsung/android/airbutton/AirButtonImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$1;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->setOnSideButtonClickedListener(Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;)V

    .line 383
    invoke-virtual {p0, p2}, Lcom/samsung/android/airbutton/AirButtonImpl;->setParentView(Landroid/view/View;)V

    .line 384
    invoke-virtual {p0, p3}, Lcom/samsung/android/airbutton/AirButtonImpl;->setAdapter(Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;)V

    .line 385
    iput p4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    .line 386
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initSideButtonState()V

    .line 388
    :cond_3
    iput-boolean p5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    .line 390
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 391
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 392
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    .line 395
    :cond_4
    invoke-direct {p0, p5}, Lcom/samsung/android/airbutton/AirButtonImpl;->init(Z)V

    .line 398
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mLoggingEnabled:Z

    .line 399
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 339
    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-direct {v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>()V

    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V

    .line 340
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p3, "UIType"    # I

    .prologue
    .line 349
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V

    .line 350
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V
    .locals 6
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p3, "UIType"    # I
    .param p4, "enabled"    # Z

    .prologue
    .line 360
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V

    .line 361
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/airbutton/AirButtonImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 76
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/airbutton/AirButtonImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/airbutton/AirButtonImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeypadHideRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/view/AbsAirButtonView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    return-object v0
.end method

.method private broadcastAirButtonShowState(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    .line 916
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 917
    .local v0, "airButtonIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.AIR_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    const-string v1, "isShow"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 920
    const-string v1, "AirButtonImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastAirButtonShowState() isShow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 923
    return-void
.end method

.method private callStateListener(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1228
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    if-nez v1, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    if-ne p1, v2, :cond_3

    .line 1232
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    invoke-interface {v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;->onShow()V

    .line 1238
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    instance-of v1, v1, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;

    if-eqz v1, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    check-cast v0, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;

    .line 1242
    .local v0, "stateChangedListenerImpl":Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;
    if-ne p1, v2, :cond_5

    .line 1243
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;->onShow(Landroid/view/View;)V

    goto :goto_0

    .line 1233
    .end local v0    # "stateChangedListenerImpl":Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;
    :cond_3
    if-ne p1, v3, :cond_4

    .line 1234
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    invoke-interface {v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;->onHide()V

    goto :goto_1

    .line 1235
    :cond_4
    if-ne p1, v4, :cond_2

    .line 1236
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    invoke-interface {v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;->onDismiss()V

    goto :goto_1

    .line 1244
    .restart local v0    # "stateChangedListenerImpl":Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;
    :cond_5
    if-ne p1, v3, :cond_6

    .line 1245
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;->onHide(Landroid/view/View;)V

    goto :goto_0

    .line 1246
    :cond_6
    if-ne p1, v4, :cond_0

    .line 1247
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;->onDismiss(Landroid/view/View;)V

    goto :goto_0
.end method

.method private checkTalkbackEnable()Z
    .locals 4

    .prologue
    .line 1280
    const/4 v1, 0x0

    .line 1281
    .local v1, "talkbackEnabled":Z
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1283
    .local v0, "accesibilityService":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1284
    const-string v2, "(?i).*talkback.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 1287
    :cond_0
    return v1
.end method

.method private createAndAttachHoverAnimationView()V
    .locals 4

    .prologue
    .line 562
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 588
    :goto_0
    return-void

    .line 565
    :cond_0
    monitor-enter p0

    .line 566
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->removeAllHoverAnimationViews()V

    .line 568
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-eqz v1, :cond_2

    .line 569
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 587
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 571
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    if-nez v1, :cond_3

    .line 572
    new-instance v1, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;-><init>(Landroid/view/View;F)V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    .line 574
    :cond_3
    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initHoverAnimationViewLayoutParams()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 585
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    .line 586
    const-string v1, "AirButtonImpl"

    const-string v2, "Hover animation view attached"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    monitor-exit p0

    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v1, "AirButtonImpl"

    const-string v2, "Your parent view token is wrong or removed. Please check it"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    .line 582
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private createAndInitAirButtonView(Landroid/view/View;)Z
    .locals 4
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 591
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->initWidgetLocationBasedOnView(Landroid/view/View;)V

    .line 621
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;Lcom/samsung/android/airbutton/Attributes;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    .line 622
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->getAirButtonView()Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    .line 624
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    if-nez v0, :cond_0

    .line 625
    const-string v0, "AirButtonImpl"

    const-string v1, "Cannot create AirButton view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v0, 0x0

    .line 634
    :goto_0
    return v0

    .line 629
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createAndRegisterReceivers()V

    .line 631
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setAirButton(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    .line 632
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setAirButtonViewCallback(Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;)V

    .line 634
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createAndRegisterReceivers()V
    .locals 2

    .prologue
    .line 1344
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createConfigurationChangedReceiver()V

    .line 1345
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->registerConfigurationChangeReceiver()V

    .line 1347
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1348
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createKeypadHideReceiver()V

    .line 1349
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->registerKeypadHideReceiver()V

    .line 1353
    :cond_0
    return-void
.end method

.method private createConfigurationChangedReceiver()V
    .locals 3

    .prologue
    .line 1758
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1759
    new-instance v1, Lcom/samsung/android/airbutton/AirButtonImpl$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$6;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1786
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_1

    .line 1787
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    .line 1788
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1789
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1790
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1791
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.cover.OPEN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1793
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    .line 1794
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1795
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    const/16 v2, 0x3e7

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1798
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1800
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1801
    .local v0, "tmgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_2

    .line 1802
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1806
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_3

    .line 1807
    const-string v1, "AirButtonImpl"

    const-string/jumbo v2, "registerListener mCoverStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 1811
    .end local v0    # "tmgr":Landroid/telephony/TelephonyManager;
    :cond_3
    return-void
.end method

.method private createKeypadHideReceiver()V
    .locals 2

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1685
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$4;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    .line 1703
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 1704
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    .line 1705
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1706
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.ACTION_HIDE_SIP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1708
    :cond_1
    return-void
.end method

.method private createMultiWindowReceiver()V
    .locals 2

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1876
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$9;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    .line 1887
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 1888
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    .line 1889
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1891
    :cond_1
    return-void
.end method

.method private getAirButtonView()Lcom/samsung/android/airbutton/view/AbsAirButtonView;
    .locals 5

    .prologue
    .line 638
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v0, :cond_0

    .line 639
    const/4 v0, 0x0

    .line 646
    :goto_0
    return-object v0

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 642
    new-instance v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;Z)V

    goto :goto_0

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    if-eqz v0, :cond_2

    .line 644
    new-instance v0, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0

    .line 646
    :cond_2
    new-instance v0, Lcom/samsung/android/airbutton/view/AirButtonListView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/airbutton/view/AirButtonListView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0
.end method

.method private init(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 417
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    .line 421
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initScreenSize()V

    .line 422
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->initWithAdapter(Z)V

    .line 423
    return-void
.end method

.method private initAirButtonViewLayoutParams()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 530
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 533
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 534
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v3, :cond_5

    .line 535
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x831

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 536
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 540
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 541
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 542
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 545
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initScreenSize()V

    .line 546
    sget v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "do_not_show_guidepopup_gac"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 547
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setStatusBarHeight()V

    .line 549
    :cond_2
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v3, :cond_6

    .line 550
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 553
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 554
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 556
    sget v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "do_not_show_guidepopup_gac"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    .line 557
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x500

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 559
    :cond_4
    return-void

    .line 538
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 551
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 552
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method private initDataType()V
    .locals 3

    .prologue
    .line 465
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-nez v1, :cond_0

    .line 483
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 469
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v0

    .line 471
    .local v0, "firstItem":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 472
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    .line 481
    .end local v0    # "firstItem":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initParentViewData()V

    .line 482
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {p0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setAttributes(Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0

    .line 473
    .restart local v0    # "firstItem":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 474
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    goto :goto_1

    .line 475
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 476
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    goto :goto_1

    .line 478
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AirButtonItem is empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initHoverAnimationViewLayoutParams()V
    .locals 6

    .prologue
    .line 500
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 525
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 504
    .local v0, "hoverAnimationViewSize":I
    int-to-float v3, v0

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 505
    .local v1, "pixelHoverAnimationViewSize":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 506
    .local v2, "viewLocation":[I
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 510
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setStatusBarHeight()V

    .line 512
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 513
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 514
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x3eb

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 515
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 516
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 517
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 518
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 519
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 520
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 521
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 523
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    aget v4, v2, v4

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 524
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x1

    aget v4, v2, v4

    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    .line 505
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private initParentViewData()V
    .locals 2

    .prologue
    .line 486
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 497
    :goto_0
    return-void

    .line 489
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 490
    .local v0, "viewLocation":[I
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 491
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    .line 492
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    .line 493
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    .line 494
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    goto :goto_0

    .line 489
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private initScreenSize()V
    .locals 2

    .prologue
    .line 438
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 439
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 441
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    .line 442
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    .line 443
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    .line 444
    return-void
.end method

.method private initWithAdapter(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setAttributes(Lcom/samsung/android/airbutton/Attributes;)V

    .line 428
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->enable()V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v0, :cond_0

    .line 431
    if-eqz p1, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->enable()V

    goto :goto_0
.end method

.method private isSealedState()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2011
    const/4 v7, 0x0

    .line 2012
    .local v7, "sealedState":Z
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2013
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2014
    .local v6, "cr":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2015
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getSealedState"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2018
    :cond_0
    if-eqz v6, :cond_1

    .line 2020
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2021
    const-string v0, "getSealedState"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 2024
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2027
    :cond_1
    return v7

    .line 2024
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isVzwSetupRunning()Z
    .locals 1

    .prologue
    .line 932
    const/4 v0, 0x0

    return v0
.end method

.method private registerConfigurationChangeReceiver()V
    .locals 3

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1827
    :goto_0
    return-void

    .line 1818
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1823
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1824
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1825
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1819
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private registerKeypadHideReceiver()V
    .locals 3

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1740
    :goto_0
    return-void

    .line 1732
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1737
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1738
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1733
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private registerMultiWindowReceiver()V
    .locals 3

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1906
    :goto_0
    return-void

    .line 1898
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1903
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1904
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1899
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private removeAllHoverAnimationViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1305
    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1318
    :cond_0
    return-void

    .line 1308
    :cond_1
    const-string v1, "AirButtonImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remained animation view size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1311
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    :goto_1
    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1312
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private sendLogAirButtonLanch()V
    .locals 4

    .prologue
    .line 1919
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1920
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.samsung.android.airbutton"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    const-string v2, "feature"

    const-string v3, "AC01"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1925
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1926
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1928
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1930
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1931
    return-void
.end method

.method private setStatusBarHeight()V
    .locals 3

    .prologue
    .line 447
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    .line 449
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 451
    .local v0, "wm":Landroid/view/IWindowManager;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :cond_0
    :goto_0
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    .line 461
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    iput v2, v1, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    .line 462
    return-void

    .line 454
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setWidgetDirection()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 1457
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1469
    :cond_0
    :goto_0
    return-void

    .line 1460
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    .line 1461
    .local v1, "upperSpace":I
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 1463
    .local v0, "lowerSpace":I
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v2, v5, :cond_0

    .line 1464
    if-le v1, v0, :cond_2

    .line 1465
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v3, 0x1

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    goto :goto_0

    .line 1467
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v5, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    goto :goto_0
.end method

.method private setWidgetPosition()V
    .locals 5

    .prologue
    .line 1444
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1454
    :cond_0
    :goto_0
    return-void

    .line 1447
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    .line 1448
    .local v1, "upperSpace":I
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 1450
    .local v0, "lowerSpace":I
    if-ge v1, v0, :cond_2

    .line 1451
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v3, 0x2

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto :goto_0

    .line 1453
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v3, 0x1

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto :goto_0
.end method

.method private showEmptyText()V
    .locals 3

    .prologue
    .line 402
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-nez v1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getEmptyText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 407
    .local v0, "emptyText":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsToastShown:Z

    if-nez v1, :cond_1

    .line 408
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsToastShown:Z

    .line 409
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHide(Landroid/view/View;)V

    .line 413
    :cond_2
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->callStateListener(I)V

    goto :goto_0
.end method

.method private unregisterConfigurationChangeReceiver()V
    .locals 3

    .prologue
    .line 1830
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1846
    :cond_0
    :goto_0
    return-void

    .line 1834
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1838
    :goto_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1840
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1841
    .local v0, "tmgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 1842
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 1835
    .end local v0    # "tmgr":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private unregisterKeypadHideReceiver()V
    .locals 2

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1750
    :goto_0
    return-void

    .line 1747
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1748
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unregisterMultiWindowReceiver()V
    .locals 2

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1916
    :goto_0
    return-void

    .line 1913
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1914
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 1356
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1357
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->unregisterConfigurationChangeReceiver()V

    .line 1362
    :goto_0
    return-void

    .line 1359
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->unregisterKeypadHideReceiver()V

    goto :goto_0
.end method


# virtual methods
.method protected adjustMenuItemXPosition()V
    .locals 7

    .prologue
    .line 709
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-nez v3, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v4

    mul-int v2, v3, v4

    .line 713
    .local v2, "totalWidgetWidth":I
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->x:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 715
    .local v0, "outOfXBoundary":I
    if-ltz v0, :cond_0

    .line 718
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    div-int v1, v0, v3

    .line 719
    .local v1, "outOfXBoundaryItemCnt":I
    add-int/lit8 v1, v1, 0x1

    .line 721
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 722
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 724
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v1, v3, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    .line 725
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    iget-object v6, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    goto :goto_0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1176
    :goto_0
    return-void

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnAirButtonHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1135
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    .line 1137
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    .line 1138
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hideHoverPointer()V

    .line 1139
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->disable()V

    .line 1142
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v1, :cond_0

    .line 1143
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onDismiss(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->unlinkWithParentView()V

    .line 1149
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    .line 1150
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    .line 1151
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    .line 1152
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 1153
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 1154
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .line 1155
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .line 1157
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->callStateListener(I)V

    .line 1159
    const-string v1, "AirButtonImpl"

    const-string v2, "dismissed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    return-void

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 1164
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnAirButtonHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method public getAdapter()Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 1

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    return-object v0
.end method

.method public getAttributes()Lcom/samsung/android/airbutton/Attributes;
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v0, :cond_0

    .line 1474
    new-instance v0, Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0}, Lcom/samsung/android/airbutton/Attributes;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/Attributes;->clone()Lcom/samsung/android/airbutton/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1096
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    if-nez v0, :cond_0

    .line 1129
    :goto_0
    return-void

    .line 1099
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->unregisterReceivers()V

    .line 1101
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    .line 1104
    const-string v0, "AirButtonImpl"

    const-string/jumbo v1, "unregisterListener mCoverStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 1110
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    if-eqz v0, :cond_2

    .line 1111
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    if-eqz v0, :cond_3

    .line 1116
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setAirButtonViewCallback(Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;)V

    .line 1117
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    .line 1120
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    .line 1122
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v0, :cond_4

    .line 1123
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHide(Landroid/view/View;)V

    .line 1124
    :cond_4
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->callStateListener(I)V

    .line 1126
    invoke-direct {p0, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->broadcastAirButtonShowState(Z)V

    .line 1128
    const-string v0, "AirButtonImpl"

    const-string v1, "hided"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1112
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public hideHoverPointer()V
    .locals 2

    .prologue
    .line 1211
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    if-nez v0, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->hideAnimationView()V

    .line 1217
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    .line 1223
    const-string v0, "AirButtonImpl"

    const-string v1, "Hover animation view detached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1218
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public initSideButtonState()V
    .locals 2

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->resetVariables(Z)V

    .line 1368
    :cond_0
    return-void
.end method

.method protected initWidgetLocationBasedOnView(Landroid/view/View;)V
    .locals 8
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    .line 651
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {v2}, Lcom/samsung/android/airbutton/Attributes;->clone()Lcom/samsung/android/airbutton/Attributes;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 653
    if-nez p1, :cond_1

    .line 654
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v2, v3, :cond_0

    .line 655
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointX:F

    float-to-int v4, v4

    iput v4, v3, Lcom/samsung/android/airbutton/Attributes;->x:I

    iput v4, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 656
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointY:F

    float-to-int v4, v4

    iput v4, v3, Lcom/samsung/android/airbutton/Attributes;->y:I

    iput v4, v2, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setWidgetPosition()V

    .line 663
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setWidgetDirection()V

    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, "widgetLocationX":I
    const/4 v1, 0x0

    .line 668
    .local v1, "widgetLocationY":I
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v5, :cond_2

    .line 669
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointX:F

    float-to-int v3, v3

    add-int v0, v2, v3

    .line 677
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v2, Lcom/samsung/android/airbutton/Attributes;->x:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->x:I

    .line 679
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v5, :cond_5

    .line 680
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointY:F

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 688
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    .line 689
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    .line 693
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->x:I

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 694
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->y:I

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    .line 696
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v5, :cond_0

    .line 697
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    int-to-float v2, v2

    const/high16 v3, 0x42900000    # 72.0f

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 698
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v6, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto :goto_0

    .line 670
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v3, :cond_3

    .line 671
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    goto :goto_1

    .line 672
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 673
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    add-int v0, v2, v3

    goto :goto_1

    .line 675
    :cond_4
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    goto :goto_1

    .line 681
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v6, :cond_6

    .line 682
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    goto :goto_2

    .line 683
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v7, :cond_7

    .line 684
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    add-int v1, v2, v3

    goto :goto_2

    .line 686
    :cond_7
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    goto :goto_2

    .line 700
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v7, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto/16 :goto_0
.end method

.method public isAirButtonSettingEnabled()Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, -0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1253
    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_button_onoff"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1256
    .local v0, "airButtonOnOff":I
    sget v5, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    if-ne v5, v8, :cond_5

    .line 1257
    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v5, v8, :cond_2

    .line 1258
    if-nez v0, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 1258
    goto :goto_0

    .line 1259
    :cond_2
    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1260
    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "pen_hovering"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_3

    move v1, v4

    .line 1261
    .local v1, "isSPenHoveringOn":Z
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "pen_hovering_air_menu"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1262
    .local v2, "listMneuOnOff":I
    if-eqz v1, :cond_4

    if-ne v2, v4, :cond_4

    :goto_2
    move v3, v4

    goto :goto_0

    .end local v1    # "isSPenHoveringOn":Z
    .end local v2    # "listMneuOnOff":I
    :cond_3
    move v1, v3

    .line 1260
    goto :goto_1

    .restart local v1    # "isSPenHoveringOn":Z
    .restart local v2    # "listMneuOnOff":I
    :cond_4
    move v4, v3

    .line 1262
    goto :goto_2

    .line 1266
    .end local v1    # "isSPenHoveringOn":Z
    .end local v2    # "listMneuOnOff":I
    :cond_5
    if-eqz v0, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public isBounceEffectEnabled()Z
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    return v0
.end method

.method public isCoverViewOpened()Z
    .locals 3

    .prologue
    .line 1292
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 1293
    .local v1, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 1301
    .local v0, "isCoverOpen":Z
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1394
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    return v0
.end method

.method public isHoverPointerEnabled()Z
    .locals 1

    .prologue
    .line 1608
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    return v0
.end method

.method public isHoverPointerShowing()Z
    .locals 1

    .prologue
    .line 1592
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    return v0
.end method

.method public isMultiSelectionEnabled()Z
    .locals 1

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->multipleSelection:Z

    return v0
.end method

.method public isPenWindowMode()Z
    .locals 1

    .prologue
    .line 1340
    const/4 v0, 0x0

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1584
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    return v0
.end method

.method public isSpenDetachSettingEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1272
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 1276
    :cond_0
    :goto_0
    return v1

    .line 1275
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_detachment_option"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1276
    .local v0, "penDetachOption":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public linkWithParentView()V
    .locals 1

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setAirButton(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    .line 1668
    :cond_0
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 785
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v0, v3, :cond_0

    .line 786
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getEmptyText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 811
    :goto_0
    return v2

    .line 791
    :cond_0
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v3, :cond_2

    .line 792
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onHoverForGA(Landroid/view/MotionEvent;)Z

    .line 798
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 803
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 794
    :cond_2
    sget v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    sget v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 795
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onHover(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 800
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverEnter(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 806
    :pswitch_3
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsToastShown:Z

    .line 807
    invoke-virtual {p0, p2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverExit(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 798
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onHoverButtonSecondary(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    if-eqz v0, :cond_0

    .line 909
    const-string v0, "AirButtonImpl"

    const-string/jumbo v1, "onHoverButtonSecondary mIsAirButtonAttached is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :goto_0
    return-void

    .line 912
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->show(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onHoverEnter(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 829
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHoverEnter(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 830
    iput-boolean v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverEnter:Z

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverEnter:Z

    .line 836
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverEnterTime:J

    .line 841
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 842
    sget v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    if-ne v1, v5, :cond_2

    .line 843
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->showHoverPointer()V

    goto :goto_0

    .line 844
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isAirButtonSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    const/16 v1, 0xa

    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AirButtonImpl"

    const-string v2, "Failed to change pen point to HOVERING_SPENICON_MORE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onHoverExit(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x2

    .line 882
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v1, :cond_0

    .line 883
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHoverExit(Landroid/view/View;)V

    .line 885
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 901
    :goto_0
    return-void

    .line 888
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 889
    sget v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    if-ne v1, v3, :cond_3

    .line 890
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hideHoverPointer()V

    .line 900
    :cond_2
    :goto_1
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverEnterTime:J

    goto :goto_0

    .line 891
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isAirButtonSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 893
    const/4 v1, 0x1

    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AirButtonImpl"

    const-string v2, "Failed to change pen Pointer to HOVERING_SPENICON_DEFAULT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onHoverMove(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 859
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-nez v2, :cond_2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 863
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->showHoverPointer()V

    .line 865
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 867
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->setAnimationViewPosition(FF)V

    .line 869
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 870
    .local v0, "currentTime":J
    sget v2, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-ne v2, v5, :cond_0

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v2, v5, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverEnterTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverEnterTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 871
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverButtonSecondary(Landroid/view/MotionEvent;)V

    .line 873
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverEnterTime:J

    goto :goto_0
.end method

.method public onTouchDownForGA(I)V
    .locals 1
    .param p1, "buttonState"    # I

    .prologue
    .line 816
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onTouchDownForGA(I)V

    .line 817
    return-void
.end method

.method public onTouchUpForGA(I)V
    .locals 1
    .param p1, "buttonState"    # I

    .prologue
    .line 821
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onTouchUpForGA(I)V

    .line 822
    return-void
.end method

.method public setAdapter(Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .prologue
    .line 1641
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 1643
    if-nez p1, :cond_1

    .line 1644
    const-string v0, "AirButtonImpl"

    const-string/jumbo v1, "set adapter to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_0
    :goto_0
    return-void

    .line 1648
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1649
    const-string v0, "AirButtonImpl"

    const-string v1, "adapter count is 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAttributes(Lcom/samsung/android/airbutton/Attributes;)V
    .locals 6
    .param p1, "attribute"    # Lcom/samsung/android/airbutton/Attributes;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x3

    .line 1399
    if-nez p1, :cond_0

    .line 1400
    new-instance p1, Lcom/samsung/android/airbutton/Attributes;

    .end local p1    # "attribute":Lcom/samsung/android/airbutton/Attributes;
    invoke-direct {p1}, Lcom/samsung/android/airbutton/Attributes;-><init>()V

    .line 1402
    .restart local p1    # "attribute":Lcom/samsung/android/airbutton/Attributes;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v0, :cond_2

    .line 1403
    invoke-virtual {p1}, Lcom/samsung/android/airbutton/Attributes;->clone()Lcom/samsung/android/airbutton/Attributes;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 1407
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    .line 1408
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    .line 1409
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    .line 1410
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    .line 1411
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewY:I

    .line 1412
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewWidth:I

    .line 1413
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewHeight:I

    .line 1414
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->density:F

    .line 1415
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    .line 1416
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    .line 1418
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v5, :cond_5

    .line 1419
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    if-ne v0, v5, :cond_3

    .line 1420
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 1421
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    .line 1440
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/Attributes;->calculatePixelValue()V

    .line 1441
    return-void

    .line 1405
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/Attributes;->copyFrom(Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0

    .line 1422
    :cond_3
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    if-ne v0, v4, :cond_4

    .line 1423
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 1424
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v3, v0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    goto :goto_1

    .line 1425
    :cond_4
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    if-ne v0, v2, :cond_1

    .line 1426
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 1427
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v3, v0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    goto :goto_1

    .line 1429
    :cond_5
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v4, :cond_6

    .line 1430
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    .line 1432
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    if-ne v0, v2, :cond_1

    .line 1433
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 1434
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    goto :goto_1

    .line 1436
    :cond_6
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v2, :cond_1

    .line 1437
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v1, 0x5

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto :goto_1
.end method

.method public setBounceEffectEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-boolean p1, v0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    .line 1569
    return-void
.end method

.method public setDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p1, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    .line 1514
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1381
    iput-boolean p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    .line 1383
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 1384
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->enable()V

    .line 1387
    :goto_0
    return-void

    .line 1386
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->disable()V

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p1, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    .line 1501
    return-void
.end method

.method public setHoverPointerEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1600
    iput-boolean p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    .line 1601
    return-void
.end method

.method public setMultiSelectionEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-boolean p1, v0, Lcom/samsung/android/airbutton/Attributes;->multipleSelection:Z

    .line 1537
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .prologue
    .line 1492
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .line 1493
    return-void
.end method

.method public setOnStateChangedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .prologue
    .line 1484
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .line 1485
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1616
    if-nez p1, :cond_0

    .line 1634
    :goto_0
    return-void

    .line 1619
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    if-eqz v0, :cond_1

    .line 1620
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    .line 1622
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-eqz v0, :cond_2

    .line 1623
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hideHoverPointer()V

    .line 1625
    :cond_2
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 1626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEditTextParentView:Z

    .line 1628
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEditTextParentView:Z

    if-eqz v0, :cond_4

    .line 1629
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setHoverPointerEnabled(Z)V

    .line 1631
    :cond_4
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    .line 1632
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    .line 1633
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->linkWithParentView()V

    goto :goto_0
.end method

.method public setPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p1, v0, Lcom/samsung/android/airbutton/Attributes;->x:I

    .line 1528
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p2, v0, Lcom/samsung/android/airbutton/Attributes;->y:I

    .line 1529
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-boolean p1, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    .line 1553
    return-void
.end method

.method public show()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 944
    const/4 v1, -0x1

    .line 946
    .local v1, "isKidsMode":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kids_home_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 951
    :goto_0
    if-ne v1, v5, :cond_1

    .line 952
    const-string v2, "AirButtonImpl"

    const-string v3, "Kids mode is running"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :cond_0
    :goto_1
    return-void

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0

    .line 956
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "car_mode_on"

    const/4 v4, -0x3

    invoke-static {v2, v3, v7, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 957
    const-string v2, "AirButtonImpl"

    const-string v3, "car mode is running"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 963
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isSealedState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 964
    const-string v2, "AirButtonImpl"

    const-string v3, "Knox Customization: Sealed Mode is active"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 971
    :cond_3
    const-string/jumbo v2, "true"

    const-string v3, "dev.knoxapp.running"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 972
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v2, v6, :cond_0

    .line 977
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isVzwSetupRunning()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 978
    const-string v2, "AirButtonImpl"

    const-string v3, "Verizon Setup Wizard is Running Don\'t show the SPen events"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 982
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/airbutton/AirButtonProperities;->isUspFeatureEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 983
    const-string v2, "AirButtonImpl"

    const-string v3, "Version is low"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 999
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isAirButtonSettingEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isSpenDetachSettingEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1000
    :cond_7
    const-string v2, "AirButtonImpl"

    const-string v3, "AirButtonSettingEnabled is false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1007
    :cond_8
    iget-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isCoverViewOpened()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1008
    const-string v2, "AirButtonImpl"

    const-string v3, "CoverView is closed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1012
    :cond_9
    iget-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    if-eqz v2, :cond_a

    .line 1013
    const-string v2, "AirButtonImpl"

    const-string v3, "Widget already dismissed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1017
    :cond_a
    iget-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    if-eqz v2, :cond_b

    .line 1018
    const-string v2, "AirButtonImpl"

    const-string v3, "Widget already attached"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1022
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v2, :cond_c

    .line 1023
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onShow(Landroid/view/View;)V

    .line 1025
    :cond_c
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v2, v6, :cond_d

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_d

    .line 1026
    const-string v2, "AirButtonImpl"

    const-string/jumbo v3, "skip showing AirButton 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->showEmptyText()V

    goto/16 :goto_1

    .line 1031
    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initAirButtonViewLayoutParams()V

    .line 1033
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initDataType()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1040
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    if-nez v2, :cond_f

    .line 1041
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->createAndInitAirButtonView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1042
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v2, :cond_e

    .line 1043
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHide(Landroid/view/View;)V

    .line 1045
    :cond_e
    const-string v2, "AirButtonImpl"

    const-string/jumbo v3, "skip showing AirButton 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1034
    :catch_1
    move-exception v0

    .line 1035
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "AirButtonImpl"

    const-string v3, "AirButtonItem is data type coming empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    .line 1050
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_f
    invoke-direct {p0, v5}, Lcom/samsung/android/airbutton/AirButtonImpl;->callStateListener(I)V

    .line 1053
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1060
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hideHoverPointer()V

    .line 1061
    iput-boolean v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    .line 1062
    iput-boolean v7, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    .line 1063
    invoke-direct {p0, v5}, Lcom/samsung/android/airbutton/AirButtonImpl;->broadcastAirButtonShowState(Z)V

    .line 1064
    sget-boolean v2, Lcom/samsung/android/airbutton/AirButtonImpl;->mLoggingEnabled:Z

    if-eqz v2, :cond_10

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v2, v6, :cond_10

    .line 1065
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->sendLogAirButtonLanch()V

    .line 1066
    :cond_10
    const-string v2, "AirButtonImpl"

    const-string v3, "added"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1054
    :catch_2
    move-exception v0

    .line 1055
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v2, "AirButtonImpl"

    const-string v3, "Your parent view token is wrong or removed. Please check it"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public show(FF)V
    .locals 2
    .param p1, "hoverX"    # F
    .param p2, "hoverY"    # F

    .prologue
    const v1, 0x461c4000    # 10000.0f

    .line 1083
    iput p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointX:F

    .line 1084
    iput p2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointY:F

    .line 1086
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-nez v0, :cond_0

    .line 1087
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    .line 1089
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->show()V

    .line 1090
    return-void
.end method

.method public show(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1074
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->show(FF)V

    .line 1075
    return-void
.end method

.method public showHoverPointer()V
    .locals 2

    .prologue
    .line 1184
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isSealedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1185
    const-string v0, "AirButtonImpl"

    const-string v1, "Knox Customization: Sealed Mode is active"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/airbutton/AirButtonProperities;->isUspFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1191
    const-string v0, "AirButtonImpl"

    const-string v1, "Version is low"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1195
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isAirButtonSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isPenWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1201
    sget v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1204
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createAndAttachHoverAnimationView()V

    goto :goto_0
.end method

.method public unlinkWithParentView()V
    .locals 2

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1675
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAirButton(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    .line 1676
    :cond_0
    return-void
.end method

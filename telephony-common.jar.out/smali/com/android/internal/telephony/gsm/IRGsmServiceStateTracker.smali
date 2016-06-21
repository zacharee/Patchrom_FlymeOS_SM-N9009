.class public Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;
.super Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.source "IRGsmServiceStateTracker.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IRGSMSST"

.field private static final MANUAL_SELECTION_OOS_TIMER:I = 0x5a

.field static final MAX_NUM_DATA_STATE_READS:I = 0x96

.field static final VDBG:Z

.field public static mNitzRxed:Z

.field public static mPrevMcc:Ljava/lang/String;

.field private static mSleepPendedWhileNetSrchGsm:Z

.field public static oosTimerRunning:Z


# instance fields
.field private countCheckDataStateReads:I

.field private mCurrentSystemTime:J

.field private mIrIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected propertyCount:I

.field sender_ManSrchTimer:Landroid/app/PendingIntent;

.field sender_ManSrchTimer_Dir:Landroid/app/PendingIntent;

.field sender_NetSrchTimer:Landroid/app/PendingIntent;

.field sender_NoSvcChkTimer:Landroid/app/PendingIntent;

.field sender_PendingIntentTimer:Landroid/app/PendingIntent;

.field sender_ReduceSearchTimer:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    sput-boolean v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->oosTimerRunning:Z

    .line 159
    sput-boolean v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNitzRxed:Z

    .line 160
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPrevMcc:Ljava/lang/String;

    .line 161
    sput-boolean v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSleepPendedWhileNetSrchGsm:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v1, 0x0

    .line 370
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 142
    iput v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->countCheckDataStateReads:I

    .line 162
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSystemTime:J

    .line 164
    iput v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->propertyCount:I

    .line 166
    new-instance v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mIrIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone_sim_slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phone_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGsmDfltPhoneIdx(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    const-string v1, "isGsmDfltPhoneIdx"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    if-nez v1, :cond_1

    .line 376
    const-string v1, "[Global mode] switch to GSM, reset fakeDispCanceled to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v2, "ril.fakeDispCanceled"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 382
    .local v0, "irFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_GLOBAL_NOSVC_CHK_TIMER_EXPIRED_GSM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v1, "android.intent.action.ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED_INTERNAL_GSM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v1, "android.intent.action.ACTION_GLOBAL_PWR_SAVE_MODE_ENTER_TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    const-string v1, "android.intent.action.ACTION_GLOBAL_PWR_SAVE_MODE_STAY_TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    const-string v1, "android.intent.action.ACTION_EVENT_OOS_TIMEOUT_RPT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_SWITCH_BACK_TO_CDMA_IN_CHINA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v1, "android.intent.action.ACTION_SIMCARDMANAGER_LAUNCH_RESP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    const-string v1, "android.intent.action.ACTION_EVENT_OOS_TIMEOUT_DIRECT_RPT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_SWITCH_BACK_TO_GSM_IN_HONGKONG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING_TIMER_EXPIRED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    const-string v1, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    const-string v1, "com.samsung.intent.action.SlotSwitched"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 399
    const-string v1, "com.samsung.intent.action.Slot1SwitchCompleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v1, "com.samsung.intent.action.ReduceSearchTimerExpired"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v1, "android.intent.action.ACTION_BACKGROUND_SWITCH_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mIrIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 404
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x3e

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 406
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 138
    sput-boolean p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mScreenOn:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z

    return v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCdmaInSvc:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopManualOosTimerDirectly()V

    return-void
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 138
    sget v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSrchNet:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->slot2ReduceSearchTimerAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSystemTime:J

    return-wide v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCdmaInSvc:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 138
    sput-boolean p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mScreenOn:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCdmaInSvc:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopManualOosTimer()V

    return-void
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 138
    sget v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSrchNet:I

    return v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPsmStayTimerProcessed:Z

    return v0
.end method

.method private slot2ReduceSearchTimerAvailable()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1563
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v7

    if-ne v7, v5, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneType()I

    move-result v7

    if-ne v7, v5, :cond_3

    move v1, v5

    .line 1565
    .local v1, "isSlot2Gsm":Z
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_4

    move v0, v5

    .line 1567
    .local v0, "isAirplaneMode":Z
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 1568
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    if-ne v7, v9, :cond_5

    :cond_0
    move v2, v5

    .line 1570
    .local v2, "pinEnabled":Z
    :goto_2
    const-string v7, "gsm.sim.currentcardstatus"

    const-string v8, "9"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_6

    move v3, v5

    .line 1572
    .local v3, "slot2CardAvailable":Z
    :goto_3
    const-string v7, "DCGGS"

    const-string v8, "DCGGS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "DCGS"

    const-string v8, "DCGGS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    if-eqz v3, :cond_2

    sget-boolean v7, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z

    if-nez v7, :cond_2

    move v6, v5

    :cond_2
    return v6

    .end local v0    # "isAirplaneMode":Z
    .end local v1    # "isSlot2Gsm":Z
    .end local v2    # "pinEnabled":Z
    .end local v3    # "slot2CardAvailable":Z
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    move v1, v6

    .line 1563
    goto :goto_0

    .restart local v1    # "isSlot2Gsm":Z
    :cond_4
    move v0, v6

    .line 1565
    goto :goto_1

    .restart local v0    # "isAirplaneMode":Z
    .restart local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    move v2, v6

    .line 1568
    goto :goto_2

    .restart local v2    # "pinEnabled":Z
    :cond_6
    move v3, v6

    .line 1570
    goto :goto_3
.end method

.method private startManualOosTimer()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1322
    const-string v2, "DCGGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1324
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isNotFirstPhoneForCgg()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1325
    const-string v2, "[Global Mode] Current Phone is not a first Phone. Do not start OosTimer"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1337
    :cond_1
    :goto_0
    return-void

    .line 1328
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1329
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_EVENT_OOS_TIMEOUT_RPT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1330
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sender_ManSrchTimer:Landroid/app/PendingIntent;

    .line 1331
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x15f90

    add-long/2addr v4, v6

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sender_ManSrchTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1335
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->oosTimerRunning:Z

    goto :goto_0
.end method

.method private startManualOosTimerDirectly()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1353
    const-string v2, "DCGGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1355
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isNotFirstPhoneForCgg()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1356
    const-string v2, "[Global Mode] Current Phone is not a first Phone. Do not start OosTimerDirectly"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1366
    :cond_1
    :goto_0
    return-void

    .line 1359
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1360
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_EVENT_OOS_TIMEOUT_DIRECT_RPT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1361
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sender_ManSrchTimer_Dir:Landroid/app/PendingIntent;

    .line 1362
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sender_ManSrchTimer_Dir:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private stopManualOosTimer()V
    .locals 3

    .prologue
    .line 1340
    const-string v1, "DCGGS"

    const-string v2, "DCGGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    const-string v2, "DCGGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1342
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isNotFirstPhoneForCgg()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1343
    const-string v1, "[Global Mode] Current Phone is not a first Phone. Do not stop OosTimer"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1350
    :cond_1
    :goto_0
    return-void

    .line 1346
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1347
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sender_ManSrchTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1348
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->oosTimerRunning:Z

    goto :goto_0
.end method

.method private stopManualOosTimerDirectly()V
    .locals 3

    .prologue
    .line 1369
    const-string v1, "DCGGS"

    const-string v2, "DCGGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    const-string v2, "DCGGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1371
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isNotFirstPhoneForCgg()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1372
    const-string v1, "[Global Mode] Current Phone is not a first Phone. Do not stop OosTimerDirectly"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1378
    :cond_1
    :goto_0
    return-void

    .line 1375
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1376
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sender_ManSrchTimer_Dir:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public SlotSwitched()V
    .locals 1

    .prologue
    .line 1592
    const-string v0, "CdmaServiceStateTracker - SlotSwitched"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mDesiredPowerState:Z

    .line 1595
    const/16 v0, 0x97

    iput v0, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->countCheckDataStateReads:I

    .line 1596
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1597
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 410
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z

    .line 411
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopManualOosTimer()V

    .line 412
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopManualOosTimerDirectly()V

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopPendingIntentTimer()V

    .line 414
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopGlobalNoSvcChkTimer()V

    .line 415
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    .line 416
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mIrIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 418
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 422
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public getCurrCdmaMcc()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1600
    const/4 v0, 0x0

    .line 1601
    .local v0, "currCdmaMccInt":I
    const-string v3, "gsm.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v2, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1603
    .local v1, "currCdmaOprtNum":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 1604
    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1607
    :cond_0
    const-string v3, "DCGGS"

    const-string v4, "DCGGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1608
    const-string v3, "0"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1614
    .end local v0    # "currCdmaMccInt":I
    :cond_1
    :goto_0
    return v0

    .restart local v0    # "currCdmaMccInt":I
    :cond_2
    move v0, v2

    .line 1611
    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 430
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 456
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 432
    :sswitch_0
    const-string v1, "EVENT_REQUEST_DISCONNECT_DC"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 435
    const-string v1, "slot2 data clean up for Slot1 switched."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 437
    .local v0, "mDcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const-string v1, "slotSwitched"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->hangupAndPowerOff()V

    goto :goto_0

    .line 442
    .end local v0    # "mDcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 443
    .restart local v0    # "mDcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto :goto_0

    .line 448
    .end local v0    # "mDcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :sswitch_1
    sget-boolean v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSleepPendedWhileNetSrchGsm:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 450
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSleepPendedWhileNetSrchGsm:Z

    .line 451
    const-string v1, "IRGSMSST"

    const-string v2, "[Global mode] Sleep pending resumed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 430
    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x47 -> :sswitch_1
    .end sparse-switch
.end method

.method public isNotFirstPhoneForCgg()Z
    .locals 2

    .prologue
    .line 1618
    const-string v0, "DCGGS"

    const-string v1, "DCGGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1620
    const-string v0, "[Global Mode] This is not a first phone"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1621
    const/4 v0, 0x1

    .line 1624
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1217
    const-string v0, "IRGSMSST"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1222
    const-string v0, "IRGSMSST"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    return-void
.end method

.method noNeedToProcess(Ljava/lang/String;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1226
    const/4 v0, 0x0

    .line 1228
    .local v0, "noNeed":Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1229
    const-string v1, "android.intent.action.ACTION_GLOBAL_NOSVC_CHK_TIMER_EXPIRED_GSM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED_INTERNAL_GSM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_GLOBAL_PWR_SAVE_MODE_STAY_TIMER_EXPIRED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_SWITCH_BACK_TO_GSM_IN_HONGKONG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING_TIMER_EXPIRED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1236
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[global mode] No need to process:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1237
    const/4 v0, 0x1

    .line 1240
    :cond_1
    return v0
.end method

.method protected pollStateDone()V
    .locals 66

    .prologue
    .line 464
    const-string v61, "ro.csc.sales_code"

    invoke-static/range {v61 .. v61}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 466
    .local v50, "salesCode":Ljava/lang/String;
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "Poll ServiceState done:  oldSS=["

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, "] newSS=["

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, "]"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " oldMaxDataCalls="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mMaxDataCalls:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " mNewMaxDataCalls="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " oldReasonDataDenied="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mReasonDataDenied:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " mNewReasonDataDenied="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 474
    sget-boolean v61, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v61, :cond_0

    const-string v61, "telephony.test.forceRoaming"

    const/16 v62, 0x0

    invoke-static/range {v61 .. v62}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v61

    if-eqz v61, :cond_0

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    const/16 v62, 0x1

    invoke-virtual/range {v61 .. v62}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 478
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->updateSpnWithEons(Landroid/telephony/ServiceState;Landroid/telephony/gsm/GsmCellLocation;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v61

    if-eqz v61, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v61

    if-nez v61, :cond_33

    const/16 v28, 0x1

    .line 493
    .local v28, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v61

    if-nez v61, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v61

    if-eqz v61, :cond_34

    const/16 v24, 0x1

    .line 497
    .local v24, "hasDeregistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v61

    if-eqz v61, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v61

    if-nez v61, :cond_35

    const/16 v25, 0x1

    .line 501
    .local v25, "hasGprsAttached":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v61

    if-nez v61, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v61

    if-eqz v61, :cond_36

    const/16 v26, 0x1

    .line 505
    .local v26, "hasGprsDetached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v62

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_37

    const/16 v23, 0x1

    .line 508
    .local v23, "hasDataRegStateChanged":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v62

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_38

    const/16 v33, 0x1

    .line 511
    .local v33, "hasVoiceRegStateChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v62

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_39

    const/16 v30, 0x1

    .line 514
    .local v30, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v62

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_3a

    const/16 v29, 0x1

    .line 517
    .local v29, "hasRilDataRadioTechnologyChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->oldDataRadioTech:I

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v61

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->newDataRadioTech:I

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_3b

    const/16 v22, 0x1

    .line 523
    .local v22, "hasChanged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v61

    if-nez v61, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v61

    if-eqz v61, :cond_3c

    const/16 v32, 0x1

    .line 525
    .local v32, "hasRoamingOn":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v61

    if-eqz v61, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v61

    if-nez v61, :cond_3d

    const/16 v31, 0x1

    .line 527
    .local v31, "hasRoamingOff":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_3e

    const/16 v27, 0x1

    .line 551
    .local v27, "hasLocationChanged":Z
    :goto_b
    if-nez v33, :cond_1

    if-eqz v23, :cond_2

    .line 552
    :cond_1
    const v61, 0xc3c2

    const/16 v62, 0x4

    move/from16 v0, v62

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v64

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    aput-object v64, v62, v63

    const/16 v63, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v64

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    aput-object v64, v62, v63

    const/16 v63, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v64

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    aput-object v64, v62, v63

    const/16 v63, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v64

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    aput-object v64, v62, v63

    invoke-static/range {v61 .. v62}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 558
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v61

    const/16 v62, 0x3

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v61

    const/16 v62, 0x3

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_3

    .line 560
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->IsFlightMode:Z

    .line 561
    const/16 v61, 0xfa0

    const/16 v62, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v61

    const-wide/16 v62, 0x7530

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-wide/from16 v2, v62

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 564
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v61

    if-nez v61, :cond_4

    .line 566
    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->IsFlightMode:Z

    .line 573
    :cond_4
    if-eqz v30, :cond_6

    .line 574
    const/4 v11, -0x1

    .line 575
    .local v11, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v42, v0

    .line 576
    .local v42, "loc":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v42, :cond_5

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v11

    .line 581
    :cond_5
    const v61, 0xc3cb

    const/16 v62, 0x3

    move/from16 v0, v62

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    aput-object v64, v62, v63

    const/16 v63, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v64

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    aput-object v64, v62, v63

    const/16 v63, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v64

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    aput-object v64, v62, v63

    invoke-static/range {v61 .. v62}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 585
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "RAT switched "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v62

    invoke-static/range {v62 .. v62}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " -> "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v62

    invoke-static/range {v62 .. v62}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " at cell "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 594
    .end local v11    # "cid":I
    .end local v42    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v54, v0

    .line 595
    .local v54, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 596
    move-object/from16 v0, v54

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 603
    const-string v61, "DCGGS"

    const-string v62, "DCGGS"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_7

    const-string v61, "DCGS"

    const-string v62, "DCGGS"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_9

    .line 605
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getState()I

    move-result v61

    if-nez v61, :cond_3f

    const/16 v61, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGsmActive(I)Z

    move-result v61

    if-eqz v61, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGsmDfltPhoneIdx(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v61

    if-eqz v61, :cond_3f

    .line 608
    const/16 v61, 0x1

    sput-boolean v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v61

    const-string v62, "CDMA_MANUAL_SELECTED"

    const/16 v63, 0x0

    invoke-static/range {v61 .. v63}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 613
    :cond_8
    :goto_c
    const-string v61, "DCGGS"

    const-string v62, "DCGGS"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v61

    const/16 v62, 0x1

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_9

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getState()I

    move-result v61

    if-nez v61, :cond_40

    .line 616
    const/16 v61, 0x0

    sput-boolean v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mReduceSearchTimeShouldProceed:Z

    .line 627
    :cond_9
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v52, v0

    .line 628
    .local v52, "tcl":Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 629
    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 631
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v61, v0

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mReasonDataDenied:I

    .line 632
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v61, v0

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mMaxDataCalls:I

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/android/internal/telephony/gsm/GSMPhone;->isWfcRegistered()Z

    move-result v61

    sput-boolean v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isWFCReigstered:Z

    .line 636
    if-eqz v30, :cond_a

    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->updatePhoneObject()V

    .line 639
    const-string v61, "CTC"

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_a

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "gsm.voice.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v63

    invoke-static/range {v63 .. v63}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v61 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_a
    if-eqz v29, :cond_b

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "gsm.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v63

    invoke-static/range {v63 .. v63}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v61 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :cond_b
    if-eqz v28, :cond_c

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 655
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "pollStateDone: registering current mNitzUpdatedTime="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " changing to false"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 658
    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 740
    :cond_c
    if-eqz v22, :cond_12

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v61, v0

    if-eqz v61, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->IsSIMLoadDone:Z

    move/from16 v61, v0

    if-nez v61, :cond_41

    .line 749
    :cond_d
    const-string v61, "Network State Changed, NO SIM or EONS not loaded: So update Service state display"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->updateSpnDisplay()V

    .line 755
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v61 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v61, "gsm.sim.operator.numeric"

    const-string v62, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 761
    .local v49, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v46

    .line 762
    .local v46, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "gsm.operator.numeric"

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v49

    move-object/from16 v3, v61

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v61

    if-nez v61, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v61

    if-eqz v61, :cond_e

    .line 769
    const/16 v61, 0x1

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v61

    move/from16 v3, v62

    move-object/from16 v4, v63

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->GetTimezoneInfoUsingMcc(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 773
    :cond_e
    if-nez v46, :cond_42

    .line 774
    const-string v61, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "gsm.operator.iso-country"

    const-string v63, ""

    invoke-virtual/range {v61 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGotCountryCode:Z

    .line 777
    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 890
    :cond_f
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v62, v0

    const-string v63, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v61

    if-eqz v61, :cond_4d

    const-string v61, "true"

    :goto_10
    move-object/from16 v0, v62

    move-object/from16 v1, v63

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v51

    .line 896
    .local v51, "serviceStateForProperty":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "ril.servicestate"

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v61 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 900
    const-string v61, "CTC"

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_10

    .line 901
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->setChinaMainlandProperty()V

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Landroid/telephony/ServiceState;->getState()I

    move-result v62

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->displayTimeZoneRecommend(Ljava/lang/String;I)V

    .line 904
    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v61

    const-string v62, "CscFeature_RIL_UseRatInfoDuringPlmnSelection"

    invoke-virtual/range {v61 .. v62}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v61

    if-nez v61, :cond_11

    const-string v61, "BRI"

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_11

    const-string v61, "TGY"

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_11

    const-string v61, "CWT"

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_11

    const-string v61, "FET"

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_11

    const-string v61, "TWM"

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_11

    const-string v61, "CHZ"

    move-object/from16 v0, v61

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_12

    .line 907
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v61

    if-nez v61, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v61

    if-eqz v61, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v61

    if-eqz v61, :cond_12

    .line 910
    const-string v61, "Need to pollState to update Voice Network Type"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 911
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->pollState()V

    .line 937
    .end local v46    # "operatorNumeric":Ljava/lang/String;
    .end local v49    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v51    # "serviceStateForProperty":I
    :cond_12
    if-eqz v25, :cond_13

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 947
    :cond_13
    if-eqz v26, :cond_14

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 951
    :cond_14
    if-nez v23, :cond_15

    if-eqz v29, :cond_16

    .line 952
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const/16 v62, 0x0

    invoke-virtual/range {v61 .. v62}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 965
    :cond_16
    if-eqz v32, :cond_17

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 969
    :cond_17
    if-eqz v31, :cond_18

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 973
    :cond_18
    if-eqz v27, :cond_19

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 977
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v62, v0

    invoke-virtual/range {v62 .. v62}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v62

    move-object/from16 v0, p0

    move/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v61

    if-nez v61, :cond_4e

    .line 978
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move/from16 v61, v0

    if-nez v61, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mReportedGprsNoReg:Z

    move/from16 v61, v0

    if-nez v61, :cond_1a

    .line 979
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v61

    const-string v62, "gprs_register_check_period_ms"

    const v63, 0xea60

    invoke-static/range {v61 .. v63}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 985
    .local v10, "check_period":I
    const/16 v61, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v61

    int-to-long v0, v10

    move-wide/from16 v62, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-wide/from16 v2, v62

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 992
    .end local v10    # "check_period":I
    :cond_1a
    :goto_11
    const-string v61, "DCGGS"

    const-string v62, "DCGGS"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_1b

    const-string v61, "DCGS"

    const-string v62, "DCGGS"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_32

    .line 995
    :cond_1b
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "manualselected="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v61

    if-nez v61, :cond_1c

    sget-boolean v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->IsManSelMode:Z

    if-eqz v61, :cond_4f

    :cond_1c
    const/16 v61, 0x1

    :goto_12
    move-object/from16 v0, v62

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, ", alreadyExpired="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    sget-boolean v62, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->alreadyExpired:Z

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, ", oosTimerRunning="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    sget-boolean v62, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->oosTimerRunning:Z

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v61

    if-nez v61, :cond_1d

    sget-boolean v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->IsManSelMode:Z

    if-eqz v61, :cond_51

    .line 999
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getState()I

    move-result v61

    if-eqz v61, :cond_50

    .line 1000
    sget-boolean v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->alreadyExpired:Z

    if-nez v61, :cond_1e

    sget-boolean v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->oosTimerRunning:Z

    if-nez v61, :cond_1e

    .line 1001
    const-string v61, "manual selected and oos now...start timer..."

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1002
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->startManualOosTimer()V

    .line 1013
    :cond_1e
    :goto_13
    if-eqz v22, :cond_24

    .line 1014
    const/16 v18, 0x0

    .line 1015
    .local v18, "currMccInt":I
    const-string v61, "gsm.operator.numeric"

    const-string v62, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1016
    .local v19, "currOperatorNumeric":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v61

    const/16 v62, 0x5

    move/from16 v0, v61

    move/from16 v1, v62

    if-lt v0, v1, :cond_1f

    .line 1017
    const/16 v61, 0x0

    const/16 v62, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1019
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v61

    const-string v62, "PREV_REGD_MCC"

    invoke-static/range {v61 .. v62}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    sput-object v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPrevMcc:Ljava/lang/String;

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getState()I

    move-result v61

    if-nez v61, :cond_24

    .line 1022
    const/16 v61, 0x1

    invoke-static/range {v61 .. v61}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v36

    .line 1023
    .local v36, "imsiStr":Ljava/lang/String;
    const-string v35, ""

    .line 1024
    .local v35, "imsiPlmn":Ljava/lang/String;
    const-string v45, ""

    .line 1026
    .local v45, "opNumStr":Ljava/lang/String;
    const/16 v61, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGsmActive(I)Z

    move-result v61

    if-eqz v61, :cond_52

    .line 1027
    const/4 v9, 0x1

    .line 1031
    .local v9, "cdmaSs":I
    :goto_14
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v61

    const/16 v62, 0x5

    move/from16 v0, v61

    move/from16 v1, v62

    if-lt v0, v1, :cond_20

    .line 1032
    const/16 v61, 0x0

    const/16 v62, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v45

    .line 1034
    :cond_20
    if-eqz v36, :cond_21

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v61

    const/16 v62, 0x5

    move/from16 v0, v61

    move/from16 v1, v62

    if-lt v0, v1, :cond_21

    .line 1035
    const/16 v61, 0x0

    const/16 v62, 0x5

    move-object/from16 v0, v36

    move/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    .line 1037
    :cond_21
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "[TZ rcmnd] mPrevMcc : "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    sget-object v62, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPrevMcc:Ljava/lang/String;

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, ", curMcc : "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, ", cdmaSs : "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, ", imsiPlmn : "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isFactoryMode(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v61

    if-nez v61, :cond_56

    .line 1043
    const/16 v61, 0x1cc

    move/from16 v0, v18

    move/from16 v1, v61

    if-eq v0, v1, :cond_22

    const/16 v61, 0x1c7

    move/from16 v0, v18

    move/from16 v1, v61

    if-eq v0, v1, :cond_22

    if-eqz v9, :cond_22

    if-eqz v18, :cond_22

    move-object/from16 v0, v35

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_22

    .line 1046
    sget-boolean v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNitzRxed:Z

    if-nez v61, :cond_55

    .line 1048
    const/16 v61, 0x0

    const/16 v62, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v61

    sget-object v62, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPrevMcc:Ljava/lang/String;

    invoke-virtual/range {v61 .. v62}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_53

    .line 1049
    const-string v61, "[TZ rcmnd] broadcast ACTION_TZ_RCMD_CURR_MCC_EQUAL_TO_LAST_MCC"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1050
    new-instance v38, Landroid/content/Intent;

    const-string v61, "android.intent.action.ACTION_TZ_RCMD_CURR_MCC_EQUAL_TO_LAST_MCC"

    move-object/from16 v0, v38

    move-object/from16 v1, v61

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1051
    .local v38, "intentFwd":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1075
    .end local v38    # "intentFwd":Landroid/content/Intent;
    :cond_22
    :goto_15
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v61

    const/16 v62, 0x5

    move/from16 v0, v61

    move/from16 v1, v62

    if-lt v0, v1, :cond_23

    if-eqz v18, :cond_23

    .line 1076
    const/16 v61, 0x0

    const/16 v62, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v61

    sput-object v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPrevMcc:Ljava/lang/String;

    .line 1078
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v61

    const-string v62, "PREV_REGD_MCC"

    sget-object v63, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPrevMcc:Ljava/lang/String;

    invoke-static/range {v61 .. v63}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1085
    .end local v9    # "cdmaSs":I
    .end local v18    # "currMccInt":I
    .end local v19    # "currOperatorNumeric":Ljava/lang/String;
    .end local v35    # "imsiPlmn":Ljava/lang/String;
    .end local v36    # "imsiStr":Ljava/lang/String;
    .end local v45    # "opNumStr":Ljava/lang/String;
    :cond_24
    :goto_16
    if-nez v22, :cond_25

    sget-boolean v61, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetSrchTimerRunning:Z

    if-eqz v61, :cond_27

    .line 1086
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGlobalMode(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v21

    .line 1087
    .local v21, "globalmode":Z
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "[Global mode] globalmode = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " mCurrentSrchNet:"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    sget v62, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSrchNet:I

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1089
    if-eqz v21, :cond_27

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getState()I

    move-result v61

    if-nez v61, :cond_57

    sget v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSrchNet:I

    const/16 v62, 0x1

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_57

    .line 1091
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "[Global mode] After global mode selected, gsm svc acquired. mNoSvcChkTimerRunning = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    sget-boolean v62, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNoSvcChkTimerRunning:Z

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, ", mNetSrchTimerRunning = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    sget-boolean v62, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetSrchTimerRunning:Z

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1093
    sget-boolean v61, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNoSvcChkTimerRunning:Z

    if-nez v61, :cond_26

    sget-boolean v61, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetSrchTimerRunning:Z

    if-eqz v61, :cond_27

    :cond_26
    const/16 v61, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGsmActive(I)Z

    move-result v61

    if-eqz v61, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGsmDfltPhoneIdx(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v61

    if-eqz v61, :cond_27

    .line 1095
    const-string v61, "[Global mode] gsm network acquired, stopGlobalNetworkSearchTimer() and stopGlobalNoSvcChkTimer()"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1096
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    .line 1097
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopGlobalNoSvcChkTimer()V

    .line 1107
    .end local v21    # "globalmode":Z
    :cond_27
    :goto_17
    if-eqz v22, :cond_32

    .line 1108
    const-string v61, "gsm.operator.numeric"

    const/16 v62, 0x0

    const-string v63, ""

    invoke-static/range {v61 .. v63}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1109
    .local v15, "currCdmaOprtNum":Ljava/lang/String;
    const-string v61, "gsm.operator.numeric"

    const-string v62, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1110
    .local v17, "currGsmOprtNum":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v61

    const-string v62, "gsmbootupstart"

    const/16 v63, 0x0

    invoke-static/range {v61 .. v63}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v61

    const/16 v62, 0x1

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_58

    const/16 v39, 0x1

    .line 1112
    .local v39, "isGsmBootupProgress":Z
    :goto_18
    const/4 v14, 0x0

    .line 1113
    .local v14, "currCdmaMccIntTmp":I
    const/16 v16, 0x0

    .line 1115
    .local v16, "currGsmMccIntTmp":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v61

    const/16 v62, 0x5

    move/from16 v0, v61

    move/from16 v1, v62

    if-lt v0, v1, :cond_28

    .line 1116
    const/16 v61, 0x0

    const/16 v62, 0x3

    move/from16 v0, v61

    move/from16 v1, v62

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1118
    :cond_28
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v61

    const/16 v62, 0x5

    move/from16 v0, v61

    move/from16 v1, v62

    if-lt v0, v1, :cond_29

    .line 1119
    const/16 v61, 0x0

    const/16 v62, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1122
    :cond_29
    if-lez v14, :cond_2a

    .line 1123
    sput v14, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->currGsmMccInt2:I

    .line 1125
    :cond_2a
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "[SimCardMngLaunch] currGsmMccIntTmp="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, ", currGsmMccInt2="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    sget v62, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->currGsmMccInt2:I

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, ", currCdmaMccIntTmp="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, ", mSimCardMngLnchTimerRunning="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    sget-boolean v62, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSimCardMngLnchTimerRunning:Z

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, ", mSimCardMngEverLaunched="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    sget-boolean v62, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSimCardMngEverLaunched:Z

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, ", isGsmBootupProgress="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGsmDfltPhoneIdx(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v61

    if-eqz v61, :cond_2b

    .line 1132
    move/from16 v16, v14

    .line 1135
    :cond_2b
    if-lez v16, :cond_5e

    .line 1136
    const-string v61, "[SimCardMngLaunch] succeed in getting mcc from network during SimCardMngLnchTimerRunning."

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1138
    new-instance v38, Landroid/content/Intent;

    const-string v61, "android.intent.action.ACTION_SIMCARDMANAGER_LAUNCH"

    move-object/from16 v0, v38

    move-object/from16 v1, v61

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1139
    .restart local v38    # "intentFwd":Landroid/content/Intent;
    const/high16 v61, 0x20000000

    move-object/from16 v0, v38

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1141
    const/16 v61, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGsmActive(I)Z

    move-result v61

    if-eqz v61, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getState()I

    move-result v61

    if-eqz v61, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getState()I

    move-result v61

    const/16 v62, 0x2

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_5c

    .line 1144
    :cond_2c
    const/16 v61, 0x1cc

    move/from16 v0, v16

    move/from16 v1, v61

    if-eq v0, v1, :cond_2d

    const/16 v61, 0x1c7

    move/from16 v0, v16

    move/from16 v1, v61

    if-ne v0, v1, :cond_59

    .line 1145
    :cond_2d
    const-string v61, "china_mainland"

    const/16 v62, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "gsm.ctc.chinamainland"

    const-string v63, "true"

    invoke-virtual/range {v61 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "gsm.ctc.cdmaprefcountry"

    const-string v63, "false"

    invoke-virtual/range {v61 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "ril.mIsSwitchedToCdma"

    const-string v63, "false"

    invoke-virtual/range {v61 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    :goto_19
    sput v16, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->currGsmMccInt:I

    .line 1159
    const-string v61, "gsm.ctc.timedispschmmcc"

    const/16 v62, 0x0

    const-string v63, "0"

    invoke-static/range {v61 .. v63}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1160
    .local v48, "prevCdmaMccStr":Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    .line 1161
    .local v47, "prevCdmaMcc":I
    const-string v61, "ril.mHasEverSwitchedToGsm"

    const/16 v62, 0x0

    const-string v63, "false"

    invoke-static/range {v61 .. v63}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1163
    .local v43, "mHasEverSwitchedToGsm":Ljava/lang/String;
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "[global mode] currGsmMccInt : "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " prevGsmMccInt : "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    sget v62, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->prevGsmMccInt:I

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " prevCdmaMcc: "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1165
    const-string v61, "true"

    move-object/from16 v0, v61

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_2f

    .line 1166
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isDualSlotActive()Z

    move-result v61

    if-eqz v61, :cond_5b

    .line 1167
    if-lez v14, :cond_2f

    move/from16 v0, v47

    if-eq v14, v0, :cond_2f

    sget v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->currGsmMccInt:I

    sget v62, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->prevGsmMccInt:I

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_2f

    .line 1169
    sget v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->prevGsmMccInt:I

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isUsAreas(I)Z

    move-result v61

    if-eqz v61, :cond_2e

    sget v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->currGsmMccInt:I

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isUsAreas(I)Z

    move-result v61

    if-nez v61, :cond_2f

    .line 1170
    :cond_2e
    const-string v61, "[Global Mode] mHasEverSwitchedToGsm reset to false"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "ril.mHasEverSwitchedToGsm"

    const-string v63, "false"

    invoke-virtual/range {v61 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    :cond_2f
    :goto_1a
    sget v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->prevGsmMccInt:I

    sget v62, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->currGsmMccInt:I

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_30

    .line 1179
    sget v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->currGsmMccInt:I

    sput v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->prevGsmMccInt:I

    .line 1192
    .end local v43    # "mHasEverSwitchedToGsm":Ljava/lang/String;
    .end local v47    # "prevCdmaMcc":I
    .end local v48    # "prevCdmaMccStr":Ljava/lang/String;
    :cond_30
    :goto_1b
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "[SimCardMngLaunch] china_mainland : "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, "gsm.ctc.chinamainland"

    const/16 v63, 0x0

    const-string v64, ""

    invoke-static/range {v62 .. v64}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, ", cdmaPrefCountry : "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, "gsm.ctc.cdmaprefcountry"

    const/16 v63, 0x0

    const-string v64, ""

    invoke-static/range {v62 .. v64}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, ", currGsmMccInt : "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    sget v62, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->currGsmMccInt:I

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1206
    .end local v38    # "intentFwd":Landroid/content/Intent;
    :cond_31
    :goto_1c
    const/16 v61, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->switchToCdmaInChinaMacauArea(Z)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getState()I

    move-result v61

    if-nez v61, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isPwrSaveModeTimerRunning()Z

    move-result v61

    if-eqz v61, :cond_32

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const/16 v62, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    .line 1213
    .end local v14    # "currCdmaMccIntTmp":I
    .end local v15    # "currCdmaOprtNum":Ljava/lang/String;
    .end local v16    # "currGsmMccIntTmp":I
    .end local v17    # "currGsmOprtNum":Ljava/lang/String;
    .end local v39    # "isGsmBootupProgress":Z
    :cond_32
    return-void

    .line 484
    .end local v22    # "hasChanged":Z
    .end local v23    # "hasDataRegStateChanged":Z
    .end local v24    # "hasDeregistered":Z
    .end local v25    # "hasGprsAttached":Z
    .end local v26    # "hasGprsDetached":Z
    .end local v27    # "hasLocationChanged":Z
    .end local v28    # "hasRegistered":Z
    .end local v29    # "hasRilDataRadioTechnologyChanged":Z
    .end local v30    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v31    # "hasRoamingOff":Z
    .end local v32    # "hasRoamingOn":Z
    .end local v33    # "hasVoiceRegStateChanged":Z
    .end local v52    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .end local v54    # "tss":Landroid/telephony/ServiceState;
    :cond_33
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 493
    .restart local v28    # "hasRegistered":Z
    :cond_34
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 497
    .restart local v24    # "hasDeregistered":Z
    :cond_35
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 501
    .restart local v25    # "hasGprsAttached":Z
    :cond_36
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 505
    .restart local v26    # "hasGprsDetached":Z
    :cond_37
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 508
    .restart local v23    # "hasDataRegStateChanged":Z
    :cond_38
    const/16 v33, 0x0

    goto/16 :goto_5

    .line 511
    .restart local v33    # "hasVoiceRegStateChanged":Z
    :cond_39
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 514
    .restart local v30    # "hasRilVoiceRadioTechnologyChanged":Z
    :cond_3a
    const/16 v29, 0x0

    goto/16 :goto_7

    .line 521
    .restart local v29    # "hasRilDataRadioTechnologyChanged":Z
    :cond_3b
    const/16 v22, 0x0

    goto/16 :goto_8

    .line 523
    .restart local v22    # "hasChanged":Z
    :cond_3c
    const/16 v32, 0x0

    goto/16 :goto_9

    .line 525
    .restart local v32    # "hasRoamingOn":Z
    :cond_3d
    const/16 v31, 0x0

    goto/16 :goto_a

    .line 527
    .restart local v31    # "hasRoamingOff":Z
    :cond_3e
    const/16 v27, 0x0

    goto/16 :goto_b

    .line 610
    .restart local v27    # "hasLocationChanged":Z
    .restart local v54    # "tss":Landroid/telephony/ServiceState;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGsmDfltPhoneIdx(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v61

    if-eqz v61, :cond_8

    .line 611
    const/16 v61, 0x0

    sput-boolean v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGsmInSvc:Z

    goto/16 :goto_c

    .line 617
    :cond_40
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSystemTime:J

    move-wide/from16 v62, v0

    const-wide/16 v64, 0x0

    cmp-long v61, v62, v64

    if-nez v61, :cond_9

    sget-boolean v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mReduceSearchTimeShouldProceed:Z

    if-eqz v61, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->slot2ReduceSearchTimerAvailable()Z

    move-result v61

    if-eqz v61, :cond_9

    .line 620
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v62

    move-wide/from16 v0, v62

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSystemTime:J

    .line 621
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "[Global Mode] ReduceSearchTime - mCurrentSystemTime = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSystemTime:J

    move-wide/from16 v62, v0

    invoke-virtual/range {v61 .. v63}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 752
    .restart local v52    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_e

    .line 779
    .restart local v46    # "operatorNumeric":Ljava/lang/String;
    .restart local v49    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_42
    const-string v40, ""

    .line 780
    .local v40, "iso":Ljava/lang/String;
    const-string v44, ""

    .line 782
    .local v44, "mcc":Ljava/lang/String;
    const/16 v61, 0x0

    const/16 v62, 0x3

    :try_start_0
    move-object/from16 v0, v46

    move/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v44

    .line 783
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v61

    invoke-static/range {v61 .. v61}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v40

    .line 790
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "gsm.operator.iso-country"

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mGotCountryCode:Z

    .line 793
    const/16 v59, 0x0

    .line 795
    .local v59, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v61, v0

    if-nez v61, :cond_44

    const-string v61, "000"

    move-object/from16 v0, v44

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-nez v61, :cond_44

    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v61

    if-nez v61, :cond_44

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v61

    if-eqz v61, :cond_44

    .line 799
    const-string v61, "telephony.test.ignore.nitz"

    const/16 v62, 0x0

    invoke-static/range {v61 .. v62}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v61

    if-eqz v61, :cond_46

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v62

    const-wide/16 v64, 0x1

    and-long v62, v62, v64

    const-wide/16 v64, 0x0

    cmp-long v61, v62, v64

    if-nez v61, :cond_46

    const/16 v53, 0x1

    .line 803
    .local v53, "testOneUniqueOffsetPath":Z
    :goto_1e
    invoke-static/range {v40 .. v40}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v58

    .line 804
    .local v58, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual/range {v58 .. v58}, Ljava/util/ArrayList;->size()I

    move-result v61

    const/16 v62, 0x1

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_43

    if-eqz v53, :cond_47

    .line 805
    :cond_43
    const/16 v61, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v59

    .end local v59    # "zone":Ljava/util/TimeZone;
    check-cast v59, Ljava/util/TimeZone;

    .line 807
    .restart local v59    # "zone":Ljava/util/TimeZone;
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "pollStateDone: no nitz but one TZ for iso-cc="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " with zone.getID="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v59 .. v59}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " testOneUniqueOffsetPath="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 811
    invoke-virtual/range {v59 .. v59}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 822
    .end local v53    # "testOneUniqueOffsetPath":Z
    .end local v58    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_44
    :goto_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v62, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object/from16 v2, v46

    move-object/from16 v3, v49

    move/from16 v4, v62

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v61

    if-eqz v61, :cond_f

    .line 827
    const-string v61, "persist.sys.timezone"

    invoke-static/range {v61 .. v61}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 829
    .local v60, "zoneName":Ljava/lang/String;
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "pollStateDone: fix time zone zoneName=\'"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, "\' mZoneOffset="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneOffset:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " mZoneDst="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneDst:Z

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " iso-cc=\'"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, "\' iso-cc-idx="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    sget-object v62, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v62

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v62

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 835
    const-string v61, ""

    move-object/from16 v0, v61

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_48

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v61, v0

    if-eqz v61, :cond_48

    .line 838
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneOffset:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneDst:Z

    move/from16 v62, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v64, v0

    move-object/from16 v0, p0

    move/from16 v1, v61

    move/from16 v2, v62

    move-wide/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v59

    .line 839
    const-string v61, "pollStateDone: using NITZ TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 876
    :goto_20
    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 878
    if-eqz v59, :cond_4c

    .line 879
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "pollStateDone: zone != null zone.getID="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v59 .. v59}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v61

    if-eqz v61, :cond_45

    .line 881
    invoke-virtual/range {v59 .. v59}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 883
    :cond_45
    invoke-virtual/range {v59 .. v59}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 784
    .end local v59    # "zone":Ljava/util/TimeZone;
    .end local v60    # "zoneName":Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 785
    .local v20, "ex":Ljava/lang/NumberFormatException;
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 786
    .end local v20    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v20

    .line 787
    .local v20, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 799
    .end local v20    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v59    # "zone":Ljava/util/TimeZone;
    :cond_46
    const/16 v53, 0x0

    goto/16 :goto_1e

    .line 814
    .restart local v53    # "testOneUniqueOffsetPath":Z
    .restart local v58    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_47
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "pollStateDone: there are "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v58 .. v58}, Ljava/util/ArrayList;->size()I

    move-result v62

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " unique offsets for iso-cc=\'"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " testOneUniqueOffsetPath="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, "\', do nothing"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 847
    .end local v53    # "testOneUniqueOffsetPath":Z
    .end local v58    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .restart local v60    # "zoneName":Ljava/lang/String;
    :cond_48
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneOffset:I

    move/from16 v61, v0

    if-nez v61, :cond_4b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneDst:Z

    move/from16 v61, v0

    if-nez v61, :cond_4b

    if-eqz v60, :cond_4b

    invoke-virtual/range {v60 .. v60}, Ljava/lang/String;->length()I

    move-result v61

    if-lez v61, :cond_4b

    sget-object v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v61

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v61

    if-gez v61, :cond_4b

    .line 850
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v59

    .line 851
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v61, v0

    if-eqz v61, :cond_49

    .line 854
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 855
    .local v12, "ctm":J
    move-object/from16 v0, v59

    invoke-virtual {v0, v12, v13}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v61

    move/from16 v0, v61

    int-to-long v0, v0

    move-wide/from16 v56, v0

    .line 857
    .local v56, "tzOffset":J
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "pollStateDone: tzOffset="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " ltod="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-static {v12, v13}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 860
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getAutoTime()Z

    move-result v61

    if-eqz v61, :cond_4a

    .line 861
    sub-long v6, v12, v56

    .line 862
    .local v6, "adj":J
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "pollStateDone: adj ltod="

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 864
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 870
    .end local v6    # "adj":J
    .end local v12    # "ctm":J
    .end local v56    # "tzOffset":J
    :cond_49
    :goto_21
    const-string v61, "pollStateDone: using default TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 867
    .restart local v12    # "ctm":J
    .restart local v56    # "tzOffset":J
    :cond_4a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v62, v0

    sub-long v62, v62, v56

    move-wide/from16 v0, v62

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSavedTime:J

    goto :goto_21

    .line 872
    .end local v12    # "ctm":J
    .end local v56    # "tzOffset":J
    :cond_4b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneOffset:I

    move/from16 v61, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneDst:Z

    move/from16 v62, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v64, v0

    move/from16 v0, v61

    move/from16 v1, v62

    move-wide/from16 v2, v64

    move-object/from16 v4, v40

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v59

    .line 873
    const-string v61, "pollStateDone: using getTimeZone(off, dst, time, iso)"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 885
    :cond_4c
    const-string v61, "pollStateDone: zone == null"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 890
    .end local v40    # "iso":Ljava/lang/String;
    .end local v44    # "mcc":Ljava/lang/String;
    .end local v59    # "zone":Ljava/util/TimeZone;
    .end local v60    # "zoneName":Ljava/lang/String;
    :cond_4d
    const-string v61, "false"

    goto/16 :goto_10

    .line 989
    .end local v46    # "operatorNumeric":Ljava/lang/String;
    .end local v49    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_4e
    const/16 v61, 0x0

    move/from16 v0, v61

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto/16 :goto_11

    .line 995
    :cond_4f
    const/16 v61, 0x0

    goto/16 :goto_12

    .line 1005
    :cond_50
    const-string v61, "manual selected but in service now.. Remove timer..."

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1006
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopManualOosTimer()V

    .line 1007
    const/16 v61, 0x0

    sput-boolean v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->alreadyExpired:Z

    goto/16 :goto_13

    .line 1010
    :cond_51
    const/16 v61, 0x0

    sput-boolean v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->alreadyExpired:Z

    goto/16 :goto_13

    .line 1029
    .restart local v18    # "currMccInt":I
    .restart local v19    # "currOperatorNumeric":Ljava/lang/String;
    .restart local v35    # "imsiPlmn":Ljava/lang/String;
    .restart local v36    # "imsiStr":Ljava/lang/String;
    .restart local v45    # "opNumStr":Ljava/lang/String;
    :cond_52
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    .restart local v9    # "cdmaSs":I
    goto/16 :goto_14

    .line 1053
    :cond_53
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/MccTable;->getTimeZonesForMcc(I)[Ljava/lang/String;

    move-result-object v55

    .line 1054
    .local v55, "tzNameArr":[Ljava/lang/String;
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "[TZ rcmnd] currMccInt : "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1055
    const-string v61, "[TZ rcmnd] ====================="

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1056
    if-eqz v55, :cond_54

    .line 1057
    move-object/from16 v8, v55

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v41, v0

    .local v41, "len$":I
    const/16 v34, 0x0

    .local v34, "i$":I
    :goto_22
    move/from16 v0, v34

    move/from16 v1, v41

    if-ge v0, v1, :cond_54

    aget-object v59, v8, v34

    .line 1058
    .local v59, "zone":Ljava/lang/String;
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "[TZ rcmnd] "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1057
    add-int/lit8 v34, v34, 0x1

    goto :goto_22

    .line 1061
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v34    # "i$":I
    .end local v41    # "len$":I
    .end local v59    # "zone":Ljava/lang/String;
    :cond_54
    const-string v61, "[TZ rcmnd] ====================="

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1062
    if-eqz v55, :cond_22

    .line 1063
    new-instance v37, Landroid/content/Intent;

    const-string v61, "android.intent.action.ACTION_TZ_RCMD_TIMEZONE_OF_CURR_MCC"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1064
    .local v37, "intent":Landroid/content/Intent;
    const/high16 v61, 0x10200000

    move-object/from16 v0, v37

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1065
    new-instance v61, Landroid/content/ComponentName;

    const-string v62, "com.android.phone"

    const-string v63, "com.android.phone.TimeZoneRecommend"

    invoke-direct/range {v61 .. v63}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1066
    const-string v61, "tz_name_array"

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1067
    const-string v61, "showTimeScheme"

    const/16 v62, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_15

    .line 1072
    .end local v37    # "intent":Landroid/content/Intent;
    .end local v55    # "tzNameArr":[Ljava/lang/String;
    :cond_55
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "[TZ rcmnd] NITZ rxed. or currMccStr : "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 1080
    :cond_56
    const-string v61, "[TZ rcmnd] Factory mode. Timezone recommend doesn\'t work."

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1100
    .end local v9    # "cdmaSs":I
    .end local v18    # "currMccInt":I
    .end local v19    # "currOperatorNumeric":Ljava/lang/String;
    .end local v35    # "imsiPlmn":Ljava/lang/String;
    .end local v36    # "imsiStr":Ljava/lang/String;
    .end local v45    # "opNumStr":Ljava/lang/String;
    .restart local v21    # "globalmode":Z
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->globalNoSvcChkTimerRequired(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v61

    if-eqz v61, :cond_27

    sget-boolean v61, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstCdmaNoSvcChkTimerStarted:Z

    if-eqz v61, :cond_27

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->startGlobalNoSvcChkTimer()V

    goto/16 :goto_17

    .line 1110
    .end local v21    # "globalmode":Z
    .restart local v15    # "currCdmaOprtNum":Ljava/lang/String;
    .restart local v17    # "currGsmOprtNum":Ljava/lang/String;
    :cond_58
    const/16 v39, 0x0

    goto/16 :goto_18

    .line 1149
    .restart local v14    # "currCdmaMccIntTmp":I
    .restart local v16    # "currGsmMccIntTmp":I
    .restart local v38    # "intentFwd":Landroid/content/Intent;
    .restart local v39    # "isGsmBootupProgress":Z
    :cond_59
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isCdmaPrefAreas(I)Z

    move-result v61

    if-eqz v61, :cond_5a

    .line 1150
    const-string v61, "china_mainland"

    const/16 v62, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "gsm.ctc.chinamainland"

    const-string v63, "false"

    invoke-virtual/range {v61 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "gsm.ctc.cdmaprefcountry"

    const-string v63, "true"

    invoke-virtual/range {v61 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 1154
    :cond_5a
    const-string v61, "china_mainland"

    const/16 v62, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "gsm.ctc.chinamainland"

    const-string v63, "false"

    invoke-virtual/range {v61 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "gsm.ctc.cdmaprefcountry"

    const-string v63, "false"

    invoke-virtual/range {v61 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 1175
    .restart local v43    # "mHasEverSwitchedToGsm":Ljava/lang/String;
    .restart local v47    # "prevCdmaMcc":I
    .restart local v48    # "prevCdmaMccStr":Ljava/lang/String;
    :cond_5b
    const-string v61, "[Global Mode] in case of Slot1 GSM only, would not reset mHasEverSwitchedToGsm"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 1182
    .end local v43    # "mHasEverSwitchedToGsm":Ljava/lang/String;
    .end local v47    # "prevCdmaMcc":I
    .end local v48    # "prevCdmaMccStr":Ljava/lang/String;
    :cond_5c
    const/16 v61, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGsmActive(I)Z

    move-result v61

    if-nez v61, :cond_5d

    .line 1183
    const-string v61, "[Global Mode] GSM Card is not active. Reset Gsm Mcc"

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1187
    :cond_5d
    const-string v61, "china_mainland"

    const/16 v62, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "gsm.ctc.chinamainland"

    const-string v63, "false"

    invoke-virtual/range {v61 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "gsm.ctc.cdmaprefcountry"

    const-string v63, "false"

    invoke-virtual/range {v61 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const/16 v61, 0x0

    sput v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->currGsmMccInt:I

    goto/16 :goto_1b

    .line 1197
    .end local v38    # "intentFwd":Landroid/content/Intent;
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Landroid/telephony/ServiceState;->getState()I

    move-result v61

    if-eqz v61, :cond_31

    .line 1198
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getCurrCdmaMcc()I

    move-result v61

    const/16 v62, 0x1cc

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_5f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getCurrCdmaMcc()I

    move-result v61

    const/16 v62, 0x1c7

    move/from16 v0, v61

    move/from16 v1, v62

    if-eq v0, v1, :cond_5f

    .line 1199
    const-string v61, "[SimCardMngLaunch] china_mainland reset to false."

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "gsm.ctc.chinamainland"

    const-string v63, "false"

    invoke-virtual/range {v61 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v61, v0

    const-string v62, "gsm.ctc.cdmaprefcountry"

    const-string v63, "false"

    invoke-virtual/range {v61 .. v63}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    :cond_5f
    const/16 v61, 0x0

    sput v61, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->currGsmMccInt:I

    goto/16 :goto_1c
.end method

.method public sendNetChangeIntent(Z)V
    .locals 6
    .param p1, "changeToCdma"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1294
    const-string v1, "DCGGS"

    const-string v2, "DCGGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    const-string v2, "DCGGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1296
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isNotFirstPhoneForCgg()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSlot1ShouldSwitchImmediately:Z

    if-nez v1, :cond_2

    .line 1297
    const-string v1, "[Global Mode] Current Phone is not a first Phone. Do not send net change intent"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1319
    :cond_1
    :goto_0
    return-void

    .line 1301
    :cond_2
    sput-boolean v4, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSlot1ShouldSwitchImmediately:Z

    .line 1303
    sget-boolean v1, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSleepPendedWhileNetSrchGsm:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1304
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1305
    const/16 v1, 0x47

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1306
    sput-boolean v5, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSleepPendedWhileNetSrchGsm:Z

    .line 1307
    const-string v1, "[Global mode] Sleep pended while processing gsm net srch intent."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1309
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1310
    .local v0, "intentFwd":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1311
    if-eqz p1, :cond_4

    .line 1312
    const-string v1, "globalmodetype"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1316
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1317
    const-string v1, "[Global mode] ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED sent"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1314
    :cond_4
    const-string v1, "globalmodetype"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method public sendNoServiceNotiIntent()V
    .locals 3

    .prologue
    .line 1244
    const-string v1, "DCGGS"

    const-string v2, "DCGGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    const-string v2, "DCGGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1246
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_GLOBAL_NO_SERVICE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1247
    .local v0, "intentFwd":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1248
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1250
    .end local v0    # "intentFwd":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public startGlobalNetworkSearchTimer()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1381
    const-string v5, "DCGGS"

    const-string v6, "DCGGS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "DCGS"

    const-string v6, "DCGGS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1383
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isNotFirstPhoneForCgg()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1384
    const-string v3, "[Global Mode] Current Phone is not a first Phone. Do not start network search timer"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1417
    :cond_1
    :goto_0
    return-void

    .line 1387
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v2, v3

    .line 1389
    .local v2, "isAirplaneMode":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopGlobalNoSvcChkTimer()V

    .line 1391
    if-eqz v2, :cond_4

    .line 1392
    const-string v3, "[Global mode] Now airplane mode on. Do not start gsm net srch timer"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "isAirplaneMode":Z
    :cond_3
    move v2, v4

    .line 1387
    goto :goto_1

    .line 1394
    .restart local v2    # "isAirplaneMode":Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isPwrSaveModeTimerRunning()Z

    move-result v5

    if-nez v5, :cond_5

    sget-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingIntentTimerRunning:Z

    if-nez v5, :cond_5

    sget-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetSrchTimerRunning:Z

    if-eqz v5, :cond_6

    .line 1395
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[global mode] Do not start gsm net srch timer:: isPwrSaveModeTimerRunning:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isPwrSaveModeTimerRunning()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPendingIntentTimerRunning:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingIntentTimerRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNetSrchTimerRunning:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetSrchTimerRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1401
    :cond_6
    sput v8, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSrchNet:I

    .line 1402
    const-string v5, "[Global mode] GSM startGlobalNetworkSearchTimer!!!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1404
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1405
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED_INTERNAL_GSM"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1407
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sender_NetSrchTimer:Landroid/app/PendingIntent;

    .line 1408
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x124f8

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sender_NetSrchTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v8, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1412
    sput-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetSrchTimerRunning:Z

    .line 1413
    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstCdmaNoSvcChkTimerStarted:Z

    if-nez v4, :cond_1

    .line 1414
    sput-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mFirstCdmaNoSvcChkTimerStarted:Z

    goto/16 :goto_0
.end method

.method public startGlobalNoSvcChkTimer()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1253
    const-string v2, "DCGGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1255
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isNotFirstPhoneForCgg()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1256
    const-string v2, "[Global Mode] Current Phone is not a first Phone. Do not start no service check timer"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1277
    :cond_1
    :goto_0
    return-void

    .line 1259
    :cond_2
    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetSrchTimerRunning:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNoSvcChkTimerRunning:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingIntentTimerRunning:Z

    if-nez v2, :cond_3

    .line 1260
    const-string v2, "[Global mode] GSM startGlobalNoSvcChkTimer Start!!!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1262
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1263
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_GLOBAL_NOSVC_CHK_TIMER_EXPIRED_GSM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1265
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sender_NoSvcChkTimer:Landroid/app/PendingIntent;

    .line 1266
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sender_NoSvcChkTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1270
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNoSvcChkTimerRunning:Z

    goto :goto_0

    .line 1272
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Global mode] Prev Timer running - mNetSrchTimerRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetSrchTimerRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNoSvcChkTimerRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNoSvcChkTimerRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Do not start timer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPendingIntentTimer(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "pendedMode"    # Ljava/lang/String;
    .param p2, "isSwitchToCdmaInChinaMacauArea"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1511
    const-string v5, "DCGGS"

    const-string v6, "DCGGS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "DCGS"

    const-string v6, "DCGGS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1513
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isNotFirstPhoneForCgg()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1514
    const-string v3, "[Global Mode] Current Phone is not a first Phone. Do not start pending intent timer"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1546
    :cond_1
    :goto_0
    return-void

    .line 1517
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v2, v3

    .line 1519
    .local v2, "isAirplaneMode":Z
    :goto_1
    if-eqz v2, :cond_4

    .line 1520
    const-string v3, "[Global mode] Now airplane mode on. Do not start gsm pending intent timer"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "isAirplaneMode":Z
    :cond_3
    move v2, v4

    .line 1517
    goto :goto_1

    .line 1524
    .restart local v2    # "isAirplaneMode":Z
    :cond_4
    sget-boolean v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingIntentTimerRunning:Z

    if-eqz v5, :cond_5

    .line 1525
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopPendingIntentTimer()V

    .line 1528
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Global mode] GSM startPendingIntentTimer pendedMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isSwitchToCdmaInChinaMacauArea: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1530
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1531
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING_TIMER_EXPIRED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1532
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_6

    .line 1533
    const-string v5, "pendedMode"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1535
    :cond_6
    if-eqz p2, :cond_7

    .line 1536
    const-string v5, "isSwitchToCdmaInChinaMacauArea"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1539
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x10000000

    invoke-static {v5, v4, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sender_PendingIntentTimer:Landroid/app/PendingIntent;

    .line 1540
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long/2addr v6, v8

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sender_PendingIntentTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1544
    sput-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingIntentTimerRunning:Z

    goto :goto_0
.end method

.method public startReduceSearchTimer(J)V
    .locals 7
    .param p1, "timeElapsed"    # J

    .prologue
    const/4 v4, 0x0

    .line 1578
    const-string v2, "DCGGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1580
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Global Mode] ReduceSearchTime - startReduceSearchTimer, timeElapsed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1581
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1582
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.ReduceSearchTimerExpired"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1584
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sender_ReduceSearchTimer:Landroid/app/PendingIntent;

    .line 1585
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sender_ReduceSearchTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1589
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public stopGlobalNetworkSearchTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1420
    const-string v1, "DCGGS"

    const-string v2, "DCGGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    const-string v2, "DCGGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1422
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isNotFirstPhoneForCgg()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1423
    const-string v1, "[Global Mode] Current Phone is not a first Phone. Do not stop network search timer"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1432
    :cond_1
    :goto_0
    return-void

    .line 1426
    :cond_2
    const-string v1, "[Global mode] GSM stopGlobalNetworkSearchTimer!!! "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1427
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1428
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sender_NetSrchTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1429
    sput-boolean v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetSrchTimerRunning:Z

    .line 1430
    sput v3, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mCurrentSrchNet:I

    goto :goto_0
.end method

.method public stopGlobalNoSvcChkTimer()V
    .locals 3

    .prologue
    .line 1280
    const-string v1, "DCGGS"

    const-string v2, "DCGGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    const-string v2, "DCGGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1282
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isNotFirstPhoneForCgg()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1283
    const-string v1, "[Global Mode] Current Phone is not a first Phone. Do not stop no service check timer"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1291
    :cond_1
    :goto_0
    return-void

    .line 1287
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1288
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sender_NoSvcChkTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1289
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNoSvcChkTimerRunning:Z

    goto :goto_0
.end method

.method public stopPendingIntentTimer()V
    .locals 3

    .prologue
    .line 1549
    const-string v1, "DCGGS"

    const-string v2, "DCGGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCGS"

    const-string v2, "DCGGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1551
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isNotFirstPhoneForCgg()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1552
    const-string v1, "[Global Mode] Current Phone is not a first Phone. Do not stop pending intent timer"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1560
    :cond_1
    :goto_0
    return-void

    .line 1555
    :cond_2
    const-string v1, "[Global mode] GSM stopPendingIntentTimer!!! "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1556
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1557
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sender_PendingIntentTimer:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1558
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingIntentTimerRunning:Z

    goto :goto_0
.end method

.method public switchToCdmaInChinaMacauArea(Z)V
    .locals 14
    .param p1, "isPendedProcess"    # Z

    .prologue
    const/16 v13, 0x1cc

    const/16 v12, 0x1c7

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1435
    const-string v10, "DCGGS"

    const-string v11, "DCGGS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "DCGS"

    const-string v11, "DCGGS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1437
    :cond_0
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGsmActive(I)Z

    move-result v3

    .line 1439
    .local v3, "isSlot1GsmActive":Z
    const-string v10, "gsm.sim.activity.dual"

    const-string v11, "false"

    invoke-static {v10, v9, v11}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1440
    .local v4, "isSlot1GsmInUse":Z
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "gsmbootupstart"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_2

    move v2, v8

    .line 1441
    .local v2, "isGsmBootupProgress":Z
    :goto_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "DSNETWORK"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_3

    move v1, v8

    .line 1442
    .local v1, "isDsnetworkRunning":Z
    :goto_1
    const/4 v7, 0x0

    .line 1443
    .local v7, "shouldBeSwitched":Z
    const-string v10, "ril.mChinaNetSelCnfWaiting"

    const-string v11, "false"

    invoke-static {v10, v9, v11}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1444
    .local v5, "mChinaNetSelCnfWaiting":Ljava/lang/String;
    const-string v10, "ril.mIsSwitchedToCdma"

    const-string v11, "false"

    invoke-static {v10, v9, v11}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1446
    .local v6, "mIsSwitchedToCdma":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[global mode] switchToCdmaInChinaMacauArea() isSlot1GsmActive:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isSlot1GsmInUse:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", currGsmMccInt:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->currGsmMccInt:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1449
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[global mode] currGsmMccInt2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->currGsmMccInt2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isGsmBootupProgress:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mIsSwitchedToCdma:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1452
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[global mode] getState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isDsnetworkRunning:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isGsmDfltPhoneIdx: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGsmDfltPhoneIdx(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isPendedProcess: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1456
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[global mode] isPendedProcess: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mChinaNetSelCnfWaiting:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1462
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isGsmDfltPhoneIdx(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "DCGS"

    const-string v10, "DCGGS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "0"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1508
    .end local v1    # "isDsnetworkRunning":Z
    .end local v2    # "isGsmBootupProgress":Z
    .end local v3    # "isSlot1GsmActive":Z
    .end local v4    # "isSlot1GsmInUse":Z
    .end local v5    # "mChinaNetSelCnfWaiting":Ljava/lang/String;
    .end local v6    # "mIsSwitchedToCdma":Ljava/lang/String;
    .end local v7    # "shouldBeSwitched":Z
    :cond_1
    :goto_2
    return-void

    .restart local v3    # "isSlot1GsmActive":Z
    .restart local v4    # "isSlot1GsmInUse":Z
    :cond_2
    move v2, v9

    .line 1440
    goto/16 :goto_0

    .restart local v2    # "isGsmBootupProgress":Z
    :cond_3
    move v1, v9

    .line 1441
    goto/16 :goto_1

    .line 1465
    .restart local v1    # "isDsnetworkRunning":Z
    .restart local v5    # "mChinaNetSelCnfWaiting":Ljava/lang/String;
    .restart local v6    # "mIsSwitchedToCdma":Ljava/lang/String;
    .restart local v7    # "shouldBeSwitched":Z
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-ne v9, v8, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->isDualSlotActive()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1466
    if-eqz v3, :cond_1

    .line 1467
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->startGlobalNoSvcChkTimer()V

    goto :goto_2

    .line 1470
    :cond_5
    if-nez v1, :cond_1

    .line 1472
    const-string v9, "true"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez p1, :cond_6

    .line 1473
    const-string v8, "[global mode] mChinaNetSelCnfWaiting. Exit!"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1483
    :cond_6
    sget v9, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->currGsmMccInt:I

    if-eq v9, v13, :cond_7

    sget v9, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->currGsmMccInt:I

    if-eq v9, v12, :cond_7

    sget v9, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->currGsmMccInt2:I

    if-eq v9, v13, :cond_7

    sget v9, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->currGsmMccInt2:I

    if-ne v9, v12, :cond_8

    .line 1485
    :cond_7
    const-string v9, "false"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1486
    const/4 v7, 0x1

    .line 1490
    :cond_8
    if-nez v3, :cond_9

    if-eqz v4, :cond_1

    :cond_9
    if-nez v2, :cond_1

    if-eqz v7, :cond_1

    .line 1491
    sget-boolean v9, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPendingIntentTimerRunning:Z

    if-eqz v9, :cond_a

    .line 1492
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->stopPendingIntentTimer()V

    .line 1494
    :cond_a
    sget-boolean v9, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSleepPendedWhileNetSrchGsm:Z

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-nez v9, :cond_b

    .line 1495
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1496
    const/16 v9, 0x47

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0xbb8

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1497
    sput-boolean v8, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mSleepPendedWhileNetSrchGsm:Z

    .line 1499
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1500
    .local v0, "intentFwd":Landroid/content/Intent;
    const/high16 v9, 0x20000000

    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1501
    const-string v9, "globalmodetype"

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1502
    const-string v9, "switchToCdmaInChinaMacauArea"

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1503
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1504
    const-string v8, "[Global mode] ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED w/ switchToCdmaInChinaMacauArea sent"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1505
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/IRGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v9, "ril.mChinaNetSelCnfWaiting"

    const-string v10, "true"

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

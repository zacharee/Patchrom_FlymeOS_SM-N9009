.class public Lcom/samsung/android/telephony/MultiSimManager;
.super Ljava/lang/Object;
.source "MultiSimManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MultiSimManager"

.field private static final PHONE_ID_TYPE_FOREGROUND_CALL:I = 0x0

.field private static final PHONE_ID_TYPE_REJECT_CALL:I = 0x1

.field public static final SIMSLOT1:I = 0x0

.field public static final SIMSLOT2:I = 0x1

.field public static final SIMSLOT3:I = 0x2

.field public static final SIMSLOT4:I = 0x3

.field public static final SIMSLOT5:I = 0x4

.field private static final SIMSLOT_COUNT:I

.field public static final TYPE_DATA:I = 0x3

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_SMS:I = 0x2

.field public static final TYPE_VOICE:I = 0x1

.field private static final mPhoneOnKey:[Ljava/lang/String;

.field private static final mSimIconKey:[Ljava/lang/String;

.field private static final mSimNameKey:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "select_name_1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "select_name_2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "select_name_3"

    aput-object v1, v0, v4

    const-string/jumbo v1, "select_name_4"

    aput-object v1, v0, v5

    const-string/jumbo v1, "select_name_5"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/telephony/MultiSimManager;->mSimNameKey:[Ljava/lang/String;

    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "select_icon_1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "select_icon_2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "select_icon_3"

    aput-object v1, v0, v4

    const-string/jumbo v1, "select_icon_4"

    aput-object v1, v0, v5

    const-string/jumbo v1, "select_icon_5"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/telephony/MultiSimManager;->mSimIconKey:[Ljava/lang/String;

    .line 84
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "phone1_on"

    aput-object v1, v0, v2

    const-string/jumbo v1, "phone2_on"

    aput-object v1, v0, v3

    const-string/jumbo v1, "phone3_on"

    aput-object v1, v0, v4

    const-string/jumbo v1, "phone4_on"

    aput-object v1, v0, v5

    const-string/jumbo v1, "phone5_on"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/telephony/MultiSimManager;->mPhoneOnKey:[Ljava/lang/String;

    .line 88
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/samsung/android/telephony/MultiSimManager;->SIMSLOT_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activateSubId(J)V
    .locals 0
    .param p0, "subId"    # J

    .prologue
    .line 2383
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->activateSubId(J)V

    .line 2384
    return-void
.end method

.method public static addSubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 1
    .param p0, "iccId"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 2027
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->addSubInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static allDefaultsSelected()Z
    .locals 1

    .prologue
    .line 2325
    invoke-static {}, Landroid/telephony/SubscriptionManager;->allDefaultsSelected()Z

    move-result v0

    return v0
.end method

.method public static answerRingingCall(I)V
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 1569
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 1571
    .local v0, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->answerRingingCall(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1574
    :goto_0
    return-void

    .line 1572
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static answerRingingCallUsingSubId(J)V
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1587
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->answerRingingCall(J)V

    .line 1588
    return-void
.end method

.method public static appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .prologue
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, "str":Ljava/lang/StringBuilder;
    if-ltz p1, :cond_1

    sget v2, Lcom/samsung/android/telephony/MultiSimManager;->SIMSLOT_COUNT:I

    if-ge p1, v2, :cond_1

    .line 198
    if-eqz p1, :cond_0

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 200
    :cond_1
    const-string v2, "MultiSimManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimSlot value is bigger than SIMSLOT_COUNT or smaller than 0.(text : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simSlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "appendSimSlot method exception"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static call(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "slotId"    # I
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 1542
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 1544
    .local v0, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/telephony/TelephonyManager;->call(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1547
    :goto_0
    return-void

    .line 1545
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static callUsingSubId(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "subId"    # J
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 1556
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->call(JLjava/lang/String;Ljava/lang/String;)V

    .line 1557
    return-void
.end method

.method public static clearDefaultsForInactiveSubIds()V
    .locals 0

    .prologue
    .line 2333
    invoke-static {}, Landroid/telephony/SubscriptionManager;->clearDefaultsForInactiveSubIds()V

    .line 2334
    return-void
.end method

.method public static clearSubInfo()V
    .locals 0

    .prologue
    .line 2318
    invoke-static {}, Landroid/telephony/SubscriptionManager;->clearSubInfo()V

    .line 2319
    return-void
.end method

.method public static deactivateSubId(J)V
    .locals 0
    .param p0, "subId"    # J

    .prologue
    .line 2392
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->deactivateSubId(J)V

    .line 2393
    return-void
.end method

.method public static dial(ILjava/lang/String;)V
    .locals 4
    .param p0, "slotId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1517
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 1519
    .local v0, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/telephony/TelephonyManager;->dial(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1522
    :goto_0
    return-void

    .line 1520
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static dialUsingSubId(JLjava/lang/String;)V
    .locals 2
    .param p0, "subId"    # J
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 1533
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telephony/TelephonyManager;->dial(JLjava/lang/String;)V

    .line 1534
    return-void
.end method

.method public static enableSimplifiedNetworkSettings(IZ)V
    .locals 4
    .param p0, "slotId"    # I
    .param p1, "enable"    # Z

    .prologue
    .line 1369
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 1371
    .local v0, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3, p1}, Landroid/telephony/TelephonyManager;->enableSimplifiedNetworkSettingsForSubscriber(JZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1374
    :goto_0
    return-void

    .line 1372
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static enableSimplifiedNetworkSettingsUsingSubId(JZ)V
    .locals 2
    .param p0, "subId"    # J
    .param p2, "enable"    # Z

    .prologue
    .line 1389
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telephony/TelephonyManager;->enableSimplifiedNetworkSettingsForSubscriber(JZ)V

    .line 1390
    return-void
.end method

.method public static endCall(I)Z
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1596
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1598
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->endCall(J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1600
    :goto_0
    return v2

    .line 1599
    :catch_0
    move-exception v0

    .line 1600
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static endCallUsingSubId(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1611
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->endCall(J)Z

    move-result v0

    return v0
.end method

.method public static getActiveSubIdList()[J
    .locals 1

    .prologue
    .line 2374
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubIdList()[J

    move-result-object v0

    return-object v0
.end method

.method public static getActiveSubInfoCount()I
    .locals 1

    .prologue
    .line 2016
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoCount()I

    move-result v0

    return v0
.end method

.method public static getActiveSubInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2000
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllSubInfoCount()I
    .locals 1

    .prologue
    .line 2008
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getAllSubInfoCount()I

    move-result v0

    return v0
.end method

.method public static getAllSubInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1992
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getAllSubInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCallState(I)I
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1122
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1124
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getCallState(J)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1126
    :goto_0
    return v2

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getCallStateUsingSubId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1139
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getCallState(J)I

    move-result v0

    return v0
.end method

.method public static getCdmaEriIconIndex(I)I
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 1180
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1182
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex(J)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1184
    :goto_0
    return v2

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getCdmaEriIconIndexUsingSubId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1196
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex(J)I

    move-result v0

    return v0
.end method

.method public static getCdmaEriIconMode(I)I
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 1208
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1210
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode(J)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1212
    :goto_0
    return v2

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getCdmaEriIconModeUsingSubId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1224
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode(J)I

    move-result v0

    return v0
.end method

.method public static getCdmaEriText(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 1236
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1238
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getCdmaEriText(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1240
    :goto_0
    return-object v2

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getCdmaEriTextUsingSubId(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1252
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getCdmaEriText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentPhoneType(I)I
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 426
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 428
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 430
    :goto_0
    return v2

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getCurrentPhoneTypeUsingSubId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 442
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v0

    return v0
.end method

.method public static getDataNetworkType(I)I
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 609
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 611
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getDataNetworkType(J)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 613
    :goto_0
    return v2

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getDataNetworkTypeUsingSubId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 626
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(J)I

    move-result v0

    return v0
.end method

.method public static getDataRoamingEnabled(I)Z
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1436
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1438
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getDataRoamingEnabled(J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1440
    :goto_0
    return v2

    .line 1439
    :catch_0
    move-exception v0

    .line 1440
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getDataRoamingEnabledUsingSubId(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1452
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getDataRoamingEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static getDataServiceState(I)I
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1489
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1491
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getDataServiceState(J)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1493
    :goto_0
    return v2

    .line 1492
    :catch_0
    move-exception v0

    .line 1493
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getDataServiceStateUsingSubId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1506
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getDataServiceState(J)I

    move-result v0

    return v0
.end method

.method public static getDataState(I)I
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1151
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1153
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getDataState(J)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1155
    :goto_0
    return v2

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getDataStateUsingSubId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1168
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getDataState(J)I

    move-result v0

    return v0
.end method

.method public static getDefaultPhoneId(I)I
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 2298
    packed-switch p0, :pswitch_data_0

    .line 2308
    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDefaultPhoneId] Invalid Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2301
    :pswitch_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    goto :goto_0

    .line 2303
    :pswitch_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsPhoneId()I

    move-result v0

    goto :goto_0

    .line 2305
    :pswitch_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    goto :goto_0

    .line 2298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getDefaultSubId(I)J
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 2232
    packed-switch p0, :pswitch_data_0

    .line 2242
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 2235
    :pswitch_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v0

    goto :goto_0

    .line 2237
    :pswitch_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    goto :goto_0

    .line 2239
    :pswitch_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v0

    goto :goto_0

    .line 2232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getDefaultSubInfo(I)Landroid/telephony/SubInfoRecord;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 2276
    packed-switch p0, :pswitch_data_0

    .line 2286
    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getDefaultSubInfo] Invalid Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2279
    :pswitch_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubInfo()Landroid/telephony/SubInfoRecord;

    move-result-object v0

    goto :goto_0

    .line 2281
    :pswitch_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubInfo()Landroid/telephony/SubInfoRecord;

    move-result-object v0

    goto :goto_0

    .line 2283
    :pswitch_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubInfo()Landroid/telephony/SubInfoRecord;

    move-result-object v0

    goto :goto_0

    .line 2276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 308
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceIdUsingSubId(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 322
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v0

    .line 323
    .local v0, "slotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEnabledSimCount(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 220
    .local v1, "count":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    .line 222
    .local v0, "activeSubList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubInfoRecord;>;"
    if-eqz v0, :cond_1

    .line 223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubInfoRecord;

    .line 224
    .local v4, "subInfoRecord":Landroid/telephony/SubInfoRecord;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v5, "ril.ICC_TYPE"

    iget-wide v6, v4, Landroid/telephony/SubInfoRecord;->subId:J

    const-string v8, "0"

    invoke-static {v5, v6, v7, v8}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "iccType":Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, v4, Landroid/telephony/SubInfoRecord;->slotId:I

    invoke-static {p0, v5}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iccType":Ljava/lang/String;
    .end local v4    # "subInfoRecord":Landroid/telephony/SubInfoRecord;
    :cond_1
    return v1
.end method

.method public static getGroupIdLevel1(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 832
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 834
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 836
    :goto_0
    return-object v2

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getGroupIdLevel1UsingSubId(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 852
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I
    .param p1, "appType"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1333
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1335
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5, p1, p2}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(JILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1337
    :goto_0
    return-object v2

    .line 1336
    :catch_0
    move-exception v0

    .line 1337
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getIccSimChallengeResponseUsingSubId(JILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J
    .param p2, "appType"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 1352
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImei(I)Ljava/lang/String;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 401
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImeiUsingSubId(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 414
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v0

    .line 415
    .local v0, "slotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInsertedSimCount()I
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoCount()I

    move-result v0

    return v0
.end method

.method public static getLine1AlphaTag(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 912
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 914
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getLine1AlphaTagForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 916
    :goto_0
    return-object v2

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLine1AlphaTagUsingSubId(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 934
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getLine1AlphaTagForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLine1Number(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 370
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 372
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 374
    :goto_0
    return-object v2

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLine1NumberUsingSubId(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 389
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLteOnCdmaMode(I)I
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 799
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 801
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(J)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 803
    :goto_0
    return v2

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getLteOnCdmaModeUsingSubId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 817
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(J)I

    move-result v0

    return v0
.end method

.method public static getMsisdn(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 949
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 951
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getMsisdn(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 953
    :goto_0
    return-object v2

    .line 952
    :catch_0
    move-exception v0

    .line 953
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMsisdnUsingSubId(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 969
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getMsisdn(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMultiSimPhoneId(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1947
    packed-switch p0, :pswitch_data_0

    .line 1953
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1949
    :pswitch_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimForegroundPhoneId()I

    move-result v0

    goto :goto_0

    .line 1951
    :pswitch_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimLastRejectIncomingCallPhoneId()I

    move-result v0

    goto :goto_0

    .line 1947
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetworkCountryIso(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 548
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 550
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 552
    :goto_0
    return-object v2

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getNetworkCountryIsoUsingSubId(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 568
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperator(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 483
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 485
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 487
    :goto_0
    return-object v2

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getNetworkOperatorName(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 454
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 456
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 458
    :goto_0
    return-object v2

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getNetworkOperatorNameUsingSubId(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 471
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperatorUsingSubId(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 501
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType(I)I
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 580
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 582
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getNetworkType(J)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 584
    :goto_0
    return v2

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getNetworkTypeUsingSubId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 597
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkType(J)I

    move-result v0

    return v0
.end method

.method public static getPhoneId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 2221
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    return v0
.end method

.method public static getServiceState(I)I
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1463
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1465
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getServiceState(J)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1467
    :goto_0
    return v2

    .line 1466
    :catch_0
    move-exception v0

    .line 1467
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getServiceStateUsingSubId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1478
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getServiceState(J)I

    move-result v0

    return v0
.end method

.method public static getSimCountryIso(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 770
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 772
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 774
    :goto_0
    return-object v2

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSimCountryIsoUsingSubId(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 786
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getSimCountryIso(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimIcon(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/telephony/MultiSimManager;->mSimIconKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, "simIcon":I
    const-string v1, "MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimIcon ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-gez v0, :cond_0

    .line 157
    packed-switch p1, :pswitch_data_0

    .line 174
    const/4 v0, 0x0

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 159
    :pswitch_0
    const/4 v0, 0x0

    .line 160
    goto :goto_0

    .line 162
    :pswitch_1
    const/4 v0, 0x1

    .line 163
    goto :goto_0

    .line 165
    :pswitch_2
    const/4 v0, 0x2

    .line 166
    goto :goto_0

    .line 168
    :pswitch_3
    const/4 v0, 0x3

    .line 169
    goto :goto_0

    .line 171
    :pswitch_4
    const/4 v0, 0x4

    .line 172
    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getSimName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/telephony/MultiSimManager;->mSimNameKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "simName":Ljava/lang/String;
    const-string v1, "MultiSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-nez v0, :cond_0

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 138
    const-string v0, "SIM 1"

    .line 143
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :pswitch_0
    const-string v0, "SIM 1"

    .line 124
    goto :goto_0

    .line 126
    :pswitch_1
    const-string v0, "SIM 2"

    .line 127
    goto :goto_0

    .line 129
    :pswitch_2
    const-string v0, "SIM 3"

    .line 130
    goto :goto_0

    .line 132
    :pswitch_3
    const-string v0, "SIM 4"

    .line 133
    goto :goto_0

    .line 135
    :pswitch_4
    const-string v0, "SIM 5"

    .line 136
    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getSimOperator(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 715
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 717
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 719
    :goto_0
    return-object v2

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSimOperatorName(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 743
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 745
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorName(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 747
    :goto_0
    return-object v2

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSimOperatorNameUsingSubId(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 759
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimOperatorUsingSubId(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 732
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimSerialNumber(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 337
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 339
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 341
    :goto_0
    return-object v2

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSimSerialNumberUsingSubId(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 356
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimSlotCount()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/samsung/android/telephony/MultiSimManager;->SIMSLOT_COUNT:I

    return v0
.end method

.method public static getSimState(I)I
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 690
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public static getSimStateUsingSubId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 702
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v0

    .line 703
    .local v0, "slotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    return v1
.end method

.method public static getSimplifiedNetworkSettingsEnabled(I)Z
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1405
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1407
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getSimplifiedNetworkSettingsEnabledForSubscriber(J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1409
    :goto_0
    return v2

    .line 1408
    :catch_0
    move-exception v0

    .line 1409
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getSimplifiedNetworkSettingsEnabledUsingSubId(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1425
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getSimplifiedNetworkSettingsEnabledForSubscriber(J)Z

    move-result v0

    return v0
.end method

.method public static getSlotId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 2203
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v0

    return v0
.end method

.method public static getSubId(I)[J
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 2212
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    return-object v0
.end method

.method public static getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1965
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getSubInfoForSubscriber(J)Landroid/telephony/SubInfoRecord;

    move-result-object v0

    return-object v0
.end method

.method public static getSubInfoUsingIccId(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "iccId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1974
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubInfoUsingIccId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSubInfoUsingSlotId(I)Ljava/util/List;
    .locals 1
    .param p0, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1983
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubInfoUsingSlotId(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSubscriberId(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 277
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 279
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getSubscriberId(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 281
    :goto_0
    return-object v2

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSubscriberIdUsingSubId(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 295
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 1294
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1296
    .local v1, "subId":[J
    if-nez v1, :cond_0

    .line 1297
    const-string v2, "MultiSimManager"

    const-string v3, "getTelephonyProperty - subId is null!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 1302
    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    aget-wide v2, v1, v2

    invoke-static {p0, v2, v3, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 1303
    :catch_0
    move-exception v0

    .line 1304
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getTelephonyPropertyUsingSubId(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "subId"    # J
    .param p3, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 1318
    invoke-static {p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 1089
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1091
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1093
    :goto_0
    return-object v2

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getVoiceMailAlphaTagUsingSubId(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1110
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceMailNumber(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 987
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 989
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 991
    :goto_0
    return-object v2

    .line 990
    :catch_0
    move-exception v0

    .line 991
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getVoiceMailNumberUsingSubId(J)Ljava/lang/String;
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1007
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceMessageCount(I)I
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1054
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1056
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount(J)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1058
    :goto_0
    return v2

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getVoiceMessageCountUsingSubId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1073
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount(J)I

    move-result v0

    return v0
.end method

.method public static getVoiceNetworkType(I)I
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 637
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 639
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(J)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 641
    :goto_0
    return v2

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getVoiceNetworkTypeUsingSubId(J)I
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 653
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(J)I

    move-result v0

    return v0
.end method

.method public static handlePinMmi(ILjava/lang/String;)Z
    .locals 6
    .param p0, "slotId"    # I
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1849
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1851
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5, p1}, Landroid/telephony/TelephonyManager;->handlePinMmi(JLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1853
    :goto_0
    return v2

    .line 1852
    :catch_0
    move-exception v0

    .line 1853
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static handlePinMmiUsingSubId(JLjava/lang/String;)Z
    .locals 2
    .param p0, "subId"    # J
    .param p2, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1867
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telephony/TelephonyManager;->handlePinMmi(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasIccCard(I)Z
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 667
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(J)Z

    move-result v0

    return v0
.end method

.method public static hasIccCardUsingSubId(J)Z
    .locals 4
    .param p0, "subId"    # J

    .prologue
    .line 678
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->getSlotId(J)I

    move-result v0

    .line 679
    .local v0, "slotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(J)Z

    move-result v1

    return v1
.end method

.method public static isEmergencyNumber(ILjava/lang/String;)Z
    .locals 6
    .param p0, "slotId"    # I
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1932
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1934
    .local v1, "subId":[J
    const/4 v3, 0x0

    :try_start_0
    aget-wide v4, v1, v3

    invoke-static {v4, v5, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(JLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1936
    :goto_0
    return v2

    .line 1935
    :catch_0
    move-exception v0

    .line 1936
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static isEnabledSim(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    const/4 v1, 0x1

    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/telephony/MultiSimManager;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 260
    .local v0, "simActive":I
    if-ne v0, v1, :cond_0

    .line 263
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIdle(I)Z
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    .line 1675
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1677
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->isIdle(J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1679
    :goto_0
    return v2

    .line 1678
    :catch_0
    move-exception v0

    .line 1679
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isIdleUsingSubId(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1691
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->isIdle(J)Z

    move-result v0

    return v0
.end method

.method public static isNetworkRoaming(I)Z
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 516
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 518
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 520
    :goto_0
    return v2

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static isNetworkRoamingUsingSubId(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 533
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(J)Z

    move-result v0

    return v0
.end method

.method public static isNoSIM()Z
    .locals 5

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "simSlotNum":I
    :goto_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 241
    const-string/jumbo v3, "ril.ICC_TYPE"

    const-string v4, "0"

    invoke-static {v3, v2, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "iccType":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    add-int/lit8 v0, v0, 0x1

    .line 240
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    .end local v1    # "iccType":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 247
    const/4 v3, 0x1

    .line 249
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isOffhook(I)Z
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1621
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1623
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->isOffhook(J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1625
    :goto_0
    return v2

    .line 1624
    :catch_0
    move-exception v0

    .line 1625
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static isOffhookUsingSubId(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1637
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->isOffhook(J)Z

    move-result v0

    return v0
.end method

.method public static isRadioOn(I)Z
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1700
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1702
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->isRadioOn(J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1704
    :goto_0
    return v2

    .line 1703
    :catch_0
    move-exception v0

    .line 1704
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static isRadioOnUsingSubId(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1715
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->isRadioOn(J)Z

    move-result v0

    return v0
.end method

.method public static isRinging(I)Z
    .locals 6
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1648
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1650
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->isRinging(J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1652
    :goto_0
    return v2

    .line 1651
    :catch_0
    move-exception v0

    .line 1652
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static isRingingUsingSubId(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1665
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->isRinging(J)Z

    move-result v0

    return v0
.end method

.method public static isValidPhoneId(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 2347
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    return v0
.end method

.method public static isValidSubId(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 2340
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v0

    return v0
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .prologue
    .line 2356
    invoke-static {p0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 2357
    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;IJ)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # J

    .prologue
    .line 2366
    invoke-static {p0, p1, p2, p3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;IJ)V

    .line 2367
    return-void
.end method

.method public static setColor(II)I
    .locals 4
    .param p0, "color"    # I
    .param p1, "slotId"    # I

    .prologue
    .line 2049
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 2050
    .local v0, "subId":[J
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {p0, v2, v3}, Landroid/telephony/SubscriptionManager;->setColor(IJ)I

    move-result v1

    return v1
.end method

.method public static setColorUsingSubId(IJ)I
    .locals 1
    .param p0, "color"    # I
    .param p1, "subId"    # J

    .prologue
    .line 2038
    invoke-static {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->setColor(IJ)I

    move-result v0

    return v0
.end method

.method public static setDataEnabled(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    .line 1920
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1921
    return-void
.end method

.method public static setDataRoaming(II)I
    .locals 4
    .param p0, "roaming"    # I
    .param p1, "slotId"    # I

    .prologue
    .line 2188
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 2190
    .local v1, "subId":[J
    const/4 v2, 0x0

    :try_start_0
    aget-wide v2, v1, v2

    invoke-static {p0, v2, v3}, Landroid/telephony/SubscriptionManager;->setDataRoaming(IJ)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2192
    :goto_0
    return v2

    .line 2191
    :catch_0
    move-exception v0

    .line 2192
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static setDataRoamingUsingSubId(IJ)I
    .locals 1
    .param p0, "roaming"    # I
    .param p1, "subId"    # J

    .prologue
    .line 2176
    invoke-static {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->setDataRoaming(IJ)I

    move-result v0

    return v0
.end method

.method public static setDefaultSubId(IJ)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "subId"    # J

    .prologue
    .line 2252
    packed-switch p0, :pswitch_data_0

    .line 2265
    const-string v0, "MultiSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDefaultSubId] Invalid Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    :goto_0
    return-void

    .line 2255
    :pswitch_0
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(J)V

    goto :goto_0

    .line 2258
    :pswitch_1
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(J)V

    goto :goto_0

    .line 2261
    :pswitch_2
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(J)V

    goto :goto_0

    .line 2252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setDisplayName(Ljava/lang/String;I)I
    .locals 4
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 2072
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 2074
    .local v1, "subId":[J
    const/4 v2, 0x0

    :try_start_0
    aget-wide v2, v1, v2

    invoke-static {p0, v2, v3}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;J)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2076
    :goto_0
    return v2

    .line 2075
    :catch_0
    move-exception v0

    .line 2076
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static setDisplayName(Ljava/lang/String;IJ)I
    .locals 4
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "nameSource"    # J

    .prologue
    .line 2104
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 2106
    .local v1, "subId":[J
    const/4 v2, 0x0

    :try_start_0
    aget-wide v2, v1, v2

    invoke-static {p0, v2, v3, p2, p3}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;JJ)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2108
    :goto_0
    return v2

    .line 2107
    :catch_0
    move-exception v0

    .line 2108
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static setDisplayNameUsingSubId(Ljava/lang/String;J)I
    .locals 1
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "subId"    # J

    .prologue
    .line 2061
    invoke-static {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static setDisplayNameUsingSubId(Ljava/lang/String;JJ)I
    .locals 1
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "subId"    # J
    .param p3, "nameSource"    # J

    .prologue
    .line 2090
    invoke-static {p0, p1, p2, p3, p4}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;JJ)I

    move-result v0

    return v0
.end method

.method public static setDisplayNumber(Ljava/lang/String;I)I
    .locals 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 2132
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 2134
    .local v1, "subId":[J
    const/4 v2, 0x0

    :try_start_0
    aget-wide v2, v1, v2

    invoke-static {p0, v2, v3}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;J)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2136
    :goto_0
    return v2

    .line 2135
    :catch_0
    move-exception v0

    .line 2136
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static setDisplayNumberFormat(II)I
    .locals 4
    .param p0, "format"    # I
    .param p1, "slotId"    # I

    .prologue
    .line 2160
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 2162
    .local v1, "subId":[J
    const/4 v2, 0x0

    :try_start_0
    aget-wide v2, v1, v2

    invoke-static {p0, v2, v3}, Landroid/telephony/SubscriptionManager;->setDisplayNumberFormat(IJ)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2164
    :goto_0
    return v2

    .line 2163
    :catch_0
    move-exception v0

    .line 2164
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static setDisplayNumberFormatUsingSubId(IJ)I
    .locals 1
    .param p0, "format"    # I
    .param p1, "subId"    # J

    .prologue
    .line 2148
    invoke-static {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->setDisplayNumberFormat(IJ)I

    move-result v0

    return v0
.end method

.method public static setDisplayNumberUsingSubId(Ljava/lang/String;J)I
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "subId"    # J

    .prologue
    .line 2120
    invoke-static {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->setDisplayNumber(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static setLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "slotId"    # I
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 872
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 874
    .local v0, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3, p1, p2}, Landroid/telephony/TelephonyManager;->setLine1NumberForDisplayForSubscriber(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :goto_0
    return-void

    .line 875
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setLine1NumberForDisplayUsingSubId(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "subId"    # J
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 895
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setLine1NumberForDisplayForSubscriber(JLjava/lang/String;Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method public static setRadio(IZ)Z
    .locals 6
    .param p0, "slotId"    # I
    .param p1, "turnOn"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1898
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1900
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5, p1}, Landroid/telephony/TelephonyManager;->setRadio(JZ)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1902
    :goto_0
    return v2

    .line 1901
    :catch_0
    move-exception v0

    .line 1902
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static setRadioUsingSubId(JZ)Z
    .locals 2
    .param p0, "subId"    # J
    .param p2, "turnOn"    # Z

    .prologue
    .line 1912
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telephony/TelephonyManager;->setRadio(JZ)Z

    move-result v0

    return v0
.end method

.method public static setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1265
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 1267
    .local v0, "subId":[J
    const/4 v1, 0x0

    :try_start_0
    aget-wide v2, v0, v1

    invoke-static {p0, v2, v3, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    :goto_0
    return-void

    .line 1268
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setTelephonyPropertyUsingSubId(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "subId"    # J
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1281
    invoke-static {p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)V

    .line 1282
    return-void
.end method

.method public static supplyPin(ILjava/lang/String;)Z
    .locals 6
    .param p0, "slotId"    # I
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1726
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1728
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5, p1}, Landroid/telephony/TelephonyManager;->supplyPin(JLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1730
    :goto_0
    return v2

    .line 1729
    :catch_0
    move-exception v0

    .line 1730
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static supplyPinReportResult(ILjava/lang/String;)[I
    .locals 7
    .param p0, "slotId"    # I
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1785
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1787
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5, p1}, Landroid/telephony/TelephonyManager;->supplyPinReportResult(JLjava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1789
    :goto_0
    return-object v2

    .line 1788
    :catch_0
    move-exception v0

    .line 1789
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-array v2, v6, [I

    goto :goto_0
.end method

.method public static supplyPinReportResultUsingSubId(JLjava/lang/String;)[I
    .locals 2
    .param p0, "subId"    # J
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1803
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telephony/TelephonyManager;->supplyPinReportResult(JLjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static supplyPinUsingSubId(JLjava/lang/String;)Z
    .locals 2
    .param p0, "subId"    # J
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1743
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/telephony/TelephonyManager;->supplyPin(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static supplyPuk(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "slotId"    # I
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1755
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1757
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5, p1, p2}, Landroid/telephony/TelephonyManager;->supplyPuk(JLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1759
    :goto_0
    return v2

    .line 1758
    :catch_0
    move-exception v0

    .line 1759
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static supplyPukReportResult(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 7
    .param p0, "slotId"    # I
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1817
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1819
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5, p1, p2}, Landroid/telephony/TelephonyManager;->supplyPukReportResult(JLjava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1821
    :goto_0
    return-object v2

    .line 1820
    :catch_0
    move-exception v0

    .line 1821
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-array v2, v6, [I

    goto :goto_0
.end method

.method public static supplyPukReportResultUsingSubId(JLjava/lang/String;Ljava/lang/String;)[I
    .locals 2
    .param p0, "subId"    # J
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    .line 1837
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->supplyPukReportResult(JLjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static supplyPukUsingSubId(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "subId"    # J
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    .line 1773
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->supplyPuk(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static toggleRadioOnOff(I)V
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 1876
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 1878
    .local v0, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->toggleRadioOnOff(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1881
    :goto_0
    return-void

    .line 1879
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static toggleRadioOnOffUsingSubId(J)V
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 1889
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->toggleRadioOnOff(J)V

    .line 1890
    return-void
.end method


# virtual methods
.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    .line 1021
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 1023
    .local v1, "subId":[J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1025
    :goto_0
    return-object v2

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCompleteVoiceMailNumberUsingSubId(J)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 1040
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

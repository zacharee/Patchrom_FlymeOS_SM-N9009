.class public final Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;
.super Ljava/lang/Object;
.source "TelecomUtilsMultiSIM.java"


# static fields
.field private static final LIVE_CALL_STATES:[I

.field private static final OUTGOING_CALL_STATES:[I

.field private static prevSubId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->LIVE_CALL_STATES:[I

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->OUTGOING_CALL_STATES:[I

    return-void

    .line 56
    nop

    :array_12
    .array-data 4
        0x1
        0x2
        0x3
        0x5
    .end array-data

    .line 63
    :array_1e
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static getDefaultVoiceSubId()I
    .registers 3

    .prologue
    .line 96
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultDataSubId subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->log(Ljava/lang/String;)V

    .line 98
    return v0
.end method

.method public static getPhoneId(Lcom/android/server/telecom/Call;)I
    .registers 3

    .prologue
    .line 179
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSubId(Lcom/android/server/telecom/Call;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 181
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    .line 182
    if-nez v1, :cond_f

    .line 183
    const/4 v0, 0x0

    .line 184
    :cond_f
    return v0
.end method

.method public static getSubId(Lcom/android/server/telecom/Call;)J
    .registers 6

    .prologue
    .line 188
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    .line 189
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 191
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_15} :catch_17

    move-result-wide v0

    .line 196
    :cond_16
    :goto_16
    return-wide v0

    .line 192
    :catch_17
    move-exception v2

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSubId failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomUtilsMultiSIM"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public static setAudioParameters(Lcom/android/server/telecom/Call;Landroid/media/AudioManager;I)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    .line 280
    const-string v0, "TelecomUtilsMultiSIM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setAudioParameters : mode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v0, "gsm.current.vsid"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    const-string v2, "gsm.current.vsid2"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    const-string v3, "TelecomUtilsMultiSIM"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setAudioParameters : sVsid = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v0, "TelecomUtilsMultiSIM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setAudioParameters : sVsid2 = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-eqz p0, :cond_a9

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSubId(Lcom/android/server/telecom/Call;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(J)Z

    move-result v2

    .line 288
    const/4 v0, 0x0

    .line 289
    if-eqz p0, :cond_63

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v3

    if-ne v3, v1, :cond_63

    move v0, v1

    .line 293
    :cond_63
    packed-switch p2, :pswitch_data_b6

    .line 308
    :goto_66
    return-void

    .line 297
    :pswitch_67
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneId(Lcom/android/server/telecom/Call;)I

    move-result v3

    if-ne v3, v1, :cond_7a

    .line 298
    const-string v0, "setAudioParameters phone_type=cp2"

    const-string v1, "TelecomUtilsMultiSIM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v0, "phone_type=cp2"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_66

    .line 300
    :cond_7a
    const-string v1, "feature_ctc"

    #invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    #move-result v1

    const/4 v1, 0x1

    if-eqz v1, :cond_a9

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneId(Lcom/android/server/telecom/Call;)I

    move-result v1

    if-nez v1, :cond_a9

    if-eqz v2, :cond_a9

    if-eqz v0, :cond_a9

    const-string v0, "feature_multisim_modem_type_DCGS"

    #invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    #move-result v0

    const/4 v0, 0x0

    if-nez v0, :cond_9c

    #invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    #move-result v0

    const/4 v0, 0x0

    if-eqz v0, :cond_a9

    .line 302
    :cond_9c
    const-string v0, "setAudioParameters phone_type=cp2"

    const-string v1, "TelecomUtilsMultiSIM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v0, "phone_type=cp2"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_66

    .line 305
    :cond_a9
    const-string v0, "setAudioParameters phone_type=cp1"

    const-string v1, "TelecomUtilsMultiSIM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v0, "phone_type=cp1"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_66

    .line 293
    :pswitch_data_b6
    .packed-switch 0x2
        :pswitch_67
        :pswitch_67
        :pswitch_67
    .end packed-switch
.end method

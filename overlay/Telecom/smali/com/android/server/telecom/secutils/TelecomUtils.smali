.class public final Lcom/android/server/telecom/secutils/TelecomUtils;
.super Ljava/lang/Object;
.source "TelecomUtils.java"


# static fields
.field private static EXTRA_SIM_ID:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;

.field private static mInCallUiHasFocused:Z

.field private static mIsPSBarring:Z

.field private static mLock:Ljava/lang/Object;

.field private static mPlayingSecCallEndTone:Z

.field public static mRedialNumber:Ljava/lang/String;

.field private static mState:I

.field private static mToast:Landroid/widget/Toast;

.field public static mVolteRedialNumber:Ljava/lang/String;

.field private static mediaPlayer:Landroid/media/MediaPlayer;

.field private static sLastMoCallCloneIntent:Landroid/content/Intent;

.field private static sLastMoCallIntent:Landroid/content/Intent;

.field public static secondEndCall:Z

.field public static secondMWEndCall:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 169
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->secondEndCall:Z

    .line 170
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->secondMWEndCall:Z

    .line 184
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mInCallUiHasFocused:Z

    .line 187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mLock:Ljava/lang/Object;

    .line 188
    sput-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mToast:Landroid/widget/Toast;

    .line 190
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsPSBarring:Z

    .line 191
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mPlayingSecCallEndTone:Z

    .line 193
    sput-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 195
    sput-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mRedialNumber:Ljava/lang/String;

    .line 197
    sput-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mVolteRedialNumber:Ljava/lang/String;

    .line 200
    sput v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mState:I

    .line 203
    const-string v0, "simSlot"

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->EXTRA_SIM_ID:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public static getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1296
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 1297
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1c} :catch_41

    move-result-wide v0

    .line 1305
    :goto_1d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v0

    .line 1306
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPhoneTypeFromCall : PhoneType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1307
    return v0

    .line 1299
    :cond_3c
    :try_start_3c
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_3f} :catch_41

    move-result-wide v0

    goto :goto_1d

    .line 1301
    :catch_41
    move-exception v0

    .line 1302
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPhoneTypeFromCall failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1303
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    goto :goto_1d
.end method

.method public static setAudioParameters(Lcom/android/server/telecom/Call;Landroid/media/AudioManager;I)V
    .registers 9

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 787
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setAudioParameters : mode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 788
    packed-switch p2, :pswitch_data_118

    .line 837
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    .line 838
    if-eqz v1, :cond_f8

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_f8

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->isRinging()Z

    move-result v1

    if-nez v1, :cond_f8

    .line 839
    const-string v1, "TelecomUtils"

    const-string v2, "isInCall alive "

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 849
    :goto_37
    return-void

    .line 790
    :pswitch_38
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    if-ne v1, v5, :cond_54

    .line 791
    const-string v1, "TelecomUtils"

    const-string v2, "setAudioParameters : previous mode is MODE_IN_COMMUNICATION, reset before MODE_IN_CALL"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    const-string v1, "realcall=off"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 793
    const-string v1, "voipWifiCalling=off"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 797
    :cond_54
    const/4 v1, 0x1

    if-eqz v1, :cond_7c

    .line 798
    const-string v1, "VoLTEstate=voice"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 802
    :cond_5f
    :goto_5f
    if-eqz p0, :cond_76

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_71

    #invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    #move-result-object v1

    #if-eqz v1, :cond_71

    #invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgW2L()Z

    #move-result v0

    :cond_71
    if-eqz v0, :cond_76

    #.line 803
    #invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->changeEPDGAudioPath(I)V

    .line 805
    :cond_76
    const-string v0, "realcall=on"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_37

    .line 799
    :cond_7c
    #invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVideoCall(Lcom/android/server/telecom/Call;)Z

    #move-result v1

    const/4 v1, 0x0

    if-eqz v1, :cond_5f

    .line 800
    const-string v1, "VoLTEstate=video"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_5f

    .line 809
    :pswitch_88
    const-string v1, "psvt_audio_processing_on_ap"

    #invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    #move-result v1

    const/4 v1, 0x0

    if-eqz v1, :cond_9c

    #invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVideoCall(Lcom/android/server/telecom/Call;)Z

    #move-result v1

    const/4 v1, 0x0

    if-eqz v1, :cond_9c

    .line 810
    const-string v0, "VoLTEstate=video"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_37

    .line 811
    :cond_9c
    if-eqz p0, :cond_c2

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    #invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isEpdgCall(Landroid/os/Bundle;)Z

    #move-result v1

    const/4 v1, 0x0

    if-eqz v1, :cond_c2

    .line 812
    const-string v1, "realcall=off"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 813
    const-string v1, "VoLTEstate=off"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 815
    const-string v1, "voipWifiCalling=on"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p1, v5}, Landroid/media/AudioManager;->setMode(I)V

    .line 817
    #invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->changeEPDGAudioPath(I)V

    goto/16 :goto_37

    .line 818
    :cond_c2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_Sprint_Vowifi"

    #invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    #move-result v1

    const/4 v1, 0x0

    if-eqz v1, :cond_e3

    #invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isWFCRegistered()Z

    #move-result v1

    const/4 v1, 0x0

    if-eqz v1, :cond_e3

    .line 819
    const-string v1, "realcall=off"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 821
    const-string v0, "voipWifiCalling=on"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_37

    .line 823
    :cond_e3
    const-string v0, "voipWifiCalling=on"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_37

    .line 828
    :pswitch_ea
    const-string v0, "realcall=on"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_37

    .line 832
    :pswitch_f1
    const-string v0, "realcall=off"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_37

    .line 843
    :cond_f8
    const-string v1, "TelecomUtils"

    const-string v2, "init Audio Parameters: "

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 844
    const-string v0, "VoLTEstate=off"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 845
    const-string v0, "voipWifiCalling=off"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 846
    const-string v0, "realcall=off"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_37

    .line 788
    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_f1
        :pswitch_38
        :pswitch_88
        :pswitch_ea
    .end packed-switch
.end method

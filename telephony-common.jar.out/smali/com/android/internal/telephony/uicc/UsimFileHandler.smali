.class public final Lcom/android/internal/telephony/uicc/UsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "UsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 7
    .param p1, "efid"    # I

    .prologue
    const/4 v6, 0x1

    .line 48
    const-string v4, "DCG"

    const-string v5, "DCGGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "DCGG"

    const-string v5, "DCGGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "DCGS"

    const-string v5, "DCGGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "DCGGS"

    const-string v5, "DCGGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CG"

    const-string v5, "DCGGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getPhoneId()I

    move-result v4

    if-nez v4, :cond_8

    .line 54
    const-string v4, "ril.IsCSIM"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, "isCsim":I
    const/16 v4, 0x6f3c

    if-ne p1, v4, :cond_4

    .line 56
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    if-ne v0, v6, :cond_2

    .line 58
    const-string v1, "3F007FFF"

    .line 141
    .end local v0    # "isCsim":I
    :cond_1
    :goto_0
    return-object v1

    .line 60
    .restart local v0    # "isCsim":I
    :cond_2
    const-string v1, "3F007F25"

    goto :goto_0

    .line 63
    :cond_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v2

    .line 64
    .local v2, "subId":J
    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v4

    if-nez v4, :cond_8

    .line 65
    const-string v1, "3F007F10"

    goto :goto_0

    .line 68
    .end local v2    # "subId":J
    :cond_4
    const/16 v4, 0x6f22

    if-ne p1, v4, :cond_6

    .line 69
    if-ne v0, v6, :cond_5

    .line 70
    const-string v1, "3F007FFF"

    goto :goto_0

    .line 72
    :cond_5
    const-string v1, "3F007F25"

    goto :goto_0

    .line 74
    :cond_6
    const/16 v4, 0x4f20

    if-eq p1, v4, :cond_7

    const/16 v4, 0x4f21

    if-eq p1, v4, :cond_7

    const/16 v4, 0x4f22

    if-ne p1, v4, :cond_8

    .line 75
    :cond_7
    const-string v1, "3F007F105F3C"

    goto :goto_0

    .line 80
    .end local v0    # "isCsim":I
    :cond_8
    sparse-switch p1, :sswitch_data_0

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 139
    const-string v1, "3F007F105F3A"

    goto :goto_0

    .line 112
    .end local v1    # "path":Ljava/lang/String;
    :sswitch_0
    const-string v1, "3F007FFF"

    goto :goto_0

    .line 117
    :sswitch_1
    const-string v1, "3F007FFF5F3D"

    goto :goto_0

    .line 122
    :sswitch_2
    const-string v1, "3F007F105F3A"

    goto :goto_0

    .line 126
    :sswitch_3
    const-string v1, "3F007FFF5F50"

    goto :goto_0

    .line 131
    :sswitch_4
    const-string v1, "3F007F43"

    goto :goto_0

    .line 80
    :sswitch_data_0
    .sparse-switch
        0x4f22 -> :sswitch_1
        0x4f30 -> :sswitch_2
        0x4f55 -> :sswitch_1
        0x4f84 -> :sswitch_3
        0x6f02 -> :sswitch_4
        0x6f05 -> :sswitch_0
        0x6f11 -> :sswitch_0
        0x6f13 -> :sswitch_0
        0x6f14 -> :sswitch_0
        0x6f15 -> :sswitch_0
        0x6f16 -> :sswitch_0
        0x6f17 -> :sswitch_0
        0x6f18 -> :sswitch_0
        0x6f38 -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f3e -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f42 -> :sswitch_0
        0x6f46 -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4e -> :sswitch_0
        0x6f62 -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fc5 -> :sswitch_0
        0x6fc6 -> :sswitch_0
        0x6fc7 -> :sswitch_0
        0x6fc8 -> :sswitch_0
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_0
        0x6fcb -> :sswitch_0
        0x6fcd -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 146
    const-string v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.class public final Lcom/android/internal/telephony/uicc/SIMFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SIMFileHandler"


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
    .locals 5
    .param p1, "efid"    # I

    .prologue
    const/4 v4, 0x1

    .line 52
    const-string v2, "DCG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCGGS"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CG"

    const-string v3, "DCGGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_7

    .line 58
    const-string v2, "ril.IsCSIM"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "isCsim":I
    const/16 v2, 0x6f3c

    if-ne p1, v2, :cond_3

    .line 60
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    if-ne v0, v4, :cond_1

    .line 62
    const-string v2, "3F007FFF"

    .line 139
    .end local v0    # "isCsim":I
    :goto_0
    return-object v2

    .line 64
    .restart local v0    # "isCsim":I
    :cond_1
    const-string v2, "3F007F25"

    goto :goto_0

    .line 67
    :cond_2
    const-string v2, "3F007F10"

    goto :goto_0

    .line 69
    :cond_3
    const/16 v2, 0x6f22

    if-ne p1, v2, :cond_5

    .line 70
    if-ne v0, v4, :cond_4

    .line 71
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 73
    :cond_4
    const-string v2, "3F007F25"

    goto :goto_0

    .line 75
    :cond_5
    const/16 v2, 0x4f20

    if-eq p1, v2, :cond_6

    const/16 v2, 0x4f21

    if-eq p1, v2, :cond_6

    const/16 v2, 0x4f22

    if-ne p1, v2, :cond_7

    .line 76
    :cond_6
    const-string v2, "3F007F105F3C"

    goto :goto_0

    .line 81
    .end local v0    # "isCsim":I
    :cond_7
    sparse-switch p1, :sswitch_data_0

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 137
    const-string v2, "SIMFileHandler"

    const-string v3, "Error: EF Path being returned in null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v2, v1

    .line 139
    goto :goto_0

    .line 84
    .end local v1    # "path":Ljava/lang/String;
    :sswitch_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "3F007F25"

    goto :goto_0

    :cond_9
    const-string v2, "3F007F10"

    goto :goto_0

    .line 87
    :sswitch_1
    const-string v2, "3F007F10"

    goto :goto_0

    .line 104
    :sswitch_2
    const-string v2, "3F007F20"

    goto :goto_0

    .line 113
    :sswitch_3
    const-string v2, "3F007F20"

    goto :goto_0

    .line 118
    :sswitch_4
    const-string v2, "3F007FFF5F3D"

    goto :goto_0

    .line 124
    :sswitch_5
    const-string v2, "3F007F105F3A"

    goto :goto_0

    .line 129
    :sswitch_6
    const-string v2, "3F007F43"

    goto :goto_0

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f22 -> :sswitch_4
        0x4f30 -> :sswitch_5
        0x4f55 -> :sswitch_4
        0x6f02 -> :sswitch_6
        0x6f11 -> :sswitch_3
        0x6f13 -> :sswitch_3
        0x6f14 -> :sswitch_3
        0x6f15 -> :sswitch_3
        0x6f16 -> :sswitch_3
        0x6f17 -> :sswitch_3
        0x6f18 -> :sswitch_3
        0x6f38 -> :sswitch_2
        0x6f3c -> :sswitch_0
        0x6f3e -> :sswitch_2
        0x6f42 -> :sswitch_1
        0x6f46 -> :sswitch_2
        0x6fad -> :sswitch_2
        0x6fc5 -> :sswitch_2
        0x6fc6 -> :sswitch_2
        0x6fc7 -> :sswitch_2
        0x6fc8 -> :sswitch_2
        0x6fc9 -> :sswitch_2
        0x6fca -> :sswitch_2
        0x6fcb -> :sswitch_2
        0x6fcd -> :sswitch_2
        0x6fe5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string v0, "SIMFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v0, "SIMFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

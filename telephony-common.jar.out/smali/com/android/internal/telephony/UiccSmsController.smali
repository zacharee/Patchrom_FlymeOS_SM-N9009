.class public Lcom/android/internal/telephony/UiccSmsController;
.super Lcom/android/internal/telephony/ISms$Stub;
.source "UiccSmsController.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_UiccSmsController"


# instance fields
.field protected mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method protected constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/telephony/ISms$Stub;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/UiccSmsController;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 47
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    const-string v0, "isms"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 50
    :cond_0
    return-void
.end method

.method private getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 7
    .param p1, "subId"    # J

    .prologue
    const/4 v3, 0x0

    .line 299
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(J)I

    move-result v1

    .line 301
    .local v1, "phoneId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 303
    :cond_0
    const/4 v1, 0x0

    .line 307
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UiccSmsController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 316
    :goto_0
    return-object v2

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "RIL_UiccSmsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " For subscription :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v2, v3

    .line 312
    goto :goto_0

    .line 313
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "RIL_UiccSmsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " For subscription :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    move-object v2, v3

    .line 316
    goto :goto_0
.end method


# virtual methods
.method public copyMessageToIccEf(Ljava/lang/String;I[B[B)Z
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/UiccSmsController;->copyMessageToIccEfForSubscriber(JLjava/lang/String;I[B[B)Z

    move-result v0

    return v0
.end method

.method public copyMessageToIccEfForSubscriber(JLjava/lang/String;I[B[B)Z
    .locals 5
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "pdu"    # [B
    .param p6, "smsc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 81
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEf(Ljava/lang/String;I[B[B)Z

    move-result v1

    .line 86
    :goto_0
    return v1

    .line 84
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEf iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableCdmaBroadcast(I)Z
    .locals 1
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public disableCdmaBroadcastRange(II)Z
    .locals 1
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method public disableCellBroadcast(I)Z
    .locals 2
    .param p1, "messageIdentifier"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/UiccSmsController;->disableCellBroadcastForSubscriber(JI)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastForSubscriber(JI)Z
    .locals 1
    .param p1, "subId"    # J
    .param p3, "messageIdentifier"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/android/internal/telephony/UiccSmsController;->disableCellBroadcastRangeForSubscriber(JII)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 2
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->disableCellBroadcastRangeForSubscriber(JII)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRangeForSubscriber(JII)Z
    .locals 5
    .param p1, "subId"    # J
    .param p3, "startMessageId"    # I
    .param p4, "endMessageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 210
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcastRange(II)Z

    move-result v1

    .line 216
    :goto_0
    return v1

    .line 213
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableCellBroadcast iccSmsIntMgr is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableCdmaBroadcast(I)Z
    .locals 1
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public enableCdmaBroadcastRange(II)Z
    .locals 1
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 463
    const/4 v0, 0x1

    return v0
.end method

.method public enableCellBroadcast(I)Z
    .locals 2
    .param p1, "messageIdentifier"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/UiccSmsController;->enableCellBroadcastForSubscriber(JI)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastForSubscriber(JI)Z
    .locals 1
    .param p1, "subId"    # J
    .param p3, "messageIdentifier"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/android/internal/telephony/UiccSmsController;->enableCellBroadcastRangeForSubscriber(JII)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 2
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->enableCellBroadcastRangeForSubscriber(JII)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRangeForSubscriber(JII)Z
    .locals 5
    .param p1, "subId"    # J
    .param p3, "startMessageId"    # I
    .param p4, "endMessageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 183
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcastRange(II)Z

    move-result v1

    .line 189
    :goto_0
    return v1

    .line 186
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableCellBroadcast iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/UiccSmsController;->getAllMessagesFromIccEfForSubscriber(JLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllMessagesFromIccEfForSubscriber(JLjava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 98
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    .line 101
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllMessagesFromIccEf iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCbSettings()[B
    .locals 4

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 402
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getCbSettings()[B

    move-result-object v1

    .line 406
    :goto_0
    return-object v1

    .line 405
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "getCbSettings iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/UiccSmsController;->getImsSmsFormatForSubscriber(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsSmsFormatForSubscriber(J)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 271
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v1

    .line 276
    :goto_0
    return-object v1

    .line 274
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "getImsSmsFormat iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPreferredSmsSubscription()J
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/telephony/UiccSmsController;->getPremiumSmsPermissionForSubscriber(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPremiumSmsPermissionForSubscriber(JLjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # J
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 226
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v1

    .line 232
    :goto_0
    return v1

    .line 229
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "getPremiumSmsPermission iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSMSAvailable()Z
    .locals 4

    .prologue
    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 368
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSMSAvailable()Z

    move-result v1

    .line 373
    :goto_0
    return v1

    .line 371
    :cond_0
    const-string v2, "RIL_UiccSmsController"

    const-string v3, "getSMSAvailable iccSmsIntMgr is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSMSPAvailable()Z
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public getSimFullStatus()Z
    .locals 4

    .prologue
    .line 383
    const/4 v1, 0x0

    .line 384
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 385
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSimFullStatus()Z

    move-result v1

    .line 390
    :goto_0
    return v1

    .line 388
    :cond_0
    const-string v2, "RIL_UiccSmsController"

    const-string v3, "getSimFullStatus iccSmsIntMgr is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSmsc()Ljava/lang/String;
    .locals 6

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    .line 429
    .local v2, "subId":J
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 430
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSmsc()Ljava/lang/String;

    move-result-object v1

    .line 435
    :goto_0
    return-object v1

    .line 433
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSmsc in iccSmsIntMgr is null for subscription: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getToddlerMode()Z
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public injectSmsPdu(J[BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "subId"    # J
    .param p3, "pdu"    # [B
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 292
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 293
    return-void
.end method

.method public injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 287
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/UiccSmsController;->injectSmsPdu(J[BLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 288
    return-void
.end method

.method public isImsSmsSupported()Z
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/UiccSmsController;->isImsSmsSupportedForSubscriber(J)Z

    move-result v0

    return v0
.end method

.method public isImsSmsSupportedForSubscriber(J)Z
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 255
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 256
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isImsSmsSupported()Z

    move-result v1

    .line 261
    :goto_0
    return v1

    .line 259
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "isImsSmsSupported iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSMSPromptEnabled()Z
    .locals 1

    .prologue
    .line 330
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSMSPromptEnabled()Z

    move-result v0

    return v0
.end method

.method public resetSimFullStatus()V
    .locals 4

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 411
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->resetSimFullStatus()V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "resetSimFullStatus iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/UiccSmsController;->sendDataForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 111
    return-void
.end method

.method public sendDataForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "destPort"    # I
    .param p7, "data"    # [B
    .param p8, "sentIntent"    # Landroid/app/PendingIntent;
    .param p9, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 117
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 118
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "origPort"    # I
    .param p6, "data"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/telephony/UiccSmsController;->sendDatawithOrigPortForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 579
    return-void
.end method

.method public sendDatawithOrigPortForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "destPort"    # I
    .param p7, "origPort"    # I
    .param p8, "data"    # [B
    .param p9, "sentIntent"    # Landroid/app/PendingIntent;
    .param p10, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 583
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 584
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 585
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 591
    :goto_0
    return-void

    .line 588
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDatawithOrigPort iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/UiccSmsController;->sendMultipartTextForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 149
    return-void
.end method

.method public sendMultipartTextForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    .local p6, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 156
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 157
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMultipartText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartTextwithCBP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p7, "callbackNumber"    # Ljava/lang/String;
    .param p8, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 474
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 475
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartTextwithCBP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    .line 481
    :goto_0
    return-void

    .line 478
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V
    .locals 14
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p7, "replyPath"    # Z
    .param p8, "expiry"    # I
    .param p9, "serviceType"    # I
    .param p10, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 540
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v1 .. v13}, Lcom/android/internal/telephony/UiccSmsController;->sendMultipartTextwithOptionsForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V

    .line 543
    return-void
.end method

.method public sendMultipartTextwithOptionsForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V
    .locals 11
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p9, "replyPath"    # Z
    .param p10, "expiry"    # I
    .param p11, "serviceType"    # I
    .param p12, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 550
    .local p6, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 551
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    .line 552
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V

    .line 559
    :goto_0
    return-void

    .line 556
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMultipartText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/UiccSmsController;->sendOTADomesticForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public sendOTADomesticForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;

    .prologue
    .line 498
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "sendOTADomesticForSubscriber in UiccSmsController"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 502
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :goto_0
    return-void

    .line 505
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendOTADomesticForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendRawPduSat([B[BLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v6

    .line 442
    .local v6, "subId":J
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 443
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 444
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendRawPduSat([B[BLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "sendRawPduSat iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendStoredMultipartText(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "subId"    # J
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "messageUri"    # Landroid/net/Uri;
    .param p5, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 349
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 350
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 351
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredMultipartText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 357
    :goto_0
    return-void

    .line 354
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStoredMultipartText iccSmsIntMgr is null for subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendStoredText(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "subId"    # J
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "messageUri"    # Landroid/net/Uri;
    .param p5, "scAddress"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 337
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 338
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendStoredText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStoredText iccSmsIntMgr is null for subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/UiccSmsController;->sendTextForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 130
    return-void
.end method

.method public sendTextForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 135
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 136
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextKdi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 0
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "is7bitAlphabet"    # Z

    .prologue
    .line 485
    return-void
.end method

.method public sendTextNSRI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V
    .locals 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "msgCount"    # I
    .param p8, "msgTotal"    # I

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/telephony/UiccSmsController;->sendTextNSRIForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V

    .line 624
    return-void
.end method

.method public sendTextNSRIForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V
    .locals 9
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "text"    # [B
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "msgCount"    # I
    .param p10, "msgTotal"    # I

    .prologue
    .line 629
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "sendTextNSRIForSubscriber in UiccSmsController"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 633
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    .line 634
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextNSRI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V

    .line 641
    :goto_0
    return-void

    .line 637
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextNSRIForSubscriber iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextWithPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 0
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "priority"    # I

    .prologue
    .line 489
    return-void
.end method

.method public sendTextwithCBP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "callbackNumber"    # Ljava/lang/String;
    .param p8, "priority"    # I

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 565
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 566
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextwithCBP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 572
    :goto_0
    return-void

    .line 569
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendText iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .locals 14
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "replyPath"    # Z
    .param p8, "expiry"    # I
    .param p9, "serviceType"    # I
    .param p10, "encodingType"    # I

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-virtual/range {v1 .. v13}, Lcom/android/internal/telephony/UiccSmsController;->sendTextwithOptionsForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V

    .line 517
    return-void
.end method

.method public sendTextwithOptionsForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .locals 11
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "replyPath"    # Z
    .param p10, "expiry"    # I
    .param p11, "serviceType"    # I
    .param p12, "encodingType"    # I

    .prologue
    .line 522
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "sendTextwithOptionsForSubscriber in UiccSmsController with options"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 526
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    .line 527
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V

    .line 534
    :goto_0
    return-void

    .line 531
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextwithOptions iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextwithOptionsReadconfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    .locals 15
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "replyPath"    # Z
    .param p8, "expiry"    # I
    .param p9, "serviceType"    # I
    .param p10, "encodingType"    # I
    .param p11, "confirmId"    # I

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-virtual/range {v1 .. v14}, Lcom/android/internal/telephony/UiccSmsController;->sendTextwithOptionsReadconfirmForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V

    .line 601
    return-void
.end method

.method public sendTextwithOptionsReadconfirmForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    .locals 13
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "replyPath"    # Z
    .param p10, "expiry"    # I
    .param p11, "serviceType"    # I
    .param p12, "encodingType"    # I
    .param p13, "confirmId"    # I

    .prologue
    .line 606
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "sendTextwithOptionsForSubscriber in UiccSmsController with confirmId"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 610
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p13

    .line 611
    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendTextwithOptionsReadconfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V

    .line 618
    :goto_0
    return-void

    .line 615
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendTextwithOptionsReadconfirm iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendscptResult(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "noOfOccur"    # I
    .param p3, "scptCategory"    # I
    .param p4, "scptLanguage"    # I
    .param p5, "scptCategoryResult"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 396
    return-void
.end method

.method public setCDMASmsReassembly(Z)V
    .locals 4
    .param p1, "onOff"    # Z

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 420
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCDMASmsReassembly(Z)V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "setCDMASmsReassembly iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->setPremiumSmsPermissionForSubscriber(JLjava/lang/String;I)V

    .line 237
    return-void
.end method

.method public setPremiumSmsPermissionForSubscriber(JLjava/lang/String;I)V
    .locals 3
    .param p1, "subId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "permission"    # I

    .prologue
    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 242
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    const-string v2, "setPremiumSmsPermission iccSmsIntMgr is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/UiccSmsController;->updateMessageOnIccEfForSubscriber(JLjava/lang/String;II[B)Z

    move-result v0

    return v0
.end method

.method public updateMessageOnIccEfForSubscriber(JLjava/lang/String;II[B)Z
    .locals 5
    .param p1, "subId"    # J
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "status"    # I
    .param p6, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 63
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result v1

    .line 68
    :goto_0
    return v1

    .line 66
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMessageOnIccEf iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSmsSendStatus(IZ)V
    .locals 2
    .param p1, "messageRef"    # I
    .param p2, "success"    # Z

    .prologue
    .line 281
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateSmsSendStatus(IZ)V

    .line 283
    return-void
.end method

.method public updateSmsServiceCenterOnSimEf([B)Z
    .locals 6
    .param p1, "smsc"    # [B

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/UiccSmsController;->getIccSmsInterfaceManager(J)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    .line 646
    .local v0, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateSmsServiceCenterOnSimEf([B)Z

    move-result v1

    .line 652
    :goto_0
    return v1

    .line 649
    :cond_0
    const-string v1, "RIL_UiccSmsController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSmsServiceCenterOnSimEf iccSmsIntMgr is null for Subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccSmsController;->getPreferredSmsSubscription()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public useLte3GPPSms()Z
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

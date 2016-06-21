.class public interface abstract Lcom/android/internal/telephony/IccCard;
.super Ljava/lang/Object;
.source "IccCard.java"


# static fields
.field public static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"


# virtual methods
.method public abstract changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccSimPersoPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getEuimid()Ljava/lang/String;
.end method

.method public abstract getFPLMN()Ljava/lang/String;
.end method

.method public abstract getIccFdnAvailable()Z
.end method

.method public abstract getIccFdnEnabled()Z
.end method

.method public abstract getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
.end method

.method public abstract getIccLockEnabled()Z
.end method

.method public abstract getIccPin1RetryCount()I
.end method

.method public abstract getIccPin2Blocked()Z
.end method

.method public abstract getIccPin2RetryCount()I
.end method

.method public abstract getIccPuk1RetryCount()I
.end method

.method public abstract getIccPuk2Blocked()Z
.end method

.method public abstract getIccPuk2retryCount()I
.end method

.method public abstract getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
.end method

.method public abstract getIccUsimPersoEnabled()Z
.end method

.method public abstract getOPLMNwAct()Ljava/lang/String;
.end method

.method public abstract getPLMNwAcT()Ljava/lang/String;
.end method

.method public abstract getServiceProviderName()Ljava/lang/String;
.end method

.method public abstract getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;
.end method

.method public abstract getState()Lcom/android/internal/telephony/IccCardConstants$State;
.end method

.method public abstract hasIccCard()Z
.end method

.method public abstract isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
.end method

.method public abstract registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNetworkSubsetLocked(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSPLocked(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract reloadPLMNs()V
.end method

.method public abstract setEPSLOCI([B)V
.end method

.method public abstract setEPSLOCI([BLandroid/os/Message;)V
.end method

.method public abstract setFPLMN([B)V
.end method

.method public abstract setFPLMN([BLandroid/os/Message;)V
.end method

.method public abstract setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setIccSimPersoEnabled(ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setLOCI([B)V
.end method

.method public abstract setLOCI([BLandroid/os/Message;)V
.end method

.method public abstract setOPLMNwAct([B)V
.end method

.method public abstract setPLMNwAcT([B)V
.end method

.method public abstract setPSLOCI([B)V
.end method

.method public abstract setPSLOCI([BLandroid/os/Message;)V
.end method

.method public abstract setRoaming([BLandroid/os/Message;)V
.end method

.method public abstract supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPerso(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPin(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract unregisterForAbsent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLocked(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNetworkLocked(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNetworkSubsetLocked(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSPLocked(Landroid/os/Handler;)V
.end method

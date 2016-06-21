.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSTBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    .prologue
    .line 4877
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p2, "x1"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    .prologue
    .line 4877
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 4880
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4881
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4882
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 4894
    :cond_0
    :goto_0
    return-void

    .line 4883
    :cond_1
    const-string v2, "action_wfc_switch_profile_broadcast"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4884
    const-string v2, "oem_request"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 4885
    .local v1, "data":[B
    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isWfcWifiOnlyMode:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1802(Z)Z

    .line 4886
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x4

    aget-byte v3, v1, v3

    iput-byte v3, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcPrefMode:B

    .line 4887
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x5

    aget-byte v3, v1, v3

    iput-byte v3, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcStatus:B

    .line 4888
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status has : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-byte v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcStatus:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4889
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prefMode has : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-byte v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcPrefMode:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4890
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-byte v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcStatus:B

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$SSTBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-byte v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWfcPrefMode:B

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 4891
    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isWfcWifiOnlyMode:Z
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$1802(Z)Z

    goto :goto_0
.end method

.class Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver$1;
.super Ljava/lang/Thread;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 809
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 812
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 813
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "SIMStatusBroadcastReceiver: SIMRecords / getOperatorNumeric returned null"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 816
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 817
    :catch_0
    move-exception v1

    goto :goto_0

    .line 813
    :cond_0
    const-string v1, ""

    goto :goto_1

    .line 819
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMStatusBroadcastReceiver: SIMRecords / getOperatorNumeric returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 820
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$300(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 821
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    .line 822
    return-void
.end method

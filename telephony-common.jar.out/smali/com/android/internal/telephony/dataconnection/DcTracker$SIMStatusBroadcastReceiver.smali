.class Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMStatusBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 806
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "iccState":Ljava/lang/String;
    const-string v1, "IMSI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v2, "SIMStatusBroadcastReceiver: INTENT_VALUE_ICC_IMSI"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 809
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver$1;->start()V

    .line 825
    :cond_0
    return-void
.end method

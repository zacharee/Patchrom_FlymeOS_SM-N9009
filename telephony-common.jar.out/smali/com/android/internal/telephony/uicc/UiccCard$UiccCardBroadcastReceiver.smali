.class Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiccCardBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/UiccCard$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/UiccCard$1;

    .prologue
    .line 808
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 811
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 813
    const-string v2, "status"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 814
    .local v1, "iccStatus":Ljava/lang/String;
    const-string v2, "UiccCard"

    const-string v3, "Receive com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const-string v2, "INSERTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagInserted:Z
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$800(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 816
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagInserted:Z
    invoke-static {v2, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$802(Lcom/android/internal/telephony/uicc/UiccCard;Z)Z

    .line 817
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z
    invoke-static {v2, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$902(Lcom/android/internal/telephony/uicc/UiccCard;Z)Z

    .line 818
    const-string v2, "UiccCard"

    const-string v3, "Receive ICC_CARD_STATE_CHANGED INSERTED"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V
    invoke-static {v2, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;Z)V

    .line 827
    .end local v1    # "iccStatus":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 820
    .restart local v1    # "iccStatus":Ljava/lang/String;
    :cond_1
    const-string v2, "REMOVED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$900(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 821
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagRemoved:Z
    invoke-static {v2, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$902(Lcom/android/internal/telephony/uicc/UiccCard;Z)Z

    .line 822
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->updateFlagInserted:Z
    invoke-static {v2, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$802(Lcom/android/internal/telephony/uicc/UiccCard;Z)Z

    .line 823
    const-string v2, "UiccCard"

    const-string v3, "Receive ICC_CARD_STATE_CHANGED REMOVED"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCard$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V
    invoke-static {v2, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;Z)V

    goto :goto_0
.end method

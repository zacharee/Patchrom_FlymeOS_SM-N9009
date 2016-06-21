.class Lcom/android/internal/telephony/SubscriptionController$3;
.super Landroid/database/ContentObserver;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1921
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 1924
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v2

    .line 1925
    .local v2, "subId":J
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(J)I

    move-result v0

    .line 1927
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSlotId()I
    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionController;->access$500(Lcom/android/internal/telephony/SubscriptionController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1928
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DefaultDataSubIdObserver] changed subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/internal/telephony/SubscriptionController;->access$000(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    .line 1930
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSlotId(I)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->access$100(Lcom/android/internal/telephony/SubscriptionController;I)V

    .line 1932
    :cond_0
    return-void
.end method

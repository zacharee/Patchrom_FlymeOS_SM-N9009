.class Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CombinationKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 639
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSafetyCare()Z

    move-result v3

    if-nez v3, :cond_0

    .line 640
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SAFETY_MESSAGE_TRIGGER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    .local v2, "safetyMessage":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 642
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v4, 0xa

    invoke-virtual {v3, v7, v4, v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 643
    const-string v3, "CombinationKeyManager"

    const-string v4, "Safety mesage broadcasted"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .end local v2    # "safetyMessage":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 648
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isOneTouchReportEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 650
    const/4 v0, 0x0

    .line 651
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    # getter for: Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 652
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const-string v5, "114"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .end local v0    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    move-object v0, v1

    .line 656
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const-string v3, "startFlag"

    const-string v4, "002"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 658
    const-string v3, "CombinationKeyManager"

    const-string v4, "OneTouchReport started"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v4, 0xe

    invoke-virtual {v3, v7, v4, v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 670
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 671
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;->this$0:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 672
    :cond_2
    return-void

    .line 654
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const-string v5, "112"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    move-object v0, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 665
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v3, "CombinationKeyManager"

    const-string v4, "OneTouchReport was disable"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 660
    .restart local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

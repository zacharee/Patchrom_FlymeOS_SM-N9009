.class Lcom/samsung/android/fingerprint/FingerprintManager$4;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V
    .locals 0

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 5
    .param p1, "evt"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    .line 1400
    move-object v1, p1

    .line 1401
    .local v1, "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$600(Lcom/samsung/android/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1402
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$600(Lcom/samsung/android/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager$4;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1438
    :cond_0
    :goto_0
    return-void

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFingerprintEvent: Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
.class Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;
.super Landroid/content/BroadcastReceiver;
.source "TimaKeystoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/keystore/TimaKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 367
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 369
    .local v1, "userId":I
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent recevied: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " user id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    if-ne v1, v5, :cond_2

    .line 398
    :cond_1
    :goto_0
    return-void

    .line 373
    :cond_2
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 374
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/misc/tima_keystore/user_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->removeUserKeyDirectory(Ljava/io/File;)Z
    invoke-static {v2, v3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$300(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 376
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 377
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeystoreReceiver: Unable to remove user keys"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_3
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/misc/fips_tima_keystore/user_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->removeUserKeyDirectory(Ljava/io/File;)Z
    invoke-static {v2, v3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$300(Lcom/android/server/enterprise/keystore/TimaKeystoreService;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 383
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeystoreReceiver: Unable to remove user keys from FipsTimaKeyStore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :cond_4
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeystoreReceiver: Intent.ACTION_USER_ADDED received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    # invokes: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->enforcePermission()V
    invoke-static {v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$400(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V

    .line 393
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$1;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    const-string v3, "defaultpackage"

    const/4 v4, 0x1

    # invokes: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->insertOrUpdatePackageRecord(ILjava/lang/String;Z)Z
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$500(Lcom/android/server/enterprise/keystore/TimaKeystoreService;ILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 394
    # getter for: Lcom/android/server/enterprise/keystore/TimaKeystoreService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeystoreReceiver: Error enabling TimaKeyStore on container creation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

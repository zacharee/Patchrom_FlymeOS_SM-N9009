.class Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;
.super Ljava/lang/Object;
.source "ScepKeystoreProxyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->grantAccessForAKS(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$uidscep:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    iput p2, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$uidscep:I

    iput-object p3, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$alias:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 400
    const/4 v1, 0x0

    .line 402
    .local v1, "keyChainConnection":Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->this$0:Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    # getter for: Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->access$000(Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;)Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$uidscep:I

    invoke-static {v3, v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;->bind(Landroid/content/Context;I)Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;

    move-result-object v1

    .line 403
    invoke-virtual {v1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    .line 404
    .local v2, "keyChainService":Landroid/security/IKeyChainService;
    iget v3, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$uidscep:I

    iget-object v4, p0, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$1;->val$alias:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    .line 416
    .end local v2    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_0
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 414
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    goto :goto_0

    .line 411
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/AssertionError;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/AssertionError;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 414
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/AssertionError;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService$KeyChainConnection;->close()V

    :cond_1
    throw v3
.end method

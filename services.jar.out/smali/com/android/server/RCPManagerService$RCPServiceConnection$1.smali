.class Lcom/android/server/RCPManagerService$RCPServiceConnection$1;
.super Ljava/lang/Object;
.source "RCPManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/RCPManagerService$RCPServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/server/RCPManagerService$RCPServiceConnection;)V
    .locals 0

    .prologue
    .line 1528
    iput-object p1, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1531
    iget-object v5, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget-object v5, v5, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mRCPProxyAliveList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/RCPManagerService;->access$1300(Lcom/android/server/RCPManagerService;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget v6, v6, Lcom/android/server/RCPManagerService$RCPServiceConnection;->mUserId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1532
    iget-object v5, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget-object v5, v5, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    iget-object v6, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget v6, v6, Lcom/android/server/RCPManagerService$RCPServiceConnection;->mUserId:I

    invoke-virtual {v5, v6}, Lcom/android/server/RCPManagerService;->scanAndStartRCPProxy(I)V

    .line 1533
    :cond_0
    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v5, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget-object v5, v5, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    iget-object v5, v5, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 1535
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMyKnoxAdmin()Ljava/lang/String;

    move-result-object v4

    .line 1536
    .local v4, "myKnoxAdmin":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1537
    iget-object v5, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget-object v5, v5, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    # invokes: Lcom/android/server/RCPManagerService;->getAllPersonas()[I
    invoke-static {v5}, Lcom/android/server/RCPManagerService;->access$1200(Lcom/android/server/RCPManagerService;)[I

    move-result-object v2

    .line 1538
    .local v2, "ids":[I
    if-eqz v2, :cond_1

    .line 1539
    array-length v3, v2

    .line 1540
    .local v3, "idslength":I
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "personas present size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1542
    iget-object v5, p0, Lcom/android/server/RCPManagerService$RCPServiceConnection$1;->this$1:Lcom/android/server/RCPManagerService$RCPServiceConnection;

    iget-object v5, v5, Lcom/android/server/RCPManagerService$RCPServiceConnection;->this$0:Lcom/android/server/RCPManagerService;

    const-string/jumbo v6, "samsung.knox.intent.action.MODE_SWITCH_CHANGED"

    aget v7, v2, v1

    # invokes: Lcom/android/server/RCPManagerService;->startKnoxModeSwitcher(Ljava/lang/String;I)V
    invoke-static {v5, v6, v7}, Lcom/android/server/RCPManagerService;->access$500(Lcom/android/server/RCPManagerService;Ljava/lang/String;I)V

    .line 1541
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1548
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    .end local v3    # "idslength":I
    :cond_1
    return-void
.end method

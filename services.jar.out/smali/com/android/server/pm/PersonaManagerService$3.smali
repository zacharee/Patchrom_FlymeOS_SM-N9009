.class Lcom/android/server/pm/PersonaManagerService$3;
.super Landroid/app/IStopUserCallback$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService;->stopAndRemovePersona(IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$personaId:I

.field final synthetic val$removePersona:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;ZI)V
    .locals 0

    .prologue
    .line 5302
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PersonaManagerService$3;->val$removePersona:Z

    iput p3, p0, Lcom/android/server/pm/PersonaManagerService$3;->val$personaId:I

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .locals 11
    .param p1, "userId"    # I

    .prologue
    .line 5315
    const-string/jumbo v8, "userStopAborted"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Ljava/lang/String;)I

    .line 5316
    iget-boolean v8, p0, Lcom/android/server/pm/PersonaManagerService$3;->val$removePersona:Z

    if-nez v8, :cond_3

    .line 5317
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "user stop (not removal) is aborted for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5318
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 5319
    .local v1, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    iget v8, p0, Lcom/android/server/pm/PersonaManagerService$3;->val$personaId:I

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v4

    .line 5320
    .local v4, "ownerUid":I
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 5321
    .local v7, "pkgNames":[Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 5322
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 5323
    .local v6, "pkgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v9, p0, Lcom/android/server/pm/PersonaManagerService$3;->val$personaId:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v8, v6, v9, v4}, Lcom/android/server/pm/PersonaManagerService;->access$5400(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 5322
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5326
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/pm/PersonaManagerService$3;->val$personaId:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v8, v9, v10, v4}, Lcom/android/server/pm/PersonaManagerService;->access$5400(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 5328
    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v9, p0, Lcom/android/server/pm/PersonaManagerService$3;->val$personaId:I

    invoke-virtual {v8, v9}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v5

    .line 5329
    .local v5, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v5, :cond_2

    .line 5330
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 5336
    .end local v1    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v4    # "ownerUid":I
    .end local v5    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v7    # "pkgNames":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 5333
    :cond_3
    const-string v8, "PersonaManagerService"

    const-string/jumbo v9, "userStopAborted called. we cannot remove the persona properly. User needs to reboot."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public userStopped(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 5305
    const-string/jumbo v1, "userStopped"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Ljava/lang/String;)I

    .line 5306
    const-string v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " user stop callback invoked for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5307
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5308
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5309
    iget-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService$3;->val$removePersona:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 5310
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5311
    return-void

    .line 5309
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

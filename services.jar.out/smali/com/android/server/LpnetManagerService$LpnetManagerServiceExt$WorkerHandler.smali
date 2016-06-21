.class Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;
.super Landroid/os/Handler;
.source "LpnetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# static fields
.field private static final APP_FORCE_STOP:I = 0x0

.field private static final DISABLE_SOLN:I = 0x3

.field private static final ENABLE_SOLN:I = 0x2

.field private static final UNFREEZE:I = 0x1


# instance fields
.field final synthetic this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;


# direct methods
.method private constructor <init>(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;)V
    .locals 0

    .prologue
    .line 2172
    iput-object p1, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;Lcom/android/server/LpnetManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;
    .param p2, "x1"    # Lcom/android/server/LpnetManagerService$1;

    .prologue
    .line 2172
    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;-><init>(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v14, 0x1

    .line 2181
    :try_start_0
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "LpnetManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MSG REVD ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_0
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    if-nez v11, :cond_5

    .line 2184
    new-instance v1, Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    invoke-direct {v1, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2185
    .local v1, "appForceStopBundle":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 2186
    .local v9, "thePackageNameList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2190
    :try_start_1
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2191
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 2192
    .local v5, "isGCMNotifyEnabled":Z
    if-eqz v5, :cond_3

    .line 2193
    iget-object v11, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2199
    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->this$0:Lcom/android/server/LpnetManagerService;

    invoke-virtual {v11, v7}, Lcom/android/server/LpnetManagerService;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 2201
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "isGCMNotifyEnabled":Z
    .end local v7    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2217
    .end local v1    # "appForceStopBundle":Landroid/os/Bundle;
    .end local v9    # "thePackageNameList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 2219
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "LpnetManagerService"

    const-string v12, "Exception in WorkerHandler.handleMessage:"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2220
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2222
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 2195
    .restart local v1    # "appForceStopBundle":Landroid/os/Bundle;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "isGCMNotifyEnabled":Z
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v9    # "thePackageNameList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :try_start_3
    iget-object v11, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2196
    iget-object v11, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2201
    .end local v5    # "isGCMNotifyEnabled":Z
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_4
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2202
    .end local v1    # "appForceStopBundle":Landroid/os/Bundle;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "thePackageNameList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    :try_start_4
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    if-ne v11, v14, :cond_7

    .line 2203
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/String;

    move-object v0, v11

    check-cast v0, [Ljava/lang/String;

    move-object v10, v0

    .line 2204
    .local v10, "theUnFreezeList":[Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 2205
    move-object v2, v10

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_3
    if-ge v4, v6, :cond_2

    aget-object v8, v2, v4

    .line 2206
    .local v8, "theApp":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 2208
    iget-object v11, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->unFreeze(Ljava/lang/String;)V
    invoke-static {v11, v8}, Lcom/android/server/LpnetManagerService;->access$6500(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)V

    .line 2205
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2212
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "theApp":Ljava/lang/String;
    .end local v10    # "theUnFreezeList":[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 2213
    iget-object v11, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->this$0:Lcom/android/server/LpnetManagerService;

    const/4 v12, 0x1

    # invokes: Lcom/android/server/LpnetManagerService;->enableDisableSoln(Z)V
    invoke-static {v11, v12}, Lcom/android/server/LpnetManagerService;->access$6600(Lcom/android/server/LpnetManagerService;Z)V

    goto :goto_2

    .line 2214
    :cond_8
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_2

    .line 2215
    iget-object v11, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->this$1:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->this$0:Lcom/android/server/LpnetManagerService;

    const/4 v12, 0x0

    # invokes: Lcom/android/server/LpnetManagerService;->enableDisableSoln(Z)V
    invoke-static {v11, v12}, Lcom/android/server/LpnetManagerService;->access$6600(Lcom/android/server/LpnetManagerService;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method

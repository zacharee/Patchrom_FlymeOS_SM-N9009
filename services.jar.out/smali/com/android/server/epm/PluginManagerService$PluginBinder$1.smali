.class Lcom/android/server/epm/PluginManagerService$PluginBinder$1;
.super Landroid/content/BroadcastReceiver;
.source "PluginManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/epm/PluginManagerService$PluginBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;


# direct methods
.method constructor <init>(Lcom/android/server/epm/PluginManagerService$PluginBinder;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 361
    .local v3, "data":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 366
    .local v9, "packageName":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 368
    const-string v12, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 373
    :cond_0
    :try_start_0
    iget-object v12, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v12, v12, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v12}, Lcom/android/server/epm/PluginManagerService;->access$000(Lcom/android/server/epm/PluginManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v12

    const/16 v13, 0x1000

    invoke-virtual {v12, v9, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 376
    .local v11, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v11, :cond_3

    iget-object v12, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 379
    iget-object v2, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v10, v2, v6

    .line 382
    .local v10, "permission":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    # invokes: Lcom/android/server/epm/PluginManagerService$PluginBinder;->getModule(Ljava/lang/String;)Lcom/android/server/epm/IPluginHelper;
    invoke-static {v12, v10}, Lcom/android/server/epm/PluginManagerService$PluginBinder;->access$200(Lcom/android/server/epm/PluginManagerService$PluginBinder;Ljava/lang/String;)Lcom/android/server/epm/IPluginHelper;

    move-result-object v5

    .line 386
    .local v5, "helper":Lcom/android/server/epm/IPluginHelper;
    if-eqz v5, :cond_1

    .line 388
    const-string v12, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 389
    iget-object v12, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v12, v12, Lcom/android/server/epm/PluginManagerService$PluginBinder;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v13, v13, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v13}, Lcom/android/server/epm/PluginManagerService;->access$000(Lcom/android/server/epm/PluginManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-interface {v5, v12, v13, v9}, Lcom/android/server/epm/IPluginHelper;->onPluginInstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 379
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 390
    :cond_2
    const-string v12, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 392
    iget-object v12, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v12, v12, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v12}, Lcom/android/server/epm/PluginManagerService;->access$000(Lcom/android/server/epm/PluginManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 395
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_4

    iget-boolean v12, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v12, :cond_4

    .line 399
    invoke-interface {v5, v9}, Lcom/android/server/epm/IPluginHelper;->onPluginEnabled(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 413
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "helper":Lcom/android/server/epm/IPluginHelper;
    .end local v6    # "i$":I
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "len$":I
    .end local v10    # "permission":Ljava/lang/String;
    .end local v11    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v4

    .line 414
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 426
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    return-void

    .line 401
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v5    # "helper":Lcom/android/server/epm/IPluginHelper;
    .restart local v6    # "i$":I
    .restart local v7    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "len$":I
    .restart local v10    # "permission":Ljava/lang/String;
    .restart local v11    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    if-eqz v7, :cond_1

    :try_start_1
    iget-boolean v12, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v12, :cond_1

    .line 405
    invoke-interface {v5, v9}, Lcom/android/server/epm/IPluginHelper;->onPluginDisabled(Ljava/lang/String;)V

    goto :goto_1

    .line 408
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_5
    invoke-interface {v5}, Lcom/android/server/epm/IPluginHelper;->onBootCompleted()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 417
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "helper":Lcom/android/server/epm/IPluginHelper;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "permission":Ljava/lang/String;
    .end local v11    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    const-string v12, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 418
    iget-object v12, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v12, v12, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mModules:Ljava/util/HashMap;
    invoke-static {v12}, Lcom/android/server/epm/PluginManagerService;->access$100(Lcom/android/server/epm/PluginManagerService;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 419
    .local v1, "allHelper":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/epm/IPluginHelper;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/epm/IPluginHelper;

    .line 420
    .restart local v5    # "helper":Lcom/android/server/epm/IPluginHelper;
    if-eqz v5, :cond_7

    .line 421
    iget-object v12, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v12, v12, Lcom/android/server/epm/PluginManagerService$PluginBinder;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/server/epm/PluginManagerService$PluginBinder$1;->this$1:Lcom/android/server/epm/PluginManagerService$PluginBinder;

    iget-object v13, v13, Lcom/android/server/epm/PluginManagerService$PluginBinder;->this$0:Lcom/android/server/epm/PluginManagerService;

    # getter for: Lcom/android/server/epm/PluginManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v13}, Lcom/android/server/epm/PluginManagerService;->access$000(Lcom/android/server/epm/PluginManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-interface {v5, v12, v13, v9}, Lcom/android/server/epm/IPluginHelper;->onPluginUninstalled(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    goto :goto_2
.end method

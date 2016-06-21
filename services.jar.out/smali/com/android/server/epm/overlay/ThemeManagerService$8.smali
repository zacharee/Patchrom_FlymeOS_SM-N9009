.class Lcom/android/server/epm/overlay/ThemeManagerService$8;
.super Landroid/os/Handler;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .locals 0

    .prologue
    .line 1884
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 1891
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 1979
    :cond_0
    :goto_0
    return-void

    .line 1894
    :pswitch_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_0

    .line 1895
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v8, v8, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    if-nez v8, :cond_1

    .line 1896
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iput-boolean v9, v8, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    .line 1897
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1898
    .local v0, "bdl":Landroid/os/Bundle;
    const-string/jumbo v8, "path"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1899
    .local v7, "path":Landroid/net/Uri;
    const-string v8, "isTrial"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1900
    .local v3, "isTrial":Z
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual {v8, v7, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->installThemePackage(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 1903
    .end local v0    # "bdl":Landroid/os/Bundle;
    .end local v3    # "isTrial":Z
    .end local v7    # "path":Landroid/net/Uri;
    :cond_1
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1904
    .local v4, "msg1":Landroid/os/Message;
    iget v8, p1, Landroid/os/Message;->what:I

    iput v8, v4, Landroid/os/Message;->what:I

    .line 1905
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1906
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$400(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1913
    .end local v4    # "msg1":Landroid/os/Message;
    :pswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_0

    .line 1914
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1915
    .restart local v0    # "bdl":Landroid/os/Bundle;
    const-string/jumbo v8, "packageName"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1916
    .local v6, "packageName":Ljava/lang/String;
    const-string/jumbo v8, "order"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1917
    .local v5, "order":I
    const-string v8, "isTrial"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1918
    .restart local v3    # "isTrial":Z
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual {v8, v6, v11, v5, v3}, Lcom/android/server/epm/overlay/ThemeManagerService;->changeThemeState(Ljava/lang/String;IIZ)V

    goto :goto_0

    .line 1923
    .end local v0    # "bdl":Landroid/os/Bundle;
    .end local v3    # "isTrial":Z
    .end local v5    # "order":I
    .end local v6    # "packageName":Ljava/lang/String;
    :pswitch_2
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # operator-- for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v8}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2210(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    .line 1924
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v8, v8, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v8}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2200(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-result v8

    if-gtz v8, :cond_0

    .line 1925
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iput-boolean v11, v8, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    .line 1926
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2300(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 1927
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1928
    .local v1, "hl":Landroid/os/Handler;
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v8, v8, Lcom/android/server/epm/overlay/ThemeManagerService;->buggy:Z

    if-eqz v8, :cond_2

    .line 1929
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iput-boolean v11, v8, Lcom/android/server/epm/overlay/ThemeManagerService;->buggy:Z

    .line 1930
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2300(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeThemePackage(Ljava/lang/String;)V

    .line 1931
    new-instance v8, Lcom/android/server/epm/overlay/ThemeManagerService$8$1;

    invoke-direct {v8, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$8$1;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService$8;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1942
    :cond_2
    new-instance v8, Lcom/android/server/epm/overlay/ThemeManagerService$8$2;

    invoke-direct {v8, p0}, Lcom/android/server/epm/overlay/ThemeManagerService$8$2;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService$8;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1955
    .end local v1    # "hl":Landroid/os/Handler;
    :pswitch_3
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iput-boolean v9, v8, Lcom/android/server/epm/overlay/ThemeManagerService;->buggy:Z

    .line 1956
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v9, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2200(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-result v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    sub-int/2addr v9, v10

    # setter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v8, v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2202(Lcom/android/server/epm/overlay/ThemeManagerService;I)I

    .line 1957
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$400(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1960
    :pswitch_4
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_3

    .line 1961
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1962
    .restart local v0    # "bdl":Landroid/os/Bundle;
    const-string/jumbo v8, "packageName"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1963
    .restart local v6    # "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual {v8, v6}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeThemePackage(Ljava/lang/String;)V

    .line 1967
    .end local v0    # "bdl":Landroid/os/Bundle;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_3
    :pswitch_5
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_4

    .line 1968
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1969
    .restart local v0    # "bdl":Landroid/os/Bundle;
    const-string/jumbo v8, "packageName"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1970
    .restart local v6    # "packageName":Ljava/lang/String;
    const-string v8, "index"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1971
    .local v2, "index":I
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->onEventPassed(Ljava/lang/String;I)V
    invoke-static {v8, v6, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2400(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1973
    .end local v0    # "bdl":Landroid/os/Bundle;
    .end local v2    # "index":I
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/server/epm/overlay/ThemeManagerService$8;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->onEventOccur()V
    invoke-static {v8}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2500(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    goto/16 :goto_0

    .line 1891
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

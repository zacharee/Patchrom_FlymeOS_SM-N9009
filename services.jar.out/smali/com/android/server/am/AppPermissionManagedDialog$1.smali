.class Lcom/android/server/am/AppPermissionManagedDialog$1;
.super Landroid/os/Handler;
.source "AppPermissionManagedDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPermissionManagedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPermissionManagedDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPermissionManagedDialog;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 292
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_1

    .line 294
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$100(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/server/am/AppPermissionManagedDialog;->access$000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "AppPermissionManagedDialog"

    const-string v3, "AppPermissionManagedDialog : ActivityNotFoundException CONTINUE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_4

    .line 299
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$200(Lcom/android/server/am/AppPermissionManagedDialog;)I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 300
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$300(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    monitor-enter v3

    .line 301
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$300(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$300(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    if-ne v2, v4, :cond_2

    .line 302
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$300(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 304
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$400(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 307
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    invoke-virtual {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->dismiss()V

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 308
    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 309
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # invokes: Lcom/android/server/am/AppPermissionManagedDialog;->setTitleAndMessageByApp()V
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$500(Lcom/android/server/am/AppPermissionManagedDialog;)V

    goto :goto_0

    .line 311
    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 313
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v1, "in":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 315
    const/high16 v2, 0x8000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 316
    const-string v2, "com.sec.android.app.capabilitymanager"

    const-string v3, "com.sec.android.app.cm.ui.CMPermissionGroupListActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string/jumbo v2, "packagename"

    iget-object v3, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/AppPermissionManagedDialog;->access$600(Lcom/android/server/am/AppPermissionManagedDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$100(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 323
    .end local v1    # "in":Landroid/content/Intent;
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$200(Lcom/android/server/am/AppPermissionManagedDialog;)I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 324
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$300(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    monitor-enter v3

    .line 325
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$300(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$300(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    if-ne v2, v4, :cond_6

    .line 326
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$300(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 328
    :cond_6
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 329
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$400(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 331
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/AppPermissionManagedDialog$1;->this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    invoke-virtual {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->dismiss()V

    goto/16 :goto_0

    .line 320
    :catch_1
    move-exception v0

    .line 321
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "AppPermissionManagedDialog"

    const-string v3, "AppPermissionManagedDialog : ActivityNotFoundException LANCHSETTINGS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 328
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method

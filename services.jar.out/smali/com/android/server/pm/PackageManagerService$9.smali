.class Lcom/android/server/pm/PackageManagerService$9;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->sendOrderedBroadcastToRequiredVerifier(Lcom/android/server/pm/PackageVerificationState;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$response:Lcom/android/server/pm/PackageVerificationResponse;

.field final synthetic val$verificationId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageVerificationResponse;)V
    .locals 0

    .prologue
    .line 12157
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$9;->val$verificationId:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$9;->val$response:Lcom/android/server/pm/PackageVerificationResponse;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 12160
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 12161
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$9;->val$verificationId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 12162
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$9;->val$response:Lcom/android/server/pm/PackageVerificationResponse;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12163
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$4000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 12165
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 12166
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$9;->val$verificationId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 12167
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$9;->val$response:Lcom/android/server/pm/PackageVerificationResponse;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12168
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getVerificationTimeout()J
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$4000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 12169
    return-void
.end method
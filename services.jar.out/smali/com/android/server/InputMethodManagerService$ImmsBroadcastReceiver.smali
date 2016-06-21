.class Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImmsBroadcastReceiver"
.end annotation


# instance fields
.field private final LID_OPEN:I

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 1

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 624
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->LID_OPEN:I

    return-void
.end method

.method private updateActive()V
    .locals 6

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v0, :cond_0

    .line 629
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbcc

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v0, v0, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 632
    :cond_0
    return-void

    .line 629
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 636
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 638
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 639
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-boolean v4, v2, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    .line 640
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$100(Lcom/android/server/InputMethodManagerService;)Z

    move-result v3

    # setter for: Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z
    invoke-static {v2, v3}, Lcom/android/server/InputMethodManagerService;->access$002(Lcom/android/server/InputMethodManagerService;Z)Z

    .line 641
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->refreshImeWindowVisibilityLocked()V
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$200(Lcom/android/server/InputMethodManagerService;)V

    .line 642
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->updateActive()V

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 645
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    .line 646
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->hideImeNotification()V
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$300(Lcom/android/server/InputMethodManagerService;)V

    .line 647
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z
    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->access$100(Lcom/android/server/InputMethodManagerService;)Z

    move-result v3

    # setter for: Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z
    invoke-static {v2, v3}, Lcom/android/server/InputMethodManagerService;->access$002(Lcom/android/server/InputMethodManagerService;Z)Z

    .line 648
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->setImeWindowVisibilityStatusHiddenLocked()V
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$400(Lcom/android/server/InputMethodManagerService;)V

    .line 653
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v2, v2, Lcom/android/server/InputMethodManagerService;->mIsFolderModel:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$500(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getLidState()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 656
    :cond_2
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->updateActive()V

    goto :goto_0

    .line 659
    :cond_3
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 660
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    goto :goto_0

    .line 664
    :cond_4
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 666
    :cond_5
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    goto :goto_0

    .line 669
    :cond_6
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

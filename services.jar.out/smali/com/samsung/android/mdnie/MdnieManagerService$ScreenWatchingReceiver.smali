.class final Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MdnieManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/MdnieManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdnie/MdnieManagerService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/mdnie/MdnieManagerService;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/mdnie/MdnieManagerService;Lcom/samsung/android/mdnie/MdnieManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/mdnie/MdnieManagerService;
    .param p2, "x1"    # Lcom/samsung/android/mdnie/MdnieManagerService$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/mdnie/MdnieManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    iget-object v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # setter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z
    invoke-static {v3, v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$102(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z

    .line 163
    iget-object v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    iget-object v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z
    invoke-static {v4}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$100(Lcom/samsung/android/mdnie/MdnieManagerService;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mEmergencyModeDiabled:Z
    invoke-static {v4}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$300(Lcom/samsung/android/mdnie/MdnieManagerService;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    # setter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z
    invoke-static {v3, v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$202(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 166
    :cond_3
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # setter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z
    invoke-static {v3, v2}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$102(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z

    .line 168
    iget-object v3, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    iget-object v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mDisplayOn:Z
    invoke-static {v4}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$100(Lcom/samsung/android/mdnie/MdnieManagerService;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/mdnie/MdnieManagerService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/mdnie/MdnieManagerService;

    # getter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mEmergencyModeDiabled:Z
    invoke-static {v4}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$300(Lcom/samsung/android/mdnie/MdnieManagerService;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    # setter for: Lcom/samsung/android/mdnie/MdnieManagerService;->mMdnieWorkingCondition:Z
    invoke-static {v3, v1}, Lcom/samsung/android/mdnie/MdnieManagerService;->access$202(Lcom/samsung/android/mdnie/MdnieManagerService;Z)Z

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

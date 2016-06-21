.class Lcom/android/server/epm/overlay/ThemeManagerService$4;
.super Ljava/util/TimerTask;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;->startExpiryTimerForUninstall(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

.field val:I


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .locals 1

    .prologue
    .line 1503
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$4;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1504
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$4;->val:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1508
    const-string v0, "USER_TRIAL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USER_TRIAL -- startExpiryTimerForUninstall val= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$4;->val:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expiryTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$4;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->expiryTime:I
    invoke-static {v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1000(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$4;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->removeTrialPackage(Z)V
    invoke-static {v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1100(Lcom/android/server/epm/overlay/ThemeManagerService;Z)V

    .line 1515
    return-void
.end method

.class Lcom/android/server/enterprise/utils/ConstrainedState$2;
.super Ljava/lang/Object;
.source "ConstrainedState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/utils/ConstrainedState;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/utils/ConstrainedState;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/enterprise/utils/ConstrainedState$2;->this$0:Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 95
    const/4 v2, 0x0

    .line 96
    .local v2, "noti":Z
    :goto_0
    if-nez v2, :cond_1

    .line 97
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 99
    .local v1, "nm":Landroid/app/INotificationManager;
    if-eqz v1, :cond_0

    .line 100
    const/4 v2, 0x1

    .line 101
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState$2;->this$0:Lcom/android/server/enterprise/utils/ConstrainedState;

    const/4 v4, 0x1

    # invokes: Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/ConstrainedState;->access$100(Lcom/android/server/enterprise/utils/ConstrainedState;Z)V

    goto :goto_0

    .line 105
    :cond_0
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "nm":Landroid/app/INotificationManager;
    :cond_1
    return-void
.end method

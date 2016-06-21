.class Landroid/app/epm/PluginManager$1;
.super Landroid/app/epm/IPluginManagerCallback$Stub;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/epm/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/epm/PluginManager;


# direct methods
.method constructor <init>(Landroid/app/epm/PluginManager;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Landroid/app/epm/PluginManager$1;->this$0:Landroid/app/epm/PluginManager;

    invoke-direct {p0}, Landroid/app/epm/IPluginManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallCompleted(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Landroid/app/epm/PluginManager$1;->this$0:Landroid/app/epm/PluginManager;

    # getter for: Landroid/app/epm/PluginManager;->mClientCallback:Landroid/app/epm/PluginManager$IStatusListener;
    invoke-static {v0}, Landroid/app/epm/PluginManager;->access$000(Landroid/app/epm/PluginManager;)Landroid/app/epm/PluginManager$IStatusListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/epm/PluginManager$IStatusListener;->onInstallCompleted(Ljava/lang/String;I)V

    .line 445
    return-void
.end method

.method public onUninstallCompleted(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Landroid/app/epm/PluginManager$1;->this$0:Landroid/app/epm/PluginManager;

    # getter for: Landroid/app/epm/PluginManager;->mClientCallback:Landroid/app/epm/PluginManager$IStatusListener;
    invoke-static {v0}, Landroid/app/epm/PluginManager;->access$000(Landroid/app/epm/PluginManager;)Landroid/app/epm/PluginManager$IStatusListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/epm/PluginManager$IStatusListener;->onUninstallCompleted(Ljava/lang/String;)V

    .line 450
    return-void
.end method

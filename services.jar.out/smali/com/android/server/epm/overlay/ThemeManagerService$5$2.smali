.class Lcom/android/server/epm/overlay/ThemeManagerService$5$2;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/ThemeManagerService$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/epm/overlay/ThemeManagerService$5;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService$5;)V
    .locals 0

    .prologue
    .line 1673
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$5$2;->this$1:Lcom/android/server/epm/overlay/ThemeManagerService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/android/server/epm/overlay/ThemeManagerService$5$2;->this$1:Lcom/android/server/epm/overlay/ThemeManagerService$5;

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$5;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$400(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1680
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/epm/overlay/ThemeManagerService;->isVisible:Z

    .line 1682
    return-void
.end method

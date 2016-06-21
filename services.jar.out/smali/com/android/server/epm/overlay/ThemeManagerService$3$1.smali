.class Lcom/android/server/epm/overlay/ThemeManagerService$3$1;
.super Ljava/lang/Object;
.source "ThemeManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/ThemeManagerService$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/epm/overlay/ThemeManagerService$3;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService$3;I)V
    .locals 0

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$3$1;->this$1:Lcom/android/server/epm/overlay/ThemeManagerService$3;

    iput p2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$3$1;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1467
    :try_start_0
    iget-object v1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$3$1;->this$1:Lcom/android/server/epm/overlay/ThemeManagerService$3;

    iget-object v1, v1, Lcom/android/server/epm/overlay/ThemeManagerService$3;->val$wpm:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/android/server/epm/overlay/ThemeManagerService$3$1;->val$resId:I

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1471
    :goto_0
    return-void

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

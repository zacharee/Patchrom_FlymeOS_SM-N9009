.class final Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;
.super Landroid/os/Handler;
.source "SmartAdjustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SmartAdjustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmartAdjustHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SmartAdjustManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/SmartAdjustManager;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;->this$0:Lcom/android/server/am/SmartAdjustManager;

    .line 271
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 272
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 276
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 278
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 279
    .local v0, "strPkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/SmartAdjustManager$SmartAdjustHandler;->this$0:Lcom/android/server/am/SmartAdjustManager;

    # invokes: Lcom/android/server/am/SmartAdjustManager;->UpdateSPCMDB(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/am/SmartAdjustManager;->access$000(Lcom/android/server/am/SmartAdjustManager;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/android/internal/telephony/cat/CatBIPManager$4;
.super Ljava/lang/Object;
.source "CatBIPManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/CatBIPManager;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatBIPManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$4;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    # getter for: Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$300(Lcom/android/internal/telephony/cat/CatBIPManager;)Landroid/net/NetworkInfo;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/cat/CatBIPManager;->continueProcessingOpenChannel(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$400(Lcom/android/internal/telephony/cat/CatBIPManager;Landroid/net/NetworkInfo;)V

    .line 844
    return-void
.end method

.class final Lcom/android/server/power/ShutdownThread$6;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->startShutdownThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 655
    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$500()Lcom/android/server/power/ShutdownThread;

    move-result-object v1

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$600(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10400fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 657
    .local v0, "msg":Ljava/lang/CharSequence;
    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$500()Lcom/android/server/power/ShutdownThread;

    move-result-object v1

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$600(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/power/ShutdownThread;->textToSpeech(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread;->access$700(Landroid/content/Context;Ljava/lang/String;)V

    .line 658
    return-void
.end method

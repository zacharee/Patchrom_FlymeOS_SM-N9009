.class Lcom/samsung/android/fingerprint/FingerprintManager$4$1;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintManager$4;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/fingerprint/FingerprintManager$4;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager$4;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$4;

    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v0, :pswitch_data_0

    .line 1432
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1411
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v0, :cond_1

    .line 1412
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$4;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$4;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$700()Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$800()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    move-result-object v2

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$900()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$1000()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V

    goto :goto_0

    .line 1414
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    sparse-switch v0, :sswitch_data_0

    .line 1428
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$4;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$4;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    goto :goto_0

    .line 1417
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$4;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$4;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->setEnrollFinishResult(I)V

    .line 1418
    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$800()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;->onEnrollFinish()V

    goto :goto_1

    .line 1424
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$4$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintManager$4;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintManager$4;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->setEnrollFinishResult(I)V

    .line 1425
    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$800()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;->onEnrollFinish()V

    goto :goto_1

    .line 1405
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1415
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
        0xb -> :sswitch_1
        0x33 -> :sswitch_1
    .end sparse-switch
.end method

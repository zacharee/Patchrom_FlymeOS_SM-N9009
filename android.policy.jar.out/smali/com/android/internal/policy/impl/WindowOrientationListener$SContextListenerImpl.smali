.class final Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SContextListenerImpl"
.end annotation


# static fields
.field private static scontextRotation:I


# instance fields
.field private bsmartRotation:Z

.field private final mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V
    .locals 1
    .param p1, "orientationListener"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->bsmartRotation:Z

    .line 435
    iput-object p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    .line 436
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->resetRotation()V

    return-void
.end method

.method private resetRotation()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    .line 440
    return-void
.end method


# virtual methods
.method public getProposedRotation()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 447
    const-string v3, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSContextAutoRotationListener.getProposedRotation, mbResultFaceDectection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$300()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$300()Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 449
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$400(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 450
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 451
    .local v0, "disp":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 452
    .local v1, "rotation":I
    packed-switch v1, :pswitch_data_0

    .line 470
    const/4 v3, -0x1

    # setter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$502(I)I

    .line 474
    :goto_0
    const-string v3, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSContextAutoRotationListener.getProposedRotation, sCurrentAppAngle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$500()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$500()I

    move-result v3

    .line 479
    .end local v0    # "disp":Landroid/view/Display;
    .end local v1    # "rotation":I
    .end local v2    # "wm":Landroid/view/WindowManager;
    :goto_1
    return v3

    .line 455
    .restart local v0    # "disp":Landroid/view/Display;
    .restart local v1    # "rotation":I
    .restart local v2    # "wm":Landroid/view/WindowManager;
    :pswitch_0
    const/4 v3, 0x0

    # setter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$502(I)I

    goto :goto_0

    .line 459
    :pswitch_1
    # setter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$502(I)I

    goto :goto_0

    .line 463
    :pswitch_2
    const/4 v3, 0x2

    # setter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$502(I)I

    goto :goto_0

    .line 467
    :pswitch_3
    const/4 v3, 0x3

    # setter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$502(I)I

    goto :goto_0

    .line 478
    .end local v0    # "disp":Landroid/view/Display;
    .end local v1    # "rotation":I
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_0
    const-string v3, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSContextAutoRotationListener.getProposedRotation, Rotation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    sget v3, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    goto :goto_1

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 484
    iget-object v3, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 485
    .local v3, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 487
    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;

    move-result-object v0

    .line 488
    .local v0, "autoRotationContext":Landroid/hardware/scontext/SContextAutoRotation;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextAutoRotation;->getAngle()I

    move-result v6

    sput v6, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    .line 489
    const-string v6, "WindowOrientationListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSContextAutoRotationListener.onSContextChanged, Rotation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    sget v6, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    iget-object v7, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$600(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v7

    if-eq v6, v7, :cond_0

    sget v6, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    if-ltz v6, :cond_0

    .line 493
    iget-object v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$400(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "intelligent_rotation_mode"

    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 496
    .local v2, "intelligent_rotation_enabled":Z
    :goto_1
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->bsmartRotation:Z

    if-eqz v6, :cond_1

    if-nez v2, :cond_3

    .line 497
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 498
    iget-object v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    sget v5, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto :goto_0

    .end local v2    # "intelligent_rotation_enabled":Z
    :cond_2
    move v2, v5

    .line 493
    goto :goto_1

    .line 502
    .restart local v2    # "intelligent_rotation_enabled":Z
    :cond_3
    const/4 v1, 0x0

    .line 503
    .local v1, "bFaceDetected":Z
    const-string v6, "WindowOrientationListener"

    const-string v7, "fd ++ "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->bsmartRotation:Z

    if-eqz v6, :cond_5

    .line 506
    iget-object v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$600(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    .line 507
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->msfforSContextRotation:Lcom/samsung/android/smartface/SmartFaceManager;
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$700()Lcom/samsung/android/smartface/SmartFaceManager;

    move-result-object v6

    if-nez v6, :cond_4

    .line 508
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager;->getSmartFaceManager()Lcom/samsung/android/smartface/SmartFaceManager;

    move-result-object v6

    # setter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->msfforSContextRotation:Lcom/samsung/android/smartface/SmartFaceManager;
    invoke-static {v6}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$702(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager;

    .line 510
    :cond_4
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->msfforSContextRotation:Lcom/samsung/android/smartface/SmartFaceManager;
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$700()Lcom/samsung/android/smartface/SmartFaceManager;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 511
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->msfforSContextRotation:Lcom/samsung/android/smartface/SmartFaceManager;
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$700()Lcom/samsung/android/smartface/SmartFaceManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$600(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/smartface/SmartFaceManager;->checkForSmartRotation(I)Z

    move-result v1

    .line 519
    :cond_5
    :goto_2
    if-ne v1, v4, :cond_7

    .line 520
    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-virtual {v5, v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 521
    iget-object v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$400(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.sec.android.smartface"

    const-string v7, "0001"

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$800(Lcom/android/internal/policy/impl/WindowOrientationListener;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v4, "WindowOrientationListener"

    const-string v5, "detected face, skip rotation  "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :goto_3
    const-string v4, "WindowOrientationListener"

    const-string v5, "fd -- "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 514
    :cond_6
    iget-object v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$300()Z

    move-result v6

    if-ne v6, v4, :cond_5

    .line 515
    const/4 v1, 0x1

    goto :goto_2

    .line 525
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 526
    iget-object v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    sget v5, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto :goto_3

    .line 485
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public setSmartRotation(Z)V
    .locals 0
    .param p1, "smartRotation"    # Z

    .prologue
    .line 443
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->bsmartRotation:Z

    .line 444
    return-void
.end method
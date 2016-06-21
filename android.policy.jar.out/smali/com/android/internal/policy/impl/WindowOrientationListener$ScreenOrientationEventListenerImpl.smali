.class final Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScreenOrientationEventListenerImpl"
.end annotation


# static fields
.field private static mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;


# instance fields
.field private bsmartRotation:Z

.field private final mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

.field private mPm:Landroid/os/PowerManager;

.field private mProposedRotation:I


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V
    .locals 2
    .param p1, "orientationListener"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->bsmartRotation:Z

    .line 554
    iput-object p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    .line 557
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$400(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$400(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mPm:Landroid/os/PowerManager;

    .line 558
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->resetLocked()V

    return-void
.end method

.method private resetLocked()V
    .locals 1

    .prologue
    .line 561
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    .line 562
    return-void
.end method


# virtual methods
.method public getProposedRotationLocked()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 569
    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    if-lt v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 574
    :cond_0
    :goto_0
    return v0

    .line 572
    :cond_1
    const-string v0, "WindowOrientationListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScreenOrientationEventListenerImpl.getProposedRotationLocked, Rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 579
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 585
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v5, v4

    .line 588
    .local v2, "x":F
    const/high16 v5, 0x437f0000    # 255.0f

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_0

    .line 589
    const-string v5, "WindowOrientationListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rotation Sensor : x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_0
    float-to-int v5, v2

    iput v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    .line 593
    iget v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    .line 594
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    .line 597
    :cond_2
    iget v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    if-ltz v5, :cond_4

    iget v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$600(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 598
    const-string v5, "WindowOrientationListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proposed rotation changed!  proposedRotation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "currentRotation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$600(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$400(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "intelligent_rotation_mode"

    const/4 v7, -0x2

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_5

    move v1, v3

    .line 604
    .local v1, "intelligent_rotation_enabled":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->bsmartRotation:Z

    if-eqz v5, :cond_3

    if-nez v1, :cond_6

    .line 606
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 607
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    iget v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 637
    .end local v1    # "intelligent_rotation_enabled":Z
    :cond_4
    :goto_1
    return-void

    :cond_5
    move v1, v4

    .line 601
    goto :goto_0

    .line 609
    .restart local v1    # "intelligent_rotation_enabled":Z
    :cond_6
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->bsmartRotation:Z

    if-eqz v5, :cond_4

    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, "face_found":Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$600(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v5

    if-ltz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$600(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_8

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$900()I

    move-result v5

    if-eqz v5, :cond_8

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$900()I

    move-result v5

    if-eq v5, v3, :cond_8

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$900()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_8

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$900()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_8

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$900()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_8

    .line 619
    sget-object v5, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    if-nez v5, :cond_7

    .line 620
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager;->getSmartFaceManager()Lcom/samsung/android/smartface/SmartFaceManager;

    move-result-object v5

    sput-object v5, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    .line 622
    :cond_7
    sget-object v5, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    if-eqz v5, :cond_8

    .line 624
    sget-object v5, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$600(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/smartface/SmartFaceManager;->checkForSmartRotation(I)Z

    move-result v0

    .line 627
    :cond_8
    if-ne v0, v3, :cond_9

    .line 628
    const-string v4, "WindowOrientationListener"

    const-string v5, "SMARTFACESERVICE FEATURE, face detected"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 630
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    iget-object v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$400(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.sec.android.smartface"

    const-string v6, "0001"

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$800(Lcom/android/internal/policy/impl/WindowOrientationListener;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 632
    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 633
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    iget v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto :goto_1
.end method

.method public setSmartRotation(Z)V
    .locals 0
    .param p1, "smartRotation"    # Z

    .prologue
    .line 565
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->bsmartRotation:Z

    .line 566
    return-void
.end method

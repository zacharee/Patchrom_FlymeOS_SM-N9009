.class Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;
.super Ljava/lang/Object;
.source "CaeProvider.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/ContextAwareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/caeprovider/CaeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;


# direct methods
.method constructor <init>(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextChanged(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 666
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    if-ne p1, v0, :cond_1

    .line 667
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    if-ne p1, v0, :cond_2

    .line 669
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 670
    :cond_2
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    if-ne p1, v0, :cond_3

    .line 671
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 672
    :cond_3
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    if-ne p1, v0, :cond_4

    .line 673
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 674
    :cond_4
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    if-ne p1, v0, :cond_5

    .line 675
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 676
    :cond_5
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    if-ne p1, v0, :cond_6

    .line 677
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 678
    :cond_6
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    if-ne p1, v0, :cond_7

    .line 679
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 680
    :cond_7
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    if-ne p1, v0, :cond_8

    .line 681
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 682
    :cond_8
    if-nez p1, :cond_9

    .line 683
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 684
    :cond_9
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    if-ne p1, v0, :cond_a

    .line 685
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 686
    :cond_a
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    if-ne p1, v0, :cond_b

    .line 687
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 688
    :cond_b
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    if-ne p1, v0, :cond_c

    .line 689
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 690
    :cond_c
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    if-ne p1, v0, :cond_d

    .line 691
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 692
    :cond_d
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    if-ne p1, v0, :cond_e

    .line 693
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 694
    :cond_e
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WAKE_UP_VOICE_SERVICE:I

    if-ne p1, v0, :cond_f

    .line 695
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 696
    :cond_f
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_SHORT_MOTION_SERVICE:I

    if-ne p1, v0, :cond_10

    .line 697
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x11

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 698
    :cond_10
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->BOUNCE_LONG_MOTION_SERVICE:I

    if-ne p1, v0, :cond_11

    .line 699
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x12

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 700
    :cond_11
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->WRIST_UP_MOTION_SERVICE:I

    if-ne p1, v0, :cond_12

    .line 701
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x13

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 702
    :cond_12
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_SERVICE:I

    if-ne p1, v0, :cond_13

    .line 703
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 704
    :cond_13
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->MOVEMENT_ALERT_SERVICE:I

    if-ne p1, v0, :cond_14

    .line 705
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x15

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 706
    :cond_14
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->TEST_FLAT_MOTION_SERVICE:I

    if-ne p1, v0, :cond_15

    .line 707
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x16

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 708
    :cond_15
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->TEMPERATURE_ALERT_SERVICE:I

    if-ne p1, v0, :cond_16

    .line 709
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x17

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 710
    :cond_16
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->LIFE_LOG_SERVICE:I

    if-ne p1, v0, :cond_17

    .line 711
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x18

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 712
    :cond_17
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_SERVICE:I

    if-ne p1, v0, :cond_18

    .line 713
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x19

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 714
    :cond_18
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_BATCH_SERVICE:I

    if-ne p1, v0, :cond_19

    .line 715
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 716
    :cond_19
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_INTERRUPT_SERVICE:I

    if-ne p1, v0, :cond_1a

    .line 717
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 718
    :cond_1a
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SPECIFIC_POSE_ALERT_SERVICE:I

    if-ne p1, v0, :cond_1b

    .line 719
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 720
    :cond_1b
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->SLEEP_MONITOR_SERVICE:I

    if-ne p1, v0, :cond_1c

    .line 721
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 722
    :cond_1c
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVITY_TRACKER_EXTANDED_INTERRUPT_SERVICE:I

    if-ne p1, v0, :cond_1d

    .line 723
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 724
    :cond_1d
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CAPTURE_MOTION_SERVICE:I

    if-ne p1, v0, :cond_1e

    .line 725
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 726
    :cond_1e
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->CALL_MOTION_SERVICE:I

    if-ne p1, v0, :cond_1f

    .line 727
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 728
    :cond_1f
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_SERVICE:I

    if-ne p1, v0, :cond_20

    .line 729
    const-string v0, "DataType"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 730
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 732
    :cond_20
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ACTIVE_TIME_SERVICE:I

    if-ne p1, v0, :cond_21

    .line 733
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x22

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 734
    :cond_21
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->STEP_LEVEL_MONITOR_EXTENDED_INTERRUPT_SERVICE:I

    if-ne p1, v0, :cond_22

    .line 735
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x23

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 736
    :cond_22
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->FLAT_MOTION_FOR_TABLE_MODE_SERVICE:I

    if-ne p1, v0, :cond_23

    .line 737
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x24

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 738
    :cond_23
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->AUTO_BRIGHTNESS_SERVICE:I

    if-ne p1, v0, :cond_24

    .line 739
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x25

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 740
    :cond_24
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->EXERCISE_SERVICE:I

    if-ne p1, v0, :cond_25

    .line 741
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x26

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 742
    :cond_25
    sget v0, Lcom/samsung/android/contextaware/ContextAwareManager;->ABNORMAL_PRESSURE_MONITOR:I

    if-ne p1, v0, :cond_0

    .line 743
    iget-object v0, p0, Landroid/hardware/scontext/provider/caeprovider/CaeProvider$1;->this$0:Landroid/hardware/scontext/provider/caeprovider/CaeProvider;

    # getter for: Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;
    invoke-static {v0}, Landroid/hardware/scontext/provider/caeprovider/CaeProvider;->access$000(Landroid/hardware/scontext/provider/caeprovider/CaeProvider;)Landroid/hardware/scontext/provider/EventListener;

    move-result-object v0

    const/16 v1, 0x27

    invoke-interface {v0, v1, p2}, Landroid/hardware/scontext/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method

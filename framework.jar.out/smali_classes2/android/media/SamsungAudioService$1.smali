.class Landroid/media/SamsungAudioService$1;
.super Landroid/content/BroadcastReceiver;
.source "SamsungAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SamsungAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SamsungAudioService;


# direct methods
.method constructor <init>(Landroid/media/SamsungAudioService;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 265
    if-nez p2, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 269
    .local v8, "action":Ljava/lang/String;
    const/4 v13, 0x0

    .line 270
    .local v13, "outDevice":I
    const/4 v11, 0x0

    .line 271
    .local v11, "inDevice":I
    const/16 v16, 0x0

    .line 273
    .local v16, "state":I
    const-string v1, "com.samsung.android.app.audio.epinforequest"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 274
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 280
    const/4 v1, -0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_2

    .line 281
    const-string v1, "earcare=reset"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 283
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    # setter for: Landroid/media/SamsungAudioService;->mIsEarCareSettingOn:Z
    invoke-static {v2, v1}, Landroid/media/SamsungAudioService;->access$502(Landroid/media/SamsungAudioService;Z)Z

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    invoke-virtual {v1}, Landroid/media/SamsungAudioService;->checkAndSendEarCareInfo()V

    goto :goto_0

    .line 283
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 289
    :cond_4
    const-string v1, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mSamsungAudioServiceHandler:Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$600(Landroid/media/SamsungAudioService;)Landroid/media/SamsungAudioService$SamsungAudioServiceHandler;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    # invokes: Landroid/media/SamsungAudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v7}, Landroid/media/SamsungAudioService;->access$700(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 299
    :cond_5
    const-string v1, "com.sec.tms.audio.server"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 300
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 301
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tms evt state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v1, "app"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 303
    .local v9, "app":Ljava/lang/String;
    if-eqz v9, :cond_a

    .line 304
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tms evt app : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string/jumbo v1, "server"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$800(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/media/AudioService;->isDeviceConnected(I)Z

    move-result v12

    .line 307
    .local v12, "isConnected":Z
    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v0, v1, :cond_6

    if-eqz v12, :cond_6

    .line 308
    const/high16 v1, 0x1000000

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$800(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/media/AudioService;->removeConnectedDevice(I)V

    goto/16 :goto_0

    .line 311
    :cond_6
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_0

    if-nez v12, :cond_0

    .line 312
    const/high16 v1, 0x1000000

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$800(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/high16 v2, 0x1000000

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioService;->addConnectedDevice(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 316
    .end local v12    # "isConnected":Z
    :cond_7
    const-string v1, "client"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$800(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/high16 v2, -0x7ff00000

    invoke-virtual {v1, v2}, Landroid/media/AudioService;->isDeviceConnected(I)Z

    move-result v12

    .line 318
    .restart local v12    # "isConnected":Z
    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v0, v1, :cond_8

    if-eqz v12, :cond_8

    .line 319
    const/high16 v1, -0x7ff00000

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$800(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/high16 v2, -0x7ff00000

    invoke-virtual {v1, v2}, Landroid/media/AudioService;->removeConnectedDevice(I)V

    goto/16 :goto_0

    .line 322
    :cond_8
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_0

    if-nez v12, :cond_0

    .line 323
    const/high16 v1, -0x7ff00000

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$800(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/high16 v2, -0x7ff00000

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioService;->addConnectedDevice(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 328
    .end local v12    # "isConnected":Z
    :cond_9
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tms evt app wrong : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 331
    :cond_a
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tms evt app is null "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 336
    .end local v9    # "app":Ljava/lang/String;
    :cond_b
    const-string v1, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 337
    const-string/jumbo v1, "reason"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 338
    .local v14, "reason":I
    const/4 v1, 0x3

    if-ne v14, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->emMgr:Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$900(Landroid/media/SamsungAudioService;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 339
    const-string v1, "emergency_mode=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 340
    :cond_c
    const/4 v1, 0x5

    if-ne v14, v1, :cond_0

    .line 341
    const-string v1, "emergency_mode=off"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 346
    .end local v14    # "reason":I
    :cond_d
    const-string v1, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 347
    const-string v1, "audioParam;factoryteststate=1"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 349
    :cond_e
    const-string v1, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 350
    const-string v1, "audioParam;factoryteststate=0"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 354
    :cond_f
    const-string v1, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 355
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 356
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANLG_DOCK_HEADSET evt state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$800(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/media/AudioService;->isDeviceConnected(I)Z

    move-result v12

    .line 358
    .restart local v12    # "isConnected":Z
    if-nez v16, :cond_10

    if-eqz v12, :cond_10

    .line 359
    const/16 v1, 0x800

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$800(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/media/AudioService;->removeConnectedDevice(I)V

    goto/16 :goto_0

    .line 362
    :cond_10
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_0

    if-nez v12, :cond_0

    .line 363
    const/16 v1, 0x800

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$800(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    const/16 v2, 0x800

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioService;->addConnectedDevice(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 367
    .end local v12    # "isConnected":Z
    :cond_11
    const-string v1, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 368
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 369
    const-string/jumbo v1, "smartdock"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 371
    .local v15, "smartdock":Z
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceiver: EXTERNAL_USB_HEADSET_PLUG  state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", smartdock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-eqz v15, :cond_0

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$1000(Landroid/media/SamsungAudioService;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    .line 375
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXTERNAL_USB_HEADSET_PLUG, get USB Info mExternalUsbInfo fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    new-instance v2, Ljava/lang/String;

    const-string v3, "card=1;device=0"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    # setter for: Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$1002(Landroid/media/SamsungAudioService;Ljava/lang/String;)Ljava/lang/String;

    .line 378
    :cond_12
    # getter for: Landroid/media/SamsungAudioService;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/media/SamsungAudioService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXTERNAL_USB_HEADSET_PLUG, mExternalUsbInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/SamsungAudioService;->access$1000(Landroid/media/SamsungAudioService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/16 v13, 0x4000

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mAudioService:Landroid/media/AudioService;
    invoke-static {v1}, Landroid/media/SamsungAudioService;->access$800(Landroid/media/SamsungAudioService;)Landroid/media/AudioService;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mExternalUsbInfo:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/SamsungAudioService;->access$1000(Landroid/media/SamsungAudioService;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v1, v13, v0, v2}, Landroid/media/AudioService;->setWiredDeviceConnectionStateWithoutIntent(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 397
    .end local v15    # "smartdock":Z
    :cond_13
    const-string v1, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 398
    const-string v1, "CONNECTION_MODE"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 399
    .local v10, "connectionMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioParam;wfdFixedVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 402
    .end local v10    # "connectionMode":I
    :cond_14
    const-string v1, "android.settings.MONO_AUDIO_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    const-string v2, "mono"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Landroid/media/SamsungAudioService;->mMonoMode:I
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$1102(Landroid/media/SamsungAudioService;I)I

    .line 405
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mMonoMode:I
    invoke-static {v2}, Landroid/media/SamsungAudioService;->access$1100(Landroid/media/SamsungAudioService;)I

    move-result v2

    # invokes: Landroid/media/SamsungAudioService;->setMonoMode(I)V
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$1200(Landroid/media/SamsungAudioService;I)V

    goto/16 :goto_0

    .line 409
    :cond_15
    const-string v1, "com.android.phone.NOISE_REDUCTION"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    const-string/jumbo v2, "value"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Landroid/media/SamsungAudioService;->mDualMicMode:I
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$1302(Landroid/media/SamsungAudioService;I)I

    .line 411
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mDualMicMode:I
    invoke-static {v2}, Landroid/media/SamsungAudioService;->access$1300(Landroid/media/SamsungAudioService;)I

    move-result v2

    # invokes: Landroid/media/SamsungAudioService;->setDualMicMode(I)V
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$1400(Landroid/media/SamsungAudioService;I)V

    goto/16 :goto_0

    .line 415
    :cond_16
    const-string v1, "com.android.phone.NATURAL_SOUND"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 416
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    const-string/jumbo v2, "value"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Landroid/media/SamsungAudioService;->mNaturalSound:I
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$1502(Landroid/media/SamsungAudioService;I)I

    .line 417
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    # getter for: Landroid/media/SamsungAudioService;->mNaturalSound:I
    invoke-static {v2}, Landroid/media/SamsungAudioService;->access$1500(Landroid/media/SamsungAudioService;)I

    move-result v2

    # invokes: Landroid/media/SamsungAudioService;->setNaturalSoundMode(I)V
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$1600(Landroid/media/SamsungAudioService;I)V

    goto/16 :goto_0

    .line 421
    :cond_17
    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 423
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    const-string v2, "mute"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Landroid/media/SamsungAudioService;->mAllSoundMute:I
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$1702(Landroid/media/SamsungAudioService;I)I

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    invoke-virtual {v1}, Landroid/media/SamsungAudioService;->setAllSoundMute()V

    goto/16 :goto_0

    .line 427
    :cond_18
    const-string v1, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    const/4 v2, 0x1

    # setter for: Landroid/media/SamsungAudioService;->mStatusbarExpanded:Z
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$1802(Landroid/media/SamsungAudioService;Z)Z

    goto/16 :goto_0

    .line 429
    :cond_19
    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/SamsungAudioService$1;->this$0:Landroid/media/SamsungAudioService;

    const/4 v2, 0x0

    # setter for: Landroid/media/SamsungAudioService;->mStatusbarExpanded:Z
    invoke-static {v1, v2}, Landroid/media/SamsungAudioService;->access$1802(Landroid/media/SamsungAudioService;Z)Z

    goto/16 :goto_0
.end method

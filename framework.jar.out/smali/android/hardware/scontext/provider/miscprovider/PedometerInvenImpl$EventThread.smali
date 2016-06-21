.class Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;
.super Ljava/lang/Thread;
.source "PedometerInvenImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;
    .param p2, "x1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;

    .prologue
    .line 434
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 439
    const/4 v11, 0x0

    .line 440
    .local v11, "len":I
    const/4 v9, 0x0

    .line 441
    .local v9, "interrupt":I
    sget-object v10, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->UNKNOWN:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 442
    .local v10, "interruptMode":Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    const/4 v7, 0x0

    .line 443
    .local v7, "intFile":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 444
    .local v3, "cadFile":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 446
    .local v12, "stepFile":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z
    invoke-static/range {v16 .. v16}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$100(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 448
    const/16 v16, 0x800

    :try_start_0
    move/from16 v0, v16

    new-array v2, v0, [C

    .line 449
    .local v2, "buffer":[C
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/FileReader;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v18, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/event_shealth_int"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .local v8, "intFile":Ljava/io/BufferedReader;
    if-eqz v8, :cond_1

    if-eqz v2, :cond_1

    .line 452
    :try_start_1
    invoke-virtual {v8, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v11

    .line 453
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_1

    .line 454
    const/16 v16, 0x0

    add-int/lit8 v17, v11, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v2, v0, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 455
    const-string v16, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Interrupt = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_1
    and-int/lit8 v16, v9, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 460
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/FileReader;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v18, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/shealth_cadence"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 461
    .end local v3    # "cadFile":Ljava/io/BufferedReader;
    .local v4, "cadFile":Ljava/io/BufferedReader;
    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 462
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v11

    .line 463
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_2

    .line 464
    const/16 v16, 0x0

    add-int/lit8 v17, v11, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v2, v0, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v14

    .line 465
    .local v14, "strCad":Ljava/lang/String;
    const-string v16, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CAD = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    sget-object v10, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # invokes: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    invoke-static {v0, v10, v14}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v14    # "strCad":Ljava/lang/String;
    :cond_2
    move-object v3, v4

    .line 472
    .end local v4    # "cadFile":Ljava/io/BufferedReader;
    .restart local v3    # "cadFile":Ljava/io/BufferedReader;
    :cond_3
    and-int/lit8 v16, v9, 0x2

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 473
    :try_start_3
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/FileReader;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v18, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/pedometer_steps"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 474
    .end local v12    # "stepFile":Ljava/io/BufferedReader;
    .local v13, "stepFile":Ljava/io/BufferedReader;
    if-eqz v13, :cond_4

    if-eqz v2, :cond_4

    .line 475
    :try_start_4
    invoke-virtual {v13, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v11

    .line 476
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_4

    .line 477
    const/16 v16, 0x0

    add-int/lit8 v17, v11, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v2, v0, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v15

    .line 478
    .local v15, "strStep":Ljava/lang/String;
    const-string v16, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Count = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v9, v0, :cond_a

    .line 480
    sget-object v10, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 484
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # invokes: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    invoke-static {v0, v10, v15}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .end local v15    # "strStep":Ljava/lang/String;
    :cond_4
    move-object v12, v13

    .line 489
    .end local v13    # "stepFile":Ljava/io/BufferedReader;
    .restart local v12    # "stepFile":Ljava/io/BufferedReader;
    :cond_5
    and-int/lit8 v16, v9, 0x4

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 490
    :try_start_5
    const-string v16, "SContext.MiscProvider.PedometerInvenImpl"

    const-string v17, "Start walking"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_6
    and-int/lit8 v16, v9, 0x8

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 494
    const-string v16, "SContext.MiscProvider.PedometerInvenImpl"

    const-string v17, "Stop walking"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    sget-object v10, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->STOP:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    # invokes: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    invoke-static {v0, v10, v1}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 505
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v16 .. v16}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v18, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v18 .. v18}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v18

    const/16 v19, 0x1

    aget-wide v18, v18, v19

    aput-wide v18, v16, v17

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    invoke-static {v0, v10}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$502(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 507
    if-eqz v8, :cond_8

    .line 509
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 515
    :cond_8
    :goto_2
    if-eqz v3, :cond_9

    .line 517
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 523
    :cond_9
    :goto_3
    if-eqz v12, :cond_13

    .line 525
    :try_start_8
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    move-object v7, v8

    .line 529
    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 482
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .end local v12    # "stepFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v13    # "stepFile":Ljava/io/BufferedReader;
    .restart local v15    # "strStep":Ljava/lang/String;
    :cond_a
    :try_start_9
    sget-object v10, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    .line 510
    .end local v13    # "stepFile":Ljava/io/BufferedReader;
    .end local v15    # "strStep":Ljava/lang/String;
    .restart local v12    # "stepFile":Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    .line 512
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 518
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 520
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 526
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 528
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 529
    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 498
    .end local v2    # "buffer":[C
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 500
    .local v6, "e1":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v16 .. v16}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v18, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v18 .. v18}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v18

    const/16 v19, 0x1

    aget-wide v18, v18, v19

    aput-wide v18, v16, v17

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    invoke-static {v0, v10}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$502(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 507
    if-eqz v7, :cond_b

    .line 509
    :try_start_b
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 515
    :cond_b
    :goto_5
    if-eqz v3, :cond_c

    .line 517
    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 523
    :cond_c
    :goto_6
    if-eqz v12, :cond_0

    .line 525
    :try_start_d
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_0

    .line 526
    :catch_4
    move-exception v5

    .line 528
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 510
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 512
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 518
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 520
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 501
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e1":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v5

    .line 503
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_e
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v16 .. v16}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v18, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v18 .. v18}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v18

    const/16 v19, 0x1

    aget-wide v18, v18, v19

    aput-wide v18, v16, v17

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    invoke-static {v0, v10}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$502(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 507
    if-eqz v7, :cond_d

    .line 509
    :try_start_f
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 515
    :cond_d
    :goto_8
    if-eqz v3, :cond_e

    .line 517
    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 523
    :cond_e
    :goto_9
    if-eqz v12, :cond_0

    .line 525
    :try_start_11
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_0

    .line 526
    :catch_8
    move-exception v5

    .line 528
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 510
    :catch_9
    move-exception v5

    .line 512
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 518
    :catch_a
    move-exception v5

    .line 520
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 505
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v17, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v17 .. v17}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v19, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v19 .. v19}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v19

    const/16 v20, 0x1

    aget-wide v20, v19, v20

    aput-wide v20, v17, v18

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # setter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    invoke-static {v0, v10}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$502(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 507
    if-eqz v7, :cond_f

    .line 509
    :try_start_12
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 515
    :cond_f
    :goto_b
    if-eqz v3, :cond_10

    .line 517
    :try_start_13
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 523
    :cond_10
    :goto_c
    if-eqz v12, :cond_11

    .line 525
    :try_start_14
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 529
    :cond_11
    :goto_d
    throw v16

    .line 510
    :catch_b
    move-exception v5

    .line 512
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 518
    .end local v5    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v5

    .line 520
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 526
    .end local v5    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v5

    .line 528
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 534
    .end local v5    # "e":Ljava/io/IOException;
    :cond_12
    const-wide/16 v16, 0x64

    :try_start_15
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_e

    goto/16 :goto_0

    .line 535
    :catch_e
    move-exception v5

    .line 537
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 505
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v2    # "buffer":[C
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v16

    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto :goto_a

    .end local v3    # "cadFile":Ljava/io/BufferedReader;
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v4    # "cadFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v16

    move-object v3, v4

    .end local v4    # "cadFile":Ljava/io/BufferedReader;
    .restart local v3    # "cadFile":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto :goto_a

    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .end local v12    # "stepFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v13    # "stepFile":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v16

    move-object v12, v13

    .end local v13    # "stepFile":Ljava/io/BufferedReader;
    .restart local v12    # "stepFile":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto :goto_a

    .line 501
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    :catch_f
    move-exception v5

    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .end local v3    # "cadFile":Ljava/io/BufferedReader;
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v4    # "cadFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    :catch_10
    move-exception v5

    move-object v3, v4

    .end local v4    # "cadFile":Ljava/io/BufferedReader;
    .restart local v3    # "cadFile":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .end local v12    # "stepFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v13    # "stepFile":Ljava/io/BufferedReader;
    :catch_11
    move-exception v5

    move-object v12, v13

    .end local v13    # "stepFile":Ljava/io/BufferedReader;
    .restart local v12    # "stepFile":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .line 498
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    :catch_12
    move-exception v6

    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .end local v3    # "cadFile":Ljava/io/BufferedReader;
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v4    # "cadFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    :catch_13
    move-exception v6

    move-object v3, v4

    .end local v4    # "cadFile":Ljava/io/BufferedReader;
    .restart local v3    # "cadFile":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .end local v12    # "stepFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v13    # "stepFile":Ljava/io/BufferedReader;
    :catch_14
    move-exception v6

    move-object v12, v13

    .end local v13    # "stepFile":Ljava/io/BufferedReader;
    .restart local v12    # "stepFile":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v8    # "intFile":Ljava/io/BufferedReader;
    :cond_13
    move-object v7, v8

    .end local v8    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_0
.end method

.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ExerciseRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$PassiveListener;,
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocationMgr:Landroid/location/LocationManager;

.field private mLooper:Landroid/os/Looper;

.field private mPassiveListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$PassiveListener;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2, v1, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 72
    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    .line 73
    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLocationMgr:Landroid/location/LocationManager;

    .line 74
    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLooper:Landroid/os/Looper;

    .line 75
    iput-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mPassiveListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$PassiveListener;

    .line 91
    iput-object p2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    .line 92
    iput-object p3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLooper:Landroid/os/Looper;

    .line 93
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$PassiveListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$PassiveListener;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mPassiveListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$PassiveListener;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLocationMgr:Landroid/location/LocationManager;

    .line 95
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLocationMgr:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$PassiveListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mPassiveListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$PassiveListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;BB[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;
    .param p1, "x1"    # B
    .param p2, "x2"    # B
    .param p3, "x3"    # [B

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->sendPropertyValueToSensorHub(BB[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;BB[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;
    .param p1, "x1"    # B
    .param p2, "x2"    # B
    .param p3, "x3"    # [B

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->sendPropertyValueToSensorHub(BB[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 464
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 465
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 466
    return-void
.end method

.method public final disable()V
    .locals 4

    .prologue
    .line 438
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 439
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$2;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 454
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 455
    return-void
.end method

.method public final enable()V
    .locals 4

    .prologue
    .line 409
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 410
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 426
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 427
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_EXERCISE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TimeStampArray"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DataCount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LatitudeArray"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LongitudeArray"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AltitudeArray"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "PressureArray"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "StepCountDiffArray"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PedoDistanceDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "PedoSpeedArray"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SpeedArray"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 478
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 116
    const/16 v0, 0x2e

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 385
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 397
    return-object p0
.end method

.method public final parse([BI)I
    .locals 34
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 188
    move/from16 v27, p2

    .line 190
    .local v27, "tmpNext":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v20

    .line 193
    .local v20, "names":[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v29, v0

    sub-int v29, v29, v27

    add-int/lit8 v29, v29, -0x6

    if-gez v29, :cond_0

    .line 194
    sget-object v29, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 195
    const/16 v28, -0x1

    .line 374
    :goto_0
    return v28

    .line 199
    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v29

    const/16 v30, 0x8

    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    aput-byte v32, v30, v31

    const/16 v31, 0x1

    const/16 v32, 0x0

    aput-byte v32, v30, v31

    const/16 v31, 0x2

    const/16 v32, 0x0

    aput-byte v32, v30, v31

    const/16 v31, 0x3

    const/16 v32, 0x0

    aput-byte v32, v30, v31

    const/16 v31, 0x4

    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .local v28, "tmpNext":I
    aget-byte v32, p1, v27

    aput-byte v32, v30, v31

    const/16 v31, 0x5

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v32, p1, v28

    aput-byte v32, v30, v31

    const/16 v31, 0x6

    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v32, p1, v27

    aput-byte v32, v30, v31

    const/16 v31, 0x7

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v32, p1, v28

    aput-byte v32, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v6

    .line 213
    .local v6, "baseTimeStamp":J
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x2

    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v31, p1, v27

    aput-byte v31, v29, v30

    const/16 v30, 0x3

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v31, p1, v28

    aput-byte v31, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 220
    .local v11, "dataSize":I
    if-gtz v11, :cond_1

    .line 221
    sget-object v29, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 223
    const/16 v28, -0x1

    goto/16 :goto_0

    .line 227
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v29, v0

    sub-int v29, v29, v27

    mul-int/lit8 v30, v11, 0x15

    sub-int v29, v29, v30

    if-gez v29, :cond_2

    .line 228
    sget-object v29, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 229
    const/16 v28, -0x1

    goto/16 :goto_0

    .line 234
    :cond_2
    new-array v0, v11, [J

    move-object/from16 v26, v0

    .line 235
    .local v26, "timeStamp":[J
    new-array v13, v11, [D

    .line 236
    .local v13, "latitude":[D
    new-array v0, v11, [D

    move-object/from16 v18, v0

    .line 237
    .local v18, "longitude":[D
    new-array v4, v11, [F

    .line 238
    .local v4, "altitude":[F
    new-array v0, v11, [F

    move-object/from16 v23, v0

    .line 239
    .local v23, "pressure":[F
    new-array v0, v11, [J

    move-object/from16 v25, v0

    .line 240
    .local v25, "stepCountDiff":[J
    new-array v0, v11, [D

    move-object/from16 v21, v0

    .line 241
    .local v21, "pedoDistanceDiff":[D
    new-array v0, v11, [D

    move-object/from16 v22, v0

    .line 242
    .local v22, "pedoSpeed":[D
    new-array v0, v11, [F

    move-object/from16 v24, v0

    .line 244
    .local v24, "speed":[F
    const/4 v12, 0x0

    .local v12, "i":I
    move/from16 v28, v27

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    :goto_1
    if-ge v12, v11, :cond_5

    .line 247
    mul-int/lit16 v0, v12, 0x3e8

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v30, v30, v6

    aput-wide v30, v26, v12

    .line 250
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v5, p1, v28

    .line 251
    .local v5, "byte1":B
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v8, p1, v27

    .line 252
    .local v8, "byte2":B
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v9, p1, v28

    .line 253
    .local v9, "byte3":B
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v10, p1, v27

    .line 255
    .local v10, "byte4":B
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v19, p1, v28

    .line 257
    .local v19, "midByte":B
    and-int/lit16 v0, v5, 0x80

    move/from16 v29, v0

    const/16 v30, 0x80

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    .line 258
    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, -0x1

    aput-byte v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, -0x1

    aput-byte v31, v29, v30

    const/16 v30, 0x2

    const/16 v31, -0x1

    aput-byte v31, v29, v30

    const/16 v30, 0x3

    aput-byte v5, v29, v30

    const/16 v30, 0x4

    aput-byte v8, v29, v30

    const/16 v30, 0x5

    aput-byte v9, v29, v30

    const/16 v30, 0x6

    aput-byte v10, v29, v30

    const/16 v30, 0x7

    aput-byte v19, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v30

    const/16 v29, 0x4

    shr-long v14, v30, v29

    .line 281
    .local v14, "lat":J
    :goto_2
    long-to-double v0, v14

    move-wide/from16 v30, v0

    const-wide v32, 0x4197d78400000000L    # 1.0E8

    div-double v30, v30, v32

    aput-wide v30, v13, v12

    .line 284
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v5, p1, v27

    .line 285
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v8, p1, v28

    .line 286
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v9, p1, v27

    .line 287
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v10, p1, v28

    .line 289
    and-int/lit8 v29, v19, 0x8

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    .line 290
    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, -0x1

    aput-byte v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, -0x1

    aput-byte v31, v29, v30

    const/16 v30, 0x2

    const/16 v31, -0x1

    aput-byte v31, v29, v30

    const/16 v30, 0x3

    and-int/lit8 v31, v19, 0xf

    move/from16 v0, v31

    or-int/lit16 v0, v0, 0xf0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    aput-byte v31, v29, v30

    const/16 v30, 0x4

    aput-byte v5, v29, v30

    const/16 v30, 0x5

    aput-byte v8, v29, v30

    const/16 v30, 0x6

    aput-byte v9, v29, v30

    const/16 v30, 0x7

    aput-byte v10, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v16

    .line 313
    .local v16, "lon":J
    :goto_3
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x4197d78400000000L    # 1.0E8

    div-double v30, v30, v32

    aput-wide v30, v18, v12

    .line 316
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x1

    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v31, p1, v27

    aput-byte v31, v29, v30

    const/16 v30, 0x2

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v31, p1, v28

    aput-byte v31, v29, v30

    const/16 v30, 0x3

    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v31, p1, v27

    aput-byte v31, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v29, v0

    aput v29, v4, v12

    .line 324
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x1

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v31, p1, v28

    aput-byte v31, v29, v30

    const/16 v30, 0x2

    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v31, p1, v27

    aput-byte v31, v29, v30

    const/16 v30, 0x3

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v31, p1, v28

    aput-byte v31, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x408f400000000000L    # 1000.0

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v29, v0

    aput v29, v23, v12

    .line 332
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v29, p1, v27

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    aput-wide v30, v25, v12

    .line 335
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x2

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v31, p1, v28

    aput-byte v31, v29, v30

    const/16 v30, 0x3

    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v31, p1, v27

    aput-byte v31, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    div-double v30, v30, v32

    aput-wide v30, v21, v12

    .line 343
    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v5, p1, v28

    .line 344
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    aget-byte v19, p1, v27

    .line 345
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x2

    aput-byte v5, v29, v30

    const/16 v30, 0x3

    aput-byte v19, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    shr-int/lit8 v29, v29, 0x4

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    div-double v30, v30, v32

    aput-wide v30, v22, v12

    .line 353
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x2

    and-int/lit8 v31, v19, 0xf

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    aput-byte v31, v29, v30

    const/16 v30, 0x3

    add-int/lit8 v27, v28, 0x1

    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    aget-byte v31, p1, v28

    aput-byte v31, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    div-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v29, v0

    aput v29, v24, v12

    .line 244
    add-int/lit8 v12, v12, 0x1

    move/from16 v28, v27

    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    goto/16 :goto_1

    .line 269
    .end local v14    # "lat":J
    .end local v16    # "lon":J
    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    :cond_3
    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x2

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x3

    aput-byte v5, v29, v30

    const/16 v30, 0x4

    aput-byte v8, v29, v30

    const/16 v30, 0x5

    aput-byte v9, v29, v30

    const/16 v30, 0x6

    aput-byte v10, v29, v30

    const/16 v30, 0x7

    aput-byte v19, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v30

    const/16 v29, 0x4

    shr-long v14, v30, v29

    .restart local v14    # "lat":J
    goto/16 :goto_2

    .line 302
    :cond_4
    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x2

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x3

    and-int/lit8 v31, v19, 0xf

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    aput-byte v31, v29, v30

    const/16 v30, 0x4

    aput-byte v5, v29, v30

    const/16 v30, 0x5

    aput-byte v8, v29, v30

    const/16 v30, 0x6

    aput-byte v9, v29, v30

    const/16 v30, 0x7

    aput-byte v10, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v16

    .restart local v16    # "lon":J
    goto/16 :goto_3

    .line 361
    .end local v5    # "byte1":B
    .end local v8    # "byte2":B
    .end local v9    # "byte3":B
    .end local v10    # "byte4":B
    .end local v14    # "lat":J
    .end local v16    # "lon":J
    .end local v19    # "midByte":B
    .end local v27    # "tmpNext":I
    .restart local v28    # "tmpNext":I
    :cond_5
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v30, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->TimeStamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v30 .. v30}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v30

    aget-object v30, v20, v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 362
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v30, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v30 .. v30}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v30

    aget-object v30, v20, v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 363
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v30, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v30 .. v30}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v30

    aget-object v30, v20, v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 364
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v30, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v30 .. v30}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v30

    aget-object v30, v20, v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 365
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v30, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Altitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v30 .. v30}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v30

    aget-object v30, v20, v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 366
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v30, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Pressure:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v30 .. v30}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v30

    aget-object v30, v20, v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 367
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v30, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->StepCountDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v30 .. v30}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v30

    aget-object v30, v20, v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 368
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v30, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->PedoDistanceDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v30 .. v30}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v30

    aget-object v30, v20, v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 369
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v30, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->PedoSpeed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v30 .. v30}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v30

    aget-object v30, v20, v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 370
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v29

    sget-object v30, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Speed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->val:B
    invoke-static/range {v30 .. v30}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v30

    aget-object v30, v20, v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 372
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move/from16 v27, v28

    .line 374
    .end local v28    # "tmpNext":I
    .restart local v27    # "tmpNext":I
    goto/16 :goto_0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 9
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 152
    const/4 v3, 0x1

    .line 153
    .local v3, "result":Z
    const/16 v4, 0x3f

    if-ne p1, v4, :cond_2

    .line 154
    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 156
    .local v0, "dataType":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exercise data type = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 158
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    const-string v7, "location"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 159
    .local v2, "manager":Landroid/location/LocationManager;
    const-string v4, "gps"

    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 161
    .local v1, "gpsStatus":Z
    new-array v7, v8, [B

    int-to-byte v4, v0

    aput-byte v4, v7, v6

    if-ne v1, v5, :cond_1

    move v4, v5

    :goto_0
    int-to-byte v4, v4

    aput-byte v4, v7, v5

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 166
    const/16 v4, 0x2e

    new-array v7, v8, [B

    int-to-byte v8, v0

    aput-byte v8, v7, v6

    if-ne v1, v5, :cond_0

    move v6, v5

    :cond_0
    int-to-byte v6, v6

    aput-byte v6, v7, v5

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->sendPropertyValueToSensorHub(BB[B)Z

    .line 176
    .end local v0    # "dataType":I
    .end local v1    # "gpsStatus":Z
    .end local v2    # "manager":Landroid/location/LocationManager;
    :goto_1
    return v3

    .restart local v0    # "dataType":I
    .restart local v1    # "gpsStatus":Z
    .restart local v2    # "manager":Landroid/location/LocationManager;
    :cond_1
    move v4, v6

    .line 161
    goto :goto_0

    .line 174
    .end local v0    # "dataType":I
    .end local v1    # "gpsStatus":Z
    .end local v2    # "manager":Landroid/location/LocationManager;
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

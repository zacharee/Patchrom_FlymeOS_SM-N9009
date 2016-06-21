.class public Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;
.super Landroid/hardware/scontext/provider/miscprovider/MiscProvider;
.source "ExerciseImpl.java"


# static fields
.field private static REQUIRED_DATA_BAROMETER:I = 0x0

.field private static REQUIRED_DATA_GPS:I = 0x0

.field private static REQUIRED_DATA_PEDOMETER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SContext.MiscProvider.ExerciseImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplay:Landroid/view/Display;

.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private mLocationListener:Landroid/location/ExerciseLocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mRequiredData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->REQUIRED_DATA_GPS:I

    .line 39
    const/4 v0, 0x2

    sput v0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->REQUIRED_DATA_BAROMETER:I

    .line 41
    const/4 v0, 0x4

    sput v0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->REQUIRED_DATA_PEDOMETER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/MiscProvider;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mRequiredData:I

    .line 137
    new-instance v0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl$1;

    invoke-direct {v0, p0}, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl$1;-><init>(Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mLocationListener:Landroid/location/ExerciseLocationListener;

    .line 56
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    .line 58
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mDisplay:Landroid/view/Display;

    .line 60
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;)Landroid/hardware/scontext/provider/EventListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;

    .prologue
    .line 33
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mListener:Landroid/hardware/scontext/provider/EventListener;

    return-object v0
.end method

.method private display(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 162
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 163
    .local v10, "sb":Ljava/lang/StringBuffer;
    const-string v14, "TimeStampArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v13

    .line 164
    .local v13, "timestamp":[J
    const-string v14, "LatitudeArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    .line 165
    .local v5, "latitudeArray":[D
    const-string v14, "LongitudeArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v6

    .line 166
    .local v6, "longitudeArray":[D
    const-string v14, "AltitudeArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v2

    .line 167
    .local v2, "altitudeArray":[F
    const-string v14, "PressureArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v9

    .line 168
    .local v9, "pressureArray":[F
    const-string v14, "SpeedArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v11

    .line 169
    .local v11, "speedArray":[F
    const-string v14, "PedoDistanceDiffArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v7

    .line 170
    .local v7, "pedoDistanceArray":[D
    const-string v14, "PedoSpeedArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v8

    .line 171
    .local v8, "pedoSpeedArray":[D
    const-string v14, "StepCountDiffArray"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v12

    .line 172
    .local v12, "stepCountDiffArray":[J
    const-string v14, "DataCount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 174
    .local v3, "dataCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 175
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DC : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " TS : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-wide v16, v13, v4

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " lat : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-wide v16, v5, v4

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " lot : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-wide v16, v6, v4

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " alt : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget v15, v2, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " press : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget v15, v9, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " SPD : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget v15, v11, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " pedoDIS : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-wide v16, v7, v4

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "pedoSPD : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-wide v16, v8, v4

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " SCD : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-wide v16, v12, v4

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    const-string v14, "\n"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 183
    :cond_0
    const-string v14, "SContext.MiscProvider.ExerciseImpl"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method private isScreenOn()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mLocationManager:Landroid/location/LocationManager;

    .line 72
    :cond_0
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mLocationManager:Landroid/location/LocationManager;

    iget v1, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mRequiredData:I

    const/16 v2, 0x3e8

    iget-object v3, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mLocationListener:Landroid/location/ExerciseLocationListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestExerciseLocationUpdates(IILandroid/location/ExerciseLocationListener;)V

    .line 73
    const-string v0, "SContext.MiscProvider.ExerciseImpl"

    const-string v1, "BroadCom Exercise Start!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    const-string v0, "SContext.MiscProvider.ExerciseImpl"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->display(Landroid/os/Bundle;)V

    .line 111
    return-object p1
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mLocationListener:Landroid/location/ExerciseLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeExcersiceLocationUpdates(Landroid/location/ExerciseLocationListener;)V

    .line 85
    const-string v0, "SContext.MiscProvider.ExerciseImpl"

    const-string v1, "BroadCom Exercise Stop!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public requestToUpdate()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "SContext.MiscProvider.ExerciseImpl"

    const-string/jumbo v1, "requestToUpdate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    :cond_0
    return-void
.end method

.method public setAttribute(ILandroid/hardware/scontext/SContextAttribute;)V
    .locals 4
    .param p1, "service"    # I
    .param p2, "attribute"    # Landroid/hardware/scontext/SContextAttribute;

    .prologue
    .line 123
    const/16 v1, 0x26

    invoke-virtual {p2, v1}, Landroid/hardware/scontext/SContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v0

    .line 124
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "required_data_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mRequiredData:I

    .line 125
    const-string v1, "SContext.MiscProvider.ExerciseImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadCom Exercise setAttribute - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/scontext/provider/miscprovider/ExerciseImpl;->mRequiredData:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.class Lcom/android/server/SecExternalDisplayOrientation$1;
.super Landroid/view/OrientationEventListener;
.source "SecExternalDisplayOrientation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SecExternalDisplayOrientation;->setOrientationListenerForCamera(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecExternalDisplayOrientation;


# direct methods
.method constructor <init>(Lcom/android/server/SecExternalDisplayOrientation;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/SecExternalDisplayOrientation$1;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 108
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->bIsCameraOn:Z
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$000()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    :cond_0
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Checking orientation :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bIsCameraOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->bIsCameraOn:Z
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v0

    # setter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->access$102(I)I

    .line 117
    rem-int/lit16 p1, p1, 0x168

    .line 119
    const/16 v0, 0x2d

    if-ge p1, v0, :cond_6

    .line 121
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v0

    # setter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->access$102(I)I

    .line 140
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_4

    .line 141
    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Checking Orientation Value :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$100()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bIsCameraOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->bIsCameraOn:Z
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation$1;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation$1;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation$1;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation$1;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation$1;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    goto/16 :goto_0

    .line 123
    :cond_6
    const/16 v0, 0x87

    if-ge p1, v0, :cond_7

    .line 125
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Inverse_Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v0

    # setter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->access$102(I)I

    goto/16 :goto_1

    .line 127
    :cond_7
    const/16 v0, 0xe1

    if-ge p1, v0, :cond_8

    .line 129
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Inverse_Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v0

    # setter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->access$102(I)I

    goto/16 :goto_1

    .line 131
    :cond_8
    const/16 v0, 0x13b

    if-ge p1, v0, :cond_9

    .line 133
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v0

    # setter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->access$102(I)I

    goto/16 :goto_1

    .line 135
    :cond_9
    const/16 v0, 0x168

    if-ge p1, v0, :cond_3

    .line 137
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v0

    # setter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->access$102(I)I

    goto/16 :goto_1
.end method

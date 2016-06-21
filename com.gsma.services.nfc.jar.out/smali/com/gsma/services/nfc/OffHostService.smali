.class public Lcom/gsma/services/nfc/OffHostService;
.super Ljava/lang/Object;
.source "OffHostService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/nfc/OffHostService$extraInfo;
    }
.end annotation


# static fields
.field public static final CATEGORY_OTHER:Ljava/lang/String; = "other"

.field public static final CATEGORY_PAYMENT:Ljava/lang/String; = "payment"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/nfc/OffHostService;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_INSUFFICIENT_RESOURCE:I = -0x5

.field public static final ERROR_INVALID_PARAM:I = -0x4

.field public static final ERROR_NOT_ALLOWED:I = -0x3

.field public static final ERROR_NOT_ENABLED:I = -0x2

.field public static final ERROR_NOT_SUPPORTED:I = -0x1

.field public static final ESE:Ljava/lang/String; = "eSE"

.field public static final SD:Ljava/lang/String; = "SD"

.field public static final SIM:Ljava/lang/String; = "SIM"

.field public static final SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "OffHostService"

.field static offHostService:Lcom/gsma/services/nfc/IOffHostService;


# instance fields
.field private final mAidGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gsma/services/nfc/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mBanner:Landroid/graphics/drawable/Drawable;

.field private final mDescription:Ljava/lang/String;

.field private final mExtraInfo:Lcom/gsma/services/nfc/OffHostService$extraInfo;

.field private final mSEName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/gsma/services/nfc/OffHostService;->offHostService:Lcom/gsma/services/nfc/IOffHostService;

    .line 245
    new-instance v0, Lcom/gsma/services/nfc/OffHostService$1;

    invoke-direct {v0}, Lcom/gsma/services/nfc/OffHostService$1;-><init>()V

    sput-object v0, Lcom/gsma/services/nfc/OffHostService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/gsma/services/nfc/OffHostService$extraInfo;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "SEName"    # Ljava/lang/String;
    .param p3, "banner"    # Landroid/graphics/drawable/Drawable;
    .param p4, "info"    # Lcom/gsma/services/nfc/OffHostService$extraInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/gsma/services/nfc/OffHostService$extraInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/gsma/services/nfc/AidGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p5, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gsma/services/nfc/AidGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/gsma/services/nfc/OffHostService;->getServiceInterface()Lcom/gsma/services/nfc/IOffHostService;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/nfc/OffHostService;->offHostService:Lcom/gsma/services/nfc/IOffHostService;

    .line 54
    iput-object p1, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 57
    iput-object p4, p0, Lcom/gsma/services/nfc/OffHostService;->mExtraInfo:Lcom/gsma/services/nfc/OffHostService$extraInfo;

    .line 58
    iput-object p5, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "SEName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/gsma/services/nfc/OffHostService;->getServiceInterface()Lcom/gsma/services/nfc/IOffHostService;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/nfc/OffHostService;->offHostService:Lcom/gsma/services/nfc/IOffHostService;

    .line 44
    iput-object p1, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 47
    new-instance v0, Lcom/gsma/services/nfc/OffHostService$extraInfo;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3, p4}, Lcom/gsma/services/nfc/OffHostService$extraInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mExtraInfo:Lcom/gsma/services/nfc/OffHostService$extraInfo;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method private attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 286
    const-string v1, "OffHostService"

    const-string v2, "NFC service dead - attempting to recover."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    invoke-static {}, Lcom/gsma/services/nfc/OffHostService;->getServiceInterface()Lcom/gsma/services/nfc/IOffHostService;

    move-result-object v0

    .line 288
    .local v0, "service":Lcom/gsma/services/nfc/IOffHostService;
    if-nez v0, :cond_0

    .line 289
    const-string v1, "OffHostService"

    const-string v2, "Could not retrieve NFC service during service recovery."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_0
    return-void

    .line 292
    :cond_0
    sput-object v0, Lcom/gsma/services/nfc/OffHostService;->offHostService:Lcom/gsma/services/nfc/IOffHostService;

    goto :goto_0
.end method

.method private static getServiceInterface()Lcom/gsma/services/nfc/IOffHostService;
    .locals 2

    .prologue
    .line 278
    const-string v1, "offhostservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 279
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 280
    const/4 v1, 0x0

    .line 282
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/gsma/services/nfc/IOffHostService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/nfc/IOffHostService;

    move-result-object v1

    goto :goto_0
.end method

.method private resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 70
    if-eqz p1, :cond_0

    instance-of v9, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v9, :cond_1

    :cond_0
    move-object v4, p1

    .line 91
    .end local p1    # "image":Landroid/graphics/drawable/Drawable;
    .local v4, "image":Ljava/lang/Object;
    :goto_0
    return-object v4

    .end local v4    # "image":Ljava/lang/Object;
    .restart local p1    # "image":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v9, p1

    .line 73
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 75
    .local v8, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 76
    .local v3, "height":I
    const/16 v6, 0x410

    .line 77
    .local v6, "sizeX":I
    const/16 v7, 0x180

    .line 78
    .local v7, "sizeY":I
    if-eqz v8, :cond_2

    if-nez v3, :cond_3

    .line 84
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 86
    .local v1, "bitmapResized":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    :try_start_0
    invoke-static {v0, v6, v7, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "image":Landroid/graphics/drawable/Drawable;
    invoke-direct {p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local p1    # "image":Landroid/graphics/drawable/Drawable;
    move-object v4, p1

    .line 91
    .restart local v4    # "image":Ljava/lang/Object;
    goto :goto_0

    .line 81
    .end local v1    # "bitmapResized":Landroid/graphics/Bitmap;
    .end local v4    # "image":Ljava/lang/Object;
    :cond_3
    int-to-float v9, v8

    int-to-float v10, v3

    div-float v5, v9, v10

    .line 82
    .local v5, "ratio":F
    int-to-float v9, v6

    div-float/2addr v9, v5

    float-to-int v7, v9

    goto :goto_1

    .line 87
    .end local v5    # "ratio":F
    .restart local v1    # "bitmapResized":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/OutOfMemoryError;
    move-object v4, p1

    .line 88
    .restart local v4    # "image":Ljava/lang/Object;
    goto :goto_0
.end method


# virtual methods
.method public commit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/utils/InsufficientResourcesException;
        }
    .end annotation

    .prologue
    .line 169
    :try_start_0
    sget-object v2, Lcom/gsma/services/nfc/OffHostService;->offHostService:Lcom/gsma/services/nfc/IOffHostService;

    invoke-interface {v2, p0}, Lcom/gsma/services/nfc/IOffHostService;->commit(Lcom/gsma/services/nfc/OffHostService;)I

    move-result v1

    .line 170
    .local v1, "res":I
    if-nez v1, :cond_1

    .line 180
    .end local v1    # "res":I
    :cond_0
    :goto_0
    return-void

    .line 171
    .restart local v1    # "res":I
    :cond_1
    const/4 v2, -0x4

    if-ne v1, v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "An illegal or inappropriate argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/OffHostService;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_0

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_2
    const/4 v2, -0x5

    if-ne v1, v2, :cond_0

    :try_start_1
    new-instance v2, Lcom/gsma/services/utils/InsufficientResourcesException;

    const-string v3, "Insufficient resources are available in the routing table"

    invoke-direct {v2, v3}, Lcom/gsma/services/utils/InsufficientResourcesException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public defineAidGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/AidGroup;
    .locals 3
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v1, "payment"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "other"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An illegal or inappropriate argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_0
    new-instance v0, Lcom/gsma/services/nfc/AidGroup;

    invoke-direct {v0, p2, p1}, Lcom/gsma/services/nfc/AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .local v0, "group":Lcom/gsma/services/nfc/AidGroup;
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    return-object v0
.end method

.method public deleteAidGroup(Lcom/gsma/services/nfc/AidGroup;)V
    .locals 4
    .param p1, "group"    # Lcom/gsma/services/nfc/AidGroup;

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "An illegal or inappropriate argument"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/nfc/AidGroup;

    .line 155
    .local v0, "aidgroup":Lcom/gsma/services/nfc/AidGroup;
    invoke-virtual {v0, p1}, Lcom/gsma/services/nfc/AidGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 160
    .end local v0    # "aidgroup":Lcom/gsma/services/nfc/AidGroup;
    :cond_2
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 184
    if-ne p0, p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v1

    .line 187
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 188
    goto :goto_0

    .line 190
    :cond_2
    instance-of v3, p1, Lcom/gsma/services/nfc/OffHostService;

    if-nez v3, :cond_3

    move v1, v2

    .line 191
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 193
    check-cast v0, Lcom/gsma/services/nfc/OffHostService;

    .line 194
    .local v0, "s":Lcom/gsma/services/nfc/OffHostService;
    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    iget-object v4, v0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 195
    goto :goto_0

    .line 197
    :cond_4
    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    iget-object v4, v0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 198
    goto :goto_0

    .line 203
    :cond_5
    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 204
    goto :goto_0
.end method

.method public getAidGroups()[Lcom/gsma/services/nfc/AidGroup;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 120
    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    :cond_0
    return-object v0

    .line 123
    :cond_1
    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 124
    .local v2, "size":I
    if-eqz v2, :cond_0

    .line 127
    new-array v0, v2, [Lcom/gsma/services/nfc/AidGroup;

    .line 128
    .local v0, "group":[Lcom/gsma/services/nfc/AidGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 129
    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/nfc/AidGroup;

    aput-object v3, v0, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getBanner()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Lcom/gsma/services/nfc/OffHostService$extraInfo;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mExtraInfo:Lcom/gsma/services/nfc/OffHostService$extraInfo;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setBanner(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "banner"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/gsma/services/nfc/OffHostService;->resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 230
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mSEName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mExtraInfo:Lcom/gsma/services/nfc/OffHostService$extraInfo;

    invoke-virtual {v1, p1, p2}, Lcom/gsma/services/nfc/OffHostService$extraInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 233
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 234
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 236
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 239
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/gsma/services/nfc/OffHostService;->mAidGroup:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 243
    :cond_1
    return-void

    .line 233
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

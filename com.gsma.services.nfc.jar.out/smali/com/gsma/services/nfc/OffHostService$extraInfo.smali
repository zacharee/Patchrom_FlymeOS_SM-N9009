.class public Lcom/gsma/services/nfc/OffHostService$extraInfo;
.super Ljava/lang/Object;
.source "OffHostService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/nfc/OffHostService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/nfc/OffHostService$extraInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final className:Ljava/lang/String;

.field id:I

.field packageName:Ljava/lang/String;

.field virtualClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 407
    new-instance v0, Lcom/gsma/services/nfc/OffHostService$extraInfo$1;

    invoke-direct {v0}, Lcom/gsma/services/nfc/OffHostService$extraInfo$1;-><init>()V

    sput-object v0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "virtualClassName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput p1, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->id:I

    .line 310
    iput-object p2, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->virtualClassName:Ljava/lang/String;

    .line 311
    iput-object p3, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->packageName:Ljava/lang/String;

    .line 312
    iput-object p4, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->className:Ljava/lang/String;

    .line 313
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 359
    if-ne p0, p1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v1

    .line 362
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 363
    goto :goto_0

    .line 365
    :cond_2
    instance-of v3, p1, Lcom/gsma/services/nfc/OffHostService$extraInfo;

    if-nez v3, :cond_3

    move v1, v2

    .line 366
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 368
    check-cast v0, Lcom/gsma/services/nfc/OffHostService$extraInfo;

    .line 369
    .local v0, "i":Lcom/gsma/services/nfc/OffHostService$extraInfo;
    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->virtualClassName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->virtualClassName:Ljava/lang/String;

    iget-object v4, v0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->virtualClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 370
    goto :goto_0

    .line 373
    :cond_4
    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 374
    goto :goto_0

    .line 377
    :cond_5
    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->className:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->className:Ljava/lang/String;

    iget-object v4, v0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 378
    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->id:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVirtualClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->virtualClassName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 386
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 319
    iput p1, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->id:I

    .line 320
    return-void
.end method

.method public setVirtualClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "virtualClassName"    # Ljava/lang/String;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->virtualClassName:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 401
    iget v0, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->virtualClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 405
    return-void
.end method

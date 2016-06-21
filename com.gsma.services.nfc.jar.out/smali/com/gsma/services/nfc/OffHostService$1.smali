.class final Lcom/gsma/services/nfc/OffHostService$1;
.super Ljava/lang/Object;
.source "OffHostService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/nfc/OffHostService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/gsma/services/nfc/OffHostService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/nfc/OffHostService;
    .locals 11
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "description":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "seName":Ljava/lang/String;
    sget-object v0, Lcom/gsma/services/nfc/OffHostService$extraInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gsma/services/nfc/OffHostService$extraInfo;

    .line 251
    .local v4, "info":Lcom/gsma/services/nfc/OffHostService$extraInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v9, 0x1

    .line 252
    .local v9, "useBanner":Z
    :goto_0
    const/4 v3, 0x0

    .line 253
    .local v3, "banner":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_0

    .line 255
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 256
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "banner":Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "banner":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v5, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gsma/services/nfc/AidGroup;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 265
    .local v8, "size":I
    if-lez v8, :cond_1

    .line 266
    sget-object v0, Lcom/gsma/services/nfc/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 268
    :cond_1
    new-instance v0, Lcom/gsma/services/nfc/OffHostService;

    invoke-direct/range {v0 .. v5}, Lcom/gsma/services/nfc/OffHostService;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/gsma/services/nfc/OffHostService$extraInfo;Ljava/util/ArrayList;)V

    return-object v0

    .line 251
    .end local v3    # "banner":Landroid/graphics/drawable/Drawable;
    .end local v5    # "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/gsma/services/nfc/AidGroup;>;"
    .end local v8    # "size":I
    .end local v9    # "useBanner":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 258
    .restart local v9    # "useBanner":Z
    :catch_0
    move-exception v7

    .line 259
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    const-string v0, "OffHostService"

    const-string v10, "Can\'t read the banner because of out of memory!"

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v3, 0x0

    .restart local v3    # "banner":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/gsma/services/nfc/OffHostService$1;->createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/nfc/OffHostService;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/gsma/services/nfc/OffHostService;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 273
    new-array v0, p1, [Lcom/gsma/services/nfc/OffHostService;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/gsma/services/nfc/OffHostService$1;->newArray(I)[Lcom/gsma/services/nfc/OffHostService;

    move-result-object v0

    return-object v0
.end method

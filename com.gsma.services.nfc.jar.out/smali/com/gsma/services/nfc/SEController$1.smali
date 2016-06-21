.class final Lcom/gsma/services/nfc/SEController$1;
.super Ljava/lang/Object;
.source "SEController.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/nfc/SEController;
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
        "Lcom/gsma/services/nfc/SEController;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/nfc/SEController;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 203
    .local v0, "isHceCapable":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/nfc/ISEController;

    .line 204
    .local v1, "service":Lcom/gsma/services/nfc/ISEController;
    new-instance v2, Lcom/gsma/services/nfc/SEController;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/gsma/services/nfc/SEController;-><init>(ZLcom/gsma/services/nfc/ISEController;Lcom/gsma/services/nfc/SEController$1;)V

    return-object v2

    .line 202
    .end local v0    # "isHceCapable":Z
    .end local v1    # "service":Lcom/gsma/services/nfc/ISEController;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/gsma/services/nfc/SEController$1;->createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/nfc/SEController;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/gsma/services/nfc/SEController;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 209
    new-array v0, p1, [Lcom/gsma/services/nfc/SEController;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/gsma/services/nfc/SEController$1;->newArray(I)[Lcom/gsma/services/nfc/SEController;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/gsma/services/nfc/AidGroup;
.super Ljava/lang/Object;
.source "AidGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/nfc/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field static final MINIMUM_AID_LENGTH:I = 0x5

.field static TAG:Ljava/lang/String;


# instance fields
.field private final mAids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategory:Ljava/lang/String;

.field private final mDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "AIDGroup"

    sput-object v0, Lcom/gsma/services/nfc/AidGroup;->TAG:Ljava/lang/String;

    .line 170
    new-instance v0, Lcom/gsma/services/nfc/AidGroup$1;

    invoke-direct {v0}, Lcom/gsma/services/nfc/AidGroup$1;-><init>()V

    sput-object v0, Lcom/gsma/services/nfc/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method private isValidAid(Ljava/lang/String;)Z
    .locals 5
    .param p1, "Aid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 84
    if-nez p1, :cond_0

    .line 85
    sget-object v2, Lcom/gsma/services/nfc/AidGroup;->TAG:Ljava/lang/String;

    const-string v3, "Aid is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return v1

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 89
    .local v0, "length":I
    if-eqz v0, :cond_1

    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    .line 90
    :cond_1
    sget-object v2, Lcom/gsma/services/nfc/AidGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not correctly formatted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_2
    const/16 v2, 0xa

    if-ge v0, v2, :cond_3

    .line 94
    sget-object v2, Lcom/gsma/services/nfc/AidGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is shorter than 5 bytes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addNewAid(Ljava/lang/String;)V
    .locals 2
    .param p1, "Aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/gsma/services/nfc/AidGroup;->isValidAid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An illegal or inappropriate argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 102
    if-ne p0, p1, :cond_0

    move v3, v4

    .line 131
    :goto_0
    return v3

    .line 105
    :cond_0
    if-nez p1, :cond_1

    move v3, v5

    .line 106
    goto :goto_0

    .line 108
    :cond_1
    instance-of v3, p1, Lcom/gsma/services/nfc/AidGroup;

    if-nez v3, :cond_2

    move v3, v5

    .line 109
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 111
    check-cast v0, Lcom/gsma/services/nfc/AidGroup;

    .line 112
    .local v0, "g":Lcom/gsma/services/nfc/AidGroup;
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 113
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v6, v0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v3, v6, :cond_3

    move v3, v5

    .line 114
    goto :goto_0

    .line 116
    :cond_3
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 117
    .local v2, "size":I
    if-lez v2, :cond_5

    .line 118
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 119
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, v0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v5

    .line 120
    goto :goto_0

    .line 118
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_5
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    iget-object v6, v0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v5

    .line 126
    goto :goto_0

    .line 128
    :cond_6
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    iget-object v6, v0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v5

    .line 129
    goto :goto_0

    :cond_7
    move v3, v4

    .line 131
    goto :goto_0
.end method

.method public getAids()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 69
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    :cond_0
    return-object v0

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 73
    .local v2, "size":I
    if-eqz v2, :cond_0

    .line 76
    new-array v0, v2, [Ljava/lang/String;

    .line 77
    .local v0, "aids":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 78
    iget-object v3, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public removeAid(Ljava/lang/String;)V
    .locals 2
    .param p1, "Aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/gsma/services/nfc/AidGroup;->isValidAid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An illegal or inappropriate argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/gsma/services/nfc/AidGroup;->mAids:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 168
    :cond_0
    return-void
.end method

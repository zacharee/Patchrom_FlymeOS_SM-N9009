.class final Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo$1;
.super Ljava/lang/Object;
.source "TwTransit.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
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
        "Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1040
    new-instance v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1036
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1045
    new-array v0, p1, [Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1036
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo$1;->newArray(I)[Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    move-result-object v0

    return-object v0
.end method

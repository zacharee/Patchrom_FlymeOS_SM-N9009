.class final Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata$1;
.super Ljava/lang/Object;
.source "TwExpandableListConnector.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
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
        "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 968
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->obtain(IIIJ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    move-result-object v0

    .line 973
    .local v0, "gm":Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 965
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 977
    new-array v0, p1, [Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 965
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata$1;->newArray(I)[Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    move-result-object v0

    return-object v0
.end method

.class Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
.super Ljava/lang/Object;
.source "TwTransit.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/utils/TwTransit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundsInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mHeight:F

.field public mPaddingBottom:I

.field public mPaddingLeft:I

.field public mPaddingRight:I

.field public mPaddingTop:I

.field public mWidth:F

.field public mX:F

.field public mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1036
    new-instance v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo$1;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/4 v0, 0x0

    .line 985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    iput p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mX:F

    .line 987
    iput p2, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mY:F

    .line 988
    iput p3, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mWidth:F

    .line 989
    iput p4, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mHeight:F

    .line 990
    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingTop:I

    .line 991
    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingLeft:I

    .line 992
    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingRight:I

    .line 993
    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingBottom:I

    .line 994
    return-void
.end method

.method public constructor <init>(FFFFIIII)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "paddingTop"    # I
    .param p6, "paddingLeft"    # I
    .param p7, "paddingRight"    # I
    .param p8, "paddingBottom"    # I

    .prologue
    .line 997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    iput p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mX:F

    .line 999
    iput p2, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mY:F

    .line 1000
    iput p3, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mWidth:F

    .line 1001
    iput p4, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mHeight:F

    .line 1002
    iput p5, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingTop:I

    .line 1003
    iput p6, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingLeft:I

    .line 1004
    iput p7, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingRight:I

    .line 1005
    iput p8, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingBottom:I

    .line 1006
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mX:F

    .line 1010
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mY:F

    .line 1011
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mWidth:F

    .line 1012
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mHeight:F

    .line 1013
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingTop:I

    .line 1014
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingLeft:I

    .line 1015
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingRight:I

    .line 1016
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingBottom:I

    .line 1017
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1021
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1026
    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1027
    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1028
    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mWidth:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1029
    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mHeight:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1030
    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1031
    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingLeft:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingRight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mPaddingBottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    return-void
.end method

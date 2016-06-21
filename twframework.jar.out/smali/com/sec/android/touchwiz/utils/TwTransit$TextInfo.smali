.class Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;
.super Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
.source "TwTransit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/utils/TwTransit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mColor:I

.field public mFontStyle:I

.field public mGravity:I

.field public mSize:F

.field public mText:Ljava/lang/String;

.field public mTextScaleX:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1109
    new-instance v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo$1;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1063
    invoke-direct {p0}, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;-><init>()V

    .line 1064
    return-void
.end method

.method public constructor <init>(FFFFIIIILjava/lang/String;FIIIF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "paddingTop"    # I
    .param p6, "paddingLeft"    # I
    .param p7, "paddingRight"    # I
    .param p8, "paddingBottom"    # I
    .param p9, "text"    # Ljava/lang/String;
    .param p10, "size"    # F
    .param p11, "color"    # I
    .param p12, "gravity"    # I
    .param p13, "fontStyle"    # I
    .param p14, "textScaleX"    # F

    .prologue
    .line 1080
    invoke-direct/range {p0 .. p8}, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;-><init>(FFFFIIII)V

    .line 1081
    iput-object p9, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mText:Ljava/lang/String;

    .line 1082
    iput p10, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mSize:F

    .line 1083
    iput p11, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mColor:I

    .line 1084
    iput p12, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mGravity:I

    .line 1085
    iput p13, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mFontStyle:I

    .line 1086
    iput p14, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mTextScaleX:F

    .line 1087
    return-void
.end method

.method public constructor <init>(FFFFLjava/lang/String;FIIIF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "size"    # F
    .param p7, "color"    # I
    .param p8, "gravity"    # I
    .param p9, "fontStyle"    # I
    .param p10, "textScaleX"    # F

    .prologue
    .line 1068
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;-><init>(FFFFIIII)V

    .line 1069
    iput-object p5, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mText:Ljava/lang/String;

    .line 1070
    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mSize:F

    .line 1071
    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mColor:I

    .line 1072
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mGravity:I

    .line 1073
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mFontStyle:I

    .line 1074
    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mTextScaleX:F

    .line 1075
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 1090
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;-><init>(Landroid/os/Parcel;)V

    .line 1091
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mText:Ljava/lang/String;

    .line 1092
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mSize:F

    .line 1093
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mColor:I

    .line 1094
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mGravity:I

    .line 1095
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mFontStyle:I

    .line 1096
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mTextScaleX:F

    .line 1097
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1100
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1101
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1102
    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1103
    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mGravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mFontStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1106
    iget v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;->mTextScaleX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1107
    return-void
.end method

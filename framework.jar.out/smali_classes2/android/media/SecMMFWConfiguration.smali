.class public Landroid/media/SecMMFWConfiguration;
.super Ljava/lang/Object;
.source "SecMMFWConfiguration.java"


# static fields
.field public static final SEC_PRODUCT_FEATURE_MMFW_TICK_PLAY:I = 0x3

.field public static final SEC_PRODUCT_FEATURE_MMFW_VIDEO_CAPTURE:I = 0x1

.field public static final SEC_PRODUCT_FEATURE_MMFW_VIDEO_PREVIEW_SEEK_HOVERING:I = 0x2

.field public static final SEC_PRODUCT_FEATURE_MMFW_VIDEO_ZOOM:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabledFeature(I)Z
    .locals 2
    .param p0, "feature"    # I

    .prologue
    const/4 v0, 0x1

    .line 53
    if-ne p0, v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 55
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 56
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 58
    const/4 v0, 0x0

    goto :goto_0
.end method

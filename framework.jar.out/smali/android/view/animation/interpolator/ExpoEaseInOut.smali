.class public Landroid/view/animation/interpolator/ExpoEaseInOut;
.super Ljava/lang/Object;
.source "ExpoEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method private inout(F)F
    .locals 8
    .param p1, "t"    # F

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 105
    cmpl-float v2, p1, v0

    if-nez v2, :cond_0

    .line 115
    :goto_0
    return v0

    .line 108
    :cond_0
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    move v0, v1

    .line 109
    goto :goto_0

    .line 111
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 112
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    .line 113
    const/high16 v0, 0x41200000    # 10.0f

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    goto :goto_0

    .line 115
    :cond_2
    const/high16 v0, -0x3ee00000    # -10.0f

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    add-double/2addr v0, v4

    mul-double/2addr v0, v6

    double-to-float v0, v0

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "t"    # F

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/view/animation/interpolator/ExpoEaseInOut;->inout(F)F

    move-result v0

    return v0
.end method

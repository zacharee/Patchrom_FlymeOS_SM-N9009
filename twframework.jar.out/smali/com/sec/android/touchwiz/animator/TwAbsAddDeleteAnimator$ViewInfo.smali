.class Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
.super Ljava/lang/Object;
.source "TwAbsAddDeleteAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewInfo"
.end annotation


# instance fields
.field bottom:I

.field left:I

.field oldPosition:I

.field right:I

.field top:I

.field viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V
    .locals 0
    .param p1, "viewSnapshot"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "oldPosition"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    .line 91
    iput p2, p0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    .line 92
    iput p4, p0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->top:I

    .line 93
    iput p3, p0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->left:I

    .line 94
    iput p5, p0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->right:I

    .line 95
    iput p6, p0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->bottom:I

    .line 96
    return-void
.end method


# virtual methods
.method public recycleBitmap()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    return-void
.end method

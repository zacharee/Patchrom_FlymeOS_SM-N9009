.class abstract Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;
.super Ljava/lang/Object;
.source "TwAbsAddDeleteAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    }
.end annotation


# static fields
.field static SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

.field static START_SCALE_FACTOR:F

.field static TRANSLATION_DURATION:I


# instance fields
.field mBitmapUpdateBounds:Landroid/graphics/Rect;

.field mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mDeleteRunnable:Ljava/lang/Runnable;

.field mGhostViewSnapshots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHostView:Landroid/view/View;

.field mInsertRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x190

    sput v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->TRANSLATION_DURATION:I

    .line 22
    const v0, 0x3e99999a    # 0.3f

    sput v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    .line 23
    new-instance v0, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->mBitmapUpdateBounds:Landroid/graphics/Rect;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$1;-><init>(Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method


# virtual methods
.method abstract deleteFromAdapterCompleted()V
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 122
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 127
    :cond_0
    return-void

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;

    .line 125
    .local v1, "vInfo":Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;
    iget-object v2, v1, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method getNewPosition(ILjava/util/ArrayList;)I
    .locals 4
    .param p1, "oldPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "deletedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v1, p1

    .line 68
    .local v1, "newPosition":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 69
    .local v2, "pos":I
    if-ge v2, p1, :cond_0

    .line 70
    add-int/lit8 v1, v1, -0x1

    .line 74
    goto :goto_0

    .line 75
    .end local v2    # "pos":I
    :cond_0
    return v1
.end method

.method getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    .locals 2
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<*",
            "Ljava/lang/Float;",
            ">;F)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<*Ljava/lang/Float;>;"
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getShiftCount(ILjava/util/ArrayList;)I
    .locals 4
    .param p1, "currentPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 54
    .local v2, "shiftCount":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 55
    .local v1, "pos":I
    if-ge v1, p1, :cond_0

    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_0

    .line 61
    .end local v1    # "pos":I
    :cond_0
    return v2
.end method

.method abstract insertIntoAdapterCompleted()V
.end method

.method abstract setDelete(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract setDeletePending(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract setInsert(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract setInsertPending(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

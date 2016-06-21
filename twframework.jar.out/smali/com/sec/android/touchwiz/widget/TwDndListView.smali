.class public Lcom/sec/android/touchwiz/widget/TwDndListView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwDndListView.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwDndListView"


# instance fields
.field private mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwDndListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    .line 59
    return-void
.end method


# virtual methods
.method public getDragGrabHandlePaddingBottom()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->getDragGrabHandlePaddingBottom()I

    move-result v0

    return v0
.end method

.method public getDragGrabHandlePaddingLeft()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->getDragGrabHandlePaddingLeft()I

    move-result v0

    return v0
.end method

.method public getDragGrabHandlePaddingRight()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->getDragGrabHandlePaddingRight()I

    move-result v0

    return v0
.end method

.method public getDragGrabHandlePaddingTop()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->getDragGrabHandlePaddingTop()I

    move-result v0

    return v0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->getDragView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isDndMode()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->isDndMode()Z

    move-result v0

    return v0
.end method

.method public onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "parent":Lcom/sec/android/touchwiz/widget/TwAdapterView;, "Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V
    .locals 2
    .param p1, "dndController"    # Lcom/sec/android/touchwiz/widget/TwDndController;

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDndController(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;)V

    .line 134
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwDndListView$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/touchwiz/widget/TwDndListView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwDndListView;Lcom/sec/android/touchwiz/widget/TwDndController;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDndController(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndController;)V

    goto :goto_0
.end method

.method public setDndListener(Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDndListener(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;)V

    .line 158
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwDndListView$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/touchwiz/widget/TwDndListView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwDndListView;Lcom/sec/android/touchwiz/widget/TwDndListView$TwDndListener;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDndListener(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndListener;)V

    goto :goto_0
.end method

.method public setDndMode(Z)V
    .locals 1
    .param p1, "dndMode"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDndMode(Z)V

    .line 77
    return-void
.end method

.method public setDragGrabHandleDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDragGrabHandleDrawable(I)V

    .line 168
    return-void
.end method

.method public setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    return-void
.end method

.method public setDragGrabHandlePadding(IIII)V
    .locals 1
    .param p1, "paddingLeft"    # I
    .param p2, "paddingTop"    # I
    .param p3, "paddingRight"    # I
    .param p4, "paddingBottom"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDragGrabHandlePadding(IIII)V

    .line 202
    return-void
.end method

.method public setDragGrabHandlePositionGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDragGrabHandlePositionGravity(I)V

    .line 189
    return-void
.end method

.method public setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "item"    # Landroid/graphics/Bitmap;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDragItemBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    return-void
.end method

.method public setDragViewAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->setDragViewAlpha(I)V

    .line 105
    return-void
.end method

.method public startDrag()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwDndListView;->mDndAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->startDrag()Z

    move-result v0

    return v0
.end method

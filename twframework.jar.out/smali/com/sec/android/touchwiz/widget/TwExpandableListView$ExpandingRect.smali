.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpandingRect"
.end annotation


# instance fields
.field destinationRect:Landroid/graphics/RectF;

.field endRect:Landroid/graphics/RectF;

.field startY:I


# direct methods
.method constructor <init>(ILandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "startY"    # I
    .param p2, "endRect"    # Landroid/graphics/RectF;
    .param p3, "destRect"    # Landroid/graphics/RectF;

    .prologue
    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1287
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;->startY:I

    .line 1288
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;->endRect:Landroid/graphics/RectF;

    .line 1289
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    .line 1290
    return-void
.end method


# virtual methods
.method update(F)V
    .locals 4
    .param p1, "fraction"    # F

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;->endRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1294
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;->endRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1296
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;->startY:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;->endRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;->startY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1297
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;->destinationRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ExpandingRect;->endRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1298
    return-void
.end method

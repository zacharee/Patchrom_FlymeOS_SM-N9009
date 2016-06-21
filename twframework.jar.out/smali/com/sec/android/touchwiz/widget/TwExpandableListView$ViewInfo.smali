.class Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;
.super Ljava/lang/Object;
.source "TwExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewInfo"
.end annotation


# instance fields
.field bottom:I

.field left:I

.field right:I

.field snapshot:Landroid/graphics/drawable/BitmapDrawable;

.field top:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1767
    invoke-static {p1}, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    .line 1768
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->top:I

    .line 1769
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->bottom:I

    .line 1770
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->left:I

    .line 1771
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->right:I

    .line 1773
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->snapshot:Landroid/graphics/drawable/BitmapDrawable;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->left:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->top:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->right:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListView$ViewInfo;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 1774
    return-void
.end method

.class Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;
.super Ljava/lang/Object;
.source "TwGridViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwGridViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemHolder"
.end annotation


# instance fields
.field public cloneView:Landroid/view/View;

.field public col:I

.field public prevPos:[F

.field public prevSize:[I

.field public row:I

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "col"    # I
    .param p3, "row"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1791
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->col:I

    .line 1792
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->row:I

    .line 1793
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    .line 1795
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->prevSize:[I

    .line 1796
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->prevPos:[F

    .line 1798
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->cloneView:Landroid/view/View;

    .line 1802
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    .line 1803
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->col:I

    .line 1804
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->row:I

    .line 1805
    return-void
.end method

.method public constructor <init>(Landroid/view/View;[I[F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "prevSize"    # [I
    .param p3, "prevPos"    # [F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1791
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->col:I

    .line 1792
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->row:I

    .line 1793
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    .line 1795
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->prevSize:[I

    .line 1796
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->prevPos:[F

    .line 1798
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->cloneView:Landroid/view/View;

    .line 1809
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->view:Landroid/view/View;

    .line 1810
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->prevSize:[I

    .line 1811
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwGridViewEx$ItemHolder;->prevPos:[F

    .line 1812
    return-void
.end method

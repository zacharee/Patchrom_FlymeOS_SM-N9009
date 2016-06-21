.class Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "TwPaperLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutParams"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;II)V
    .locals 1
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    .line 1156
    invoke-direct {p0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->mView:Landroid/view/View;

    .line 1157
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    .line 1151
    invoke-direct {p0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->mView:Landroid/view/View;

    .line 1152
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p2, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    .line 1161
    invoke-direct {p0, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->mView:Landroid/view/View;

    .line 1162
    return-void
.end method


# virtual methods
.method public getLeft()I
    .locals 3

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$600(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRight()I
    .locals 3

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$600(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$600(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)I

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 3

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$600(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->mView:Landroid/view/View;

    .line 1167
    return-void
.end method

.method public setX(F)V
    .locals 3
    .param p1, "x"    # F

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFrameWidth:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$600(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$LayoutParams;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 1192
    return-void
.end method

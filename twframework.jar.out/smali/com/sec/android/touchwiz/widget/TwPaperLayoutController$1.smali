.class Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$1;
.super Ljava/lang/Object;
.source "TwPaperLayoutController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->startMagneticAnimation(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$DIRECTION;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)V
    .locals 0

    .prologue
    .line 832
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 867
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnAnimation:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$002(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;Z)Z

    .line 868
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    # invokes: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->detachChild()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$100(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)V

    .line 869
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 846
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    const/4 v5, 0x0

    # setter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnAnimation:Z
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$002(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;Z)Z

    .line 848
    const/4 v1, 0x0

    .line 849
    .local v1, "left":I
    const/4 v2, 0x0

    .line 851
    .local v2, "right":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 853
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 854
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v5

    float-to-int v5, v5

    add-int v1, v4, v5

    .line 855
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v5

    float-to-int v5, v5

    add-int v2, v4, v5

    .line 856
    invoke-virtual {v3, v1}, Landroid/view/View;->setLeft(I)V

    .line 857
    invoke-virtual {v3, v2}, Landroid/view/View;->setRight(I)V

    .line 858
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 851
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 861
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$1;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    # invokes: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->detachChild()V
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$100(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)V

    .line 862
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 841
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 836
    return-void
.end method

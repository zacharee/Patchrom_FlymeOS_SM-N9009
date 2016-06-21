.class Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;
.super Ljava/lang/Object;
.source "TwPaperLayoutController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlickByXAnimationListener"
.end annotation


# instance fields
.field private mIsLeft:Z

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;ZI)V
    .locals 1
    .param p2, "left"    # Z
    .param p3, "intensity"    # I

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1071
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->mIsLeft:Z

    .line 1075
    iput-boolean p2, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->mIsLeft:Z

    .line 1076
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1082
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 12
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1087
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v3

    .line 1089
    .local v3, "gallery":Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->mIsLeft:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 1091
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    iget v6, v8, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    .line 1092
    .local v6, "prevPosition":I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I
    invoke-static {v9}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$300(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)I

    move-result v9

    iput v9, v8, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    .line 1093
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v0

    .line 1094
    .local v0, "childCount":I
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    move v7, v6

    .end local v6    # "prevPosition":I
    .local v7, "prevPosition":I
    :goto_0
    if-lez v4, :cond_0

    .line 1095
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    add-int/lit8 v6, v7, -0x1

    .end local v7    # "prevPosition":I
    .restart local v6    # "prevPosition":I
    invoke-virtual {v8, v4, v7, v10}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->requestDetachViewsFromParent(IIZ)V

    .line 1094
    add-int/lit8 v4, v4, -0x1

    move v7, v6

    .end local v6    # "prevPosition":I
    .restart local v7    # "prevPosition":I
    goto :goto_0

    .line 1097
    :cond_0
    invoke-virtual {v3, v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1098
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v8

    float-to-int v2, v8

    .line 1099
    .local v2, "curX":I
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1100
    .local v5, "left":I
    invoke-virtual {v1, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 1101
    sub-int v8, v2, v5

    invoke-virtual {v1, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1103
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->refreshCaching()V

    .line 1104
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    # setter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z
    invoke-static {v8, v10}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$402(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;Z)Z

    move v6, v7

    .line 1125
    .end local v7    # "prevPosition":I
    .restart local v6    # "prevPosition":I
    :goto_1
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1127
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getOnScrollListener()Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;

    move-result-object v8

    invoke-interface {v8, v3, v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwGalleryEx;I)V

    .line 1128
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    # setter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mScrollState:I
    invoke-static {v8, v10}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$502(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;I)I

    .line 1130
    :cond_1
    return-void

    .line 1109
    .end local v0    # "childCount":I
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "curX":I
    .end local v4    # "i":I
    .end local v5    # "left":I
    .end local v6    # "prevPosition":I
    :cond_2
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    iget v6, v8, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    .line 1110
    .restart local v6    # "prevPosition":I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    # getter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mDestPositionOnFling:I
    invoke-static {v9}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$300(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;)I

    move-result v9

    iput v9, v8, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mFirstPosition:I

    .line 1111
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildCount()I

    move-result v0

    .line 1112
    .restart local v0    # "childCount":I
    add-int/lit8 v4, v0, -0x2

    .restart local v4    # "i":I
    :goto_2
    if-ltz v4, :cond_3

    .line 1113
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    add-int v9, v6, v4

    invoke-virtual {v8, v4, v9, v10}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->requestDetachViewsFromParent(IIZ)V

    .line 1112
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1115
    :cond_3
    invoke-virtual {v3, v10}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1116
    .restart local v1    # "childView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v8

    float-to-int v2, v8

    .line 1117
    .restart local v2    # "curX":I
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1118
    .restart local v5    # "left":I
    invoke-virtual {v1, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 1119
    sub-int v8, v2, v5

    invoke-virtual {v1, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1121
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->refreshCaching()V

    .line 1122
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController$FlickByXAnimationListener;->this$0:Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;

    # setter for: Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->mIsOnFling:Z
    invoke-static {v8, v10}, Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;->access$402(Lcom/sec/android/touchwiz/widget/TwPaperLayoutController;Z)Z

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1136
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1142
    return-void
.end method

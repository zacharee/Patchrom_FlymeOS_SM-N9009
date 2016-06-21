.class Lcom/sec/android/touchwiz/utils/TwScaleUpTransit$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwScaleUpTransit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->createMainWindowAnimatorOut(Landroid/app/Activity;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;

.field final synthetic val$decorView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit$1;->this$0:Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;

    iput-object p2, p0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit$1;->val$decorView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 188
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit$1;->this$0:Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->getReverseAnimationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit$1;->this$0:Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit;->isTransitCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit$1;->val$decorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit$1;->val$decorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 191
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwScaleUpTransit$1;->val$decorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 193
    :cond_0
    return-void
.end method

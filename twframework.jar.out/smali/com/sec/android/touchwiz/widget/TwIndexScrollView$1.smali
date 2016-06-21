.class Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;
.super Ljava/lang/Object;
.source "TwIndexScrollView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->startAnimation(Ljava/lang/Object;IIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

.field final synthetic val$animSet:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Landroid/animation/AnimatorSet;)V
    .locals 0

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->val$animSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1173
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->val$animSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 1178
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->val$animSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1179
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mAnimEnd:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$702(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Z)Z

    .line 1180
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1190
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwIndexScrollView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->mAnimEnd:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->access$702(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;Z)Z

    .line 1185
    return-void
.end method

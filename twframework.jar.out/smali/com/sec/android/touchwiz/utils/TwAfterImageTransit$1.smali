.class Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwAfterImageTransit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/utils/TwAfterImageTransit;->createOverlayViewAnimatorOut(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/utils/TwAfterImageTransit;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/utils/TwAfterImageTransit;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$1;->this$0:Lcom/sec/android/touchwiz/utils/TwAfterImageTransit;

    iput-object p2, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwAfterImageTransit$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 179
    return-void
.end method

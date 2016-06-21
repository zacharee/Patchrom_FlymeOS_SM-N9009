.class Lcom/sec/android/touchwiz/utils/TwTransit$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwTransit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/utils/TwTransit;->createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/utils/TwTransit;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit$8;->this$0:Lcom/sec/android/touchwiz/utils/TwTransit;

    iput-object p2, p0, Lcom/sec/android/touchwiz/utils/TwTransit$8;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 881
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit$8;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 882
    return-void
.end method

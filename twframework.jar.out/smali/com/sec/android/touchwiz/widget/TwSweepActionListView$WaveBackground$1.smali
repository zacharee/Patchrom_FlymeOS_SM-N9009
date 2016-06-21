.class Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground$1;
.super Ljava/lang/Object;
.source "TwSweepActionListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->initWaveParams(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;)V
    .locals 0

    .prologue
    .line 1504
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground$1;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 1508
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 1510
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground$1;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground$1;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->access$3200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;)F

    move-result v2

    mul-float/2addr v2, v0

    mul-float/2addr v2, v4

    # setter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->incrementYdown:F
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->access$3102(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;F)F

    .line 1511
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground$1;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    neg-float v2, v0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground$1;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->access$3200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;)F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    # setter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->incrementYup:F
    invoke-static {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->access$3302(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;F)F

    .line 1513
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground$1;->this$1:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    iget-object v1, v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->invalidateCurrentActionView()V
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$3400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    .line 1514
    return-void
.end method

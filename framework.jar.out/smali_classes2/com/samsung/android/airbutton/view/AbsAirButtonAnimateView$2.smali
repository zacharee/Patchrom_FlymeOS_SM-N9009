.class Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;
.super Ljava/lang/Object;
.source "AbsAirButtonAnimateView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 276
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 269
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    # invokes: Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->shouldSendItemSelectedNotiFirst()Z
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->access$100(Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->finish(ZZ)V

    .line 273
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->finish(ZZ)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 265
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    # invokes: Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->shouldSendItemSelectedNotiFirst()Z
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->access$100(Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView$2;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->finish(ZZ)V

    .line 262
    :cond_0
    return-void
.end method

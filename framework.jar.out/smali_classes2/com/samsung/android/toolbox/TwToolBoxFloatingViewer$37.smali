.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$37;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->prepareToolBoxLinear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    .prologue
    .line 1828
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$37;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1850
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1839
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$37;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1840
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$37;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setVisibility(I)V

    .line 1846
    :goto_0
    return-void

    .line 1842
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$37;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1844
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1848
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1832
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$37;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$2200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1835
    :goto_0
    return-void

    .line 1833
    :catch_0
    move-exception v0

    goto :goto_0
.end method

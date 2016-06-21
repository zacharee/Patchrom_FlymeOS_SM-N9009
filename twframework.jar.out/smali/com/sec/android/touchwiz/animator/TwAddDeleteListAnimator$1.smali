.class Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;
.super Ljava/lang/Object;
.source "TwAddDeleteListAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->deleteFromAdapterCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mDeleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mDeleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 150
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.class Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$1;
.super Ljava/lang/Object;
.source "TwRemoveUndoListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$1;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$1;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # getter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setEnabled(Z)V

    .line 481
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$1;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->mPendingItemRemoval:Z
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$102(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;Z)Z

    .line 482
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7$1;->this$1:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator$7;->this$0:Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;

    # invokes: Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->removeCachedBitmap()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;->access$2300(Lcom/sec/android/touchwiz/animator/TwRemoveUndoListAnimator;)V

    .line 483
    return-void
.end method

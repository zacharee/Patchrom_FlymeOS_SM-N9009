.class Lcom/sec/android/touchwiz/widget/TwFastScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwFastScroller;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwFastScroller;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller$2;->this$0:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 235
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller$2;->this$0:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwFastScroller$2;->this$0:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwFastScroller;->mShowingPrimary:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->access$100(Lcom/sec/android/touchwiz/widget/TwFastScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/sec/android/touchwiz/widget/TwFastScroller;->mShowingPrimary:Z
    invoke-static {v1, v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->access$102(Lcom/sec/android/touchwiz/widget/TwFastScroller;Z)Z

    .line 236
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

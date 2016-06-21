.class Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TwHorizontalFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 235
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mShowingPrimary:Z
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->access$100(Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->mShowingPrimary:Z
    invoke-static {v1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;->access$102(Lcom/sec/android/touchwiz/widget/TwHorizontalFastScroller;Z)Z

    .line 236
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

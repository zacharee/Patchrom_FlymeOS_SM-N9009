.class Lcom/sec/android/touchwiz/widget/TwGridView$3;
.super Ljava/lang/Object;
.source "TwGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwGridView;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwGridView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwGridView;)V
    .locals 0

    .prologue
    .line 1990
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwGridView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->access$000(Lcom/sec/android/touchwiz/widget/TwGridView;)Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->speakDescriptionForAccessibility()V

    .line 1993
    return-void
.end method

.class Lcom/sec/android/touchwiz/widget/TwListView$3;
.super Ljava/lang/Object;
.source "TwListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwListView;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwListView;)V
    .locals 0

    .prologue
    .line 3722
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwListView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3724
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwListView$3;->this$0:Lcom/sec/android/touchwiz/widget/TwListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndListAnimator;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->access$200(Lcom/sec/android/touchwiz/widget/TwListView;)Lcom/sec/android/touchwiz/animator/TwDndListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndListAnimator;->speakDescriptionForAccessibility()V

    .line 3725
    return-void
.end method

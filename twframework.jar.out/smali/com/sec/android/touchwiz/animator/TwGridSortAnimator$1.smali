.class Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$1;
.super Ljava/lang/Object;
.source "TwGridSortAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->sortTheGrid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator$1;->this$0:Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;

    # invokes: Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->startFadeInTranslateAnim()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;->access$000(Lcom/sec/android/touchwiz/animator/TwGridSortAnimator;)V

    .line 95
    const/4 v0, 0x1

    return v0
.end method

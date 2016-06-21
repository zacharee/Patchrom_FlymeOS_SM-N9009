.class Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;
.super Ljava/lang/Object;
.source "TwSweepActionListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 176
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->createSweepContainerView(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->access$200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Landroid/content/Context;)V

    .line 178
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

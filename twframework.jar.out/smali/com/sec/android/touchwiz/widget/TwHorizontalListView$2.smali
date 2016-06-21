.class Lcom/sec/android/touchwiz/widget/TwHorizontalListView$2;
.super Ljava/lang/Object;
.source "TwHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->onFocusChanged(ZILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;)V
    .locals 0

    .prologue
    .line 3760
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3762
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$2;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->access$200(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;)Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->speakDescriptionForAccessibility()V

    .line 3763
    return-void
.end method

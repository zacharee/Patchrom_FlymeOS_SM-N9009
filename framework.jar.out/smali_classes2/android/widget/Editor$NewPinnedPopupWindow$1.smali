.class Landroid/widget/Editor$NewPinnedPopupWindow$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$NewPinnedPopupWindow;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$NewPinnedPopupWindow;

.field final synthetic val$menuItemDiff:I


# direct methods
.method constructor <init>(Landroid/widget/Editor$NewPinnedPopupWindow;I)V
    .locals 0

    .prologue
    .line 3532
    iput-object p1, p0, Landroid/widget/Editor$NewPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$NewPinnedPopupWindow;

    iput p2, p0, Landroid/widget/Editor$NewPinnedPopupWindow$1;->val$menuItemDiff:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3534
    iget-object v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$NewPinnedPopupWindow;

    iget-object v1, v1, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow$1;->val$menuItemDiff:I

    mul-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 3536
    .local v0, "t":I
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 3538
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$NewPinnedPopupWindow;

    iget-object v1, v1, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    sub-int/2addr v0, v1

    .line 3539
    if-gtz v0, :cond_0

    .line 3540
    iget-object v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$NewPinnedPopupWindow;

    iget-object v1, v1, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 3548
    :goto_1
    return-void

    .line 3543
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow$1;->this$1:Landroid/widget/Editor$NewPinnedPopupWindow;

    iget-object v1, v1, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 3545
    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3547
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.class Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;
.super Ljava/lang/Object;
.source "TwHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemInfoTag"
.end annotation


# instance fields
.field protected mChildrenNumberTotal:I

.field protected mChildrenVisibilityBitsGone:J

.field protected mConfiguration:Landroid/content/res/Configuration;

.field protected mHeightSpec:I

.field protected mWidthSpec:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 4246
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4247
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;->mChildrenVisibilityBitsGone:J

    .line 4248
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;->mChildrenNumberTotal:I

    .line 4250
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    .line 4251
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 4253
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;->mWidthSpec:I

    .line 4254
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;->mHeightSpec:I

    .line 4255
    return-void
.end method

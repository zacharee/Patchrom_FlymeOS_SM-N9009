.class Lcom/sec/android/touchwiz/widget/TwTabHost$LabelAndIconIndicatorStrategy;
.super Ljava/lang/Object;
.source "TwTabHost.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwTabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelAndIconIndicatorStrategy"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 782
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 784
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 785
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/sec/android/touchwiz/widget/TwTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/touchwiz/widget/TwTabHost;
    .param p2, "x1"    # Ljava/lang/CharSequence;
    .param p3, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p4, "x3"    # Lcom/sec/android/touchwiz/widget/TwTabHost$1;

    .prologue
    .line 777
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelAndIconIndicatorStrategy;-><init>(Lcom/sec/android/touchwiz/widget/TwTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 788
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 790
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 792
    .local v2, "tabIndicator":Landroid/view/View;
    sget v4, Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabIndicatorType:I

    if-nez v4, :cond_0

    .line 793
    const v4, 0x2030011

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    # getter for: Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwTabHost;->access$1000(Lcom/sec/android/touchwiz/widget/TwTabHost;)Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 802
    :goto_0
    const v4, 0x2040029

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 803
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    const v4, 0x2040015

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 806
    .local v0, "iconView":Landroid/widget/ImageView;
    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 807
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 808
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 810
    return-object v2

    .line 797
    .end local v0    # "iconView":Landroid/widget/ImageView;
    .end local v3    # "tv":Landroid/widget/TextView;
    :cond_0
    const v4, 0x2030009

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/sec/android/touchwiz/widget/TwTabHost;

    # getter for: Lcom/sec/android/touchwiz/widget/TwTabHost;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwTabHost;->access$1000(Lcom/sec/android/touchwiz/widget/TwTabHost;)Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public setIconAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 815
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 818
    :cond_0
    return-void
.end method
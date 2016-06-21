.class public Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;
.super Ljava/lang/Object;
.source "TwLangIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomThemeSet"
.end annotation


# instance fields
.field private bgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

.field private bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

.field private handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

.field private handleTextColorPressed:I

.field private separatorColor:I

.field private textColorDimmed:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bgIndexRectDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgDrawableDefault"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bgDrawableDefaultMoreDepth"    # Landroid/graphics/drawable/Drawable;
    .param p4, "handleBgScrollDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 598
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 599
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 600
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 601
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    .line 602
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    .line 603
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    .line 606
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 607
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 608
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 609
    iput-object p4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 610
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    .line 611
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    .line 612
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    .line 613
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 2
    .param p1, "bgIndexRectDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bgDrawableDefault"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bgDrawableDefaultMoreDepth"    # Landroid/graphics/drawable/Drawable;
    .param p4, "handleBgScrollDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "separatorColor"    # I
    .param p6, "textColorDimmed"    # I
    .param p7, "handleTextColorPressed"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 598
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 599
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 600
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 601
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    .line 602
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    .line 603
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    .line 617
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 618
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 619
    iput-object p3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    .line 620
    iput-object p4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 621
    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    .line 622
    iput p6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    .line 623
    iput p7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    .line 624
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefault:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->bgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 595
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->separatorColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 595
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->textColorDimmed:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;

    .prologue
    .line 595
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$CustomThemeSet;->handleTextColorPressed:I

    return v0
.end method

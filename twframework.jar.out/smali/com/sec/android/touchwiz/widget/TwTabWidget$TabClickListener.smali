.class Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "TwTabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwTabWidget;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwTabWidget;I)V
    .locals 0
    .param p2, "tabIndex"    # I

    .prologue
    .line 551
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;->mTabIndex:I

    .line 553
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwTabWidget;ILcom/sec/android/touchwiz/widget/TwTabWidget$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/touchwiz/widget/TwTabWidget;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/sec/android/touchwiz/widget/TwTabWidget$1;

    .prologue
    .line 547
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;-><init>(Lcom/sec/android/touchwiz/widget/TwTabWidget;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidget;

    # getter for: Lcom/sec/android/touchwiz/widget/TwTabWidget;->mSelectionChangedListener:Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidget;)Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidget$TabClickListener;->mTabIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 557
    return-void
.end method

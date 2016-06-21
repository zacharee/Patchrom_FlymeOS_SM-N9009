.class Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;
.super Ljava/lang/Object;
.source "TwHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusSelector"
.end annotation


# instance fields
.field private mPosition:I

.field private mPositionLeft:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;)V
    .locals 0

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;Lcom/sec/android/touchwiz/widget/TwHorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
    .param p2, "x1"    # Lcom/sec/android/touchwiz/widget/TwHorizontalListView$1;

    .prologue
    .line 1162
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;->this$0:Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;->mPosition:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;->mPositionLeft:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectionFromTop(II)V

    .line 1174
    return-void
.end method

.method public setup(II)Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;
    .locals 0
    .param p1, "position"    # I
    .param p2, "left"    # I

    .prologue
    .line 1167
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;->mPosition:I

    .line 1168
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;->mPositionLeft:I

    .line 1169
    return-object p0
.end method

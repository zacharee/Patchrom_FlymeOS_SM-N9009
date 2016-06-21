.class Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;
.super Ljava/lang/Object;
.source "TwDndAnimationCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;,
        Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;,
        Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemSelectHighlightingAnimation;,
        Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$TranslateItemAnimation;,
        Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimation;
    }
.end annotation


# static fields
.field static final SELECT_HIGHLIGHT_ANIM_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String; = "TwDndAnimationCore"

.field static final TRANSLATE_ITEM_ANIM_DURATION:I = 0x12c


# instance fields
.field itemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

.field private mItemAnimationListener:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;-><init>(Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->itemAnimator:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimator;

    .line 29
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->mView:Landroid/view/View;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;)Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->mItemAnimationListener:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;

    return-object v0
.end method


# virtual methods
.method setAnimationListener(Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwDndAnimationCore;->mItemAnimationListener:Lcom/sec/android/touchwiz/animator/TwDndAnimationCore$ItemAnimationListener;

    .line 34
    return-void
.end method

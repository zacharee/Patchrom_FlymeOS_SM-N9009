.class public Lcom/sec/android/touchwiz/utils/TwTransit;
.super Ljava/lang/Object;
.source "TwTransit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;,
        Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;,
        Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:J = 0x2eeL

.field private static final DELAY:J = 0x64L

.field protected static final TWTRANSIT_ACTION_ALPHA:Ljava/lang/String; = "TwTransitActionAlpha"

.field protected static final TWTRANSIT_ACTION_NONE:Ljava/lang/String; = "TwTransitActionNone"

.field protected static final TWTRANSIT_ACTION_SCALE:Ljava/lang/String; = "TwTransitActionScale"

.field protected static final TWTRANSIT_ACTION_TRANSLATE:Ljava/lang/String; = "TwTransitActionTranslate"

.field private static final TWTRANSIT_BROADCAST_MESSAGE_FILTER_NAME:Ljava/lang/String; = "TwTransitBroadcastMessageFiltername"

.field private static final TWTRANSIT_BROADCAST_MESSAGE_IS_CANCELED:Ljava/lang/String; = "TwTransitBroadcastMessageIsCanceled"

.field protected static final TWTRANSIT_ID_ACTIONBAR_LOGO:Ljava/lang/String; = "TwTransitIdActionBarLogo"

.field protected static final TWTRANSIT_ID_ACTIONBAR_SUBTITLE:Ljava/lang/String; = "TwTransitIdActionBarSubTitle"

.field protected static final TWTRANSIT_ID_ACTIONBAR_TITLE:Ljava/lang/String; = "TwTransitIdActionBarTitle"

.field public static final TWTRANSIT_TYPE_AFTERIMAGE:Ljava/lang/String; = "TwTransitTypeAfterImage"

.field public static final TWTRANSIT_TYPE_GLIDE:Ljava/lang/String; = "TwTransitTypeGlide"

.field private static final TWTRANSIT_TYPE_KEY:Ljava/lang/String; = "TwTransitTypeKey"

.field public static final TWTRANSIT_TYPE_SCALE_UP:Ljava/lang/String; = "TwTransitTypeScaleUp"

.field public static final TWTRANSIT_TYPE_UNDEFINED:Ljava/lang/String; = "TwTransitTypeUndefined"

.field public static final VERSION:Ljava/lang/String; = "1.0.0a"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAnimatorSetIn:Landroid/animation/AnimatorSet;

.field protected mAnimatorSetOut:Landroid/animation/AnimatorSet;

.field protected mBoundsInfo:Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

.field protected mBoundsInfoActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIdMapIn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCanceled:Z

.field protected mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

.field private mParcelables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;

.field private mReverseAnimationEnabled:Z

.field protected mTextInfo:Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;

.field protected mTextInfoActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserTransitEnabled:Z

.field private mViewMapIn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mViewMapOut:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWindowLayoutIn:Landroid/widget/FrameLayout;

.field private mWindowLayoutOut:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mUserTransitEnabled:Z

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mReceiver:Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;

    .line 127
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mReverseAnimationEnabled:Z

    .line 128
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mIsCanceled:Z

    .line 173
    if-nez p1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "TwTransit() parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    .line 177
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/utils/TwTransit;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/utils/TwTransit;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mWindowLayoutIn:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/touchwiz/utils/TwTransit;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/utils/TwTransit;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mWindowLayoutIn:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/utils/TwTransit;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/utils/TwTransit;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->makeLayoutAndWindow()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/utils/TwTransit;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/utils/TwTransit;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapIn:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/touchwiz/utils/TwTransit;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/utils/TwTransit;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mIsCanceled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/utils/TwTransit;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/utils/TwTransit;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mWindowLayoutOut:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/utils/TwTransit;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/utils/TwTransit;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->isValidActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/utils/TwTransit;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/utils/TwTransit;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mReverseAnimationEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/touchwiz/utils/TwTransit;Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;)Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/utils/TwTransit;
    .param p1, "x1"    # Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mReceiver:Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;

    return-object p1
.end method

.method private composeAnimatorSetIn()V
    .locals 3

    .prologue
    .line 540
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_0

    .line 541
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 545
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/sec/android/touchwiz/utils/TwTransit$3;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/touchwiz/utils/TwTransit$3;-><init>(Lcom/sec/android/touchwiz/utils/TwTransit;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 572
    return-void
.end method

.method private composeAnimatorSetOut()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 510
    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_0

    .line 511
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    .line 514
    :cond_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_1

    .line 515
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    .line 518
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapOut:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapOut:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 519
    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapOut:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 520
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/View;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 521
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 522
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 523
    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapOut:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 524
    .local v0, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    new-array v4, v8, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v5, v2, v0}, Lcom/sec/android/touchwiz/utils/TwTransit;->createMainViewAnimatorOut(Landroid/app/Activity;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 526
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->needToCreateOverlayWindowOut()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 527
    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    new-array v4, v8, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mWindowLayoutOut:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v5, v6, v2, v0}, Lcom/sec/android/touchwiz/utils/TwTransit;->createOverlayViewAnimatorOut(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 533
    .end local v0    # "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/View;>;"
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    new-array v4, v8, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/utils/TwTransit;->createMainWindowAnimatorOut(Landroid/app/Activity;)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 534
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->needToCreateOverlayWindowOut()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 535
    iget-object v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    new-array v4, v8, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mWindowLayoutOut:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/touchwiz/utils/TwTransit;->createOverlayWindowAnimatorOut(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 537
    :cond_4
    return-void
.end method

.method private createOverlayWindowIn()V
    .locals 3

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->needToCreateOverlayWindowIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 476
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/sec/android/touchwiz/utils/TwTransit$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/touchwiz/utils/TwTransit$1;-><init>(Lcom/sec/android/touchwiz/utils/TwTransit;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 484
    .end local v0    # "contentView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private createOverlayWindowOut()V
    .locals 1

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->needToCreateOverlayWindowOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->makeLayoutAndWindow()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mWindowLayoutOut:Landroid/widget/FrameLayout;

    .line 471
    :cond_0
    return-void
.end method

.method public static getType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 140
    if-nez p0, :cond_1

    .line 141
    const-string v0, "TwTransitTypeUndefined"

    .line 148
    :cond_0
    :goto_0
    return-object v0

    .line 144
    :cond_1
    const-string v1, "TwTransitTypeKey"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 146
    const-string v0, "TwTransitTypeUndefined"

    goto :goto_0
.end method

.method private isValidActivity()Z
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mWindowLayoutIn:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mWindowLayoutIn:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mWindowLayoutOut:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mWindowLayoutOut:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeLayoutAndWindow()Landroid/widget/FrameLayout;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 487
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 488
    .local v1, "windowLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 491
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 492
    const/16 v2, 0x108

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 493
    const/16 v2, 0x3e8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 494
    iget-object v2, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    new-instance v2, Lcom/sec/android/touchwiz/utils/TwTransit$2;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/touchwiz/utils/TwTransit$2;-><init>(Lcom/sec/android/touchwiz/utils/TwTransit;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 506
    return-object v1
.end method

.method public static setType(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 159
    if-eqz p0, :cond_1

    .line 160
    const-string v1, "TwTransitTypeKey"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "oldType":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    :cond_0
    const-string v1, "TwTransitTypeKey"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    .end local v0    # "oldType":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private startInternalIn()V
    .locals 3

    .prologue
    .line 643
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 644
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/sec/android/touchwiz/utils/TwTransit$7;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/touchwiz/utils/TwTransit$7;-><init>(Lcom/sec/android/touchwiz/utils/TwTransit;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 693
    return-void
.end method

.method private startInternalOut()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 583
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mUserTransitEnabled:Z

    if-nez v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 588
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 589
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/sec/android/touchwiz/utils/TwTransit$4;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/utils/TwTransit$4;-><init>(Lcom/sec/android/touchwiz/utils/TwTransit;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 596
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    .line 597
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/sec/android/touchwiz/utils/TwTransit$5;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/utils/TwTransit$5;-><init>(Lcom/sec/android/touchwiz/utils/TwTransit;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 622
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 624
    .local v0, "decorView":Landroid/view/View;
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mReverseAnimationEnabled:Z

    if-eqz v1, :cond_3

    .line 625
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 638
    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mIsCanceled:Z

    .line 640
    .end local v0    # "decorView":Landroid/view/View;
    :cond_2
    return-void

    .line 631
    .restart local v0    # "decorView":Landroid/view/View;
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/touchwiz/utils/TwTransit$6;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/utils/TwTransit$6;-><init>(Lcom/sec/android/touchwiz/utils/TwTransit;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method protected bindImplicitIn()V
    .locals 0

    .prologue
    .line 705
    return-void
.end method

.method protected bindImplicitOut()V
    .locals 0

    .prologue
    .line 699
    return-void
.end method

.method varargs bindIn(Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "actions"    # [Ljava/lang/String;

    .prologue
    .line 415
    if-nez p1, :cond_0

    .line 416
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "id parameter cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 419
    :cond_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-nez v5, :cond_2

    .line 465
    :cond_1
    :goto_0
    return-void

    .line 423
    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapIn:Ljava/util/HashMap;

    if-nez v5, :cond_3

    .line 424
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapIn:Ljava/util/HashMap;

    .line 428
    :cond_3
    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mIdMapIn:Ljava/util/HashMap;

    if-nez v5, :cond_4

    .line 429
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mIdMapIn:Ljava/util/HashMap;

    .line 432
    :cond_4
    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mParcelables:Ljava/util/HashMap;

    if-nez v5, :cond_5

    .line 433
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mParcelables:Ljava/util/HashMap;

    .line 436
    :cond_5
    const-string v5, "TwTransitIdActionBarLogo"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 437
    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "home"

    const-string v7, "id"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 438
    .local v1, "homeId":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 447
    .end local v1    # "homeId":I
    :cond_6
    :goto_1
    if-eqz p2, :cond_1

    .line 448
    if-eqz p3, :cond_1

    array-length v5, p3

    if-lez v5, :cond_1

    .line 449
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 450
    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mParcelables:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mIdMapIn:Ljava/util/HashMap;

    invoke-virtual {v5, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v0, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, p3

    if-ge v2, v5, :cond_a

    .line 459
    aget-object v5, p3, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 439
    .end local v0    # "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :cond_8
    const-string v5, "TwTransitIdActionBarSubTitle"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 440
    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "action_bar_subtitle"

    const-string v7, "id"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 441
    .local v3, "subTitleId":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 442
    goto :goto_1

    .end local v3    # "subTitleId":I
    :cond_9
    const-string v5, "TwTransitIdActionBarTitle"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 443
    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "action_bar_title"

    const-string v7, "id"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 444
    .local v4, "titleId":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 462
    .end local v4    # "titleId":I
    .restart local v0    # "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    :cond_a
    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapIn:Ljava/util/HashMap;

    invoke-virtual {v5, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method varargs bindOut(Landroid/content/Intent;Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "actions"    # [Ljava/lang/String;

    .prologue
    .line 363
    if-nez p1, :cond_0

    .line 364
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "intent parameter cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 366
    :cond_0
    if-nez p2, :cond_1

    .line 367
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "id parameter cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 369
    :cond_1
    if-nez p3, :cond_2

    .line 370
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "view parameter cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 373
    :cond_2
    iget-object v4, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapOut:Ljava/util/HashMap;

    if-nez v4, :cond_3

    .line 374
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapOut:Ljava/util/HashMap;

    .line 378
    :cond_3
    iget-object v4, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mReceiver:Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;

    if-nez v4, :cond_4

    .line 379
    new-instance v4, Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;-><init>(Lcom/sec/android/touchwiz/utils/TwTransit;Lcom/sec/android/touchwiz/utils/TwTransit$1;)V

    iput-object v4, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mReceiver:Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;

    .line 380
    iget-object v4, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 381
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "className":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mReceiver:Lcom/sec/android/touchwiz/utils/TwTransit$TransitBroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 386
    const-string v4, "TwTransitBroadcastMessageFiltername"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 390
    instance-of v4, p3, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 391
    invoke-virtual {p0, p3}, Lcom/sec/android/touchwiz/utils/TwTransit;->getTextInfo(Landroid/view/View;)Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 396
    :goto_0
    if-eqz p4, :cond_7

    array-length v4, p4

    if-lez v4, :cond_7

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v0, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, p4

    if-ge v3, v4, :cond_6

    .line 400
    aget-object v4, p4, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 393
    .end local v0    # "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {p0, p3}, Lcom/sec/android/touchwiz/utils/TwTransit;->getBoundsInfo(Landroid/view/View;)Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 402
    .restart local v0    # "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    :cond_6
    iget-object v4, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapOut:Ljava/util/HashMap;

    invoke-virtual {v4, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .end local v0    # "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :cond_7
    return-void
.end method

.method protected createAnimatorIn(Ljava/lang/String;Landroid/view/View;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;Z)Landroid/animation/AnimatorSet;
    .locals 14
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "fromBounds"    # Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    .param p4, "toBounds"    # Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    .param p5, "isForward"    # Z

    .prologue
    .line 832
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 833
    :cond_0
    const/4 v5, 0x0

    .line 885
    :goto_0
    return-object v5

    .line 836
    :cond_1
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 837
    .local v5, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 838
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setPivotX(F)V

    .line 839
    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setPivotY(F)V

    .line 841
    const-string v10, "TwTransitActionAlpha"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 843
    if-eqz p5, :cond_3

    .line 844
    const-string v10, "alpha"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_0

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v12, 0x2ee

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 848
    .local v4, "alphaAnim":Landroid/animation/ObjectAnimator;
    :goto_1
    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v11, 0x40000000    # 2.0f

    invoke-direct {v10, v11}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 849
    const/4 v10, 0x1

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v5, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 879
    .end local v4    # "alphaAnim":Landroid/animation/ObjectAnimator;
    :cond_2
    :goto_2
    new-instance v10, Lcom/sec/android/touchwiz/utils/TwTransit$8;

    move-object/from16 v0, p2

    invoke-direct {v10, p0, v0}, Lcom/sec/android/touchwiz/utils/TwTransit$8;-><init>(Lcom/sec/android/touchwiz/utils/TwTransit;Landroid/view/View;)V

    invoke-virtual {v5, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 846
    :cond_3
    const-string v10, "alpha"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_1

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v12, 0x2ee

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .restart local v4    # "alphaAnim":Landroid/animation/ObjectAnimator;
    goto :goto_1

    .line 851
    .end local v4    # "alphaAnim":Landroid/animation/ObjectAnimator;
    :cond_4
    const-string v10, "TwTransitActionScale"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 853
    if-eqz p5, :cond_5

    .line 854
    move-object/from16 v0, p4

    iget v10, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mWidth:F

    move-object/from16 v0, p3

    iget v11, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mWidth:F

    div-float v6, v10, v11

    .line 855
    .local v6, "scaleX":F
    move-object/from16 v0, p4

    iget v10, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mHeight:F

    move-object/from16 v0, p3

    iget v11, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mHeight:F

    div-float v8, v10, v11

    .line 856
    .local v8, "scaleY":F
    const-string v10, "scaleX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    const/4 v12, 0x1

    aput v6, v11, v12

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v12, 0x2ee

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 857
    .local v7, "scaleXAnim":Landroid/animation/ObjectAnimator;
    const-string v10, "scaleY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    const/4 v12, 0x1

    aput v8, v11, v12

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v12, 0x2ee

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 864
    .local v9, "scaleYAnim":Landroid/animation/ObjectAnimator;
    :goto_3
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v9, v10, v11

    invoke-virtual {v5, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    .line 859
    .end local v6    # "scaleX":F
    .end local v7    # "scaleXAnim":Landroid/animation/ObjectAnimator;
    .end local v8    # "scaleY":F
    .end local v9    # "scaleYAnim":Landroid/animation/ObjectAnimator;
    :cond_5
    move-object/from16 v0, p3

    iget v10, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mWidth:F

    move-object/from16 v0, p4

    iget v11, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mWidth:F

    div-float v6, v10, v11

    .line 860
    .restart local v6    # "scaleX":F
    move-object/from16 v0, p3

    iget v10, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mHeight:F

    move-object/from16 v0, p4

    iget v11, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mHeight:F

    div-float v8, v10, v11

    .line 861
    .restart local v8    # "scaleY":F
    const-string v10, "scaleX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v6, v11, v12

    const/4 v12, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v12, 0x2ee

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 862
    .restart local v7    # "scaleXAnim":Landroid/animation/ObjectAnimator;
    const-string v10, "scaleY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v8, v11, v12

    const/4 v12, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v12, 0x2ee

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .restart local v9    # "scaleYAnim":Landroid/animation/ObjectAnimator;
    goto :goto_3

    .line 866
    .end local v6    # "scaleX":F
    .end local v7    # "scaleXAnim":Landroid/animation/ObjectAnimator;
    .end local v8    # "scaleY":F
    .end local v9    # "scaleYAnim":Landroid/animation/ObjectAnimator;
    :cond_6
    const-string v10, "TwTransitActionTranslate"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 868
    if-eqz p5, :cond_7

    .line 869
    const-string v10, "translationX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    move-object/from16 v0, p3

    iget v13, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mX:F

    aput v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p4

    iget v13, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mX:F

    aput v13, v11, v12

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v12, 0x2ee

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 870
    .local v2, "TranslateXAnim":Landroid/animation/ObjectAnimator;
    const-string v10, "translationY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    move-object/from16 v0, p3

    iget v13, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mY:F

    aput v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p4

    iget v13, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mY:F

    aput v13, v11, v12

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v12, 0x2ee

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 876
    .local v3, "TranslateYAnim":Landroid/animation/ObjectAnimator;
    :goto_4
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-virtual {v5, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_2

    .line 872
    .end local v2    # "TranslateXAnim":Landroid/animation/ObjectAnimator;
    .end local v3    # "TranslateYAnim":Landroid/animation/ObjectAnimator;
    :cond_7
    const-string v10, "translationX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    move-object/from16 v0, p4

    iget v13, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mX:F

    aput v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p3

    iget v13, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mX:F

    aput v13, v11, v12

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v12, 0x2ee

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 873
    .restart local v2    # "TranslateXAnim":Landroid/animation/ObjectAnimator;
    const-string v10, "translationY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    move-object/from16 v0, p4

    iget v13, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mY:F

    aput v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p3

    iget v13, v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;->mY:F

    aput v13, v11, v12

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const-wide/16 v12, 0x2ee

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .restart local v3    # "TranslateYAnim":Landroid/animation/ObjectAnimator;
    goto :goto_4

    .line 844
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 846
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected createMainViewAnimatorIn(Landroid/app/Activity;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 814
    .local p3, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createMainViewAnimatorOut(Landroid/app/Activity;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 767
    .local p3, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createMainWindowAnimatorIn(Landroid/app/Activity;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 800
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createMainWindowAnimatorOut(Landroid/app/Activity;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 753
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createOverlayViewAnimatorIn(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayWindow"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 791
    .local p4, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createOverlayViewAnimatorOut(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/ArrayList;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayWindow"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    .prologue
    .line 744
    .local p4, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createOverlayWindowAnimatorIn(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayWindow"    # Landroid/view/ViewGroup;

    .prologue
    .line 778
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createOverlayWindowAnimatorOut(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayWindow"    # Landroid/view/ViewGroup;

    .prologue
    .line 731
    const/4 v0, 0x0

    return-object v0
.end method

.method public finishIn()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 335
    :cond_0
    return-void
.end method

.method public finishOut()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 326
    :cond_1
    return-void
.end method

.method getBoundsInfo(Landroid/view/View;)Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 910
    if-nez p1, :cond_0

    .line 911
    const/4 v0, 0x0

    .line 917
    :goto_0
    return-object v0

    .line 914
    :cond_0
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 915
    .local v9, "location":[I
    invoke-virtual {p1, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 917
    new-instance v0, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    const/4 v1, 0x0

    aget v1, v9, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;-><init>(FFFFIIII)V

    goto :goto_0
.end method

.method getParcelables()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 899
    iget-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mParcelables:Ljava/util/HashMap;

    return-object v0
.end method

.method getReverseAnimationEnabled()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mReverseAnimationEnabled:Z

    return v0
.end method

.method getTextInfo(Landroid/view/View;)Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;
    .locals 21
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 934
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 935
    :cond_0
    const/4 v2, 0x0

    .line 954
    :goto_0
    return-object v2

    :cond_1
    move-object/from16 v19, p1

    .line 938
    check-cast v19, Landroid/widget/TextView;

    .line 939
    .local v19, "textView":Landroid/widget/TextView;
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 940
    .local v17, "location":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 942
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    .line 943
    .local v18, "textChar":Ljava/lang/CharSequence;
    const-string v11, ""

    .line 944
    .local v11, "textString":Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 945
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 948
    :cond_2
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v20

    .line 949
    .local v20, "typeFace":Landroid/graphics/Typeface;
    const/4 v15, 0x0

    .line 950
    .local v15, "fontStyle":I
    if-eqz v20, :cond_3

    .line 951
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Typeface;->getStyle()I

    move-result v15

    .line 954
    :cond_3
    new-instance v2, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;

    const/4 v3, 0x0

    aget v3, v17, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v17, v4

    int-to-float v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getTextSize()F

    move-result v12

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v13

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getGravity()I

    move-result v14

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v16

    invoke-direct/range {v2 .. v16}, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;-><init>(FFFFIIIILjava/lang/String;FIIIF)V

    goto :goto_0
.end method

.method getUserTransitEnabled()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mUserTransitEnabled:Z

    return v0
.end method

.method isTransitCanceled()Z
    .locals 1

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mIsCanceled:Z

    return v0
.end method

.method protected needToCreateOverlayWindowIn()Z
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method protected needToCreateOverlayWindowOut()Z
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public reverse()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 230
    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 231
    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 234
    :cond_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 235
    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 238
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 239
    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 242
    :cond_2
    iput-object v7, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    .line 243
    iput-object v7, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    .line 244
    iput-object v7, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    .line 246
    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "TwTransitBroadcastMessageFiltername"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "action":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v2, "broadcastIntent":Landroid/content/Intent;
    const-string v6, "TwTransitBroadcastMessageIsCanceled"

    iget-boolean v7, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mIsCanceled:Z

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapIn:Ljava/util/HashMap;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapIn:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 253
    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapIn:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 254
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/View;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 255
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 256
    .local v5, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mIdMapIn:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 257
    .local v3, "id":Ljava/lang/String;
    instance-of v6, v5, Landroid/widget/TextView;

    if-ne v6, v8, :cond_3

    .line 258
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/utils/TwTransit;->getTextInfo(Landroid/view/View;)Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 263
    :goto_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mViewMapIn:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 264
    .local v1, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Reverse"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 260
    .end local v1    # "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/utils/TwTransit;->getBoundsInfo(Landroid/view/View;)Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 269
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/View;>;"
    .end local v5    # "view":Landroid/view/View;
    :cond_4
    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/utils/TwTransit;->setReverseAnimationEnabled(Z)V

    .line 273
    invoke-direct {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->createOverlayWindowIn()V

    .line 275
    invoke-direct {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->composeAnimatorSetIn()V

    .line 276
    invoke-direct {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->startInternalIn()V

    .line 278
    iget-object v6, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 279
    return-void
.end method

.method protected reverseInternalIn(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 282
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 294
    :cond_2
    iput-object v2, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetIn:Landroid/animation/AnimatorSet;

    .line 295
    iput-object v2, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mAnimatorSetOut:Landroid/animation/AnimatorSet;

    .line 296
    iput-object v2, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mOverlayAnimatorSetOut:Landroid/animation/AnimatorSet;

    .line 298
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 299
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 300
    const-string v1, "TwTransitIDContentImage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    iput-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mBoundsInfo:Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    .line 301
    const-string v1, "TwTransitIdActionBarTitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;

    iput-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mTextInfo:Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;

    .line 303
    const-string v1, "TwTransitIDContentImageReverse"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mBoundsInfoActionList:Ljava/util/ArrayList;

    .line 304
    const-string v1, "TwTransitIdActionBarTitleReverse"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mTextInfoActionList:Ljava/util/ArrayList;

    .line 307
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/utils/TwTransit;->setReverseAnimationEnabled(Z)V

    .line 309
    invoke-direct {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->createOverlayWindowOut()V

    .line 311
    invoke-direct {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->composeAnimatorSetOut()V

    .line 312
    invoke-direct {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->startInternalOut()V

    .line 313
    return-void
.end method

.method setReverseAnimationEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 209
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mReverseAnimationEnabled:Z

    .line 211
    if-nez p1, :cond_0

    .line 212
    iput-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mBoundsInfo:Lcom/sec/android/touchwiz/utils/TwTransit$BoundsInfo;

    .line 213
    iput-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mTextInfo:Lcom/sec/android/touchwiz/utils/TwTransit$TextInfo;

    .line 215
    iput-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mBoundsInfoActionList:Ljava/util/ArrayList;

    .line 216
    iput-object v0, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mTextInfoActionList:Ljava/util/ArrayList;

    .line 218
    :cond_0
    return-void
.end method

.method setUserTransitEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/utils/TwTransit;->mUserTransitEnabled:Z

    .line 344
    return-void
.end method

.method public startIn()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/utils/TwTransit;->setReverseAnimationEnabled(Z)V

    .line 202
    invoke-direct {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->createOverlayWindowIn()V

    .line 203
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->bindImplicitIn()V

    .line 204
    invoke-direct {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->composeAnimatorSetIn()V

    .line 205
    invoke-direct {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->startInternalIn()V

    .line 206
    return-void
.end method

.method public startOut()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/utils/TwTransit;->setReverseAnimationEnabled(Z)V

    .line 188
    invoke-direct {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->createOverlayWindowOut()V

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->bindImplicitOut()V

    .line 190
    invoke-direct {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->composeAnimatorSetOut()V

    .line 191
    invoke-direct {p0}, Lcom/sec/android/touchwiz/utils/TwTransit;->startInternalOut()V

    .line 192
    return-void
.end method

.method protected updateStransitProgressValue(Landroid/animation/Animator;Ljava/lang/String;)F
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 818
    const/4 v0, 0x0

    return v0
.end method

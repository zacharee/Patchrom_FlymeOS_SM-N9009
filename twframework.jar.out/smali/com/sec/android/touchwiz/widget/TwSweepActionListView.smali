.class public Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.super Lcom/sec/android/touchwiz/widget/TwListView;
.source "TwSweepActionListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;,
        Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepAnimation;
    }
.end annotation


# static fields
.field private static final CLOSE_SWEEP_ACTION_BAR_DELAY_TIME:J = 0x190L

.field private static final CONTEXT_URGENT_AUTO_CLOSE_ANIMATION_DURATION:I = 0x190

.field private static final CONTEXT_URGENT_CLOSE_ANIMATION_DURATION:I = 0x258

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field private static final ITEMS_UNCLICKABLE_DURATION:I = 0x190

.field private static final SWEEP_ADJUSTMENT_MAX_VALUE:I = 0x23a

.field private static final SWEEP_FIRE_THRESHOLD_VALUE:F = 0.5f

.field static final TAG:Ljava/lang/String; = "TwSweepActionListView"

.field private static final VELOCITY_UNITS:I = 0x1f4


# instance fields
.field private final DEBUGABLE:Z

.field private final DEBUGABLE_COSINE_VALUE:Z

.field private SWEEP_OPPOSITE_DIRECTION_DISTANCES_RATIO:F

.field private actionViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;",
            ">;"
        }
    .end annotation
.end field

.field private bActionUp:Z

.field private bFlickV:Z

.field private bKeyPressed:Z

.field private bKeyReleased:Z

.field private bTouchEvent:Z

.field private curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

.field private curIndex:I

.field private decorInit:Z

.field private isSweep:Z

.field private listLeft:I

.field private listTop:I

.field private mBlockTouchEvents:Z

.field private mContext:Landroid/content/Context;

.field mDecorLayout:Landroid/widget/FrameLayout;

.field private mFling:Z

.field private mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

.field private mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

.field private mSweepDirection:I

.field private mSweepLeftDistance:F

.field private mSweepPrevPosX:F

.field private mSweepPrevPosY:F

.field private mSweepRightDistance:F

.field private mTopPositionSave:I

.field private mTouchDownTime:J

.field private mTouchPointX:F

.field private mTouchPointY:F

.field private mTouchSlop:I

.field private mTouchUpPointX:F

.field private mTouchUpTime:J

.field private mVelocity:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWaveBackground:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

.field previousMoveDistanceX:F

.field previousMoveDistanceY:F

.field private sweepContainerView:Landroid/widget/RelativeLayout;

.field private tempRect:Landroid/graphics/Rect;

.field private transformation:Landroid/view/animation/Transformation;

.field private values:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 156
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->DEBUGABLE:Z

    .line 67
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->DEBUGABLE_COSINE_VALUE:Z

    .line 90
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 91
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    .line 93
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->transformation:Landroid/view/animation/Transformation;

    .line 96
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    .line 97
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->values:[F

    .line 104
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchUpPointX:F

    .line 115
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    .line 116
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    .line 118
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    .line 119
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    .line 120
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 122
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    .line 123
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 124
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    .line 125
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    .line 126
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    .line 132
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 134
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    .line 139
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    .line 140
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    .line 142
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    .line 143
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosY:F

    .line 145
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    .line 147
    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->SWEEP_OPPOSITE_DIRECTION_DISTANCES_RATIO:F

    .line 149
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWaveBackground:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    .line 163
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    .line 164
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 166
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    .line 168
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    .line 169
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 171
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;

    invoke-direct {v2, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 181
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setDrawSelectorOnTop(Z)V

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;I)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentListItem(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchUpTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)J
    .locals 2
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchDownTime:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchUpPointX:F

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->createSweepContainerView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsUnclickableForShortDuration()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWaveBackground:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->invalidateCurrentActionView()V

    return-void
.end method

.method static synthetic access$502(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    return-void
.end method

.method private cancelSweepAction(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionCanceled(I)V

    .line 474
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWaveBackground:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWaveBackground:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->cancelRunningAnimator()V

    .line 478
    :cond_0
    return-void
.end method

.method private closeActionBar(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)Z
    .locals 1
    .param p1, "actionView"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .param p2, "animation"    # Z

    .prologue
    .line 293
    if-eqz p1, :cond_0

    .line 294
    const/4 v0, 0x2

    iput v0, p1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 295
    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static {p1, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    .line 296
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createSweepContainerView(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 192
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    .line 194
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 196
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    .line 200
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mDecorLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private decorViewInitialize()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 343
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 344
    .local v1, "location":[I
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getLocationInWindow([I)V

    .line 346
    aget v2, v1, v5

    .line 347
    .local v2, "top":I
    aget v0, v1, v4

    .line 349
    .local v0, "left":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    .line 351
    aget v3, v1, v5

    sub-int v3, v2, v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    .line 352
    aget v3, v1, v4

    sub-int v3, v0, v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    .line 354
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingLeft()I

    move-result v3

    if-lez v3, :cond_0

    .line 355
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    .line 358
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 359
    return-void
.end method

.method private getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 325
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 326
    .local v2, "len":I
    const/4 v0, 0x0

    .line 327
    .local v0, "actionView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 328
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "actionView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 329
    .restart local v0    # "actionView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->index:I

    if-ne v3, p1, :cond_0

    move-object v3, v0

    .line 332
    :goto_1
    return-object v3

    .line 327
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getCurrentListItem(I)Landroid/view/View;
    .locals 2
    .param p1, "itemIndex"    # I

    .prologue
    .line 1062
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v0, p1, v1

    .line 1063
    .local v0, "lActChildPos":I
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "actionBarView"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .param p3, "position"    # I

    .prologue
    .line 304
    if-eqz p2, :cond_0

    iget-boolean v1, p2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    if-nez v1, :cond_2

    iget-boolean v1, p2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    if-nez v1, :cond_2

    .line 306
    :cond_0
    const/4 v0, 0x0

    .line 320
    :cond_1
    :goto_0
    return-object v0

    .line 308
    :cond_2
    invoke-direct {p0, p3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v0

    .line 310
    .local v0, "actionView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-nez v0, :cond_1

    .line 314
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .end local v0    # "actionView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)V

    .line 319
    .restart local v0    # "actionView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initSweepDistanceVariables()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 948
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    .line 949
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    .line 950
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    .line 951
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosY:F

    .line 952
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    .line 953
    return-void
.end method

.method private invalidateCurrentActionView()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->invalidate()V

    .line 339
    :cond_0
    return-void
.end method

.method private onTouchDownConsumed(Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 750
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 756
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-eqz v0, :cond_0

    .line 757
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 770
    :goto_0
    return-object v0

    .line 759
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    if-nez v0, :cond_1

    .line 760
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorViewInitialize()V

    .line 763
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->requestFocus()Z

    .line 764
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 766
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchDownTime:J

    .line 767
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    .line 768
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    .line 769
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 770
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onTouchMoveConsumed(Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 774
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 775
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 854
    :cond_0
    :goto_0
    return-object v8

    .line 777
    :cond_1
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    if-eqz v9, :cond_4

    .line 779
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v9, :cond_3

    .line 781
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-eqz v9, :cond_2

    .line 782
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->cancelSweepAction(I)V

    goto :goto_0

    .line 786
    :cond_2
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v9, v9, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->actionView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    sub-float/2addr v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->allowSweepDistance(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;F)F

    move-result v5

    .line 788
    .local v5, "sweepdistance":F
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->onSweep(F)V
    invoke-static {v9, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$600(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V

    .line 789
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V

    .line 851
    .end local v5    # "sweepdistance":F
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 852
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0

    .line 793
    :cond_4
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 794
    .local v2, "distanceX":F
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchPointY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 795
    .local v3, "distanceY":F
    mul-float v9, v2, v2

    mul-float v10, v3, v3

    add-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 796
    .local v6, "sqrtValue":D
    float-to-double v10, v2

    div-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 803
    .local v0, "cosineValue":D
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v9, v9

    cmpg-float v9, v3, v9

    if-gez v9, :cond_a

    .line 805
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v9, v2, v9

    if-lez v9, :cond_9

    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    if-nez v9, :cond_9

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceY:F

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_9

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceX:F

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_9

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v0

    double-to-int v9, v10

    const/16 v10, 0x23a

    if-ge v9, v10, :cond_9

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    if-eqz v9, :cond_9

    .line 812
    iput-object v8, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 813
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v9

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    .line 815
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    move-result-object v4

    .line 818
    .local v4, "sabi":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    if-eqz v4, :cond_5

    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    if-eqz v9, :cond_5

    .line 819
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v9, v4, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 822
    :cond_5
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-nez v9, :cond_6

    .line 823
    const-string v8, "sweepRest"

    const-string v9, "onTouch(), curActionBar is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_0

    .line 828
    :cond_6
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->isPressed()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 829
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v9, v13}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setPressed(Z)V

    .line 831
    :cond_7
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iput v12, v9, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 833
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->resizeTempRect()V

    .line 835
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-eqz v9, :cond_8

    .line 836
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;->onSweepActionStarted(I)V

    .line 837
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWaveBackground:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    if-eqz v9, :cond_8

    .line 838
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mWaveBackground:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->initWaveParams(I)V

    .line 841
    :cond_8
    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    .line 847
    .end local v4    # "sabi":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :cond_9
    :goto_2
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceX:F

    .line 848
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->previousMoveDistanceY:F

    goto/16 :goto_1

    .line 845
    :cond_a
    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    goto :goto_2
.end method

.method private onTouchUpCancelConsumed(Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 860
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 861
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressed(Z)V

    .line 862
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bFlickV:Z

    .line 864
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchUpPointX:F

    .line 865
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchUpTime:J

    .line 867
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v1, :cond_1

    .line 869
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 871
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    .line 873
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    mul-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepPatternIsIndeedFling(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 875
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    .line 877
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static {v1, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    .line 879
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 882
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    .line 884
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_2

    .line 885
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 886
    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 889
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->initSweepDistanceVariables()V

    .line 891
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 892
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    .line 893
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 895
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    if-eqz v1, :cond_3

    .line 897
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isSweep:Z

    .line 900
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->removePendingCallbacks()V

    .line 901
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 904
    :cond_3
    return-object v0
.end method

.method private resizeTempRect()V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 364
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 366
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listLeft:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 367
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->listTop:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 369
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iget-object v2, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingLeft()I

    move-result v0

    if-lez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->tempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 378
    :cond_1
    return-void
.end method

.method private setItemsUnclickableForShortDuration()V
    .locals 4

    .prologue
    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 434
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    return-void
.end method

.method private setPressedFalse()V
    .locals 4

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildCount()I

    move-result v2

    .line 620
    .local v2, "num":I
    const/4 v0, 0x0

    .line 622
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 623
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 624
    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 626
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 622
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 630
    :cond_1
    return-void
.end method

.method private sweepPatternIsIndeedFling(F)Z
    .locals 7
    .param p1, "velocity"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 980
    cmpl-float v4, p1, v6

    if-lez v4, :cond_0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1

    :cond_0
    cmpg-float v4, p1, v6

    if-gez v4, :cond_2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    .line 997
    :cond_1
    :goto_0
    return v2

    .line 984
    :cond_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTouchSlop:I

    mul-int/lit8 v0, v4, 0x2

    .line 985
    .local v0, "minimalDistanceThreshold":I
    cmpl-float v4, p1, v6

    if-lez v4, :cond_3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_4

    :cond_3
    cmpg-float v4, p1, v6

    if-gez v4, :cond_5

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    :cond_4
    move v2, v3

    .line 987
    goto :goto_0

    .line 991
    :cond_5
    cmpl-float v4, p1, v6

    if-lez v4, :cond_6

    .line 992
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    div-float v1, v4, v5

    .line 995
    .local v1, "oppositeDirectionDistRatio":F
    :goto_1
    const-string v4, "SweepFling"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oppositeDirectionDistRatio="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->SWEEP_OPPOSITE_DIRECTION_DISTANCES_RATIO:F

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 994
    .end local v1    # "oppositeDirectionDistRatio":F
    :cond_6
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    div-float v1, v4, v5

    .restart local v1    # "oppositeDirectionDistRatio":F
    goto :goto_1
.end method

.method private trackSweepDistanceAndDirection(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    .line 956
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 957
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 959
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    if-nez v0, :cond_0

    .line 961
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    .line 963
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    .line 964
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    .line 974
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    .line 975
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosY:F

    .line 976
    return-void

    .line 965
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 966
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepLeftDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    if-ne v0, v3, :cond_3

    .line 968
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    .line 970
    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepPrevPosX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepRightDistance:F

    .line 971
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepDirection:I

    goto :goto_0
.end method


# virtual methods
.method public allowSweepDistance(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;F)F
    .locals 3
    .param p1, "sabi"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .param p2, "distance"    # F

    .prologue
    const/4 v1, 0x0

    .line 634
    move v0, p2

    .line 636
    .local v0, "allowDistance":F
    iget-boolean v2, p1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    if-nez v2, :cond_0

    .line 637
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    move v0, v1

    .line 638
    :cond_0
    iget-boolean v2, p1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    if-nez v2, :cond_1

    .line 639
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    move v0, v1

    .line 641
    :cond_1
    return v0
.end method

.method public closeAllActionBar(Z)Z
    .locals 6
    .param p1, "animated"    # Z

    .prologue
    .line 231
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 233
    .local v0, "cloneArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 234
    .local v2, "len":I
    const/4 v3, 0x0

    .line 236
    .local v3, "retVal":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 237
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-direct {p0, v4, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeActionBar(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    const/4 v3, 0x1

    .line 236
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v4, :cond_2

    if-nez p1, :cond_2

    .line 242
    const-string v4, "TwSweepActionListView"

    const-string v5, "closeAllActionBar call  sweepActionViewRemove"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->clearAnimation()V

    .line 244
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 245
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    .line 248
    :cond_2
    return v3
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x0

    .line 737
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 741
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 743
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 746
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 747
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 551
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mTopPositionSave:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 555
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    if-nez v0, :cond_1

    .line 556
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 559
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    if-eqz v0, :cond_2

    .line 560
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    .line 562
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    if-eqz v0, :cond_3

    .line 563
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bActionUp:Z

    .line 565
    :cond_3
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 566
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 506
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 519
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 514
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 515
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    goto :goto_0

    .line 506
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawTime"    # J

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1004
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1005
    .local v2, "index":I
    const/4 v3, 0x0

    .line 1007
    .local v3, "mTransX":F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v0

    .line 1009
    .local v0, "actionView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1011
    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 1012
    .local v1, "anim":Landroid/view/animation/Animation;
    if-eqz v1, :cond_0

    .line 1014
    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    packed-switch v4, :pswitch_data_0

    .line 1035
    .end local v0    # "actionView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .end local v1    # "anim":Landroid/view/animation/Animation;
    .end local v2    # "index":I
    .end local v3    # "mTransX":F
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    return v4

    .line 1016
    .restart local v0    # "actionView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .restart local v1    # "anim":Landroid/view/animation/Animation;
    .restart local v2    # "index":I
    .restart local v3    # "mTransX":F
    :pswitch_0
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setTranslate()V

    goto :goto_0

    .line 1020
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 1022
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->values:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1023
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    neg-float v3, v4

    .line 1024
    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setProgress(F)V
    invoke-static {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$700(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;F)V

    .line 1026
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 1027
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->invalidate()V

    goto :goto_0

    .line 1014
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleDataChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 490
    const-string v0, "TwSweepActionListView"

    const-string v1, "[handleDataChanged] IN"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 494
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    if-nez v0, :cond_0

    .line 495
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 496
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->cancelSweepAction(I)V

    .line 500
    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->handleDataChanged()V

    .line 501
    return-void
.end method

.method public isActionBarOpen()Z
    .locals 4

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "actionView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 217
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 218
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->actionViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "actionView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 220
    .restart local v0    # "actionView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    if-lez v3, :cond_0

    .line 221
    const/4 v3, 0x1

    .line 223
    :goto_1
    return v3

    .line 217
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 482
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 483
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 484
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 485
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 690
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bTouchEvent:Z

    .line 692
    if-nez p1, :cond_1

    .line 700
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    .line 704
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 707
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsUnclickableForShortDuration()V

    .line 709
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 711
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->requestLayout()V

    .line 732
    :goto_0
    return-void

    .line 719
    :cond_1
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/16 v0, 0x82

    if-ne p2, v0, :cond_3

    .line 722
    :cond_2
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 728
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 730
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->requestLayout()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 582
    .local v0, "action":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_0

    .line 583
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 585
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 587
    packed-switch v0, :pswitch_data_0

    .line 613
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    .line 590
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->onTouchDownConsumed(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object v1

    .line 591
    .local v1, "touchDownConsumed":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 592
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_0

    .line 598
    .end local v1    # "touchDownConsumed":Ljava/lang/Boolean;
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->onTouchMoveConsumed(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object v2

    .line 599
    .local v2, "touchMoveConsumed":Ljava/lang/Boolean;
    if-eqz v2, :cond_1

    .line 600
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_0

    .line 607
    .end local v2    # "touchMoveConsumed":Ljava/lang/Boolean;
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->onTouchUpCancelConsumed(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object v3

    .line 608
    .local v3, "touchUpCancelConsumed":Ljava/lang/Boolean;
    if-eqz v3, :cond_1

    .line 609
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_0

    .line 587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 524
    sparse-switch p1, :sswitch_data_0

    .line 531
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 528
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    goto :goto_0

    .line 524
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 536
    sparse-switch p1, :sswitch_data_0

    .line 545
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 540
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyReleased:Z

    .line 541
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    if-eqz v0, :cond_0

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->bKeyPressed:Z

    goto :goto_0

    .line 536
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 910
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 912
    .local v0, "action":I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_0

    .line 913
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 915
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 917
    packed-switch v0, :pswitch_data_0

    .line 944
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    .line 921
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->onTouchDownConsumed(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object v1

    .line 922
    .local v1, "touchDownConsumed":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 923
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_0

    .line 929
    .end local v1    # "touchDownConsumed":Ljava/lang/Boolean;
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->onTouchMoveConsumed(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object v2

    .line 930
    .local v2, "touchMoveConsumed":Ljava/lang/Boolean;
    if-eqz v2, :cond_1

    .line 931
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_0

    .line 938
    .end local v2    # "touchMoveConsumed":Ljava/lang/Boolean;
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->onTouchUpCancelConsumed(Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object v3

    .line 939
    .local v3, "touchUpCancelConsumed":Ljava/lang/Boolean;
    if-eqz v3, :cond_1

    .line 940
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_0

    .line 917
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v6, 0x0

    .line 650
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$3;

    invoke-direct {v3, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$3;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    const-wide/16 v4, 0x190

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 661
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->cancelSweepAction(I)V

    .line 663
    if-eqz p1, :cond_1

    .line 666
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    .line 667
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "actionView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    .line 671
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 673
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 675
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "actionView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 677
    .restart local v0    # "actionView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_0

    .line 678
    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    .line 673
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 682
    .end local v0    # "actionView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->onWindowFocusChanged(Z)V

    .line 683
    return-void
.end method

.method public openActionBar(II)Z
    .locals 5
    .param p1, "position"    # I
    .param p2, "flickDirection"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 253
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 254
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 256
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->createSweepContainerView(Landroid/content/Context;)V

    .line 259
    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorInit:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->decorViewInitialize()V

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getLastVisiblePosition()I

    move-result v3

    if-le p1, v3, :cond_3

    :cond_2
    move v1, v2

    .line 287
    :goto_0
    return v1

    .line 265
    :cond_3
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-interface {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    move-result-object v0

    .line 267
    .local v0, "sabi":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    if-eqz v0, :cond_4

    .line 268
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v3, v0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getCurrentSweepActionBarView(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    .line 269
    :cond_4
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v3, :cond_5

    .line 271
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mFling:Z

    .line 272
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    iput v1, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    .line 274
    packed-switch p2, :pswitch_data_0

    .line 283
    :goto_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->setSweepAnimation(Z)V
    invoke-static {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$400(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;Z)V

    goto :goto_0

    .line 276
    :pswitch_0
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    goto :goto_1

    .line 279
    :pswitch_1
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mVelocity:F

    goto :goto_1

    :cond_5
    move v1, v2

    .line 287
    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 450
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_0

    .line 454
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->cancelSweepAction(I)V

    .line 456
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->closeAllActionBar(Z)Z

    .line 460
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->sweepContainerView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->clearAnimation()V

    .line 462
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPressedFalse()V

    .line 464
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curActionBar:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    # invokes: Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->sweepActionViewRemove()V
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->access$300(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;)V

    .line 467
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isActionBarOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-eqz v0, :cond_1

    .line 572
    :cond_0
    const/4 v0, 0x0

    .line 574
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    .line 206
    return-void
.end method

.method public setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 210
    return-void
.end method

.method shouldShowSelector()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 383
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    if-nez v6, :cond_1

    .line 384
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwListView;->shouldShowSelector()Z

    move-result v5

    .line 413
    :cond_0
    :goto_0
    return v5

    .line 386
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "finger_air_view"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_4

    move v2, v4

    .line 388
    .local v2, "isFingerAirView":Z
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->isFingerHovered()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    move v5, v4

    .line 389
    goto :goto_0

    .end local v2    # "isFingerAirView":Z
    :cond_4
    move v2, v5

    .line 386
    goto :goto_1

    .line 391
    .restart local v2    # "isFingerAirView":Z
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    const/4 v1, 0x0

    .line 395
    .local v1, "curActionBarIsPressed":Z
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mBlockTouchEvents:Z

    if-nez v4, :cond_0

    .line 398
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 399
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 402
    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v1

    .line 404
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getActionView(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;

    move-result-object v0

    .line 406
    .local v0, "actionView":Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;
    if-eqz v0, :cond_6

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    if-lez v4, :cond_6

    .line 407
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->mSweepActionBarCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->curIndex:I

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->progress:F

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarView;->status:I

    invoke-interface {v4, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;->onListShouldDrawSelector(IFI)Z

    move-result v5

    goto :goto_0

    :cond_6
    move v5, v1

    .line 410
    goto :goto_0
.end method

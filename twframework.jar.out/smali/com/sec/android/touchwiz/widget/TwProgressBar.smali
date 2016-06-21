.class public Lcom/sec/android/touchwiz/widget/TwProgressBar;
.super Landroid/view/View;
.source "TwProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwProgressBar$1;,
        Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;,
        Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CLEAR_ALPHA_MASK:I = 0xffffff

.field private static final CORNERS:[F

.field private static final HIGH_ALPHA:I = 0x32000000

.field protected static final HORIZONTAL:I = 0x0

.field private static final KK_AMERICANO:Z

.field private static final LOW_ALPHA:I = -0x1000000

.field private static final MAX_LEVEL:I = 0x2710

.field private static final MED_ALPHA:I = -0x6a000000

.field protected static final TOUCHWIZ_DARK_THEME:I = 0x0

.field protected static final TOUCHWIZ_LIGHT_THEME:I = 0x1

.field private static final UNDEFINED_COLOR:I = 0x0

.field protected static final VERTICAL:I = 0x1

.field private static final mScafe:Ljava/lang/String;


# instance fields
.field private final DEFAULT_MAX:I

.field private final DEFAULT_MAX_HEIGHT:I

.field private final DEFAULT_MAX_WIDTH:I

.field private final DEFAULT_MIN_HEIGHT:I

.field private final DEFAULT_MIN_WIDTH:I

.field private final DEFAULT_PROGRESS:I

.field private final INVALID_PROGRESS_HEIGHT:I

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawBackground:Z

.field private mDrawFirstProgress:Z

.field private mDrawSecondaryProgress:Z

.field private mDualColorProgress:I

.field private mDualColorProgressBar:Z

.field private mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndicatorThickness:I

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mProgress:I

.field private mProgressBarMode:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mProgressRect:Landroid/graphics/Rect;

.field private mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

.field private mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

.field private mSecondaryProgress:I

.field protected mTheme:I

.field private mUiThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mScafe:Ljava/lang/String;

    .line 76
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->CORNERS:[F

    .line 124
    const-string v0, "americano"

    const-string v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->KK_AMERICANO:Z

    return-void

    .line 76
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 184
    const v0, 0x2010005

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v10, 0x30

    const/16 v6, 0xb

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MIN_WIDTH:I

    .line 64
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MAX_WIDTH:I

    .line 65
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MIN_HEIGHT:I

    .line 66
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MAX_HEIGHT:I

    .line 67
    const/16 v6, 0x64

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MAX:I

    .line 68
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_PROGRESS:I

    .line 103
    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawBackground:Z

    .line 116
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawFirstProgress:Z

    .line 117
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawSecondaryProgress:Z

    .line 120
    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressBar:Z

    .line 130
    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    .line 155
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    .line 156
    const/4 v6, -0x1

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->INVALID_PROGRESS_HEIGHT:I

    .line 161
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    .line 166
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mTheme:I

    .line 190
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mUiThreadId:J

    .line 192
    sget-object v6, Ltouchwiz/R$styleable;->TwProgressBar:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 196
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    const/16 v7, 0xb

    :try_start_0
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinWidth:I

    .line 197
    const/4 v6, 0x1

    const/16 v7, 0x30

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxWidth:I

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2060020

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2060020

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxHeight:I

    .line 201
    const/4 v6, 0x4

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    .line 203
    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    .line 205
    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    .line 208
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 209
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 210
    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 211
    .local v1, "backColor":I
    if-eqz v1, :cond_4

    .line 212
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setBackgroundColor(I)V

    .line 218
    .end local v1    # "backColor":I
    :cond_0
    :goto_0
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 219
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    .line 220
    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 222
    .local v4, "progressColor":I
    if-eqz v4, :cond_5

    .line 223
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgressColor(I)V

    .line 229
    .end local v4    # "progressColor":I
    :cond_1
    :goto_1
    const/16 v6, 0xd

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    .line 232
    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    .line 234
    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mTheme:I

    .line 236
    const/16 v6, 0x9

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_2

    .line 238
    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 239
    .local v5, "secondaryColor":I
    if-eqz v5, :cond_6

    .line 240
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setSecondaryProgressColor(I)V

    .line 246
    .end local v5    # "secondaryColor":I
    :cond_2
    :goto_2
    const/16 v6, 0x12

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgress:I

    .line 247
    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 248
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_3

    .line 249
    const/16 v6, 0x11

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 251
    .local v2, "dualcolorprogressColor":I
    if-eqz v2, :cond_7

    .line 252
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setDualColorProgressColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v2    # "dualcolorprogressColor":I
    :cond_3
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 265
    return-void

    .line 214
    .restart local v1    # "backColor":I
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2020031

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 260
    .end local v1    # "backColor":I
    :catch_0
    move-exception v3

    .line 261
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    .line 225
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v4    # "progressColor":I
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2020030

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 242
    .end local v4    # "progressColor":I
    .restart local v5    # "secondaryColor":I
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2020035

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 254
    .end local v5    # "secondaryColor":I
    .restart local v2    # "dualcolorprogressColor":I
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x202020f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isHorizontal"    # Z

    .prologue
    const/4 v1, 0x1

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    if-ne p2, v1, :cond_0

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwProgressBar;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwProgressBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->doRefreshProgress(IIZ)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwProgressBar;Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;)Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwProgressBar;
    .param p1, "x1"    # Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    return-object p1
.end method

.method private declared-synchronized doRefreshProgress(IIZ)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const v11, 0x461c4000    # 10000.0f

    const/4 v7, 0x0

    .line 800
    monitor-enter p0

    :try_start_0
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-lez v8, :cond_4

    int-to-float v8, p2

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 801
    .local v6, "scale":F
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 802
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_a

    .line 803
    const/4 v5, 0x0

    .line 805
    .local v5, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v8, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v8, :cond_0

    .line 806
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v8, v0

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 809
    :cond_0
    mul-float v8, v6, v11

    float-to-int v3, v8

    .line 810
    .local v3, "level":I
    if-eqz v5, :cond_5

    .end local v5    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 813
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressBar:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 814
    const/4 v2, 0x0

    .line 816
    .local v2, "dualDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v8, v8, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v8, :cond_1

    .line 817
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 822
    :cond_1
    if-eqz v2, :cond_2

    .line 823
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgress:I

    if-gt p2, v8, :cond_7

    .line 824
    if-eqz v2, :cond_6

    .end local v2    # "dualDrawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 836
    .end local v3    # "level":I
    :cond_2
    :goto_3
    const v8, 0x102000d

    if-ne p1, v8, :cond_3

    .line 837
    invoke-virtual {p0, v6, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onProgressRefresh(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    :cond_3
    monitor-exit p0

    return-void

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "scale":F
    :cond_4
    move v6, v7

    .line 800
    goto :goto_0

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "level":I
    .restart local v5    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "scale":F
    :cond_5
    move-object v5, v1

    .line 810
    goto :goto_1

    .line 824
    .end local v5    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "dualDrawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 826
    :cond_7
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-lez v8, :cond_8

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgress:I

    sub-int v8, p2, v8

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgress:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 827
    .local v7, "scale2":F
    :cond_8
    mul-float v8, v7, v11

    float-to-int v4, v8

    .line 828
    .local v4, "level2":I
    if-eqz v2, :cond_9

    .end local v2    # "dualDrawable":Landroid/graphics/drawable/Drawable;
    :goto_4
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 800
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "level":I
    .end local v4    # "level2":I
    .end local v6    # "scale":F
    .end local v7    # "scale2":F
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 828
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "dualDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "level":I
    .restart local v4    # "level2":I
    .restart local v6    # "scale":F
    .restart local v7    # "scale2":F
    :cond_9
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 833
    .end local v2    # "dualDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "level":I
    .end local v4    # "level2":I
    .end local v7    # "scale2":F
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->invalidate()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private makeDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "color"    # I
    .param p2, "strokeColor"    # I

    .prologue
    const/4 v6, 0x1

    .line 386
    const v5, 0xffffff

    and-int/2addr p1, v5

    .line 387
    const/high16 v5, 0x32000000

    or-int v4, p1, v5

    .line 388
    .local v4, "startColor":I
    const/high16 v5, -0x6a000000

    or-int v3, p1, v5

    .line 389
    .local v3, "middleColor":I
    const/high16 v5, -0x1000000

    or-int v2, p1, v5

    .line 390
    .local v2, "endColor":I
    const/4 v5, 0x3

    new-array v0, v5, [I

    const/4 v5, 0x0

    aput v4, v0, v5

    aput v3, v0, v6

    const/4 v5, 0x2

    aput v2, v0, v5

    .line 391
    .local v0, "colors":[I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 393
    .local v1, "d":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, v6, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 394
    sget-object v5, Lcom/sec/android/touchwiz/widget/TwProgressBar;->CORNERS:[F

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 395
    return-object v1
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 781
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 782
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->doRefreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    :goto_0
    monitor-exit p0

    return-void

    .line 785
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    if-eqz v1, :cond_1

    .line 787
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    .line 789
    .local v0, "r":Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    .line 790
    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;->setup(IIZ)V

    .line 795
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 781
    .end local v0    # "r":Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 793
    :cond_1
    :try_start_2
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwProgressBar;IIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0    # "r":Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;
    goto :goto_1
.end method

.method private updateDualColorDrawableBounds(II)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 867
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressBar:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 870
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgress:I

    if-le v2, v3, :cond_1

    .line 871
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgress:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 872
    .local v0, "scale":F
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    .line 873
    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    if-nez v2, :cond_3

    .line 874
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v1, v2

    .line 875
    .local v1, "startDual":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 882
    .end local v0    # "scale":F
    .end local v1    # "startDual":I
    :cond_1
    :goto_1
    return-void

    .line 871
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 877
    .restart local v0    # "scale":F
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 878
    .restart local v1    # "startDual":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method


# virtual methods
.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getDualColorProgress()I
    .locals 1

    .prologue
    .line 942
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgress:I

    return v0
.end method

.method public getDualColorProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getDualColorProgressStart()I
    .locals 4

    .prologue
    .line 950
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 951
    .local v0, "scale":F
    :goto_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    .line 952
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 950
    .end local v0    # "scale":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndicatorThickness()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    return v0
.end method

.method public declared-synchronized getMax()I
    .locals 1

    .prologue
    .line 539
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 513
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressBarMode()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    return v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getProgressWidth()I
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getWidth()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getUseDualColorProgressBar()Z
    .locals 1

    .prologue
    .line 905
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressBar:Z

    return v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    monitor-exit p0

    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    monitor-exit p0

    return-void

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 648
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 650
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgressBounds()V

    .line 651
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 652
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 654
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawBackground:Z

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 657
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawSecondaryProgress:Z

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 660
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawFirstProgress:Z

    if-eqz v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 663
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressBar:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->KK_AMERICANO:Z

    if-nez v0, :cond_3

    .line 664
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 666
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    monitor-exit p0

    return-void

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 674
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 676
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 677
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 678
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 679
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinWidth:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 680
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 684
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 686
    invoke-static {v2, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->resolveSize(II)I

    move-result v3

    invoke-static {v1, p2}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    monitor-exit p0

    return-void

    .line 674
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method onProgressRefresh(FZ)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 543
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 747
    move-object v0, p1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;

    .line 749
    .local v0, "ss":Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 751
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress2:I

    if-lez v1, :cond_0

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress2:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-gt v1, v2, :cond_0

    .line 752
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress2:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setSecondaryProgress(I)V

    .line 755
    :cond_0
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress:I

    if-lez v1, :cond_1

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-gt v1, v2, :cond_1

    .line 756
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgress(I)V

    .line 758
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 741
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 742
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-object v1
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 323
    const v0, -0x8b8b8c

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->makeDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 324
    return-void
.end method

.method public setBackgroundDraw(Z)V
    .locals 0
    .param p1, "draw"    # Z

    .prologue
    .line 300
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawBackground:Z

    .line 301
    return-void
.end method

.method public setBackgroundDrawable(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 275
    return-void
.end method

.method public setDualColorProgress(I)Z
    .locals 2
    .param p1, "mDual"    # I

    .prologue
    const/4 v0, 0x0

    .line 926
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-gt p1, v1, :cond_0

    sget-boolean v1, Lcom/sec/android/touchwiz/widget/TwProgressBar;->KK_AMERICANO:Z

    if-eqz v1, :cond_1

    .line 927
    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressBar:Z

    .line 934
    :goto_0
    return v0

    .line 930
    :cond_1
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgress:I

    .line 933
    invoke-direct {p0, v0, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->updateDualColorDrawableBounds(II)V

    .line 934
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDualColorProgressColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 351
    const/high16 v0, 0xff0000

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->makeDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 352
    return-void
.end method

.method public setDualColorProgressDrawable(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 890
    return-void
.end method

.method public setIndicatorThickness(I)V
    .locals 0
    .param p1, "thickness"    # I

    .prologue
    .line 358
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    .line 359
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 1
    .param p1, "max"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 409
    monitor-enter p0

    if-gez p1, :cond_0

    .line 410
    const/4 p1, 0x0

    .line 412
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-eq p1, v0, :cond_1

    .line 413
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    .line 414
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->postInvalidate()V

    .line 416
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 417
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :cond_1
    monitor-exit p0

    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 432
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    monitor-exit p0

    return-void

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setProgress(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 765
    monitor-enter p0

    if-gez p1, :cond_0

    .line 766
    const/4 p1, 0x0

    .line 769
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    .line 770
    iget p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    .line 773
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 774
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    .line 775
    const v0, 0x102000d

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->refreshProgress(IIZ)V

    .line 777
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    monitor-exit p0

    return-void

    .line 765
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressBounds()V
    .locals 25

    .prologue
    .line 556
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 557
    .local v6, "mContainer":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 559
    .local v7, "mOutRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    .line 560
    .local v8, "max":I
    if-lez v8, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    div-float v14, v19, v20

    .line 561
    .local v14, "scale":F
    :goto_0
    if-lez v8, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    div-float v15, v19, v20

    .line 562
    .local v15, "scale2":F
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingLeft()I

    move-result v10

    .line 563
    .local v10, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingRight()I

    move-result v11

    .line 564
    .local v11, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingTop()I

    move-result v12

    .line 565
    .local v12, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingBottom()I

    move-result v9

    .line 566
    .local v9, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getHeight()I

    move-result v5

    .line 568
    .local v5, "height":I
    const/16 v16, 0x0

    .line 569
    .local v16, "tempHeight":I
    const/16 v17, 0x0

    .line 571
    .local v17, "tempWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getProgressWidth()I

    move-result v19

    sub-int v19, v19, v10

    sub-int v18, v19, v11

    .line 572
    .local v18, "w":I
    sub-int v19, v5, v12

    sub-int v4, v19, v9

    .line 574
    .local v4, "h":I
    const/4 v13, 0x0

    .line 584
    .local v13, "progressSpacing":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 585
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 586
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    move/from16 v16, v0

    .line 590
    :goto_2
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 591
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 592
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v18

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 593
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v19, v19, v4

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    div-int/lit8 v13, v19, 0x2

    .line 603
    if-lez v13, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    move/from16 v19, v0

    if-lez v19, :cond_4

    .line 604
    sub-int v18, v18, v13

    .line 609
    :goto_3
    const/16 v19, 0x10

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v6, v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 610
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxHeight:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v21, v0

    sub-int v21, v4, v21

    div-int/lit8 v21, v21, 0x2

    add-int v22, v18, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v23, v0

    sub-int v23, v4, v23

    div-int/lit8 v23, v23, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v24, v0

    add-int v23, v23, v24

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v21, v0

    sub-int v21, v4, v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v14

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v22, v22, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v23, v0

    sub-int v23, v4, v23

    div-int/lit8 v23, v23, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v24, v0

    add-int v23, v23, v24

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v20, v0

    sub-int v20, v4, v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v15

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v22, v0

    sub-int v22, v4, v22

    div-int/lit8 v22, v22, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 636
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressRect:Landroid/graphics/Rect;

    .line 637
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressBar:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 638
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->updateDualColorDrawableBounds(II)V

    .line 641
    :cond_0
    return-void

    .line 560
    .end local v4    # "h":I
    .end local v5    # "height":I
    .end local v9    # "paddingBottom":I
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "paddingTop":I
    .end local v13    # "progressSpacing":I
    .end local v14    # "scale":F
    .end local v15    # "scale2":F
    .end local v16    # "tempHeight":I
    .end local v17    # "tempWidth":I
    .end local v18    # "w":I
    :cond_1
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 561
    .restart local v14    # "scale":F
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 588
    .restart local v4    # "h":I
    .restart local v5    # "height":I
    .restart local v9    # "paddingBottom":I
    .restart local v10    # "paddingLeft":I
    .restart local v11    # "paddingRight":I
    .restart local v12    # "paddingTop":I
    .restart local v13    # "progressSpacing":I
    .restart local v15    # "scale2":F
    .restart local v16    # "tempHeight":I
    .restart local v17    # "tempWidth":I
    .restart local v18    # "w":I
    :cond_3
    move/from16 v16, v4

    goto/16 :goto_2

    .line 606
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 615
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v22, v18, v13

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v14

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v22, v22, v13

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v15

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v13

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_4

    .line 620
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 621
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    move/from16 v17, v0

    .line 625
    :goto_5
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 626
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 627
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v18

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 628
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v19, v19, v4

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 630
    const/16 v19, 0x1

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v0, v1, v4, v6, v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v21, v21, v14

    int-to-float v0, v4

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v21, v21, v15

    int-to-float v0, v4

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_4

    .line 623
    :cond_7
    move/from16 v17, v18

    goto/16 :goto_5
.end method

.method public setProgressColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->makeDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 334
    return-void
.end method

.method public setProgressDraw(Z)V
    .locals 0
    .param p1, "draw"    # Z

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawFirstProgress:Z

    .line 308
    return-void
.end method

.method public setProgressDrawable(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 285
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 465
    monitor-enter p0

    if-gez p1, :cond_0

    .line 466
    const/4 p1, 0x0

    .line 469
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    .line 470
    iget p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    .line 473
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_2

    .line 474
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    .line 475
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :cond_2
    monitor-exit p0

    return-void

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSecondaryProgressColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->makeDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 344
    return-void
.end method

.method public setSecondaryProgressDraw(Z)V
    .locals 0
    .param p1, "draw"    # Z

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDrawSecondaryProgress:Z

    .line 316
    return-void
.end method

.method public setSecondaryProgressDrawable(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 293
    return-void
.end method

.method public setUseDualColorProgressBar(Z)V
    .locals 1
    .param p1, "isDual"    # Z

    .prologue
    .line 913
    sget-boolean v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->KK_AMERICANO:Z

    if-eqz v0, :cond_0

    .line 914
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressBar:Z

    .line 918
    :goto_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgress:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setDualColorProgress(I)Z

    .line 919
    return-void

    .line 916
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mDualColorProgressBar:Z

    goto :goto_0
.end method

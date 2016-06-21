.class public Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;
.super Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;
.source "TwSeekBarSplit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;,
        Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static bUseCustomContentDescription:Z

.field private static final mScafe:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mForegroundDraw:Z

.field private mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

.field private mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

.field private mSeekBarMessage:Ljava/lang/String;

.field private mSeekThumbFontPainter:Landroid/graphics/Paint;

.field private mSplitDrawable:Landroid/graphics/drawable/Drawable;

.field private mSplitHeight:I

.field private mSplitOffset:I

.field private mSplitWidth:I

.field mTextRect:Landroid/graphics/Rect;

.field private mTextWidth:I

.field private mTouchTrackingForegroundDraw:Z

.field private misQuickPanleInstance:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mScafe:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->bUseCustomContentDescription:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mScafe:Ljava/lang/String;

    const-string v1, "americano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can be used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "in models based on L platform."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 149
    const v0, 0x2010006

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mScafe:Ljava/lang/String;

    const-string v1, "americano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can be used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "in models based on L platform."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v5, 0xd7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mForegroundDraw:Z

    .line 79
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTouchTrackingForegroundDraw:Z

    .line 80
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->misQuickPanleInstance:Z

    .line 85
    const-string v1, "Seek control"

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekBarMessage:Ljava/lang/String;

    .line 166
    sget-object v1, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mScafe:Ljava/lang/String;

    const-string v2, "americano"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can be used "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "in models based on L platform."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mContext:Landroid/content/Context;

    .line 173
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTheme:I

    if-nez v1, :cond_1

    .line 174
    const v1, 0x202020b

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setBackgroundDrawable(I)V

    .line 175
    const v1, 0x2020213

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgressDrawable(I)V

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x202024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x202025f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    .line 185
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTextRect:Landroid/graphics/Rect;

    .line 186
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    .line 187
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 189
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 191
    const-string v1, "Roboto"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 192
    .local v0, "tf":Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 193
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekThumbFontPainter:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-static {v2, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTextWidth:I

    .line 198
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitHeight:I

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitWidth:I

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitHeight:I

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-int v1, v1

    rem-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitOffset:I

    .line 205
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekBarMessage:Ljava/lang/String;

    .line 206
    return-void

    .line 179
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :cond_1
    const v1, 0x202020c

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setBackgroundDrawable(I)V

    .line 180
    const v1, 0x2020214

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgressDrawable(I)V

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x202024e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2020260

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0
.end method


# virtual methods
.method protected getProgressWidth()I
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->getProgressWidth()I

    move-result v0

    return v0
.end method

.method public getSplitProgress()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v0

    .line 390
    .local v0, "progress":I
    const-string v3, "TwSeekBarSplit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekBarSplit: getSplitProgress(): progress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string v3, "TwSeekBarSplit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekBarSplit: getSplitProgress(): getMax() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getMax()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getMax()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, "thumbText":Ljava/lang/CharSequence;
    const-string v3, "TwSeekBarSplit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekBarSplit: getSplitProgress(): thumbText = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 399
    new-instance v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 404
    .local v1, "text":Ljava/lang/String;
    :goto_0
    const-string v3, "TwSeekBarSplit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekBarSplit: getSplitProgress(): text = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-object v1

    .line 401
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 324
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 326
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v0

    .line 327
    .local v0, "currentprogress":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getMax()I

    move-result v2

    .line 329
    .local v2, "maxprogress":I
    div-int/lit8 v1, v2, 0x2

    .line 331
    .local v1, "halfvlaue":I
    const-string v3, "TwSeekBarSplit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekbarSplit: current progress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v3, "TwSeekBarSplit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekbarSplit: max progress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v3, "TwSeekBarSplit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TwSeekbarSplit: half vlaue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mForegroundDraw:Z

    if-eqz v3, :cond_0

    .line 337
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTouchTrackingForegroundDraw:Z

    if-eqz v3, :cond_2

    add-int/lit8 v3, v1, -0x5

    if-le v0, v3, :cond_2

    add-int/lit8 v3, v1, 0x5

    if-ge v0, v3, :cond_2

    .line 340
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 341
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 354
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->misQuickPanleInstance:Z

    if-eqz v3, :cond_1

    .line 355
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTouchTrackingForegroundDraw:Z

    if-eqz v3, :cond_5

    .line 356
    if-ne v1, v0, :cond_4

    .line 357
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 358
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 342
    :cond_2
    :try_start_1
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTouchTrackingForegroundDraw:Z

    if-nez v3, :cond_3

    add-int/lit8 v3, v1, -0x3

    if-le v0, v3, :cond_3

    add-int/lit8 v3, v1, 0x3

    if-ge v0, v3, :cond_3

    .line 345
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 346
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 323
    .end local v0    # "currentprogress":I
    .end local v1    # "halfvlaue":I
    .end local v2    # "maxprogress":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 347
    .restart local v0    # "currentprogress":I
    .restart local v1    # "halfvlaue":I
    .restart local v2    # "maxprogress":I
    :cond_3
    if-eq v1, v0, :cond_0

    .line 349
    :try_start_2
    const-string v3, "TwSeekBarSplit"

    const-string v4, "TwSeekbarSplit: call mSplitDrawable.draw"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 360
    :cond_4
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 361
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 365
    :cond_5
    if-ne v1, v0, :cond_6

    .line 366
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 367
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 369
    :cond_6
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 370
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 443
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 444
    const-class v0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 445
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 449
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 450
    const-class v0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 451
    return-void
.end method

.method onProgressRefresh(FZ)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 230
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onProgressRefresh(FZ)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;->onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V

    .line 235
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 309
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onSizeChanged(IIII)V

    .line 310
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgressWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getPaddingRight()I

    move-result v1

    sub-int p1, v0, v1

    .line 311
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getPaddingBottom()I

    move-result v1

    sub-int p2, v0, v1

    .line 313
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v1, p1, 0x2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitOffset:I

    sub-int/2addr v1, v2

    div-int/lit8 v2, p2, 0x2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v3, p1, 0x2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitOffset:I

    sub-int/2addr v3, v4

    div-int/lit8 v4, p2, 0x2

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mPaddingTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 319
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTouchTrackingForegroundDraw:Z

    .line 252
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;->onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V

    .line 255
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mTouchTrackingForegroundDraw:Z

    .line 260
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;->onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V

    .line 263
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 467
    const-string v0, "TwSeekBarSplit"

    const-string v1, " onTouchEvent: ******** Start oTouchEvent *******"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-boolean v0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->bUseCustomContentDescription:Z

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekBarMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getSplitProgress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 471
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 476
    const-string v0, "TwSeekBarSplit"

    const-string v1, "TwAbsSeekbar: onTouchEvent: ******** End oTouchEvent *******"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v0, 0x1

    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 482
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 485
    sget-boolean v0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->bUseCustomContentDescription:Z

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSeekBarMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getSplitProgress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 488
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDrawSeekBarSplitForeGround(Z)V
    .locals 0
    .param p1, "foregroundDrawEnabled"    # Z

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mForegroundDraw:Z

    .line 215
    return-void
.end method

.method public setOnSeekBarHoverListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarHoverListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnSeekBarHoverListener;

    .line 283
    return-void
.end method

.method public setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;

    .line 247
    return-void
.end method

.method public setProgressBounds()V
    .locals 8

    .prologue
    .line 293
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->setProgressBounds()V

    .line 294
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 295
    .local v1, "progressBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getMax()I

    move-result v0

    .line 296
    .local v0, "max":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    div-float v2, v4, v5

    .line 297
    .local v2, "scale":F
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgressWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 298
    .local v3, "w":I
    float-to-double v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 299
    div-int/lit8 v4, v3, 0x2

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 305
    :goto_1
    return-void

    .line 296
    .end local v2    # "scale":F
    .end local v3    # "w":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 302
    .restart local v2    # "scale":F
    .restart local v3    # "w":I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getThumbCenterPosX()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getThumbWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v6, v3, 0x2

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public setQuickPanleInstance(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->misQuickPanleInstance:Z

    .line 220
    return-void
.end method

.method public declared-synchronized setRange(I)V
    .locals 1
    .param p1, "range"    # I

    .prologue
    .line 409
    monitor-enter p0

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 410
    const/16 p1, 0x64

    .line 412
    :cond_0
    :try_start_0
    rem-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 413
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUseCustomContentDescription(Z)V
    .locals 0
    .param p1, "bUseCustom"    # Z

    .prologue
    .line 224
    sput-boolean p1, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->bUseCustomContentDescription:Z

    .line 225
    return-void
.end method

.method public setVerticalBarDrawable(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->mSplitDrawable:Landroid/graphics/drawable/Drawable;

    .line 210
    return-void
.end method

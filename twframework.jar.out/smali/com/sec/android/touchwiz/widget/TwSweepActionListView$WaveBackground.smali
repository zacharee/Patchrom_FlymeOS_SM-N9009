.class Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;
.super Ljava/lang/Object;
.source "TwSweepActionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaveBackground"
.end annotation


# static fields
.field private static final WAVE_ANIMATION_DURATION:I = 0x514

.field private static final WAVE_BG_ALPHA:I = 0xe1


# instance fields
.field private final WAVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private incrementYdown:F

.field private incrementYup:F

.field private final leftColor:I

.field private mBaseWaveColor:Landroid/graphics/Paint;

.field private mBgLeftGreen:Landroid/graphics/Paint;

.field private mBgMiddleBlue:Landroid/graphics/Paint;

.field private mBgRightYellow:Landroid/graphics/Paint;

.field private mGradientWidth:F

.field private mMiddleBlueRect:Landroid/graphics/RectF;

.field private mPathDown:Landroid/graphics/Path;

.field private mPathUp:Landroid/graphics/Path;

.field private final middleColor:I

.field private final rightColor:I

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private waveBaseColor:I

.field private waveControlPointHeight:F

.field private waveHeight:F

.field private waveValueAnimator:Landroid/animation/ValueAnimator;

.field private waveWidth:F


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 5

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 1468
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1437
    const/16 v0, 0x61

    const/16 v1, 0xaa

    const/16 v2, 0x13

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->leftColor:I

    .line 1438
    const/16 v0, 0xc

    const/16 v1, 0x5c

    const/16 v2, 0x7e

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->middleColor:I

    .line 1439
    const/16 v0, 0xe8

    const/16 v1, 0x9c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->rightColor:I

    .line 1444
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveBaseColor:I

    .line 1447
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mMiddleBlueRect:Landroid/graphics/RectF;

    .line 1448
    const/high16 v0, 0x43c80000    # 400.0f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mGradientWidth:F

    .line 1452
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    .line 1453
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    .line 1454
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    .line 1456
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->WAVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 1460
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->incrementYdown:F

    .line 1461
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->incrementYup:F

    .line 1469
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->leftColor:I

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mBgLeftGreen:Landroid/graphics/Paint;

    .line 1470
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->middleColor:I

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mBgMiddleBlue:Landroid/graphics/Paint;

    .line 1471
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->rightColor:I

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mBgRightYellow:Landroid/graphics/Paint;

    .line 1473
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mBaseWaveColor:Landroid/graphics/Paint;

    .line 1474
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mBaseWaveColor:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveBaseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1475
    return-void
.end method

.method static synthetic access$3102(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;
    .param p1, "x1"    # F

    .prologue
    .line 1430
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->incrementYdown:F

    return p1
.end method

.method static synthetic access$3200(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;)F
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;

    .prologue
    .line 1430
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    return v0
.end method

.method static synthetic access$3302(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;
    .param p1, "x1"    # F

    .prologue
    .line 1430
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->incrementYup:F

    return p1
.end method

.method private initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 1478
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1479
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1480
    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1481
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1482
    return-object v0
.end method


# virtual methods
.method cancelRunningAnimator()V
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1528
    :cond_0
    return-void
.end method

.method drawSweepBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rc"    # Landroid/graphics/Rect;
    .param p3, "sweepProgress"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 1531
    iget v9, p2, Landroid/graphics/Rect;->top:I

    .line 1532
    .local v9, "rcTopOffset":I
    neg-int v0, v9

    invoke-virtual {p2, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1533
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWidth()I

    move-result v8

    .line 1534
    .local v8, "listWidth":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mBaseWaveColor:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1536
    int-to-float v0, v8

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mGradientWidth:F

    add-float/2addr v0, v1

    mul-float v10, v0, p3

    .line 1538
    .local v10, "shift":F
    cmpg-float v0, v10, v2

    if-gez v0, :cond_0

    .line 1539
    neg-float v0, v10

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mGradientWidth:F

    sub-float v7, v0, v1

    .line 1540
    .local v7, "gradientLeft":F
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mGradientWidth:F

    div-float/2addr v0, v5

    add-float v3, v7, v0

    .line 1541
    .local v3, "waveCenterX":F
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mBgLeftGreen:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mBgMiddleBlue:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 1550
    .end local v3    # "waveCenterX":F
    .end local v7    # "gradientLeft":F
    :goto_0
    return-void

    .line 1542
    :cond_0
    cmpl-float v0, v10, v2

    if-lez v0, :cond_1

    .line 1543
    int-to-float v0, v8

    sub-float v7, v0, v10

    .line 1544
    .restart local v7    # "gradientLeft":F
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mGradientWidth:F

    div-float/2addr v0, v5

    add-float v3, v7, v0

    .line 1545
    .restart local v3    # "waveCenterX":F
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mBgMiddleBlue:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mBgRightYellow:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1547
    .end local v3    # "waveCenterX":F
    .end local v7    # "gradientLeft":F
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mMiddleBlueRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1548
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mMiddleBlueRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mBgMiddleBlue:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method drawWaveInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "waveCenterX"    # F
    .param p4, "drawLeftFirst"    # Z
    .param p5, "leftPaint"    # Landroid/graphics/Paint;
    .param p6, "rightPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 1553
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v5, p3, v2

    .line 1554
    .local v5, "startXdown":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->incrementYdown:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float v17, v2, v3

    .line 1555
    .local v17, "startYdown":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWidth()I

    move-result v2

    int-to-float v15, v2

    .line 1556
    .local v15, "listWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathDown:Landroid/graphics/Path;

    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathDown:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    add-float/2addr v3, v5

    move/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathDown:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    add-float v4, v4, v17

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    add-float v6, v6, v17

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    add-float v8, v17, v7

    move v7, v5

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathDown:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    add-float v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    add-float v7, v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    sub-float v8, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    add-float v9, v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float v10, v17, v2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathDown:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    add-float v4, v4, v17

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    add-float v6, v6, v17

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v7, v8

    add-float v8, v17, v7

    move v7, v5

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathDown:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    add-float v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    add-float v6, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    add-float v7, v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    add-float v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    sub-float v8, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    add-float v9, v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    add-float v10, v17, v2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathDown:Landroid/graphics/Path;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v4, v6

    add-float v4, v4, v17

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 1578
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v9, p3, v2

    .line 1579
    .local v9, "startXup":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->incrementYup:F

    move/from16 v18, v0

    .line 1580
    .local v18, "startYup":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathUp:Landroid/graphics/Path;

    move/from16 v0, v18

    invoke-virtual {v2, v15, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathUp:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    add-float/2addr v3, v9

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathUp:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    add-float v7, v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    add-float v8, v18, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    add-float v2, v2, v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    sub-float v10, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    add-float v12, v18, v2

    move v11, v9

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathUp:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    add-float v2, v2, v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    add-float v10, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    add-float v11, v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float v2, v2, v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    sub-float v12, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    add-float v13, v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float v14, v18, v2

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathUp:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    add-float v7, v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float v2, v2, v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    add-float v8, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    add-float v2, v2, v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    sub-float v10, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    add-float v12, v18, v2

    move v11, v9

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1595
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathUp:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    add-float v2, v2, v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    add-float v10, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    add-float v11, v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    add-float v2, v2, v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    sub-float v12, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    add-float v13, v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    add-float v14, v18, v2

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathUp:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    add-float v3, v3, v18

    invoke-virtual {v2, v15, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 1602
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v16

    .line 1603
    .local v16, "saveCount":I
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1604
    if-eqz p4, :cond_0

    .line 1605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathDown:Landroid/graphics/Path;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathUp:Landroid/graphics/Path;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1611
    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1612
    return-void

    .line 1608
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathUp:Landroid/graphics/Path;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathDown:Landroid/graphics/Path;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method initWaveParams(I)V
    .locals 6
    .param p1, "itemIndex"    # I

    .prologue
    .line 1486
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->this$0:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1487
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1489
    .local v1, "itemHeight":I
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathDown:Landroid/graphics/Path;

    .line 1490
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathDown:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1491
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathUp:Landroid/graphics/Path;

    .line 1492
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->mPathUp:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1494
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveHeight:F

    .line 1495
    div-int/lit8 v2, v1, 0xd

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveWidth:F

    .line 1497
    div-int/lit8 v2, v1, 0x4

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveControlPointHeight:F

    .line 1499
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 1500
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1501
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1522
    :goto_0
    return-void

    .line 1503
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveValueAnimator:Landroid/animation/ValueAnimator;

    .line 1504
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground$1;

    invoke-direct {v3, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground$1;-><init>(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1516
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1517
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 1518
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x514

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1519
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->WAVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1520
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$WaveBackground;->waveValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1503
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

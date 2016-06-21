.class Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;
.super Ljava/lang/Object;
.source "TwLangIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexScroll"
.end annotation


# static fields
.field public static final DARK_THEME:I = 0x0

.field public static final FIRST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final LAST_LETTER_NOT_RELEVANT_NOT_MULTI_LANGUAGE:I = -0x1

.field public static final LEFT_HANDLE:I = 0x0

.field public static final LIGHT_THEME:I = 0x1

.field public static final NO_SELECTED_DOT_INDEX:I = -0x1

.field public static final NO_SELECTED_INDEX:I = -0x1

.field public static final RIGHT_HANDLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IndexScroll"


# instance fields
.field private FLOAT_DIV_MULT_ERROR:F

.field private final debug:Z

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetArrayFirstLetterIndex:I

.field private mAlphabetArrayLastLetterIndex:I

.field private mAlphabetArrayToDraw:[Ljava/lang/String;

.field private mAlphabetArrayWithDots:[Ljava/lang/String;

.field private mAlphabetSize:I

.field private mAlphabetToDrawSize:I

.field private mAlphabetWithDotsSize:I

.field private mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

.field private mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

.field private mBgRect:Landroid/graphics/Rect;

.field private mBgRectParamsSet:Z

.field private mBgRectWidth:I

.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field private mDepth:I

.field private mDotRepresentations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

.field private mHandleTextColorPressed:I

.field private mHandleTextColorPressed2ndAct:I

.field private mHeight:I

.field private mIndexScrollViewTheme:I

.field private mItemHeight:F

.field private mItemWidth:I

.field private mItemWidthGap:I

.field private mMaxDepth:I

.field private mMinSeparatorHeight:F

.field private mOrigSelectedDotIndex:I

.field private mOrigSelectedIndex:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPosition:I

.field private mScreenHeight:I

.field private mScrollTop:I

.field private mSelectedIndex:I

.field private mSelectedIndexPositionInOrigAlphabet:[I

.field private mSeparatorColor:I

.field private mSeparatorHeight:F

.field private mSeparatorLeftPos:I

.field private mSeparatorWidth:I

.field private mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColorDimmed:I

.field private mTextSize:I

.field private mWidth:I

.field private mWidthShift:I

.field private m_bAlphabetArrayWithDotsUsed:Z

.field private m_bIsAlphabetInit:Z

.field private m_bSubIndexScrollExists:Z

.field private mbSetDimensionns:Z

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;II)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "height"    # I
    .param p4, "width"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1474
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->debug:Z

    .line 1359
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1366
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1375
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1383
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    .line 1393
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1399
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 1404
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 1428
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    .line 1429
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 1432
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 1433
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 1439
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    .line 1445
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    .line 1454
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1455
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1461
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    .line 1475
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    .line 1476
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    .line 1477
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 1478
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    .line 1479
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    .line 1480
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    .line 1481
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    .line 1482
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 1483
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 1484
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 1485
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->init()V

    .line 1486
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;IIII)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "height"    # I
    .param p4, "width"    # I
    .param p5, "position"    # I
    .param p6, "theme"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1498
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->debug:Z

    .line 1359
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1366
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1375
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1383
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    .line 1393
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1399
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 1404
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 1428
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    .line 1429
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 1432
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 1433
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 1439
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    .line 1445
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    .line 1454
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1455
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1461
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    .line 1499
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    .line 1500
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    .line 1501
    iput p5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    .line 1502
    iput p6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 1504
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 1505
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    .line 1506
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    .line 1507
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    .line 1508
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    .line 1509
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 1510
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 1511
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 1512
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDensity:F

    .line 1513
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->init()V

    .line 1515
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;II[Ljava/lang/String;IIIIIII)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I
    .param p4, "position"    # I
    .param p5, "alphabetArray"    # [Ljava/lang/String;
    .param p6, "scrollTop"    # I
    .param p7, "screenHeight"    # I
    .param p8, "height"    # I
    .param p9, "width"    # I
    .param p10, "widthShift"    # I
    .param p11, "maxDepth"    # I
    .param p12, "depth"    # I

    .prologue
    .line 1535
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->debug:Z

    .line 1359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1366
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1375
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    .line 1393
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1399
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 1404
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 1428
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    .line 1429
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 1432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 1433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 1439
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    .line 1445
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    .line 1454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 1461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    .line 1536
    iput p7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    .line 1537
    iput p8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    .line 1538
    iput p9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    .line 1539
    iput p10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    .line 1540
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 1541
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    .line 1542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 1543
    iput p11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    .line 1544
    iput p12, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    .line 1545
    iput p6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    .line 1546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 1547
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    .line 1548
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    .line 1549
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->init()V

    .line 1550
    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p5, v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    .line 1551
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->initAlphabetArrayWithDotsIfRequired()V

    .line 1552
    return-void
.end method

.method private adjustSeparatorHeightIfRequired()V
    .locals 3

    .prologue
    .line 1848
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 1850
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 1851
    .local v0, "numberOfCharacters":I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .line 1853
    .end local v0    # "numberOfCharacters":I
    :cond_0
    return-void
.end method

.method private allocateBgRectangle()V
    .locals 6

    .prologue
    .line 2655
    const/4 v0, 0x0

    .line 2656
    .local v0, "left":I
    const/4 v1, 0x0

    .line 2658
    .local v1, "right":I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2660
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int v1, v2, v3

    .line 2661
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    sub-int v0, v1, v2

    .line 2666
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v4, v5

    invoke-direct {v2, v0, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    .line 2667
    return-void

    .line 2663
    :cond_0
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int v1, v2, v3

    .line 2664
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    goto :goto_0
.end method

.method private calculateShift(III)I
    .locals 5
    .param p1, "lastIndexShift"    # I
    .param p2, "origFirstDotLocation"    # I
    .param p3, "origLastDotLocation"    # I

    .prologue
    .line 2063
    const/4 v0, 0x0

    .line 2064
    .local v0, "calculatedShift":I
    move v2, p2

    .line 2065
    .local v2, "upperGap":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v3, v3, -0x1

    sub-int v1, v3, p3

    .line 2068
    .local v1, "lowerGap":I
    sub-int v3, v2, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 2071
    if-le v1, v2, :cond_1

    .line 2074
    sub-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v4, p1

    sub-int/2addr v4, p3

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2083
    :cond_0
    :goto_0
    return v0

    .line 2080
    :cond_1
    sub-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    sub-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private drawAlphabetCharacters(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2756
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2757
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextSize:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2759
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 2761
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    aget-object v1, v5, v0

    .line 2762
    .local v1, "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2763
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 2764
    .local v4, "width":F
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v4

    sub-float v2, v5, v6

    .line 2765
    .local v2, "textPosX":F
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v6, v6

    int-to-double v8, v0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    float-to-double v8, v8

    sub-double/2addr v6, v8

    double-to-float v6, v6

    add-float v3, v5, v6

    .line 2768
    .local v3, "textPosY":F
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ne v0, v5, :cond_1

    .line 2770
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 2771
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed2ndAct:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2775
    :goto_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 2776
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2778
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 2779
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2759
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2773
    :cond_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 2782
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 2785
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "textPosX":F
    .end local v3    # "textPosY":F
    .end local v4    # "width":F
    :cond_2
    return-void
.end method

.method private drawBgRectangle(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x1

    .line 2676
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    if-nez v0, :cond_0

    .line 2678
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 2679
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    .line 2682
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-ge v0, v1, :cond_1

    .line 2684
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2690
    :goto_0
    return-void

    .line 2685
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-ge v0, v1, :cond_2

    .line 2686
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2688
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawSelectedIndexRect(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2794
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-lt v0, v1, :cond_1

    .line 2802
    :cond_0
    :goto_0
    return-void

    .line 2799
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v4, v4

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2801
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawSeparators(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    .line 2731
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2733
    const/4 v6, 0x1

    .local v6, "index":I
    :goto_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-ge v6, v0, :cond_2

    .line 2736
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-eq v6, v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v0, v0, 0x1

    if-ne v6, v0, :cond_1

    .line 2733
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2741
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDensity:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v2, v0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 2746
    :cond_2
    return-void
.end method

.method private getDotIndexByY(I)Ljava/lang/String;
    .locals 14
    .param p1, "y"    # I

    .prologue
    .line 2420
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    if-ne v6, v7, :cond_0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v6, v6

    if-ge v7, v6, :cond_0

    .line 2424
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    aget-object v6, v6, v7

    .line 2459
    :goto_0
    return-object v6

    .line 2427
    :cond_0
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v4, v6

    .line 2431
    .local v4, "numberOfElements":I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I
    invoke-static {v6}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$900(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 2433
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1100(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v7

    # setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollLogic:I
    invoke-static {v6, v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1002(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)I

    .line 2434
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-double v6, v6

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v8, v8

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v5, v6

    .line 2435
    .local v5, "selectedIndexTop":I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v1, v6, v7

    .line 2444
    .local v1, "generalHeight":F
    :goto_1
    int-to-float v6, p1

    int-to-float v7, v5

    sub-float v3, v6, v7

    .line 2445
    .local v3, "internalHeight":F
    int-to-float v6, v4

    mul-float/2addr v6, v3

    div-float v0, v6, v1

    .line 2446
    .local v0, "floatIndex":F
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 2449
    .local v2, "index":I
    if-lt v2, v4, :cond_3

    .line 2451
    add-int/lit8 v2, v4, -0x1

    .line 2457
    :cond_1
    :goto_2
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 2458
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 2459
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v2

    goto :goto_0

    .line 2439
    .end local v0    # "floatIndex":F
    .end local v1    # "generalHeight":F
    .end local v2    # "index":I
    .end local v3    # "internalHeight":F
    .end local v5    # "selectedIndexTop":I
    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v7

    # setter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollLogic:I
    invoke-static {v6, v7}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1002(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;I)I

    .line 2440
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 2441
    .restart local v5    # "selectedIndexTop":I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .restart local v1    # "generalHeight":F
    goto :goto_1

    .line 2453
    .restart local v0    # "floatIndex":F
    .restart local v2    # "index":I
    .restart local v3    # "internalHeight":F
    :cond_3
    if-gez v2, :cond_1

    .line 2455
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getIndexByY(I)Ljava/lang/String;
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_3

    .line 2367
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 2383
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2385
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 2388
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2390
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-nez v0, :cond_5

    .line 2392
    const-string v0, ""

    .line 2401
    :goto_1
    return-object v0

    .line 2369
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_4

    .line 2371
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_0

    .line 2375
    :cond_4
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 2376
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-ne v0, v1, :cond_0

    .line 2378
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_0

    .line 2396
    :cond_5
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v1

    goto :goto_1

    .line 2401
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private init()V
    .locals 4

    .prologue
    const v3, 0x206000d

    .line 1795
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1796
    .local v0, "rsrc":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    .line 1797
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1798
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1800
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    .line 1801
    const v1, 0x2060010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    .line 1803
    const v1, 0x206000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextSize:I

    .line 1804
    const v1, 0x2060027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    .line 1805
    const v1, 0x2060028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    .line 1806
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    .line 1807
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setIndexScrollViewTheme(I)V

    .line 1809
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->allocateBgRectangle()V

    .line 1811
    return-void
.end method

.method private initAlphabetArrayWithDotsIfRequired()V
    .locals 24

    .prologue
    .line 1865
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 2048
    :goto_0
    return-void

    .line 1869
    :cond_0
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    .line 1871
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    move/from16 v23, v0

    add-float v22, v22, v23

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_1

    .line 1873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    .line 1874
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    goto :goto_0

    .line 1880
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v5, v0

    .line 1881
    .local v5, "alphabetWithDotsSizeCandidate":I
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ge v5, v0, :cond_2

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    .line 1884
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    goto :goto_0

    .line 1887
    :cond_2
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    .line 1888
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    .line 1889
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    .line 1891
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    .line 1893
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v22, v0

    sub-int v15, v21, v22

    .line 1895
    .local v15, "numberOfMissingElements":I
    int-to-double v0, v15

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    add-int/lit8 v12, v21, 0x1

    .line 1900
    .local v12, "numberOfDots":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 1902
    const/4 v11, 0x1

    .line 1912
    .local v11, "lastIndexShift":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    div-int v21, v21, v12

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_3

    .line 1914
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    div-int/lit8 v12, v21, 0x2

    .line 1924
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    div-int v21, v21, v12

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 1926
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    div-int/lit8 v12, v21, 0x3

    .line 1929
    if-nez v12, :cond_4

    .line 1930
    const/4 v12, 0x1

    .line 1938
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    div-int v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    .line 1942
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x2

    div-int v12, v21, v22

    .line 1945
    :cond_5
    move/from16 v16, v12

    .line 1949
    .local v16, "numberOfRemainingDots":I
    add-int v21, v15, v12

    div-int v21, v21, v12

    add-int/lit8 v13, v21, 0x1

    .line 1956
    .local v13, "numberOfElementsRepresentedByEachDot":I
    :goto_2
    add-int/lit8 v21, v13, -0x1

    mul-int v21, v21, v12

    add-int v22, v15, v12

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_7

    .line 1958
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 1906
    .end local v11    # "lastIndexShift":I
    .end local v13    # "numberOfElementsRepresentedByEachDot":I
    .end local v16    # "numberOfRemainingDots":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    move/from16 v21, v0

    add-int/lit8 v11, v21, 0x1

    .restart local v11    # "lastIndexShift":I
    goto/16 :goto_1

    .line 1960
    .restart local v13    # "numberOfElementsRepresentedByEachDot":I
    .restart local v16    # "numberOfRemainingDots":I
    :cond_7
    const/4 v9, 0x0

    .line 1961
    .local v9, "index":I
    const/4 v4, 0x0

    .line 1967
    .local v4, "alphabetIndex":I
    add-int v21, v15, v12

    rem-int v14, v21, v13

    .line 1969
    .local v14, "numberOfElementsRepresentedByLastDot":I
    const/4 v6, 0x0

    .line 1971
    .local v6, "bPerfectDotsSpreadingExists":Z
    const/4 v10, 0x0

    .line 1975
    .local v10, "indexShift":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v14, v0, :cond_c

    .line 1977
    add-int/lit8 v21, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->perfectDotsSpreadingExists(II)Z

    move-result v6

    .line 1978
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    div-int v7, v21, v12

    .line 1987
    .local v7, "distanceBetweenConsecutiveDots":I
    :goto_3
    const/16 v17, 0x0

    .line 1988
    .local v17, "origFirstDotLocation":I
    const/16 v18, 0x0

    .line 1989
    .local v18, "origLastDotLocation":I
    if-nez v6, :cond_8

    .line 1991
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    div-int v7, v21, v12

    .line 1992
    add-int/lit8 v17, v7, -0x1

    .line 1993
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v14, v0, :cond_d

    add-int/lit8 v21, v12, -0x1

    mul-int v21, v21, v7

    add-int/lit8 v18, v21, -0x1

    .line 1994
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->calculateShift(III)I

    move-result v10

    .line 1997
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v4, v0, :cond_11

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    move-object/from16 v21, v0

    aput v4, v21, v9

    .line 2003
    if-eqz v6, :cond_9

    add-int/lit8 v21, v9, 0x1

    rem-int v21, v21, v7

    if-gtz v21, :cond_b

    :cond_9
    if-nez v6, :cond_e

    if-lez v10, :cond_a

    move/from16 v0, v17

    if-le v9, v0, :cond_b

    :cond_a
    add-int/lit8 v21, v9, 0x1

    sub-int v21, v21, v10

    rem-int v21, v21, v7

    if-gtz v21, :cond_b

    if-eqz v16, :cond_b

    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v14, v0, :cond_e

    .line 2014
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v4

    aput-object v22, v21, v9

    .line 2015
    add-int/lit8 v4, v4, 0x1

    .line 2042
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1983
    .end local v7    # "distanceBetweenConsecutiveDots":I
    .end local v17    # "origFirstDotLocation":I
    .end local v18    # "origLastDotLocation":I
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->perfectDotsSpreadingExists(II)Z

    move-result v6

    .line 1984
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v22, v12, 0x1

    div-int v7, v21, v22

    .restart local v7    # "distanceBetweenConsecutiveDots":I
    goto/16 :goto_3

    .line 1993
    .restart local v17    # "origFirstDotLocation":I
    .restart local v18    # "origLastDotLocation":I
    :cond_d
    mul-int v21, v7, v12

    add-int/lit8 v18, v21, -0x1

    goto :goto_4

    .line 2019
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "."

    aput-object v22, v21, v9

    .line 2020
    move/from16 v19, v4

    .line 2022
    .local v19, "prevAlphabetIndex":I
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    .line 2024
    add-int/2addr v4, v13

    .line 2034
    :goto_7
    sub-int v21, v4, v19

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2035
    .local v20, "tempDotAlphaBet":[Ljava/lang/String;
    move/from16 v8, v19

    .local v8, "i":I
    :goto_8
    if-ge v8, v4, :cond_10

    .line 2036
    sub-int v21, v8, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v8

    aput-object v22, v20, v21

    .line 2035
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 2030
    .end local v8    # "i":I
    .end local v20    # "tempDotAlphaBet":[Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    sub-int v22, v22, v9

    sub-int v4, v21, v22

    goto :goto_7

    .line 2038
    .restart local v8    # "i":I
    .restart local v20    # "tempDotAlphaBet":[Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    add-int/lit8 v16, v16, -0x1

    goto :goto_6

    .line 2045
    .end local v8    # "i":I
    .end local v19    # "prevAlphabetIndex":I
    .end local v20    # "tempDotAlphaBet":[Ljava/lang/String;
    :cond_11
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayWithDots:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    .line 2047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    goto/16 :goto_0
.end method

.method private isInSelectedIndexRect(I)Z
    .locals 8
    .param p1, "y"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2491
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 2502
    :cond_1
    :goto_0
    return v0

    .line 2495
    :cond_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mScrollLogic:I
    invoke-static {v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1000(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I
    invoke-static {v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1200(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 2497
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-lt p1, v2, :cond_3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-le p1, v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 2502
    :cond_4
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    if-lt p1, v2, :cond_5

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    if-le p1, v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private isInSelectedIndexVerticalRange(I)Z
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 2480
    const/4 v0, 0x1

    return v0
.end method

.method private isSelectedIndexDot(I)Z
    .locals 3
    .param p1, "mSelectedIndex"    # I

    .prologue
    const/4 v0, 0x1

    .line 2350
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private perfectDotsSpreadingExists(II)Z
    .locals 4
    .param p1, "numberOfDots"    # I
    .param p2, "lastIndexShift"    # I

    .prologue
    const/4 v1, 0x0

    .line 2097
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, 0x1

    rem-int/2addr v2, v3

    if-lez v2, :cond_1

    .line 2105
    :cond_0
    :goto_0
    return v1

    .line 2101
    :cond_1
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, 0x1

    div-int v0, v2, v3

    .line 2105
    .local v0, "dotsGap":I
    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetWithDotsSize:I

    sub-int/2addr v3, p2

    if-ge v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setBgRectParams()V
    .locals 6

    .prologue
    .line 2699
    const/4 v0, 0x0

    .line 2700
    .local v0, "left":I
    const/4 v1, 0x0

    .line 2702
    .local v1, "right":I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2704
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int v1, v2, v3

    .line 2705
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    sub-int v0, v1, v2

    .line 2713
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v4, v5

    invoke-direct {v2, v0, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    .line 2714
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2716
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 2717
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2719
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 2720
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2721
    :cond_1
    return-void

    .line 2709
    :cond_2
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int v1, v2, v3

    .line 2710
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    goto :goto_0
.end method


# virtual methods
.method public addSubIndex([Ljava/lang/String;)V
    .locals 14
    .param p1, "alphabetArray"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2117
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    .line 2160
    :cond_0
    :goto_0
    return-void

    .line 2122
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    if-eq v0, v1, :cond_0

    .line 2127
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 2132
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-ne v0, v2, :cond_2

    .line 2134
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->addSubIndex([Ljava/lang/String;)V

    goto :goto_0

    .line 2139
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2144
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 2145
    array-length v13, p1

    .line 2148
    .local v13, "alphabetSize":I
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v1, v13

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2155
    .local v8, "height":I
    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v2

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v4, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v10

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    sub-int/2addr v2, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2157
    .local v6, "scrollTop":I
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    add-int/lit8 v12, v5, 0x1

    move-object v5, p1

    invoke-direct/range {v0 .. v12}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;-><init>(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;II[Ljava/lang/String;IIIIIII)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2622
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    .line 2629
    :cond_0
    :goto_0
    return-void

    .line 2626
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->drawScroll(Landroid/graphics/Canvas;)V

    .line 2627
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v0, :cond_0

    .line 2628
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawScroll(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2639
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->drawBgRectangle(Landroid/graphics/Canvas;)V

    .line 2640
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2642
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->drawSelectedIndexRect(Landroid/graphics/Canvas;)V

    .line 2644
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->drawSeparators(Landroid/graphics/Canvas;)V

    .line 2645
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->drawAlphabetCharacters(Landroid/graphics/Canvas;)V

    .line 2646
    return-void
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 1622
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    .line 1624
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    .line 1628
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1691
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    return v0
.end method

.method public getIndexByPosition(II)Ljava/lang/String;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 2249
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 2250
    const-string v3, ""

    .line 2339
    :cond_0
    :goto_0
    return-object v3

    .line 2252
    :cond_1
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v4, :cond_2

    .line 2254
    const-string v3, ""

    goto :goto_0

    .line 2256
    :cond_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt p1, v4, :cond_4

    :cond_3
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v4, v7, :cond_5

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-le p1, v4, :cond_5

    .line 2258
    :cond_4
    const-string v3, ""

    goto :goto_0

    .line 2260
    :cond_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt p1, v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-gt p1, v4, :cond_a

    .line 2263
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v3, v7, :cond_9

    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2265
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2267
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v3, :cond_6

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_7

    .line 2268
    :cond_6
    const-string v3, ""

    goto :goto_0

    .line 2270
    :cond_7
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v3, v3, v4

    goto :goto_0

    .line 2273
    :cond_8
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2277
    :cond_9
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2283
    :cond_a
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v4, :cond_11

    .line 2285
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    if-ge v4, v5, :cond_c

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v4, :cond_b

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    :cond_b
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v4, v7, :cond_c

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    if-le p1, v4, :cond_0

    .line 2294
    :cond_c
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v3, v7, :cond_10

    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2296
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v3}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 2298
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v3, :cond_d

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_e

    .line 2299
    :cond_d
    const-string v3, ""

    goto/16 :goto_0

    .line 2301
    :cond_e
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v3, v3, v4

    goto/16 :goto_0

    .line 2304
    :cond_f
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 2308
    :cond_10
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 2316
    :cond_11
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_12

    .line 2317
    const-string v0, ""

    .line 2335
    .local v0, "currentSubIndexString":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v2

    .line 2336
    .local v2, "nextSubIndexStrings":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 2320
    .end local v0    # "currentSubIndexString":Ljava/lang/String;
    .end local v2    # "nextSubIndexStrings":Ljava/lang/String;
    :cond_12
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v4

    if-nez v4, :cond_15

    .line 2323
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v4, :cond_13

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v4, :cond_13

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_14

    .line 2324
    :cond_13
    const-string v3, ""

    goto/16 :goto_0

    .line 2326
    :cond_14
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v4, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "currentSubIndexString":Ljava/lang/String;
    goto :goto_1

    .line 2327
    .end local v0    # "currentSubIndexString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2328
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, ""

    .line 2329
    .restart local v0    # "currentSubIndexString":Ljava/lang/String;
    goto :goto_1

    .line 2331
    .end local v0    # "currentSubIndexString":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_15
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "currentSubIndexString":Ljava/lang/String;
    goto :goto_1
.end method

.method public getItemHeight()F
    .locals 1

    .prologue
    .line 1682
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    return v0
.end method

.method public getItemPlusSpaceWidth()I
    .locals 2

    .prologue
    .line 1603
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemWidth()I
    .locals 1

    .prologue
    .line 1612
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    return v0
.end method

.method public getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDepth()I
    .locals 1

    .prologue
    .line 1572
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    return v0
.end method

.method public getNumberOfSmallerOrEqualIndexes(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 1592
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v1, :cond_0

    move v0, p1

    .line 1593
    .local v0, "xCord":I
    :goto_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v1, v2

    div-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 1592
    .end local v0    # "xCord":I
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    sub-int v0, v1, p1

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1639
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    return v0
.end method

.method public getSelectedIndex()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1655
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    if-nez v1, :cond_1

    .line 1657
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 1670
    :cond_0
    :goto_0
    return v0

    .line 1661
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1664
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    if-eq v1, v0, :cond_2

    .line 1666
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget v0, v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 1670
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public hasSubIndex()Z
    .locals 1

    .prologue
    .line 2217
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    return v0
.end method

.method public isAlphabetInit()Z
    .locals 1

    .prologue
    .line 1561
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    return v0
.end method

.method public removeAllSubIndexes()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2191
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    .line 2208
    :goto_0
    return-void

    .line 2193
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->hasSubIndex()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2195
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 2196
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 2197
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 2198
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    goto :goto_0

    .line 2202
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    .line 2203
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 2204
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 2205
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 2206
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    goto :goto_0
.end method

.method public removeSubIndex()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2168
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    .line 2183
    :goto_0
    return-void

    .line 2172
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->hasSubIndex()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2174
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    .line 2175
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    .line 2176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    .line 2177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    goto :goto_0

    .line 2181
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->removeSubIndex()V

    goto :goto_0
.end method

.method public resetSelectedIndex()V
    .locals 1

    .prologue
    .line 2611
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    .line 2612
    return-void
.end method

.method public setAlphabetArray([Ljava/lang/String;II)V
    .locals 3
    .param p1, "alphabetArray"    # [Ljava/lang/String;
    .param p2, "alphabetArrayFirstLetterIndex"    # I
    .param p3, "alphabetArrayLastLetterIndex"    # I

    .prologue
    const/4 v2, 0x1

    .line 1823
    if-nez p1, :cond_0

    .line 1839
    :goto_0
    return-void

    .line 1827
    :cond_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    .line 1828
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    .line 1829
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    .line 1830
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    .line 1834
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    .line 1835
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .line 1837
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    .line 1838
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    goto :goto_0
.end method

.method public setDefaultIndexScrollWidth()V
    .locals 3

    .prologue
    const v2, 0x206000d

    .line 1717
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1718
    .local v0, "rsrc":Landroid/content/res/Resources;
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    .line 1719
    const v1, 0x2060028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    .line 1720
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    .line 1721
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->allocateBgRectangle()V

    .line 1722
    return-void
.end method

.method public setDimensionns(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1768
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    .line 1786
    :cond_0
    :goto_0
    return-void

    .line 1773
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    if-ne v0, p2, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    if-eqz v0, :cond_0

    .line 1777
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    .line 1778
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    .line 1779
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    .line 1780
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    .line 1781
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    .line 1782
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    .line 1783
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->adjustSeparatorHeightIfRequired()V

    .line 1784
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    .line 1785
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->initAlphabetArrayWithDotsIfRequired()V

    goto :goto_0
.end method

.method public setIndexScrollViewTheme(I)V
    .locals 5
    .param p1, "theme"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2514
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v1, :cond_0

    .line 2603
    :goto_0
    return-void

    .line 2519
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    .line 2520
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2523
    .local v0, "rsrc":Landroid/content/res/Resources;
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    if-nez v1, :cond_4

    .line 2525
    const v1, 0x20500c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    .line 2527
    const v1, 0x20500c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    .line 2528
    const v1, 0x20500c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    .line 2529
    const v1, 0x20500c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed2ndAct:I

    .line 2531
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v1, v2, :cond_3

    .line 2533
    const v1, 0x2020239

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 2534
    const v1, 0x2020227

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 2535
    const v1, 0x2020237

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 2537
    const v1, 0x2020225

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 2538
    const v1, 0x2020235

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 2549
    :goto_1
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-le v1, v2, :cond_1

    .line 2551
    const v1, 0x202022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 2588
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mEnableCustomTheme:Z
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1300(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2589
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1400(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 2590
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1500(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 2591
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmSeparatorColor:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    if-eq v1, v4, :cond_8

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmSeparatorColor:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1600(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    :goto_5
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    .line 2592
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    if-eq v1, v4, :cond_9

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmTextColorDimmed:I
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1700(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    :goto_6
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    .line 2593
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 2594
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 2596
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-le v1, v2, :cond_2

    .line 2598
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    # getter for: Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->access$1800(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_7
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 2602
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    goto/16 :goto_0

    .line 2542
    :cond_3
    const v1, 0x2020231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 2543
    const v1, 0x2020223

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 2544
    const v1, 0x202022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 2546
    const v1, 0x2020221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 2547
    const v1, 0x202022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 2558
    :cond_4
    const v1, 0x20500d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    .line 2559
    const v1, 0x20500cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    .line 2560
    const v1, 0x20500ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    .line 2561
    const v1, 0x20500d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed2ndAct:I

    .line 2563
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v1, v2, :cond_5

    .line 2565
    const v1, 0x20202bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 2566
    const v1, 0x20202b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 2567
    const v1, 0x20202ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 2569
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 2570
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    .line 2581
    :goto_8
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-le v1, v2, :cond_1

    .line 2583
    const v1, 0x202022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 2574
    :cond_5
    const v1, 0x2020232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 2575
    const v1, 0x2020224

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    .line 2576
    const v1, 0x2020230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    .line 2578
    const v1, 0x2020222

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    .line 2579
    const v1, 0x202022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    goto :goto_8

    .line 2589
    :cond_6
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    .line 2590
    :cond_7
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    .line 2591
    :cond_8
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    goto/16 :goto_5

    .line 2592
    :cond_9
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    goto/16 :goto_6

    .line 2598
    :cond_a
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_7
.end method

.method public setMaxDepth(I)V
    .locals 0
    .param p1, "maxDepth"    # I

    .prologue
    .line 1731
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    .line 1732
    return-void
.end method

.method public setPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1741
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v0, :cond_0

    .line 1758
    :goto_0
    return-void

    .line 1746
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    .line 1747
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setIndexScrollViewTheme(I)V

    .line 1748
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1750
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    .line 1756
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    goto :goto_0

    .line 1754
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    goto :goto_1
.end method

.method public setSimpleIndexScrollWidth(I)V
    .locals 0
    .param p1, "itemWidth"    # I

    .prologue
    .line 1703
    if-gtz p1, :cond_0

    .line 1710
    :goto_0
    return-void

    .line 1706
    :cond_0
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    .line 1707
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    .line 1708
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    .line 1709
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$IndexScroll;->allocateBgRectangle()V

    goto :goto_0
.end method

.class public Lcom/sec/android/touchwiz/widget/TwHorizontalListView;
.super Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;
.source "TwHorizontalListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;,
        Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final BITS_PER_LONG:I = 0x40

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TwHorizontalListView"

.field private static final XML_FIXED_SIZE_ITEMS_ATTRIBUTE:Ljava/lang/String; = "fixed_size_items"

.field private static final XML_SEC_ANDROID_NAMESPACE:Ljava/lang/String; = "http://schemas.android.samsung.com.samsung.android"


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

.field private final mFixedSizeItems:Z

.field private mFocusSelector:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mIsDeviceDefaultTheme:Z

.field mIsFolderTypeFeature:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 187
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 195
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 129
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 130
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 144
    iput-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAreAllItemsSelectable:Z

    .line 146
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemsCanFocus:Z

    .line 148
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsDeviceDefaultTheme:Z

    .line 151
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 154
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsFolderTypeFeature:Z

    .line 158
    new-instance v6, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView$1;)V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;

    .line 197
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 200
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 202
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 203
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 208
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 215
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    .line 216
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :cond_2
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 221
    .local v4, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 222
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 226
    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 228
    .local v2, "dividerHeight":I
    if-eqz v2, :cond_4

    .line 229
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setDividerHeight(I)V

    .line 232
    :cond_4
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderDividersEnabled:Z

    .line 233
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterDividersEnabled:Z

    .line 235
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 237
    invoke-static {p1}, Landroid/util/GeneralUtil;->isDeviceDefault(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsDeviceDefaultTheme:Z

    .line 239
    if-eqz p2, :cond_5

    .line 240
    const-string v6, "http://schemas.android.samsung.com.samsung.android"

    const-string v7, "fixed_size_items"

    invoke-interface {p2, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFixedSizeItems:Z

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_5
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFixedSizeItems:Z

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;)Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    return-object v0
.end method

.method private addViewLeftSide(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 3260
    add-int/lit8 v2, p2, -0x1

    .line 3261
    .local v2, "abovePosition":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3262
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3264
    .local v3, "edgeOfNewChild":I
    if-eqz v1, :cond_0

    .line 3265
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3268
    :cond_0
    return-object v1
.end method

.method private addViewRightSide(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 3272
    add-int/lit8 v2, p2, 0x1

    .line 3273
    .local v2, "belowPosition":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3274
    .local v1, "view":Landroid/view/View;
    const/4 v3, 0x0

    .line 3275
    .local v3, "edgeOfNewChild":I
    if-eqz p1, :cond_0

    .line 3276
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3278
    :cond_0
    if-eqz v1, :cond_1

    .line 3279
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3282
    :cond_1
    return-object v1
.end method

.method private adjustViewsLeftOrRight()V
    .locals 6

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v1

    .line 263
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 266
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 269
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v4

    .line 271
    .local v2, "delta":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 274
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 276
    :cond_0
    if-gez v2, :cond_1

    .line 278
    const/4 v2, 0x0

    .line 296
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 297
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    .line 300
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 282
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 283
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 285
    .restart local v2    # "delta":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 288
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 291
    :cond_4
    if-lez v2, :cond_1

    .line 292
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private amountToScroll(II)I
    .locals 12
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .prologue
    .line 2864
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v5, v10, v11

    .line 2865
    .local v5, "listRight":I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    .line 2867
    .local v4, "listLeft":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v7

    .line 2869
    .local v7, "numChildren":I
    const/16 v10, 0x42

    if-ne p1, v10, :cond_6

    .line 2870
    add-int/lit8 v3, v7, -0x1

    .line 2871
    .local v3, "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 2872
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2874
    :cond_0
    :goto_0
    if-gt v7, v3, :cond_1

    .line 2876
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    .line 2877
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2879
    :cond_1
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2880
    .local v8, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2882
    .local v9, "viewToMakeVisible":Landroid/view/View;
    move v2, v5

    .line 2883
    .local v2, "goalRight":I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_2

    .line 2884
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v2, v10

    .line 2887
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    if-gt v10, v2, :cond_3

    .line 2889
    const/4 v10, 0x0

    .line 2941
    .end local v2    # "goalRight":I
    :goto_1
    return v10

    .line 2892
    .restart local v2    # "goalRight":I
    :cond_3
    const/4 v10, -0x1

    if-eq p2, v10, :cond_4

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v2, v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_4

    .line 2895
    const/4 v10, 0x0

    goto :goto_1

    .line 2898
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v0, v10, v2

    .line 2900
    .local v0, "amountToScroll":I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    if-ne v10, v11, :cond_5

    .line 2902
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int v6, v10, v5

    .line 2903
    .local v6, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2906
    .end local v6    # "max":I
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_1

    .line 2908
    .end local v0    # "amountToScroll":I
    .end local v2    # "goalRight":I
    .end local v3    # "indexToMakeVisible":I
    .end local v8    # "positionToMakeVisible":I
    .end local v9    # "viewToMakeVisible":Landroid/view/View;
    :cond_6
    const/4 v3, 0x0

    .line 2909
    .restart local v3    # "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_7

    .line 2910
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2912
    :cond_7
    :goto_2
    if-gez v3, :cond_8

    .line 2914
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    .line 2915
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    .line 2916
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_2

    .line 2918
    :cond_8
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2919
    .restart local v8    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2920
    .restart local v9    # "viewToMakeVisible":Landroid/view/View;
    move v1, v4

    .line 2921
    .local v1, "goalLeft":I
    if-lez v8, :cond_9

    .line 2922
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v1, v10

    .line 2924
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v10, v1, :cond_a

    .line 2926
    const/4 v10, 0x0

    goto :goto_1

    .line 2929
    :cond_a
    const/4 v10, -0x1

    if-eq p2, v10, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_b

    .line 2932
    const/4 v10, 0x0

    goto :goto_1

    .line 2935
    :cond_b
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v0, v1, v10

    .line 2936
    .restart local v0    # "amountToScroll":I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    if-nez v10, :cond_c

    .line 2938
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v6, v4, v10

    .line 2939
    .restart local v6    # "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2941
    .end local v6    # "max":I
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_1
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 4
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .prologue
    .line 3133
    const/4 v0, 0x0

    .line 3134
    .local v0, "amountToScroll":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3135
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3136
    const/16 v2, 0x11

    if-ne p1, v2, :cond_1

    .line 3137
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_0

    .line 3138
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 3139
    if-lez p3, :cond_0

    .line 3140
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3152
    :cond_0
    :goto_0
    return v0

    .line 3144
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    .line 3145
    .local v1, "listRight":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v2, v1, :cond_0

    .line 3146
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v1

    .line 3147
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_0

    .line 3148
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private arrowScrollFocused(I)Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;
    .locals 17
    .param p1, "direction"    # I

    .prologue
    .line 3031
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v12

    .line 3033
    .local v12, "selectedView":Landroid/view/View;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3034
    invoke-virtual {v12}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 3035
    .local v8, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 3060
    .end local v8    # "oldFocus":Landroid/view/View;
    .local v7, "newFocus":Landroid/view/View;
    :goto_0
    if-eqz v7, :cond_c

    .line 3061
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 3065
    .local v9, "positionOfNewFocus":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    if-eq v9, v14, :cond_a

    .line 3066
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePositionOnScreen(I)I

    move-result v11

    .line 3067
    .local v11, "selectablePosition":I
    const/4 v14, -0x1

    if-eq v11, v14, :cond_a

    const/16 v14, 0x42

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    if-lt v11, v9, :cond_1

    :cond_0
    const/16 v14, 0x11

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    if-le v11, v9, :cond_a

    .line 3070
    :cond_1
    const/4 v14, 0x0

    .line 3092
    .end local v9    # "positionOfNewFocus":I
    .end local v11    # "selectablePosition":I
    :goto_1
    return-object v14

    .line 3037
    .end local v7    # "newFocus":Landroid/view/View;
    :cond_2
    const/16 v14, 0x42

    move/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 3038
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    if-lez v14, :cond_3

    const/4 v3, 0x1

    .line 3039
    .local v3, "leftFadingEdgeShowing":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_3
    add-int v4, v15, v14

    .line 3041
    .local v4, "listLeft":I
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    if-le v14, v4, :cond_5

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 3045
    .local v13, "xSearchPoint":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3057
    .end local v3    # "leftFadingEdgeShowing":Z
    .end local v4    # "listLeft":I
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "newFocus":Landroid/view/View;
    goto :goto_0

    .line 3038
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v13    # "xSearchPoint":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 3039
    .restart local v3    # "leftFadingEdgeShowing":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .restart local v4    # "listLeft":I
    :cond_5
    move v13, v4

    .line 3041
    goto :goto_4

    .line 3047
    .end local v3    # "leftFadingEdgeShowing":Z
    .end local v4    # "listLeft":I
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    if-ge v14, v15, :cond_7

    const/4 v10, 0x1

    .line 3049
    .local v10, "rightFadingEdgeShowing":Z
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v15, v14, v15

    if-eqz v10, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_7
    sub-int v5, v15, v14

    .line 3051
    .local v5, "listRight":I
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    if-ge v14, v5, :cond_9

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    .line 3055
    .restart local v13    # "xSearchPoint":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v13, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 3047
    .end local v5    # "listRight":I
    .end local v10    # "rightFadingEdgeShowing":Z
    .end local v13    # "xSearchPoint":I
    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    .line 3049
    .restart local v10    # "rightFadingEdgeShowing":Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_7

    .restart local v5    # "listRight":I
    :cond_9
    move v13, v5

    .line 3051
    goto :goto_8

    .line 3074
    .end local v5    # "listRight":I
    .end local v10    # "rightFadingEdgeShowing":Z
    .restart local v7    # "newFocus":Landroid/view/View;
    .restart local v9    # "positionOfNewFocus":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v2

    .line 3076
    .local v2, "focusScroll":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getMaxScrollAmount()I

    move-result v6

    .line 3077
    .local v6, "maxScrollAmount":I
    if-ge v2, v6, :cond_b

    .line 3079
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3080
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    .line 3081
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 3082
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_c

    .line 3087
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 3088
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;->populate(II)V

    .line 3089
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mArrowScrollFocusResult:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;

    goto/16 :goto_1

    .line 3092
    .end local v2    # "focusScroll":I
    .end local v6    # "maxScrollAmount":I
    .end local v9    # "positionOfNewFocus":I
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private arrowScrollImpl(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 2647
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 2722
    :cond_0
    :goto_0
    return v9

    .line 2651
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2652
    .local v6, "selectedView":Landroid/view/View;
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    .line 2654
    .local v5, "selectedPos":I
    invoke-direct {p0, v6, v5, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v4

    .line 2655
    .local v4, "nextSelectedPosition":I
    invoke-direct {p0, p1, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->amountToScroll(II)I

    move-result v0

    .line 2658
    .local v0, "amountToScroll":I
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_b

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->arrowScrollFocused(I)Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2659
    .local v1, "focusResult":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;
    :goto_1
    if-eqz v1, :cond_2

    .line 2660
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2661
    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2664
    :cond_2
    if-eqz v1, :cond_c

    move v3, v8

    .line 2665
    .local v3, "needToRedraw":Z
    :goto_2
    if-eq v4, v10, :cond_4

    .line 2666
    if-eqz v1, :cond_d

    move v7, v8

    :goto_3
    invoke-direct {p0, v6, p1, v4, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2667
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectedPositionInt(I)V

    .line 2668
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2669
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2670
    move v5, v4

    .line 2671
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    .line 2674
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2675
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2676
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2679
    .end local v2    # "focused":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    .line 2680
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->checkSelectionChanged()V

    .line 2683
    :cond_4
    if-lez v0, :cond_5

    .line 2684
    const/16 v7, 0x11

    if-ne p1, v7, :cond_e

    .end local v0    # "amountToScroll":I
    :goto_4
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->scrollListItemsBy(I)V

    .line 2685
    const/4 v3, 0x1

    .line 2690
    :cond_5
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_7

    if-nez v1, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2692
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2693
    .restart local v2    # "focused":Landroid/view/View;
    invoke-direct {p0, v2, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_7

    .line 2694
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2699
    .end local v2    # "focused":Landroid/view/View;
    :cond_7
    if-ne v4, v10, :cond_8

    if-eqz v6, :cond_8

    invoke-direct {p0, v6, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2701
    const/4 v6, 0x0

    .line 2702
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 2703
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->hideSelector()V

    .line 2707
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mResurrectToPosition:I

    .line 2710
    :cond_8
    if-eqz v3, :cond_0

    .line 2711
    if-eqz v6, :cond_9

    .line 2712
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 2713
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedLeft:I

    .line 2715
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_a

    .line 2716
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    .line 2718
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invokeOnItemScrollListener()V

    move v9, v8

    .line 2719
    goto/16 :goto_0

    .line 2658
    .end local v1    # "focusResult":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;
    .end local v3    # "needToRedraw":Z
    .restart local v0    # "amountToScroll":I
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1    # "focusResult":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ArrowScrollFocusResult;
    :cond_c
    move v3, v9

    .line 2664
    goto/16 :goto_2

    .restart local v3    # "needToRedraw":Z
    :cond_d
    move v7, v9

    .line 2666
    goto/16 :goto_3

    .line 2684
    :cond_e
    neg-int v0, v0

    goto :goto_4
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 588
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 590
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 591
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-object v0, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 592
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .line 593
    .local v3, "p":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 594
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 590
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 598
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "p":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x42

    const/16 v6, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2285
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v4, v3

    .line 2436
    :cond_1
    :goto_0
    return v4

    .line 2289
    :cond_2
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDataChanged:Z

    if-eqz v5, :cond_3

    .line 2290
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->layoutChildren()V

    .line 2293
    :cond_3
    const/4 v2, 0x0

    .line 2294
    .local v2, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2296
    .local v0, "action":I
    if-eq v0, v4, :cond_4

    .line 2297
    sparse-switch p1, :sswitch_data_0

    .line 2417
    :cond_4
    :goto_1
    if-nez v2, :cond_1

    .line 2421
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2425
    packed-switch v0, :pswitch_data_0

    move v4, v3

    .line 2436
    goto :goto_0

    .line 2299
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2300
    :cond_5
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTwCurrentFocusPosition:I

    .line 2301
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2302
    if-nez v2, :cond_4

    move v1, p2

    .line 2303
    .end local p2    # "count":I
    .local v1, "count":I
    :goto_2
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_4

    .line 2304
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2305
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .line 2311
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_6
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2312
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    move v2, v4

    :goto_3
    goto :goto_1

    :cond_8
    move v2, v3

    goto :goto_3

    .line 2317
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2318
    :cond_9
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTwCurrentFocusPosition:I

    .line 2319
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2320
    if-nez v2, :cond_4

    move v1, p2

    .line 2321
    .end local p2    # "count":I
    .restart local v1    # "count":I
    :goto_4
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_4

    .line 2322
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2323
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_4

    .line 2329
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_a
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2330
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    move v2, v4

    :goto_5
    goto :goto_1

    :cond_c
    move v2, v3

    goto :goto_5

    .line 2335
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2336
    :cond_d
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTwCurrentFocusPosition:I

    .line 2337
    const/16 v5, 0x21

    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    .line 2342
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2343
    :cond_e
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTwCurrentFocusPosition:I

    .line 2344
    const/16 v5, 0x82

    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->handleVerticalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_1

    .line 2350
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2351
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2352
    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 2354
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->keyPressed()V

    .line 2355
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2361
    :sswitch_5
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2362
    :cond_f
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2363
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_10
    move v2, v4

    .line 2367
    :cond_11
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_12
    move v2, v3

    .line 2363
    goto :goto_6

    .line 2364
    :cond_13
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2365
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_14
    move v2, v4

    :goto_7
    goto :goto_6

    :cond_15
    move v2, v3

    goto :goto_7

    .line 2372
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2373
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_16
    move v2, v4

    :goto_8
    goto/16 :goto_1

    :cond_17
    move v2, v3

    goto :goto_8

    .line 2374
    :cond_18
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2375
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    :cond_19
    move v2, v4

    :goto_9
    goto/16 :goto_1

    :cond_1a
    move v2, v3

    goto :goto_9

    .line 2380
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2381
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_1b
    move v2, v4

    :goto_a
    goto/16 :goto_1

    :cond_1c
    move v2, v3

    goto :goto_a

    .line 2382
    :cond_1d
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2383
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_1e
    move v2, v4

    :goto_b
    goto/16 :goto_1

    :cond_1f
    move v2, v3

    goto :goto_b

    .line 2388
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2389
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_21

    :cond_20
    move v2, v4

    :goto_c
    goto/16 :goto_1

    :cond_21
    move v2, v3

    goto :goto_c

    .line 2394
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2395
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_22

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_23

    :cond_22
    move v2, v4

    :goto_d
    goto/16 :goto_1

    :cond_23
    move v2, v3

    goto :goto_d

    .line 2427
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2430
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2433
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 2297
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 2425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .locals 10
    .param p1, "childCount"    # I

    .prologue
    .line 1453
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v4, v7, -0x1

    .line 1454
    .local v4, "lastPosition":I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_2

    if-lez p1, :cond_2

    .line 1457
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1460
    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1463
    .local v5, "lastRight":I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mRight:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLeft:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v0, v7, v8

    .line 1467
    .local v0, "end":I
    sub-int v6, v0, v5

    .line 1468
    .local v6, "rightOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1469
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1473
    .local v2, "firstLeft":I
    if-lez v6, :cond_2

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v2, v7, :cond_2

    .line 1474
    :cond_0
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 1476
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1479
    :cond_1
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    .line 1480
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    if-lez v7, :cond_2

    .line 1483
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1485
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1490
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstLeft":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "lastRight":I
    .end local v6    # "rightOffset":I
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 11
    .param p1, "childCount"    # I

    .prologue
    .line 1502
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    if-nez v8, :cond_2

    if-lez p1, :cond_2

    .line 1505
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1508
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1511
    .local v2, "firstLeft":I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v8, Landroid/graphics/Rect;->left:I

    .line 1514
    .local v7, "start":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mRight:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLeft:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v0, v8, v9

    .line 1518
    .local v0, "end":I
    sub-int v6, v2, v7

    .line 1519
    .local v6, "leftOffset":I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1520
    .local v3, "lastChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 1521
    .local v5, "lastRight":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v4, v8, -0x1

    .line 1525
    .local v4, "lastPosition":I
    if-lez v6, :cond_2

    .line 1526
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v4, v8, :cond_0

    if-le v5, v0, :cond_3

    .line 1527
    :cond_0
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_1

    .line 1529
    sub-int v8, v5, v0

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1532
    :cond_1
    neg-int v8, v6

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    .line 1533
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_2

    .line 1536
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1538
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1545
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstLeft":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v4    # "lastPosition":I
    .end local v5    # "lastRight":I
    .end local v6    # "leftOffset":I
    .end local v7    # "start":I
    :cond_2
    :goto_0
    return-void

    .line 1540
    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstLeft":I
    .restart local v3    # "lastChild":Landroid/view/View;
    .restart local v4    # "lastPosition":I
    .restart local v5    # "lastRight":I
    .restart local v6    # "leftOffset":I
    .restart local v7    # "start":I
    :cond_3
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_2

    .line 1541
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    goto :goto_0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    .line 3163
    const/4 v0, 0x0

    .line 3164
    .local v0, "distance":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3165
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3166
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mRight:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLeft:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    .line 3167
    .local v1, "listRight":I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1

    .line 3168
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 3172
    :cond_0
    :goto_0
    return v0

    .line 3169
    :cond_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v2, v1, :cond_0

    .line 3170
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v1

    goto :goto_0
.end method

.method private fillFromLeft(I)Landroid/view/View;
    .locals 2
    .param p1, "nextLeft"    # I

    .prologue
    .line 812
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    .line 813
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    .line 814
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 815
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    .line 817
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 9
    .param p1, "childrenLeft"    # I
    .param p2, "childrenRight"    # I

    .prologue
    const/4 v3, 0x1

    .line 832
    sub-int v8, p2, p1

    .line 834
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->reconcileSelectedPosition()I

    move-result v1

    .line 836
    .local v1, "position":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 838
    .local v6, "sel":Landroid/view/View;
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    .line 840
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 841
    .local v7, "selWidth":I
    if-gt v7, v8, :cond_0

    .line 842
    sub-int v0, v8, v7

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 845
    :cond_0
    invoke-direct {p0, v6, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    .line 847
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mStackFromBottom:Z

    if-nez v0, :cond_1

    .line 848
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->correctTooHigh(I)V

    .line 853
    :goto_0
    return-object v6

    .line 850
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedLeft"    # I
    .param p2, "childrenLeft"    # I
    .param p3, "childrenRight"    # I

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v7

    .line 889
    .local v7, "fadingEdgeLength":I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    .line 893
    .local v2, "selectedPosition":I
    move/from16 v0, p2

    invoke-direct {p0, v0, v7, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getLeftSelectionPixel(III)I

    move-result v8

    .line 895
    .local v8, "leftSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v7, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getRightSelectionPixel(III)I

    move-result v10

    .line 898
    .local v10, "rightSelectionPixel":I
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v11

    .line 902
    .local v11, "sel":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v10, :cond_1

    .line 905
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v12, v1, v8

    .line 909
    .local v12, "spaceLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v13, v1, v10

    .line 910
    .local v13, "spaceRight":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 913
    .local v9, "offset":I
    neg-int v1, v9

    invoke-virtual {v11, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 929
    .end local v9    # "offset":I
    .end local v12    # "spaceLeft":I
    .end local v13    # "spaceRight":I
    :cond_0
    :goto_0
    invoke-direct {p0, v11, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    .line 931
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_2

    .line 932
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->correctTooHigh(I)V

    .line 937
    :goto_1
    return-object v11

    .line 914
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v8, :cond_0

    .line 917
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v12, v8, v1

    .line 921
    .restart local v12    # "spaceLeft":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int v13, v10, v1

    .line 922
    .restart local v13    # "spaceRight":I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 925
    .restart local v9    # "offset":I
    invoke-virtual {v11, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 934
    .end local v9    # "offset":I
    .end local v12    # "spaceLeft":I
    .end local v13    # "spaceRight":I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->correctTooLow(I)V

    goto :goto_1
.end method

.method private fillLeft(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextRight"    # I

    .prologue
    const/4 v3, 0x0

    .line 777
    const/4 v8, 0x0

    .line 779
    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    .line 780
    .local v7, "end":I
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 781
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 784
    :cond_0
    :goto_0
    if-le p2, v7, :cond_3

    if-ltz p1, :cond_3

    .line 786
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    const/4 v5, 0x1

    .line 787
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 789
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 790
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 791
    if-eqz v5, :cond_1

    .line 792
    move-object v8, v6

    .line 795
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 796
    goto :goto_0

    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    move v5, v3

    .line 786
    goto :goto_1

    .line 798
    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    .line 799
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setVisibleRangeHint(II)V

    .line 800
    return-object v8
.end method

.method private fillLeftAndRight(Landroid/view/View;I)V
    .locals 3
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 864
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    .line 865
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mStackFromBottom:Z

    if-nez v1, :cond_0

    .line 866
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 867
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    .line 868
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 874
    :goto_0
    return-void

    .line 870
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 871
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    .line 872
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    goto :goto_0
.end method

.method private fillRight(II)Landroid/view/View;
    .locals 9
    .param p1, "pos"    # I
    .param p2, "nextLeft"    # I

    .prologue
    const/4 v3, 0x1

    .line 741
    const/4 v8, 0x0

    .line 743
    .local v8, "selectedView":Landroid/view/View;
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mRight:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLeft:I

    sub-int v7, v0, v1

    .line 744
    .local v7, "end":I
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 745
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    .line 748
    :cond_0
    :goto_0
    if-ge p2, v7, :cond_3

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    if-ge p1, v0, :cond_3

    .line 750
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_2

    move v5, v3

    .line 751
    .local v5, "selected":Z
    :goto_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 753
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_1

    .line 754
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 755
    if-eqz v5, :cond_1

    .line 756
    move-object v8, v6

    .line 759
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 760
    goto :goto_0

    .line 750
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 762
    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setVisibleRangeHint(II)V

    .line 763
    return-object v8
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "left"    # I

    .prologue
    const/4 v3, 0x1

    .line 1401
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1402
    .local v5, "tempIsSelected":Z
    :goto_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1404
    .local v10, "temp":Landroid/view/View;
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    .line 1409
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    .line 1410
    .local v7, "dividerHeight":I
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mStackFromBottom:Z

    if-nez v0, :cond_2

    .line 1411
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v8

    .line 1413
    .local v8, "leftSide":Landroid/view/View;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1414
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v9

    .line 1415
    .local v9, "rightSide":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v6

    .line 1416
    .local v6, "childCount":I
    if-lez v6, :cond_0

    .line 1417
    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->correctTooHigh(I)V

    .line 1430
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1435
    .end local v10    # "temp":Landroid/view/View;
    :goto_2
    return-object v10

    .line 1401
    .end local v5    # "tempIsSelected":Z
    .end local v6    # "childCount":I
    .end local v7    # "dividerHeight":I
    .end local v8    # "leftSide":Landroid/view/View;
    .end local v9    # "rightSide":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1420
    .restart local v5    # "tempIsSelected":Z
    .restart local v7    # "dividerHeight":I
    .restart local v10    # "temp":Landroid/view/View;
    :cond_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    move-result-object v9

    .line 1422
    .restart local v9    # "rightSide":Landroid/view/View;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1423
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v8

    .line 1424
    .restart local v8    # "leftSide":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v6

    .line 1425
    .restart local v6    # "childCount":I
    if-lez v6, :cond_0

    .line 1426
    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->correctTooLow(I)V

    goto :goto_1

    .line 1432
    :cond_3
    if-eqz v8, :cond_4

    move-object v10, v8

    .line 1433
    goto :goto_2

    :cond_4
    move-object v10, v9

    .line 1435
    goto :goto_2
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2848
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getChildCountAndOrder(Landroid/view/View;[BI)J
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offset"    # [B
    .param p3, "visibility"    # I

    .prologue
    const-wide/16 v8, 0x1

    const/4 v10, 0x0

    .line 4179
    const-wide/16 v0, 0x0

    .line 4181
    .local v0, "count":J
    if-nez p1, :cond_0

    move-wide v2, v0

    .line 4205
    .end local v0    # "count":J
    .local v2, "count":J
    :goto_0
    return-wide v2

    .line 4185
    .end local v2    # "count":J
    .restart local v0    # "count":J
    :cond_0
    instance-of v7, p1, Landroid/view/ViewGroup;

    if-nez v7, :cond_2

    .line 4186
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, p3, :cond_1

    .line 4187
    aget-byte v7, p2, v10

    shl-long/2addr v8, v7

    or-long/2addr v0, v8

    .line 4189
    :cond_1
    aget-byte v7, p2, v10

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, p2, v10

    move-wide v2, v0

    .line 4191
    .end local v0    # "count":J
    .restart local v2    # "count":J
    goto :goto_0

    .end local v2    # "count":J
    .restart local v0    # "count":J
    :cond_2
    move-object v6, p1

    .line 4194
    check-cast v6, Landroid/view/ViewGroup;

    .line 4195
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-ne v7, p3, :cond_3

    .line 4196
    aget-byte v7, p2, v10

    shl-long/2addr v8, v7

    or-long/2addr v0, v8

    .line 4198
    :cond_3
    aget-byte v7, p2, v10

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, p2, v10

    .line 4200
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 4201
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4202
    .local v5, "v":Landroid/view/View;
    invoke-direct {p0, v5, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCountAndOrder(Landroid/view/View;[BI)J

    move-result-wide v8

    or-long/2addr v0, v8

    .line 4200
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v5    # "v":Landroid/view/View;
    :cond_4
    move-wide v2, v0

    .line 4205
    .end local v0    # "count":J
    .restart local v2    # "count":J
    goto :goto_0
.end method

.method private getChildHeightSpec(Landroid/view/View;)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4209
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4211
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 4212
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4216
    .restart local v0    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeightMeasureSpec:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    return v1
.end method

.method private getChildWidthSpec(Landroid/view/View;)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 4220
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 4222
    .local v2, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_0

    .line 4223
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4228
    .restart local v2    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4230
    .local v1, "lpWidth":I
    if-lez v1, :cond_1

    .line 4231
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 4236
    .local v0, "childWidthSpec":I
    :goto_0
    return v0

    .line 4233
    .end local v0    # "childWidthSpec":I
    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childWidthSpec":I
    goto :goto_0
.end method

.method private getLeftSelectionPixel(III)I
    .locals 1
    .param p1, "childrenLeft"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 967
    move v0, p1

    .line 968
    .local v0, "leftSelectionPixel":I
    if-lez p3, :cond_0

    .line 969
    add-int/2addr v0, p2

    .line 971
    :cond_0
    return v0
.end method

.method private getRightSelectionPixel(III)I
    .locals 2
    .param p1, "childrenRight"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 950
    move v0, p1

    .line 951
    .local v0, "rightSelectionPixel":I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 952
    sub-int/2addr v0, p2

    .line 954
    :cond_0
    return v0
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 10
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .prologue
    .line 2740
    const/4 v8, -0x1

    if-ne p3, v8, :cond_0

    .line 2741
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2751
    :cond_0
    const/4 v0, 0x0

    .line 2752
    .local v0, "leftSelected":Z
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    sub-int v7, v8, v9

    .line 2753
    .local v7, "selectedIndex":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    sub-int v3, p3, v8

    .line 2754
    .local v3, "nextSelectedIndex":I
    const/16 v8, 0x11

    if-ne p2, v8, :cond_3

    .line 2755
    move v2, v3

    .line 2756
    .local v2, "leftViewIndex":I
    move v6, v7

    .line 2757
    .local v6, "rightViewIndex":I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2758
    .local v1, "leftView":Landroid/view/View;
    move-object v5, p1

    .line 2759
    .local v5, "rightView":Landroid/view/View;
    const/4 v0, 0x1

    .line 2767
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v4

    .line 2770
    .local v4, "numChildren":I
    if-eqz v1, :cond_1

    .line 2771
    if-nez p4, :cond_4

    if-eqz v0, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2772
    invoke-direct {p0, v1, v2, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    .line 2776
    :cond_1
    if-eqz v5, :cond_2

    .line 2777
    if-nez p4, :cond_5

    if-nez v0, :cond_5

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v5, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2778
    invoke-direct {p0, v5, v6, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->measureAndAdjustRight(Landroid/view/View;II)V

    .line 2780
    :cond_2
    return-void

    .line 2761
    .end local v1    # "leftView":Landroid/view/View;
    .end local v2    # "leftViewIndex":I
    .end local v4    # "numChildren":I
    .end local v5    # "rightView":Landroid/view/View;
    .end local v6    # "rightViewIndex":I
    :cond_3
    move v2, v7

    .line 2762
    .restart local v2    # "leftViewIndex":I
    move v6, v3

    .line 2763
    .restart local v6    # "rightViewIndex":I
    move-object v1, p1

    .line 2764
    .restart local v1    # "leftView":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "rightView":Landroid/view/View;
    goto :goto_0

    .line 2771
    .restart local v4    # "numChildren":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 2777
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private handleVerticalFocusWithinListItem(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x0

    .line 2538
    const/16 v5, 0x21

    if-eq p1, v5, :cond_0

    const/16 v5, 0x82

    if-eq p1, v5, :cond_0

    .line 2539
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2543
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v3

    .line 2544
    .local v3, "numChildren":I
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_3

    if-lez v3, :cond_3

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 2545
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2546
    .local v4, "selectedView":Landroid/view/View;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_3

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 2549
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2550
    .local v0, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "selectedView":Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2552
    .local v2, "nextFocus":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2554
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2555
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2556
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2557
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2558
    if-eq v0, v2, :cond_1

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsFolderTypeFeature:Z

    if-eqz v5, :cond_1

    .line 2559
    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 2561
    :cond_1
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->playSoundEffect(I)V

    .line 2562
    const/4 v5, 0x1

    .line 2576
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :goto_0
    return v5

    .line 2569
    .restart local v0    # "currentFocus":Landroid/view/View;
    .restart local v2    # "nextFocus":Landroid/view/View;
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v7, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2571
    .local v1, "globalNextFocus":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 2572
    invoke-direct {p0, v1, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_0

    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v1    # "globalNextFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_3
    move v5, v6

    .line 2576
    goto :goto_0
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 1893
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1894
    .local v1, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1895
    .local v4, "numHeaders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1896
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_0

    move v5, v6

    .line 1909
    :goto_1
    return v5

    .line 1895
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1901
    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1902
    .local v0, "footers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1903
    .local v3, "numFooters":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    .line 1904
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-object v5, v5, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2

    move v5, v6

    .line 1905
    goto :goto_1

    .line 1903
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1909
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 3115
    if-ne p1, p2, :cond_1

    .line 3120
    :cond_0
    :goto_0
    return v1

    .line 3119
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3120
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v6, -0x1

    .line 2978
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    .line 2979
    .local v1, "firstPosition":I
    const/16 v7, 0x42

    if-ne p1, v7, :cond_5

    .line 2980
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 2983
    .local v5, "startPos":I
    :goto_0
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_2

    move v4, v6

    .line 3018
    :cond_0
    :goto_1
    return v4

    .end local v5    # "startPos":I
    :cond_1
    move v5, v1

    .line 2980
    goto :goto_0

    .line 2986
    .restart local v5    # "startPos":I
    :cond_2
    if-ge v5, v1, :cond_3

    .line 2987
    move v5, v1

    .line 2990
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    .line 2991
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2992
    .local v0, "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, "pos":I
    :goto_2
    if-gt v4, v3, :cond_b

    .line 2993
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 2992
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2999
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "pos":I
    .end local v5    # "startPos":I
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 3000
    .local v2, "last":I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    if-eq v7, v6, :cond_7

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 3003
    .restart local v5    # "startPos":I
    :goto_3
    if-ltz v5, :cond_6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_8

    :cond_6
    move v4, v6

    .line 3004
    goto :goto_1

    .line 3000
    .end local v5    # "startPos":I
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_3

    .line 3006
    .restart local v5    # "startPos":I
    :cond_8
    if-le v5, v2, :cond_9

    .line 3007
    move v5, v2

    .line 3010
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3011
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4    # "pos":I
    :goto_4
    if-lt v4, v1, :cond_b

    .line 3012
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_a

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    .line 3011
    :cond_a
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .end local v2    # "last":I
    :cond_b
    move v4, v6

    .line 3018
    goto :goto_1
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "x"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenTop"    # I
    .param p5, "selected"    # Z

    .prologue
    .line 1930
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1932
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1933
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1936
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1951
    .end local v1    # "child":Landroid/view/View;
    .local v8, "child":Landroid/view/View;
    :goto_0
    return-object v8

    .line 1943
    .end local v8    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1947
    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1949
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setupChild(Landroid/view/View;IIZIZZ)V

    :cond_1
    move-object v8, v1

    .line 1951
    .end local v1    # "child":Landroid/view/View;
    .restart local v8    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private measureAndAdjustRight(Landroid/view/View;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .prologue
    .line 2790
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2791
    .local v1, "oldWidth":I
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->measureItem(Landroid/view/View;)V

    .line 2792
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 2794
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2797
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v2, v3, v1

    .line 2798
    .local v2, "widthDelta":I
    add-int/lit8 v0, p2, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 2799
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2798
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2802
    .end local v0    # "i":I
    .end local v2    # "widthDelta":I
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 2810
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2811
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 2812
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2817
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeightMeasureSpec:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 2819
    .local v0, "childHeightSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2821
    .local v2, "lpWidth":I
    if-lez v2, :cond_1

    .line 2822
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2826
    .local v1, "childWidthSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2827
    return-void

    .line 2824
    .end local v1    # "childWidthSpec":I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 1248
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .line 1249
    .local v3, "p":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 1250
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "p":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .line 1251
    .restart local v3    # "p":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1253
    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    .line 1254
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->forceAdd:Z

    .line 1256
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iget v5, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->height:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1258
    .local v0, "childHeightSpec":I
    iget v2, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->width:I

    .line 1260
    .local v2, "lpWidth":I
    if-lez v2, :cond_1

    .line 1261
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1265
    .local v1, "childWidthSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1266
    return-void

    .line 1263
    .end local v1    # "childWidthSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childWidthSpec":I
    goto :goto_0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 20
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenLeft"    # I
    .param p5, "childrenRight"    # I

    .prologue
    .line 1013
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v10

    .line 1014
    .local v10, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 1018
    .local v17, "selectedPosition":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getLeftSelectionPixel(III)I

    move-result v12

    .line 1020
    .local v12, "leftSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getRightSelectionPixel(III)I

    move-result v15

    .line 1023
    .local v15, "rightSelectionPixel":I
    if-lez p3, :cond_2

    .line 1045
    add-int/lit8 v4, v17, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 1048
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    .line 1051
    .local v9, "dividerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int v5, v3, v9

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1055
    .local v16, "sel":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v15, :cond_0

    .line 1058
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v18, v3, v12

    .line 1061
    .local v18, "spaceLeft":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v19, v3, v15

    .line 1064
    .local v19, "spaceRight":I
    sub-int v3, p5, p4

    div-int/lit8 v11, v3, 0x2

    .line 1065
    .local v11, "halfHorizontalSpace":I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1066
    .local v14, "offset":I
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1069
    neg-int v3, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1071
    neg-int v3, v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1075
    .end local v11    # "halfHorizontalSpace":I
    .end local v14    # "offset":I
    .end local v18    # "spaceLeft":I
    .end local v19    # "spaceRight":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1076
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 1077
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1078
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1159
    .end local v9    # "dividerHeight":I
    :goto_0
    return-object v16

    .line 1080
    .restart local v9    # "dividerHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 1081
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    .line 1082
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    goto :goto_0

    .line 1084
    .end local v9    # "dividerHeight":I
    .end local v16    # "sel":Landroid/view/View;
    :cond_2
    if-gez p3, :cond_5

    .line 1105
    if-eqz p2, :cond_4

    .line 1107
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1117
    .restart local v16    # "sel":Landroid/view/View;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v12, :cond_3

    .line 1119
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v18, v12, v3

    .line 1122
    .restart local v18    # "spaceLeft":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v19, v15, v3

    .line 1125
    .restart local v19    # "spaceRight":I
    sub-int v3, p5, p4

    div-int/lit8 v11, v3, 0x2

    .line 1126
    .restart local v11    # "halfHorizontalSpace":I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1127
    .restart local v14    # "offset":I
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1130
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1134
    .end local v11    # "halfHorizontalSpace":I
    .end local v14    # "offset":I
    .end local v18    # "spaceLeft":I
    .end local v19    # "spaceRight":I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    goto :goto_0

    .line 1112
    .end local v16    # "sel":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16    # "sel":Landroid/view/View;
    goto :goto_1

    .line 1137
    .end local v16    # "sel":Landroid/view/View;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1142
    .local v5, "oldLeft":I
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move/from16 v4, v17

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1145
    .restart local v16    # "sel":Landroid/view/View;
    move/from16 v0, p4

    if-ge v5, v0, :cond_6

    .line 1148
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v13

    .line 1149
    .local v13, "newRight":I
    add-int/lit8 v3, p4, 0x14

    if-ge v13, v3, :cond_6

    .line 1151
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, p4, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1156
    .end local v13    # "newRight":I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeftAndRight(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private needToMeasureChild(Landroid/view/View;ZZ)Z
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "updateChildSelected"    # Z
    .param p3, "recycled"    # Z

    .prologue
    .line 4083
    if-eqz p3, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v8, 0x1

    .line 4084
    .local v8, "needToMeasure":Z
    :goto_0
    if-eqz v8, :cond_2

    const/4 v10, 0x1

    .line 4151
    :goto_1
    return v10

    .line 4083
    .end local v8    # "needToMeasure":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 4086
    .restart local v8    # "needToMeasure":Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v8

    .line 4088
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFixedSizeItems:Z

    if-eqz v10, :cond_4

    .line 4095
    const v10, 0x204005b

    invoke-virtual {p1, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    .line 4097
    .local v7, "listViewItemTag":Ljava/lang/Object;
    if-nez v7, :cond_3

    .line 4098
    new-instance v7, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;

    .end local v7    # "listViewItemTag":Ljava/lang/Object;
    invoke-direct {v7, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;)V

    .line 4099
    .local v7, "listViewItemTag":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;
    const v10, 0x204005b

    invoke-virtual {p1, v10, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4102
    .end local v7    # "listViewItemTag":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;
    :cond_3
    instance-of v10, v7, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;

    if-eqz v10, :cond_6

    move-object v6, v7

    .line 4104
    check-cast v6, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;

    .line 4106
    .local v6, "itemInfoTag":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildWidthSpec(Landroid/view/View;)I

    move-result v5

    .line 4107
    .local v5, "currentWidthSpec":I
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildHeightSpec(Landroid/view/View;)I

    move-result v4

    .line 4109
    .local v4, "currentHeightSpec":I
    const/4 v10, 0x1

    new-array v9, v10, [B

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-byte v11, v9, v10

    .line 4110
    .local v9, "offset":[B
    const/16 v10, 0x8

    invoke-direct {p0, p1, v9, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCountAndOrder(Landroid/view/View;[BI)J

    move-result-wide v2

    .line 4111
    .local v2, "currentChildrenVisibilityBitsGone":J
    const/4 v10, 0x0

    aget-byte v0, v9, v10

    .line 4113
    .local v0, "currentChildrenNumberTotal":I
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 4115
    .local v1, "currentConfiguration":Landroid/content/res/Configuration;
    iget v10, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;->mWidthSpec:I

    if-ne v5, v10, :cond_5

    iget v10, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;->mHeightSpec:I

    if-ne v4, v10, :cond_5

    iget-wide v10, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;->mChildrenVisibilityBitsGone:J

    cmp-long v10, v2, v10

    if-nez v10, :cond_5

    if-lez v0, :cond_5

    const/16 v10, 0x40

    if-gt v0, v10, :cond_5

    iget v10, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;->mChildrenNumberTotal:I

    if-ne v0, v10, :cond_5

    iget-object v10, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v10}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v10

    if-nez v10, :cond_5

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLastScrollState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 4123
    const/4 v8, 0x0

    .end local v0    # "currentChildrenNumberTotal":I
    .end local v1    # "currentConfiguration":Landroid/content/res/Configuration;
    .end local v2    # "currentChildrenVisibilityBitsGone":J
    .end local v4    # "currentHeightSpec":I
    .end local v5    # "currentWidthSpec":I
    .end local v6    # "itemInfoTag":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;
    .end local v9    # "offset":[B
    :cond_4
    :goto_2
    move v10, v8

    .line 4151
    goto :goto_1

    .line 4126
    .restart local v0    # "currentChildrenNumberTotal":I
    .restart local v1    # "currentConfiguration":Landroid/content/res/Configuration;
    .restart local v2    # "currentChildrenVisibilityBitsGone":J
    .restart local v4    # "currentHeightSpec":I
    .restart local v5    # "currentWidthSpec":I
    .restart local v6    # "itemInfoTag":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;
    .restart local v9    # "offset":[B
    :cond_5
    iput v5, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;->mWidthSpec:I

    .line 4127
    iput v4, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;->mHeightSpec:I

    .line 4128
    iput-wide v2, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;->mChildrenVisibilityBitsGone:J

    .line 4129
    iput v0, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;->mChildrenNumberTotal:I

    .line 4130
    iget-object v10, v6, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v10, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4132
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 4134
    const/4 v8, 0x1

    goto :goto_2

    .line 4146
    .end local v0    # "currentChildrenNumberTotal":I
    .end local v1    # "currentConfiguration":Landroid/content/res/Configuration;
    .end local v2    # "currentChildrenVisibilityBitsGone":J
    .end local v4    # "currentHeightSpec":I
    .end local v5    # "currentWidthSpec":I
    .end local v6    # "itemInfoTag":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$ItemInfoTag;
    .end local v9    # "offset":[B
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 4147
    const/4 v8, 0x1

    goto :goto_2
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .locals 8
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .prologue
    const/16 v7, 0x42

    const/4 v4, -0x1

    .line 2612
    if-ne p3, v7, :cond_2

    .line 2613
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v2, v5, v6

    .line 2614
    .local v2, "listRight":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    if-gt v5, v2, :cond_0

    .line 2615
    if-eq p2, v4, :cond_1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    if-lt p2, v5, :cond_1

    add-int/lit8 v3, p2, 0x1

    .line 2633
    .end local v2    # "listRight":I
    .local v3, "nextSelected":I
    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v3, v5, :cond_4

    .line 2636
    .end local v3    # "nextSelected":I
    :cond_0
    :goto_1
    return v4

    .line 2615
    .restart local v2    # "listRight":I
    :cond_1
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    goto :goto_0

    .line 2622
    .end local v2    # "listRight":I
    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 2623
    .local v1, "listLeft":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v5, v1, :cond_0

    .line 2624
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x1

    .line 2625
    .local v0, "lastPos":I
    if-eq p2, v4, :cond_3

    if-gt p2, v0, :cond_3

    add-int/lit8 v3, p2, -0x1

    .line 2628
    .restart local v3    # "nextSelected":I
    :goto_2
    goto :goto_0

    .end local v3    # "nextSelected":I
    :cond_3
    move v3, v0

    .line 2625
    goto :goto_2

    .line 2636
    .end local v0    # "lastPos":I
    .end local v1    # "listLeft":I
    .restart local v3    # "nextSelected":I
    :cond_4
    if-ne p3, v7, :cond_5

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 5
    .param p1, "newFocus"    # Landroid/view/View;

    .prologue
    .line 3100
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v2

    .line 3101
    .local v2, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3102
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3103
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3104
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 3101
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3107
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2835
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2836
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2837
    .local v4, "h":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2838
    .local v1, "childLeft":I
    add-int v2, v1, v5

    .line 2839
    .local v2, "childRight":I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v6, Landroid/graphics/Rect;->top:I

    .line 2840
    .local v3, "childTop":I
    add-int v0, v3, v4

    .line 2841
    .local v0, "childBottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2842
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 387
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 388
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    .line 389
    .local v1, "info":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;
    iget-object v3, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 390
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 394
    .end local v1    # "info":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;
    :cond_0
    return-void

    .line 387
    .restart local v1    # "info":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .param p1, "amount"    # I

    .prologue
    const/4 v11, 0x0

    .line 3183
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    .line 3185
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v6, v9, v10

    .line 3186
    .local v6, "listRight":I
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v9, Landroid/graphics/Rect;->left:I

    .line 3187
    .local v5, "listLeft":I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    .line 3189
    .local v8, "recycleBin":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;
    if-gez p1, :cond_5

    .line 3193
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v7

    .line 3194
    .local v7, "numChildren":I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3195
    .local v1, "last":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_0

    .line 3196
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3197
    .local v3, "lastVisiblePosition":I
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_0

    .line 3198
    invoke-direct {p0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addViewRightSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3199
    add-int/lit8 v7, v7, 0x1

    .line 3203
    goto :goto_0

    .line 3208
    .end local v3    # "lastVisiblePosition":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v6, :cond_1

    .line 3209
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    .line 3213
    :cond_1
    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3214
    .local v0, "first":Landroid/view/View;
    if-nez v0, :cond_3

    .line 3257
    .end local v1    # "last":Landroid/view/View;
    .end local v7    # "numChildren":I
    :cond_2
    return-void

    .line 3216
    .restart local v1    # "last":Landroid/view/View;
    .restart local v7    # "numChildren":I
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v9, v5, :cond_2

    .line 3217
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .line 3218
    .local v4, "layoutParams":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    iget v9, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3219
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3221
    :cond_4
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3222
    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3223
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    goto :goto_1

    .line 3227
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    .end local v4    # "layoutParams":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    .end local v7    # "numChildren":I
    :cond_5
    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3230
    .restart local v0    # "first":Landroid/view/View;
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_6

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    if-lez v9, :cond_6

    .line 3231
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addViewLeftSide(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3233
    if-eqz v0, :cond_2

    .line 3235
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    goto :goto_2

    .line 3240
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 3241
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->twOffsetChildrenLeftAndRight(I)V

    .line 3244
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3245
    .local v2, "lastIndex":I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3248
    .restart local v1    # "last":Landroid/view/View;
    :goto_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v6, :cond_2

    .line 3249
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .line 3250
    .restart local v4    # "layoutParams":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    iget v9, v4, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 3251
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3253
    :cond_8
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3254
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3255
    goto :goto_3
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # I
    .param p4, "flowRightSide"    # Z
    .param p5, "childrenTop"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z

    .prologue
    .line 1970
    const-wide/16 v20, 0x8

    const-string v19, "setupListItem"

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1972
    if-eqz p6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_8

    const/4 v11, 0x1

    .line 1973
    .local v11, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_9

    const/16 v17, 0x1

    .line 1974
    .local v17, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTouchMode:I

    .line 1975
    .local v13, "mode":I
    if-lez v13, :cond_a

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    .line 1977
    .local v10, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_b

    const/16 v16, 0x1

    .line 1978
    .local v16, "updateChildPressed":Z
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->needToMeasureChild(Landroid/view/View;ZZ)Z

    move-result v14

    .line 1982
    .local v14, "needToMeasure":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .line 1983
    .local v15, "p":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    if-nez v15, :cond_0

    .line 1984
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .end local v15    # "p":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    check-cast v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .line 1986
    .restart local v15    # "p":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    .line 1988
    if-eqz p7, :cond_1

    iget-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    :cond_1
    iget-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1990
    :cond_2
    if-eqz p4, :cond_c

    const/16 v19, -0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1999
    :goto_5
    if-eqz v17, :cond_3

    .line 2000
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 2001
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsFolderTypeFeature:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 2002
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestFocus()Z

    .line 2005
    :cond_3
    if-eqz v16, :cond_4

    .line 2006
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 2009
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 2010
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v19, p1

    .line 2011
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2018
    :cond_5
    :goto_6
    if-eqz v14, :cond_12

    .line 2019
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeightMeasureSpec:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 2021
    .local v5, "childHeightSpec":I
    iget v12, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->width:I

    .line 2023
    .local v12, "lpWidth":I
    if-lez v12, :cond_11

    .line 2024
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 2028
    .local v8, "childWidthSpec":I
    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 2033
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpWidth":I
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 2034
    .local v18, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 2035
    .local v9, "h":I
    if-eqz p4, :cond_13

    move/from16 v6, p3

    .line 2037
    .local v6, "childLeft":I
    :goto_9
    if-eqz v14, :cond_14

    .line 2038
    add-int v7, v6, v18

    .line 2039
    .local v7, "childRight":I
    add-int v4, p5, v9

    .line 2040
    .local v4, "childBottom":I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1, v7, v4}, Landroid/view/View;->layout(IIII)V

    .line 2046
    .end local v4    # "childBottom":I
    .end local v7    # "childRight":I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-nez v19, :cond_6

    .line 2047
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2050
    :cond_6
    if-eqz p7, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_7

    .line 2052
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2055
    :cond_7
    const-wide/16 v20, 0x8

    invoke-static/range {v20 .. v21}, Landroid/os/Trace;->traceEnd(J)V

    .line 2056
    return-void

    .line 1972
    .end local v6    # "childLeft":I
    .end local v9    # "h":I
    .end local v10    # "isPressed":Z
    .end local v11    # "isSelected":Z
    .end local v13    # "mode":I
    .end local v14    # "needToMeasure":Z
    .end local v15    # "p":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    .end local v16    # "updateChildPressed":Z
    .end local v17    # "updateChildSelected":Z
    .end local v18    # "w":I
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1973
    .restart local v11    # "isSelected":Z
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1975
    .restart local v13    # "mode":I
    .restart local v17    # "updateChildSelected":Z
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1977
    .restart local v10    # "isPressed":Z
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1990
    .restart local v14    # "needToMeasure":Z
    .restart local v15    # "p":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    .restart local v16    # "updateChildPressed":Z
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 1992
    :cond_d
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->forceAdd:Z

    .line 1993
    iget v0, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 1994
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1996
    :cond_e
    if-eqz p4, :cond_f

    const/16 v19, -0x1

    :goto_b
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    :cond_f
    const/16 v19, 0x0

    goto :goto_b

    .line 2012
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    .line 2014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_6

    .line 2026
    .restart local v5    # "childHeightSpec":I
    .restart local v12    # "lpWidth":I
    :cond_11
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childWidthSpec":I
    goto/16 :goto_7

    .line 2030
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpWidth":I
    :cond_12
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_8

    .line 2035
    .restart local v9    # "h":I
    .restart local v18    # "w":I
    :cond_13
    sub-int v6, p3, v18

    goto/16 :goto_9

    .line 2042
    .restart local v6    # "childLeft":I
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, v6, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2043
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_a
.end method

.method private shouldAdjustWidthForDivider(I)Z
    .locals 23
    .param p1, "itemIndex"    # I

    .prologue
    .line 3993
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    .line 3994
    .local v3, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    .line 3995
    .local v19, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    .line 3996
    .local v18, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_5

    const/4 v6, 0x1

    .line 3997
    .local v6, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v18, :cond_6

    const/4 v5, 0x1

    .line 3998
    .local v5, "drawOverscrollFooter":Z
    :goto_1
    if-lez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    const/4 v4, 0x1

    .line 4000
    .local v4, "drawDividers":Z
    :goto_2
    if-eqz v4, :cond_13

    .line 4001
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isOpaque()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isOpaque()Z

    move-result v22

    if-nez v22, :cond_8

    const/4 v7, 0x1

    .line 4002
    .local v7, "fillForMissingDividers":Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    move/from16 v16, v0

    .line 4003
    .local v16, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 4004
    .local v10, "headerCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    sub-int v9, v16, v22

    .line 4005
    .local v9, "footerLimit":I
    move/from16 v0, p1

    if-ge v0, v10, :cond_9

    const/4 v14, 0x1

    .line 4006
    .local v14, "isHeader":Z
    :goto_4
    move/from16 v0, p1

    if-lt v0, v9, :cond_a

    const/4 v13, 0x1

    .line 4007
    .local v13, "isFooter":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderDividersEnabled:Z

    .line 4008
    .local v11, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterDividersEnabled:Z

    .line 4009
    .local v8, "footerDividers":Z
    if-nez v11, :cond_0

    if-nez v14, :cond_13

    :cond_0
    if-nez v8, :cond_1

    if-nez v13, :cond_13

    .line 4010
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4011
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mStackFromBottom:Z

    move/from16 v22, v0

    if-nez v22, :cond_d

    .line 4012
    add-int/lit8 v22, v16, -0x1

    move/from16 v0, p1

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    const/4 v15, 0x1

    .line 4013
    .local v15, "isLastItem":Z
    :goto_6
    if-eqz v5, :cond_2

    if-nez v15, :cond_13

    .line 4014
    :cond_2
    add-int/lit8 v17, p1, 0x1

    .line 4018
    .local v17, "nextIndex":I
    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_c

    if-nez v11, :cond_3

    if-nez v14, :cond_c

    move/from16 v0, v17

    if-lt v0, v10, :cond_c

    :cond_3
    if-nez v15, :cond_4

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_c

    if-nez v8, :cond_4

    if-nez v13, :cond_c

    move/from16 v0, v17

    if-ge v0, v9, :cond_c

    .line 4022
    :cond_4
    const/16 v22, 0x1

    .line 4048
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v7    # "fillForMissingDividers":Z
    .end local v8    # "footerDividers":Z
    .end local v9    # "footerLimit":I
    .end local v10    # "headerCount":I
    .end local v11    # "headerDividers":Z
    .end local v13    # "isFooter":Z
    .end local v14    # "isHeader":Z
    .end local v15    # "isLastItem":Z
    .end local v16    # "itemCount":I
    .end local v17    # "nextIndex":I
    :goto_7
    return v22

    .line 3996
    .end local v4    # "drawDividers":Z
    .end local v5    # "drawOverscrollFooter":Z
    .end local v6    # "drawOverscrollHeader":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3997
    .restart local v6    # "drawOverscrollHeader":Z
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3998
    .restart local v5    # "drawOverscrollFooter":Z
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 4001
    .restart local v4    # "drawDividers":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 4005
    .restart local v7    # "fillForMissingDividers":Z
    .restart local v9    # "footerLimit":I
    .restart local v10    # "headerCount":I
    .restart local v16    # "itemCount":I
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 4006
    .restart local v14    # "isHeader":Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_5

    .line 4012
    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    .restart local v8    # "footerDividers":Z
    .restart local v11    # "headerDividers":Z
    .restart local v13    # "isFooter":Z
    :cond_b
    const/4 v15, 0x0

    goto :goto_6

    .line 4023
    .restart local v15    # "isLastItem":Z
    .restart local v17    # "nextIndex":I
    :cond_c
    if-eqz v7, :cond_13

    .line 4024
    const/16 v22, 0x1

    goto :goto_7

    .line 4028
    .end local v15    # "isLastItem":Z
    .end local v17    # "nextIndex":I
    :cond_d
    if-eqz v6, :cond_10

    const/16 v21, 0x1

    .line 4029
    .local v21, "start":I
    :goto_8
    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    const/4 v12, 0x1

    .line 4030
    .local v12, "isFirstItem":Z
    :goto_9
    if-nez v12, :cond_13

    .line 4031
    add-int/lit8 v20, p1, -0x1

    .line 4035
    .local v20, "previousIndex":I
    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_12

    if-nez v11, :cond_e

    if-nez v14, :cond_12

    move/from16 v0, v20

    if-lt v0, v10, :cond_12

    :cond_e
    if-nez v12, :cond_f

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_12

    if-nez v8, :cond_f

    if-nez v13, :cond_12

    move/from16 v0, v20

    if-ge v0, v9, :cond_12

    .line 4039
    :cond_f
    const/16 v22, 0x1

    goto :goto_7

    .line 4028
    .end local v12    # "isFirstItem":Z
    .end local v20    # "previousIndex":I
    .end local v21    # "start":I
    :cond_10
    const/16 v21, 0x0

    goto :goto_8

    .line 4029
    .restart local v21    # "start":I
    :cond_11
    const/4 v12, 0x0

    goto :goto_9

    .line 4040
    .restart local v12    # "isFirstItem":Z
    .restart local v20    # "previousIndex":I
    :cond_12
    if-eqz v7, :cond_13

    .line 4041
    const/16 v22, 0x1

    goto :goto_7

    .line 4048
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v7    # "fillForMissingDividers":Z
    .end local v8    # "footerDividers":Z
    .end local v9    # "footerLimit":I
    .end local v10    # "headerCount":I
    .end local v11    # "headerDividers":Z
    .end local v12    # "isFirstItem":Z
    .end local v13    # "isFooter":Z
    .end local v14    # "isHeader":Z
    .end local v16    # "itemCount":I
    .end local v20    # "previousIndex":I
    .end local v21    # "start":I
    :cond_13
    const/16 v22, 0x0

    goto :goto_7
.end method

.method private showingLeftFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 604
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mScrollX:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v0, v2, v3

    .line 605
    .local v0, "listLeft":I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private showingRightFadingEdge()Z
    .locals 6

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v0

    .line 613
    .local v0, "childCount":I
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 614
    .local v3, "rightOfRightChild":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, -0x1

    .line 616
    .local v1, "lastVisiblePosition":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .line 618
    .local v2, "listRight":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_0

    if-ge v3, v2, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 449
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 450
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 413
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;)V

    .line 414
    .local v0, "info":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;
    iput-object p1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 415
    iput-object p2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 416
    iput-boolean p3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 417
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAreAllItemsSelectable:Z

    .line 421
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 423
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 432
    :cond_1
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 355
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 356
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 319
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;)V

    .line 320
    .local v0, "info":Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;
    iput-object p1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 321
    iput-object p2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 322
    iput-boolean p3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->isSelectable:Z

    .line 323
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAreAllItemsSelectable:Z

    and-int/2addr v1, p3

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAreAllItemsSelectable:Z

    .line 327
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;

    if-nez v1, :cond_0

    .line 329
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 338
    :cond_1
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .locals 1

    .prologue
    .line 3668
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .locals 1

    .prologue
    .line 3645
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 2588
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mInLayout:Z

    .line 2589
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2590
    .local v0, "handled":Z
    if-eqz v0, :cond_0

    .line 2591
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2595
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mInLayout:Z

    return v0

    .end local v0    # "handled":Z
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2060
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3376
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mCachingStarted:Z

    move/from16 v39, v0

    if-eqz v39, :cond_0

    .line 3377
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mCachingActive:Z

    .line 3381
    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    .line 3382
    .local v9, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    .line 3383
    .local v33, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    .line 3384
    .local v32, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v33, :cond_b

    const/4 v12, 0x1

    .line 3385
    .local v12, "drawOverscrollHeader":Z
    :goto_0
    if-eqz v32, :cond_c

    const/4 v11, 0x1

    .line 3386
    .local v11, "drawOverscrollFooter":Z
    :goto_1
    if-lez v9, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v39, v0

    if-eqz v39, :cond_d

    const/4 v10, 0x1

    .line 3388
    .local v10, "drawDividers":Z
    :goto_2
    if-nez v10, :cond_1

    if-nez v12, :cond_1

    if-eqz v11, :cond_15

    .line 3390
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 3391
    .local v6, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mPaddingTop:I

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 3392
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mBottom:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTop:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mPaddingBottom:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 3394
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v8

    .line 3395
    .local v8, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3396
    .local v19, "headerCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    move/from16 v26, v0

    .line 3397
    .local v26, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    sub-int v39, v26, v39

    add-int/lit8 v18, v39, -0x1

    .line 3398
    .local v18, "footerLimit":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderDividersEnabled:Z

    move/from16 v20, v0

    .line 3399
    .local v20, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterDividersEnabled:Z

    move/from16 v17, v0

    .line 3400
    .local v17, "footerDividers":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    move/from16 v16, v0

    .line 3401
    .local v16, "first":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAreAllItemsSelectable:Z

    .line 3402
    .local v5, "areAllItemsSelectable":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3407
    .local v4, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isOpaque()Z

    move-result v39

    if-eqz v39, :cond_e

    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isOpaque()Z

    move-result v39

    if-nez v39, :cond_e

    const/4 v15, 0x1

    .line 3409
    .local v15, "fillForMissingDividers":Z
    :goto_3
    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    if-nez v39, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsCacheColorOpaque:Z

    move/from16 v39, v0

    if-eqz v39, :cond_2

    .line 3410
    new-instance v39, Landroid/graphics/Paint;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getCacheColorHint()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Landroid/graphics/Paint;->setColor(I)V

    .line 3413
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    .line 3415
    .local v34, "paint":Landroid/graphics/Paint;
    const/4 v13, 0x0

    .line 3416
    .local v13, "effectivePaddingLeft":I
    const/4 v14, 0x0

    .line 3417
    .local v14, "effectivePaddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mGroupFlags:I

    move/from16 v39, v0

    and-int/lit8 v39, v39, 0x22

    const/16 v40, 0x22

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_3

    .line 3418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v13, v0, Landroid/graphics/Rect;->left:I

    .line 3419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v14, v0, Landroid/graphics/Rect;->right:I

    .line 3422
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mRight:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLeft:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    sub-int v39, v39, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mScrollX:I

    move/from16 v40, v0

    add-int v29, v39, v40

    .line 3423
    .local v29, "listRight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mStackFromBottom:Z

    move/from16 v39, v0

    if-nez v39, :cond_17

    .line 3424
    const/16 v36, 0x0

    .line 3427
    .local v36, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mScrollX:I

    move/from16 v37, v0

    .line 3428
    .local v37, "scrollX":I
    if-lez v8, :cond_4

    if-gez v37, :cond_4

    .line 3429
    if-eqz v12, :cond_f

    .line 3430
    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3431
    move/from16 v0, v37

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3432
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3440
    :cond_4
    :goto_4
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_5
    move/from16 v0, v21

    if-ge v0, v8, :cond_14

    .line 3441
    add-int v27, v16, v21

    .line 3442
    .local v27, "itemIndex":I
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    const/16 v24, 0x1

    .line 3443
    .local v24, "isHeader":Z
    :goto_6
    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_11

    const/16 v23, 0x1

    .line 3444
    .local v23, "isFooter":Z
    :goto_7
    if-nez v20, :cond_5

    if-nez v24, :cond_a

    :cond_5
    if-nez v17, :cond_6

    if-nez v23, :cond_a

    .line 3445
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3446
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v36

    .line 3447
    add-int/lit8 v39, v8, -0x1

    move/from16 v0, v21

    move/from16 v1, v39

    if-ne v0, v1, :cond_12

    const/16 v25, 0x1

    .line 3449
    .local v25, "isLastItem":Z
    :goto_8
    if-eqz v10, :cond_a

    move/from16 v0, v36

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    if-eqz v11, :cond_7

    if-nez v25, :cond_a

    .line 3451
    :cond_7
    add-int/lit8 v30, v27, 0x1

    .line 3455
    .local v30, "nextIndex":I
    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_13

    if-nez v20, :cond_8

    if-nez v24, :cond_13

    move/from16 v0, v30

    move/from16 v1, v19

    if-lt v0, v1, :cond_13

    :cond_8
    if-nez v25, :cond_9

    move/from16 v0, v30

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_13

    if-nez v17, :cond_9

    if-nez v23, :cond_13

    move/from16 v0, v30

    move/from16 v1, v18

    if-ge v0, v1, :cond_13

    .line 3459
    :cond_9
    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3460
    add-int v39, v36, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3461
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3440
    .end local v7    # "child":Landroid/view/View;
    .end local v25    # "isLastItem":Z
    .end local v30    # "nextIndex":I
    :cond_a
    :goto_9
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 3384
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v8    # "count":I
    .end local v10    # "drawDividers":Z
    .end local v11    # "drawOverscrollFooter":Z
    .end local v12    # "drawOverscrollHeader":Z
    .end local v13    # "effectivePaddingLeft":I
    .end local v14    # "effectivePaddingRight":I
    .end local v15    # "fillForMissingDividers":Z
    .end local v16    # "first":I
    .end local v17    # "footerDividers":Z
    .end local v18    # "footerLimit":I
    .end local v19    # "headerCount":I
    .end local v20    # "headerDividers":Z
    .end local v21    # "i":I
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v26    # "itemCount":I
    .end local v27    # "itemIndex":I
    .end local v29    # "listRight":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "right":I
    .end local v37    # "scrollX":I
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3385
    .restart local v12    # "drawOverscrollHeader":Z
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 3386
    .restart local v11    # "drawOverscrollFooter":Z
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 3407
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v6    # "bounds":Landroid/graphics/Rect;
    .restart local v8    # "count":I
    .restart local v10    # "drawDividers":Z
    .restart local v16    # "first":I
    .restart local v17    # "footerDividers":Z
    .restart local v18    # "footerLimit":I
    .restart local v19    # "headerCount":I
    .restart local v20    # "headerDividers":Z
    .restart local v26    # "itemCount":I
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 3433
    .restart local v13    # "effectivePaddingLeft":I
    .restart local v14    # "effectivePaddingRight":I
    .restart local v15    # "fillForMissingDividers":Z
    .restart local v29    # "listRight":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    .restart local v36    # "right":I
    .restart local v37    # "scrollX":I
    :cond_f
    if-eqz v10, :cond_4

    .line 3434
    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3435
    neg-int v0, v9

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3436
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_4

    .line 3442
    .restart local v21    # "i":I
    .restart local v27    # "itemIndex":I
    :cond_10
    const/16 v24, 0x0

    goto/16 :goto_6

    .line 3443
    .restart local v24    # "isHeader":Z
    :cond_11
    const/16 v23, 0x0

    goto/16 :goto_7

    .line 3447
    .restart local v7    # "child":Landroid/view/View;
    .restart local v23    # "isFooter":Z
    :cond_12
    const/16 v25, 0x0

    goto :goto_8

    .line 3462
    .restart local v25    # "isLastItem":Z
    .restart local v30    # "nextIndex":I
    :cond_13
    if-eqz v15, :cond_a

    .line 3463
    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3464
    add-int v39, v36, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3465
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_9

    .line 3471
    .end local v7    # "child":Landroid/view/View;
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v25    # "isLastItem":Z
    .end local v27    # "itemIndex":I
    .end local v30    # "nextIndex":I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mRight:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mScrollX:I

    move/from16 v40, v0

    add-int v31, v39, v40

    .line 3472
    .local v31, "overFooterRight":I
    if-eqz v11, :cond_15

    add-int v39, v16, v8

    move/from16 v0, v39

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    move/from16 v0, v31

    move/from16 v1, v36

    if-le v0, v1, :cond_15

    .line 3474
    move/from16 v0, v36

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3475
    move/from16 v0, v31

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3476
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3539
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v8    # "count":I
    .end local v13    # "effectivePaddingLeft":I
    .end local v14    # "effectivePaddingRight":I
    .end local v15    # "fillForMissingDividers":Z
    .end local v16    # "first":I
    .end local v17    # "footerDividers":Z
    .end local v18    # "footerLimit":I
    .end local v19    # "headerCount":I
    .end local v20    # "headerDividers":Z
    .end local v21    # "i":I
    .end local v26    # "itemCount":I
    .end local v29    # "listRight":I
    .end local v31    # "overFooterRight":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "right":I
    .end local v37    # "scrollX":I
    :cond_15
    :goto_a
    invoke-super/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    move-object/from16 v39, v0

    if-eqz v39, :cond_16

    .line 3542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3544
    :cond_16
    return-void

    .line 3481
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v6    # "bounds":Landroid/graphics/Rect;
    .restart local v8    # "count":I
    .restart local v13    # "effectivePaddingLeft":I
    .restart local v14    # "effectivePaddingRight":I
    .restart local v15    # "fillForMissingDividers":Z
    .restart local v16    # "first":I
    .restart local v17    # "footerDividers":Z
    .restart local v18    # "footerLimit":I
    .restart local v19    # "headerCount":I
    .restart local v20    # "headerDividers":Z
    .restart local v26    # "itemCount":I
    .restart local v29    # "listRight":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mScrollX:I

    move/from16 v37, v0

    .line 3483
    .restart local v37    # "scrollX":I
    if-lez v8, :cond_18

    if-eqz v12, :cond_18

    .line 3484
    move/from16 v0, v37

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3485
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLeft()I

    move-result v39

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3486
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3489
    :cond_18
    if-eqz v12, :cond_1e

    const/16 v38, 0x1

    .line 3490
    .local v38, "start":I
    :goto_b
    move/from16 v21, v38

    .restart local v21    # "i":I
    :goto_c
    move/from16 v0, v21

    if-ge v0, v8, :cond_23

    .line 3491
    add-int v27, v16, v21

    .line 3492
    .restart local v27    # "itemIndex":I
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_1f

    const/16 v24, 0x1

    .line 3493
    .restart local v24    # "isHeader":Z
    :goto_d
    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_20

    const/16 v23, 0x1

    .line 3494
    .restart local v23    # "isFooter":Z
    :goto_e
    if-nez v20, :cond_19

    if-nez v24, :cond_1d

    :cond_19
    if-nez v17, :cond_1a

    if-nez v23, :cond_1d

    .line 3495
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3496
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v28

    .line 3497
    .local v28, "left":I
    if-eqz v10, :cond_1d

    move/from16 v0, v28

    if-le v0, v13, :cond_1d

    .line 3498
    move/from16 v0, v21

    move/from16 v1, v38

    if-ne v0, v1, :cond_21

    const/16 v22, 0x1

    .line 3499
    .local v22, "isFirstItem":Z
    :goto_f
    add-int/lit8 v35, v27, -0x1

    .line 3503
    .local v35, "previousIndex":I
    move/from16 v0, v27

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_22

    if-nez v20, :cond_1b

    if-nez v24, :cond_22

    move/from16 v0, v35

    move/from16 v1, v19

    if-lt v0, v1, :cond_22

    :cond_1b
    if-nez v22, :cond_1c

    move/from16 v0, v35

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-eqz v39, :cond_22

    if-nez v17, :cond_1c

    if-nez v23, :cond_22

    move/from16 v0, v35

    move/from16 v1, v18

    if-ge v0, v1, :cond_22

    .line 3507
    :cond_1c
    sub-int v39, v28, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3508
    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3513
    add-int/lit8 v39, v21, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3490
    .end local v7    # "child":Landroid/view/View;
    .end local v22    # "isFirstItem":Z
    .end local v28    # "left":I
    .end local v35    # "previousIndex":I
    :cond_1d
    :goto_10
    add-int/lit8 v21, v21, 0x1

    goto :goto_c

    .line 3489
    .end local v21    # "i":I
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v27    # "itemIndex":I
    .end local v38    # "start":I
    :cond_1e
    const/16 v38, 0x0

    goto :goto_b

    .line 3492
    .restart local v21    # "i":I
    .restart local v27    # "itemIndex":I
    .restart local v38    # "start":I
    :cond_1f
    const/16 v24, 0x0

    goto :goto_d

    .line 3493
    .restart local v24    # "isHeader":Z
    :cond_20
    const/16 v23, 0x0

    goto :goto_e

    .line 3498
    .restart local v7    # "child":Landroid/view/View;
    .restart local v23    # "isFooter":Z
    .restart local v28    # "left":I
    :cond_21
    const/16 v22, 0x0

    goto :goto_f

    .line 3514
    .restart local v22    # "isFirstItem":Z
    .restart local v35    # "previousIndex":I
    :cond_22
    if-eqz v15, :cond_1d

    .line 3515
    sub-int v39, v28, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3516
    move/from16 v0, v28

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3517
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_10

    .line 3523
    .end local v7    # "child":Landroid/view/View;
    .end local v22    # "isFirstItem":Z
    .end local v23    # "isFooter":Z
    .end local v24    # "isHeader":Z
    .end local v27    # "itemIndex":I
    .end local v28    # "left":I
    .end local v35    # "previousIndex":I
    :cond_23
    if-lez v8, :cond_15

    if-lez v37, :cond_15

    .line 3524
    if-eqz v11, :cond_24

    .line 3525
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mRight:I

    .line 3526
    .local v3, "absListRight":I
    iput v3, v6, Landroid/graphics/Rect;->left:I

    .line 3527
    add-int v39, v3, v37

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3528
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_a

    .line 3529
    .end local v3    # "absListRight":I
    :cond_24
    if-eqz v10, :cond_15

    .line 3530
    move/from16 v0, v29

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 3531
    add-int v39, v29, v9

    move/from16 v0, v39

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 3532
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_a
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2256
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2257
    .local v1, "handled":Z
    if-nez v1, :cond_0

    .line 2259
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2260
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 2263
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2266
    .end local v0    # "focused":Landroid/view/View;
    :cond_0
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/4 v1, 0x0

    .line 3548
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    if-eqz v2, :cond_1

    .line 3549
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 3559
    :cond_0
    :goto_0
    return v0

    .line 3552
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3553
    .local v0, "more":Z
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mCachingActive:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v2, :cond_2

    .line 3554
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mCachingActive:Z

    .line 3556
    :cond_2
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    if-eqz v1, :cond_0

    .line 3557
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 3573
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3575
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3576
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3577
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3358
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 3360
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3361
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3363
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 3364
    .local v0, "span":I
    if-ge v0, v1, :cond_0

    .line 3365
    iget v2, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->right:I

    .line 3368
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3369
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3371
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3372
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3341
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 3343
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3344
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3346
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 3347
    .local v0, "span":I
    if-ge v0, v1, :cond_0

    .line 3348
    iget v2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Rect;->left:I

    .line 3351
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3352
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3354
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3355
    return-void
.end method

.method fillGap(Z)V
    .locals 6
    .param p1, "rightSide"    # Z

    .prologue
    const/16 v5, 0x22

    .line 707
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v0

    .line 708
    .local v0, "count":I
    if-eqz p1, :cond_2

    .line 709
    const/4 v1, 0x0

    .line 710
    .local v1, "paddingLeft":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_0

    .line 711
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getListPaddingLeft()I

    move-result v1

    .line 713
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 715
    .local v3, "startOffset":I
    :goto_0
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillRight(II)Landroid/view/View;

    .line 716
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->correctTooHigh(I)V

    .line 727
    .end local v1    # "paddingLeft":I
    :goto_1
    return-void

    .end local v3    # "startOffset":I
    .restart local v1    # "paddingLeft":I
    :cond_1
    move v3, v1

    .line 713
    goto :goto_0

    .line 718
    .end local v1    # "paddingLeft":I
    :cond_2
    const/4 v2, 0x0

    .line 719
    .local v2, "paddingRight":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_3

    .line 720
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getListPaddingRight()I

    move-result v2

    .line 722
    :cond_3
    if-lez v0, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 724
    .restart local v3    # "startOffset":I
    :goto_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    .line 725
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->correctTooLow(I)V

    goto :goto_1

    .line 722
    .end local v3    # "startOffset":I
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v4

    sub-int v3, v4, v2

    goto :goto_2
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 1368
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v0

    .line 1369
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 1370
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 1371
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1372
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1373
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 1374
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1386
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return v3

    .line 1371
    .restart local v1    # "i":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1378
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 1379
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1380
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1381
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 1378
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1386
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p3, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3920
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;>;"
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_1

    .line 3921
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3924
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3925
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-object v2, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3927
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3928
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3930
    if-eqz v2, :cond_0

    .line 3936
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 3924
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3936
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3898
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3899
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3900
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3901
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3910
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 3905
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3906
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3907
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3910
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3825
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3826
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3829
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3830
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-object v2, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3832
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3833
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3835
    if-eqz v2, :cond_0

    .line 3841
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 3829
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3841
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 3806
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3807
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3808
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3809
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3817
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 3812
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3813
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3814
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3817
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3871
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 3872
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3875
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3876
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;

    iget-object v2, v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3878
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3879
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3881
    if-eqz v2, :cond_0

    .line 3887
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 3875
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3887
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 3851
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3852
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3853
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3854
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3863
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_0
    return-object v1

    .line 3858
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3859
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 3860
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1
    move-object v1, v0

    .line 3863
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2497
    const/4 v1, 0x0

    .line 2498
    .local v1, "moved":Z
    const/16 v3, 0x11

    if-ne p1, v3, :cond_3

    .line 2499
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    if-eqz v3, :cond_1

    .line 2500
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2501
    .local v2, "position":I
    if-ltz v2, :cond_0

    .line 2502
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLayoutMode:I

    .line 2503
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectionInt(I)V

    .line 2504
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invokeOnItemScrollListener()V

    .line 2506
    :cond_0
    const/4 v1, 0x1

    .line 2522
    .end local v2    # "position":I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2523
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->awakenScrollBars()Z

    .line 2524
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    .line 2527
    :cond_2
    return v1

    .line 2508
    :cond_3
    const/16 v3, 0x42

    if-ne p1, v3, :cond_1

    .line 2509
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v0, v3, -0x1

    .line 2510
    .local v0, "lastItem":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    if-ge v3, v0, :cond_1

    .line 2511
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2513
    .restart local v2    # "position":I
    if-ltz v2, :cond_4

    .line 2514
    const/4 v3, 0x3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLayoutMode:I

    .line 2515
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectionInt(I)V

    .line 2516
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invokeOnItemScrollListener()V

    .line 2518
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3950
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3951
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 3980
    :cond_0
    :goto_0
    return-object v5

    .line 3956
    :cond_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mChoiceMode:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_3

    .line 3957
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3958
    .local v7, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3959
    .local v3, "count":I
    new-array v5, v3, [J

    .line 3960
    .local v5, "ids":[J
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3962
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3963
    .local v1, "checkedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "checkedCount":I
    .local v2, "checkedCount":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 3964
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3965
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3963
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "checkedCount":I
    .restart local v2    # "checkedCount":I
    goto :goto_1

    .line 3971
    :cond_2
    if-eq v2, v3, :cond_0

    .line 3974
    new-array v6, v2, [J

    .line 3975
    .local v6, "result":[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    move-object v5, v6

    .line 3977
    goto :goto_0

    .line 3980
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "checkedCount":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    .end local v6    # "result":[J
    .end local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_3
    new-array v5, v10, [J

    goto :goto_0

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "checkedCount":I
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "ids":[J
    .restart local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_4
    move v1, v2

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    goto :goto_2
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->getChildDrawingOrder(II)I

    move-result v0

    .line 1562
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getChildDrawingOrder(II)I

    move-result v0

    goto :goto_0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3585
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 3610
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3303
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 252
    const v0, 0x3ea8f5c3    # 0.33f

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mRight:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3707
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3688
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getWidthForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 3985
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->getWidthForPosition(I)I

    move-result v0

    .line 3986
    .local v0, "width":I
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->shouldAdjustWidthForDivider(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3987
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 3989
    .end local v0    # "width":I
    :cond_0
    return v0
.end method

.method public isOpaque()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 3308
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mCachingActive:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 3310
    .local v4, "retValue":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 3312
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->left:I

    .line 3313
    .local v2, "listLeft":I
    :goto_1
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3314
    .local v0, "first":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    if-le v5, v2, :cond_6

    :cond_2
    move v4, v6

    .line 3324
    .end local v0    # "first":Landroid/view/View;
    .end local v2    # "listLeft":I
    .end local v4    # "retValue":Z
    :cond_3
    :goto_2
    return v4

    :cond_4
    move v4, v6

    .line 3308
    goto :goto_0

    .line 3312
    .restart local v4    # "retValue":Z
    :cond_5
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mPaddingLeft:I

    goto :goto_1

    .line 3317
    .restart local v0    # "first":Landroid/view/View;
    .restart local v2    # "listLeft":I
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v7

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    :goto_3
    sub-int v3, v7, v5

    .line 3319
    .local v3, "listRight":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3320
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v5, v3, :cond_3

    :cond_7
    move v4, v6

    .line 3321
    goto :goto_2

    .line 3317
    .end local v1    # "last":Landroid/view/View;
    .end local v3    # "listRight":I
    :cond_8
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mPaddingRight:I

    goto :goto_3
.end method

.method protected layoutChildren()V
    .locals 40

    .prologue
    .line 1567
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mBlockLayoutRequests:Z

    .line 1568
    .local v13, "blockLayoutRequests":Z
    if-eqz v13, :cond_1

    .line 1886
    :cond_0
    :goto_0
    return-void

    .line 1572
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mBlockLayoutRequests:Z

    .line 1575
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->layoutChildren()V

    .line 1577
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    .line 1579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1580
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resetList()V

    .line 1581
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1882
    if-nez v13, :cond_0

    .line 1883
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 1585
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->left:I

    .line 1586
    .local v8, "childrenLeft":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLeft:I

    move/from16 v37, v0

    sub-int v4, v4, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    sub-int v9, v4, v37

    .line 1587
    .local v9, "childrenRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v15

    .line 1589
    .local v15, "childCount":I
    const/16 v27, 0x0

    .line 1590
    .local v27, "index":I
    const/4 v7, 0x0

    .line 1593
    .local v7, "delta":I
    const/4 v5, 0x0

    .line 1594
    .local v5, "oldSel":Landroid/view/View;
    const/16 v29, 0x0

    .line 1595
    .local v29, "oldFirst":Landroid/view/View;
    const/4 v6, 0x0

    .line 1598
    .local v6, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLayoutMode:I

    packed-switch v4, :pswitch_data_0

    .line 1613
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    move/from16 v37, v0

    sub-int v27, v4, v37

    .line 1614
    if-ltz v27, :cond_3

    move/from16 v0, v27

    if-ge v0, v15, :cond_3

    .line 1615
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1619
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 1621
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mNextSelectedPosition:I

    if-ltz v4, :cond_4

    .line 1622
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    move/from16 v37, v0

    sub-int v7, v4, v37

    .line 1626
    :cond_4
    add-int v4, v27, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1629
    :cond_5
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDataChanged:Z

    move/from16 v16, v0

    .line 1630
    .local v16, "dataChanged":Z
    if-eqz v16, :cond_6

    .line 1631
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->handleDataChanged()V

    .line 1636
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    if-nez v4, :cond_7

    .line 1637
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resetList()V

    .line 1638
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1882
    if-nez v13, :cond_0

    .line 1883
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1600
    .end local v16    # "dataChanged":Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    move/from16 v37, v0

    sub-int v27, v4, v37

    .line 1601
    if-ltz v27, :cond_5

    move/from16 v0, v27

    if-ge v0, v15, :cond_5

    .line 1602
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    .line 1640
    .restart local v16    # "dataChanged":Z
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Landroid/widget/ListAdapter;->getCount()I

    move-result v37

    move/from16 v0, v37

    if-eq v4, v0, :cond_9

    .line 1641
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "The content of the adapter has changed but TwHorizontalListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in TwHorizontalListView("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getId()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ", "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ") with Adapter("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ")]"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1882
    .end local v5    # "oldSel":Landroid/view/View;
    .end local v6    # "newSel":Landroid/view/View;
    .end local v7    # "delta":I
    .end local v8    # "childrenLeft":I
    .end local v9    # "childrenRight":I
    .end local v15    # "childCount":I
    .end local v16    # "dataChanged":Z
    .end local v27    # "index":I
    .end local v29    # "oldFirst":Landroid/view/View;
    :catchall_0
    move-exception v4

    if-nez v13, :cond_8

    .line 1883
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mBlockLayoutRequests:Z

    :cond_8
    throw v4

    .line 1649
    .restart local v5    # "oldSel":Landroid/view/View;
    .restart local v6    # "newSel":Landroid/view/View;
    .restart local v7    # "delta":I
    .restart local v8    # "childrenLeft":I
    .restart local v9    # "childrenRight":I
    .restart local v15    # "childCount":I
    .restart local v16    # "dataChanged":Z
    .restart local v27    # "index":I
    .restart local v29    # "oldFirst":Landroid/view/View;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectedPositionInt(I)V

    .line 1651
    const/4 v10, 0x0

    .line 1652
    .local v10, "accessibilityFocusLayoutRestoreNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v11, 0x0

    .line 1653
    .local v11, "accessibilityFocusLayoutRestoreView":Landroid/view/View;
    const/4 v12, -0x1

    .line 1658
    .local v12, "accessibilityFocusPosition":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v35

    .line 1659
    .local v35, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v35, :cond_c

    .line 1660
    invoke-virtual/range {v35 .. v35}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v19

    .line 1661
    .local v19, "focusHost":Landroid/view/View;
    if-eqz v19, :cond_c

    .line 1662
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    .line 1663
    .local v18, "focusChild":Landroid/view/View;
    if-eqz v18, :cond_c

    .line 1664
    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_b

    .line 1668
    :cond_a
    move-object/from16 v11, v19

    .line 1669
    invoke-virtual/range {v35 .. v35}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    .line 1675
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v12

    .line 1680
    .end local v18    # "focusChild":Landroid/view/View;
    .end local v19    # "focusHost":Landroid/view/View;
    :cond_c
    const/16 v20, 0x0

    .line 1681
    .local v20, "focusLayoutRestoreDirectChild":Landroid/view/View;
    const/16 v21, 0x0

    .line 1686
    .local v21, "focusLayoutRestoreView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v24

    .line 1687
    .local v24, "focusedChild":Landroid/view/View;
    if-eqz v24, :cond_f

    .line 1693
    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1694
    :cond_d
    move-object/from16 v20, v24

    .line 1696
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->findFocus()Landroid/view/View;

    move-result-object v21

    .line 1697
    if-eqz v21, :cond_e

    .line 1699
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1702
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->requestFocus()Z

    .line 1707
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    .line 1708
    .local v17, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    move-object/from16 v32, v0

    .line 1709
    .local v32, "recycleBin":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;
    if-eqz v16, :cond_10

    .line 1710
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_2
    move/from16 v0, v25

    if-ge v0, v15, :cond_11

    .line 1711
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v37, v17, v25

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1710
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 1714
    .end local v25    # "i":I
    :cond_10
    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1718
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->detachAllViewsFromParent()V

    .line 1719
    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1721
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLayoutMode:I

    packed-switch v4, :pswitch_data_1

    .line 1748
    if-nez v15, :cond_1c

    .line 1749
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mStackFromBottom:Z

    if-nez v4, :cond_1b

    .line 1750
    const/4 v4, 0x0

    const/16 v37, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v30

    .line 1751
    .local v30, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectedPositionInt(I)V

    .line 1752
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v34

    .line 1773
    .end local v8    # "childrenLeft":I
    .end local v30    # "position":I
    .local v34, "sel":Landroid/view/View;
    :goto_3
    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->scrapActiveViews()V

    .line 1775
    if-eqz v34, :cond_24

    .line 1778
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemsCanFocus:Z

    if-eqz v4, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_23

    .line 1779
    move-object/from16 v0, v34

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_12

    if-eqz v21, :cond_12

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_13

    :cond_12
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_13
    const/16 v22, 0x1

    .line 1782
    .local v22, "focusWasTaken":Z
    :goto_4
    if-nez v22, :cond_22

    .line 1786
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v23

    .line 1787
    .local v23, "focused":Landroid/view/View;
    if-eqz v23, :cond_14

    .line 1788
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->clearFocus()V

    .line 1790
    :cond_14
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 1798
    .end local v22    # "focusWasTaken":Z
    .end local v23    # "focused":Landroid/view/View;
    :goto_5
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedLeft:I

    .line 1830
    :cond_15
    :goto_6
    if-eqz v35, :cond_16

    .line 1831
    invoke-virtual/range {v35 .. v35}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v28

    .line 1832
    .local v28, "newAccessibilityFocusedView":Landroid/view/View;
    if-nez v28, :cond_16

    .line 1833
    if-eqz v11, :cond_2b

    invoke-virtual {v11}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1835
    invoke-virtual {v11}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v31

    .line 1837
    .local v31, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v10, :cond_2a

    if-eqz v31, :cond_2a

    .line 1838
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v36

    .line 1840
    .local v36, "virtualViewId":I
    const/16 v4, 0x40

    const/16 v37, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 1860
    .end local v28    # "newAccessibilityFocusedView":Landroid/view/View;
    .end local v31    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v36    # "virtualViewId":I
    :cond_16
    :goto_7
    if-eqz v21, :cond_17

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 1862
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1865
    :cond_17
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLayoutMode:I

    .line 1866
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDataChanged:Z

    .line 1867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v4, :cond_18

    .line 1868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 1869
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1871
    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mNeedSync:Z

    .line 1872
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 1874
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->updateScrollIndicators()V

    .line 1876
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    if-lez v4, :cond_19

    .line 1877
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->checkSelectionChanged()V

    .line 1880
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1882
    if-nez v13, :cond_0

    .line 1883
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1723
    .end local v34    # "sel":Landroid/view/View;
    .restart local v8    # "childrenLeft":I
    :pswitch_2
    if-eqz v6, :cond_1a

    .line 1724
    :try_start_4
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v34

    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1726
    .end local v34    # "sel":Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v34

    .line 1728
    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1730
    .end local v34    # "sel":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSpecificTop:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v34

    .line 1731
    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1733
    .end local v34    # "sel":Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v34

    .line 1734
    .restart local v34    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_3

    .line 1737
    .end local v34    # "sel":Landroid/view/View;
    :pswitch_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    .line 1738
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillFromLeft(I)Landroid/view/View;

    move-result-object v34

    .line 1739
    .restart local v34    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->adjustViewsLeftOrRight()V

    goto/16 :goto_3

    .line 1742
    .end local v34    # "sel":Landroid/view/View;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->reconcileSelectedPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSpecificTop:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v34

    .line 1743
    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .end local v34    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v4, p0

    .line 1745
    invoke-direct/range {v4 .. v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v34

    .line 1746
    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1754
    .end local v34    # "sel":Landroid/view/View;
    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v30

    .line 1755
    .restart local v30    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectedPositionInt(I)V

    .line 1756
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillLeft(II)Landroid/view/View;

    move-result-object v34

    .line 1757
    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1759
    .end local v30    # "position":I
    .end local v34    # "sel":Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    if-ltz v4, :cond_1e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v4, v0, :cond_1e

    .line 1760
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    if-nez v5, :cond_1d

    .end local v8    # "childrenLeft":I
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v34

    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .end local v34    # "sel":Landroid/view/View;
    .restart local v8    # "childrenLeft":I
    :cond_1d
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    goto :goto_8

    .line 1762
    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v4, v0, :cond_20

    .line 1763
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    if-nez v29, :cond_1f

    .end local v8    # "childrenLeft":I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v34

    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .end local v34    # "sel":Landroid/view/View;
    .restart local v8    # "childrenLeft":I
    :cond_1f
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLeft()I

    move-result v8

    goto :goto_9

    .line 1766
    :cond_20
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v34

    .restart local v34    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 1779
    .end local v8    # "childrenLeft":I
    :cond_21
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 1792
    .restart local v22    # "focusWasTaken":Z
    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1793
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_5

    .line 1796
    .end local v22    # "focusWasTaken":Z
    :cond_23
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1800
    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTouchMode:I

    const/16 v37, 0x1

    move/from16 v0, v37

    if-eq v4, v0, :cond_25

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTouchMode:I

    const/16 v37, 0x2

    move/from16 v0, v37

    if-ne v4, v0, :cond_27

    :cond_25
    const/16 v26, 0x1

    .line 1802
    .local v26, "inTouchMode":Z
    :goto_a
    if-eqz v26, :cond_28

    .line 1804
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    move/from16 v37, v0

    sub-int v4, v4, v37

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1805
    .local v14, "child":Landroid/view/View;
    if-eqz v14, :cond_26

    .line 1806
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 1824
    .end local v14    # "child":Landroid/view/View;
    :cond_26
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_15

    if-eqz v21, :cond_15

    .line 1825
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_6

    .line 1800
    .end local v26    # "inTouchMode":Z
    :cond_27
    const/16 v26, 0x0

    goto :goto_a

    .line 1808
    .restart local v26    # "inTouchMode":Z
    :cond_28
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectorPosition:I

    const/16 v37, -0x1

    move/from16 v0, v37

    if-eq v4, v0, :cond_29

    .line 1812
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    move/from16 v37, v0

    sub-int v4, v4, v37

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1813
    .restart local v14    # "child":Landroid/view/View;
    if-eqz v14, :cond_26

    .line 1814
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_b

    .line 1818
    .end local v14    # "child":Landroid/view/View;
    :cond_29
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedLeft:I

    .line 1819
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_b

    .line 1843
    .end local v26    # "inTouchMode":Z
    .restart local v28    # "newAccessibilityFocusedView":Landroid/view/View;
    .restart local v31    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2a
    invoke-virtual {v11}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto/16 :goto_7

    .line 1845
    .end local v31    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_2b
    const/4 v4, -0x1

    if-eq v12, v4, :cond_16

    .line 1847
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    sub-int v4, v12, v4

    const/16 v37, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v38

    add-int/lit8 v38, v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v4, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v30

    .line 1850
    .restart local v30    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    .line 1851
    .local v33, "restoreView":Landroid/view/View;
    if-eqz v33, :cond_16

    .line 1852
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->requestAccessibilityFocus()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_7

    .line 1598
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1721
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 2155
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2156
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 2182
    :cond_1
    :goto_0
    return v2

    .line 2160
    :cond_2
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2161
    .local v1, "count":I
    if-nez p1, :cond_4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    if-ne v4, v3, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsFolderTypeFeature:Z

    if-eqz v4, :cond_4

    if-lez v1, :cond_4

    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2164
    :cond_4
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAreAllItemsSelectable:Z

    if-nez v4, :cond_6

    .line 2165
    if-eqz p2, :cond_5

    .line 2166
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2167
    :goto_1
    if-ge p1, v1, :cond_6

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2168
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2171
    :cond_5
    add-int/lit8 v2, v1, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2172
    :goto_2
    if-ltz p1, :cond_6

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2173
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2178
    :cond_6
    if-ltz p1, :cond_7

    if-lt p1, v1, :cond_8

    :cond_7
    move v2, v3

    .line 2179
    goto :goto_0

    :cond_8
    move v2, p1

    .line 2182
    goto :goto_0
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .locals 6
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .prologue
    const/4 v3, -0x1

    .line 2198
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2199
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v3

    .line 2230
    :cond_1
    :goto_0
    return v1

    .line 2204
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2205
    .local v1, "after":I
    if-ne v1, v3, :cond_1

    .line 2210
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2211
    .local v2, "count":I
    add-int/lit8 v4, v2, -0x1

    invoke-static {p1, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2212
    if-eqz p3, :cond_4

    .line 2213
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2214
    :goto_1
    if-le p2, p1, :cond_3

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2215
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 2217
    :cond_3
    if-gt p2, p1, :cond_6

    move v1, v3

    .line 2218
    goto :goto_0

    .line 2221
    :cond_4
    const/4 v4, 0x0

    add-int/lit8 v5, p2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2222
    :goto_2
    if-ge p2, p1, :cond_5

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2223
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 2225
    :cond_5
    if-lt p2, p1, :cond_6

    move v1, v3

    .line 2226
    goto :goto_0

    :cond_6
    move v1, p2

    .line 2230
    goto :goto_0
.end method

.method final measureWidthOfChildren(IIIII)I
    .locals 12
    .param p1, "heightMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxWidth"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 1307
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1308
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 1309
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v6, v10, v11

    .line 1363
    :cond_0
    :goto_0
    return v6

    .line 1313
    :cond_1
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v9, v10, v11

    .line 1314
    .local v9, "returnedWidth":I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    .line 1317
    .local v3, "dividerHeight":I
    :goto_1
    const/4 v6, 0x0

    .line 1322
    .local v6, "prevWidthWithoutPartialChild":I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1323
    :cond_2
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    .line 1324
    .local v7, "recycleBin":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->recycleOnMeasure()Z

    move-result v8

    .line 1325
    .local v8, "recyle":Z
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsScrap:[Z

    .line 1327
    .local v5, "isScrap":[Z
    move v4, p2

    .local v4, "i":I
    :goto_2
    if-gt v4, p3, :cond_9

    .line 1328
    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1330
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1332
    if-lez v4, :cond_3

    .line 1334
    add-int/2addr v9, v3

    .line 1338
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1340
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1343
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    .line 1345
    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    .line 1348
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    .line 1314
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "dividerHeight":I
    .end local v4    # "i":I
    .end local v5    # "isScrap":[Z
    .end local v6    # "prevWidthWithoutPartialChild":I
    .end local v7    # "recycleBin":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;
    .end local v8    # "recyle":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1356
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "dividerHeight":I
    .restart local v4    # "i":I
    .restart local v5    # "isScrap":[Z
    .restart local v6    # "prevWidthWithoutPartialChild":I
    .restart local v7    # "recycleBin":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;
    .restart local v8    # "recyle":Z
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    .line 1357
    move v6, v9

    .line 1327
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v6, v9

    .line 1363
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3788
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onFinishInflate()V

    .line 3790
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v0

    .line 3791
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 3792
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3793
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->addHeaderView(Landroid/view/View;)V

    .line 3792
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3795
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->removeAllViews()V

    .line 3797
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 15
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3712
    invoke-super/range {p0 .. p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3714
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3715
    .local v2, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .line 3716
    .local v5, "closetChildIndex":I
    const/4 v4, 0x0

    .line 3717
    .local v4, "closestChildLeft":I
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 3718
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mScrollX:I

    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 3722
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v13

    iget v14, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_0

    .line 3723
    const/4 v12, 0x0

    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLayoutMode:I

    .line 3724
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->layoutChildren()V

    .line 3729
    :cond_0
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mTempRect:Landroid/graphics/Rect;

    .line 3730
    .local v11, "otherRect":Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .line 3731
    .local v9, "minDistance":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v3

    .line 3732
    .local v3, "childCount":I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    .line 3734
    .local v7, "firstPosition":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 3736
    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_2

    .line 3734
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3740
    :cond_2
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3741
    .local v10, "other":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3742
    invoke-virtual {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3743
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 3745
    .local v6, "distance":I
    if-ge v6, v9, :cond_1

    .line 3746
    move v9, v6

    .line 3747
    move v5, v8

    .line 3748
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v4

    goto :goto_1

    .line 3753
    .end local v3    # "childCount":I
    .end local v6    # "distance":I
    .end local v7    # "firstPosition":I
    .end local v8    # "i":I
    .end local v9    # "minDistance":I
    .end local v10    # "other":Landroid/view/View;
    .end local v11    # "otherRect":Landroid/graphics/Rect;
    :cond_3
    if-ltz v5, :cond_5

    .line 3754
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectionFromTop(II)V

    .line 3759
    :goto_2
    if-eqz p1, :cond_4

    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    if-eqz v12, :cond_4

    .line 3760
    new-instance v12, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$2;

    invoke-direct {v12, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;)V

    invoke-virtual {p0, v12}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 3766
    :cond_4
    return-void

    .line 3756
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4053
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4054
    const-class v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 4055
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 4059
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4060
    const-class v3, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 4062
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getCount()I

    move-result v1

    .line 4063
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getSelectionModeForAccessibility()I

    move-result v2

    .line 4064
    .local v2, "selectionMode":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 4065
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 4066
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4071
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4073
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    .line 4074
    .local v7, "lp":Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;
    if-eqz v7, :cond_0

    iget v2, v7, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_0

    move v4, v1

    .line 4075
    .local v4, "isHeading":Z
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isItemChecked(I)Z

    move-result v5

    .local v5, "isSelected":Z
    move v2, p2

    move v3, v1

    .line 4076
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v6

    .line 4078
    .local v6, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 4079
    return-void

    .end local v4    # "isHeading":Z
    .end local v5    # "isSelected":Z
    .end local v6    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    :cond_0
    move v4, v0

    .line 4074
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1550
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2271
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2276
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2281
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1198
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onMeasure(II)V

    .line 1200
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 1201
    .local v12, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1202
    .local v10, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1203
    .local v4, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1205
    .local v11, "heightSize":I
    const/4 v9, 0x0

    .line 1206
    .local v9, "childWidth":I
    const/4 v7, 0x0

    .line 1207
    .local v7, "childHeight":I
    const/4 v8, 0x0

    .line 1209
    .local v8, "childState":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    .line 1210
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v12, :cond_0

    if-nez v10, :cond_1

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1214
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6, v2, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1216
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1217
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1218
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1220
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1222
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1226
    .end local v6    # "child":Landroid/view/View;
    :cond_1
    if-nez v10, :cond_5

    .line 1227
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHorizontalScrollbarHeight()I

    move-result v1

    add-int v11, v0, v1

    .line 1233
    :goto_1
    if-nez v12, :cond_2

    .line 1234
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1238
    :cond_2
    const/high16 v0, -0x80000000

    if-ne v12, v0, :cond_3

    move-object v0, p0

    move v1, p2

    move v5, v3

    .line 1240
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->measureWidthOfChildren(IIIII)I

    move-result v4

    .line 1243
    :cond_3
    invoke-virtual {p0, v4, v11}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setMeasuredDimension(II)V

    .line 1244
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeightMeasureSpec:I

    .line 1245
    return-void

    .line 1209
    :cond_4
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 1230
    :cond_5
    const/high16 v0, -0x1000000

    and-int/2addr v0, v8

    or-int/2addr v11, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1180
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1181
    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1182
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v0, v5, v6

    .line 1183
    .local v0, "childPosition":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1184
    .local v1, "childRight":I
    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mPaddingLeft:I

    sub-int v6, p1, v6

    sub-int v6, v1, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1185
    .local v4, "offset":I
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v3, v5, v4

    .line 1186
    .local v3, "left":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFocusSelector:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;

    if-nez v5, :cond_0

    .line 1187
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;Lcom/sec/android/touchwiz/widget/TwHorizontalListView$1;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFocusSelector:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;

    .line 1189
    :cond_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFocusSelector:Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;

    invoke-virtual {v5, v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;->setup(II)Lcom/sec/android/touchwiz/widget/TwHorizontalListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 1192
    .end local v0    # "childPosition":I
    .end local v1    # "childRight":I
    .end local v2    # "focusedChild":Landroid/view/View;
    .end local v3    # "left":I
    .end local v4    # "offset":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onSizeChanged(IIII)V

    .line 1193
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1556
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 3770
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->onWindowFocusChanged(Z)V

    .line 3771
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    if-eqz v0, :cond_0

    .line 3772
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$3;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 3778
    :cond_0
    return-void
.end method

.method pageScroll(I)Z
    .locals 8
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2450
    const/16 v5, 0x11

    if-ne p1, v5, :cond_4

    .line 2451
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2452
    .local v0, "nextPage":I
    const/4 v2, 0x0

    .line 2460
    .local v2, "rightSide":Z
    :goto_0
    if-ltz v0, :cond_3

    .line 2461
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0, v5, v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v1

    .line 2462
    .local v1, "position":I
    if-ltz v1, :cond_3

    .line 2463
    const/4 v3, 0x4

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLayoutMode:I

    .line 2464
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSpecificTop:I

    .line 2466
    if-eqz v2, :cond_0

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v5

    sub-int/2addr v3, v5

    if-le v1, v3, :cond_0

    .line 2467
    const/4 v3, 0x3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLayoutMode:I

    .line 2470
    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2471
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLayoutMode:I

    .line 2474
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectionInt(I)V

    .line 2475
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invokeOnItemScrollListener()V

    .line 2476
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2477
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    :cond_2
    move v3, v4

    .line 2484
    .end local v0    # "nextPage":I
    .end local v1    # "position":I
    .end local v2    # "rightSide":Z
    :cond_3
    return v3

    .line 2453
    :cond_4
    const/16 v5, 0x42

    if-ne p1, v5, :cond_3

    .line 2454
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2455
    .restart local v0    # "nextPage":I
    const/4 v2, 0x1

    .restart local v2    # "rightSide":Z
    goto :goto_0
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1275
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 465
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 471
    :cond_0
    const/4 v0, 0x1

    .line 473
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 476
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 371
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "result":Z
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;->onChanged()V

    .line 377
    :cond_0
    const/4 v0, 0x1

    .line 379
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 382
    .end local v0    # "result":Z
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 626
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 629
    .local v8, "rectLeftWithinChild":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 630
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 632
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getWidth()I

    move-result v12

    .line 633
    .local v12, "width":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getScrollX()I

    move-result v6

    .line 634
    .local v6, "listUnfadedLeft":I
    add-int v7, v6, v12

    .line 635
    .local v7, "listUnfadedRight":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    .line 637
    .local v4, "fadingEdge":I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->showingLeftFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 639
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    if-gtz v13, :cond_0

    if-le v8, v4, :cond_1

    .line 640
    :cond_0
    add-int/2addr v6, v4

    .line 644
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildCount()I

    move-result v1

    .line 645
    .local v1, "childCount":I
    add-int/lit8 v13, v1, -0x1

    invoke-virtual {p0, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v9

    .line 647
    .local v9, "rightOfRightChild":I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->showingRightFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 649
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    iget v14, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int v14, v9, v4

    if-ge v13, v14, :cond_3

    .line 651
    :cond_2
    sub-int/2addr v7, v4

    .line 655
    :cond_3
    const/4 v11, 0x0

    .line 657
    .local v11, "scrollXDelta":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-le v13, v7, :cond_7

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    if-le v13, v6, :cond_7

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v13, v12, :cond_6

    .line 664
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v6

    add-int/2addr v11, v13

    .line 671
    :goto_0
    sub-int v3, v9, v7

    .line 672
    .local v3, "distanceToRight":I
    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 692
    .end local v3    # "distanceToRight":I
    :cond_4
    :goto_1
    if-eqz v11, :cond_9

    const/4 v10, 0x1

    .line 693
    .local v10, "scroll":Z
    :goto_2
    if-eqz v10, :cond_5

    .line 694
    neg-int v13, v11

    invoke-direct {p0, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->scrollListItemsBy(I)V

    .line 695
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 696
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedLeft:I

    .line 697
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    .line 699
    :cond_5
    return v10

    .line 667
    .end local v10    # "scroll":Z
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    .line 673
    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    if-ge v13, v6, :cond_4

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    if-ge v13, v7, :cond_4

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v13, v12, :cond_8

    .line 680
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->right:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 687
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 688
    .local v5, "left":I
    sub-int v2, v5, v6

    .line 689
    .local v2, "deltaToLeft":I
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 683
    .end local v2    # "deltaToLeft":I
    .end local v5    # "left":I
    :cond_8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int v13, v6, v13

    sub-int/2addr v11, v13

    goto :goto_3

    .line 692
    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 579
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 581
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->resetList()V

    .line 583
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLayoutMode:I

    .line 584
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 93
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 518
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->resetList()V

    .line 523
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->clear()V

    .line 525
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 526
    :cond_1
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalHeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 531
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mOldSelectedPosition:I

    .line 532
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mOldSelectedRowId:J

    .line 535
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 537
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_5

    .line 538
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAreAllItemsSelectable:Z

    .line 539
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mOldItemCount:I

    .line 540
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    .line 541
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->checkFocus()V

    .line 543
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    .line 544
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 546
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 549
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mStackFromBottom:Z

    if-eqz v1, :cond_4

    .line 550
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 554
    .local v0, "position":I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectedPositionInt(I)V

    .line 555
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 557
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemCount:I

    if-nez v1, :cond_2

    .line 559
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->checkSelectionChanged()V

    .line 568
    .end local v0    # "position":I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->requestLayout()V

    .line 569
    return-void

    .line 528
    :cond_3
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 552
    :cond_4
    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_1

    .line 562
    .end local v0    # "position":I
    :cond_5
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAreAllItemsSelectable:Z

    .line 563
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->checkFocus()V

    .line 565
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->checkSelectionChanged()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 3329
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 3330
    .local v0, "opaque":Z
    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mIsCacheColorOpaque:Z

    .line 3331
    if-eqz v0, :cond_1

    .line 3332
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 3333
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3335
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3337
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setCacheColorHint(I)V

    .line 3338
    return-void

    .line 3329
    .end local v0    # "opaque":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 3595
    if-eqz p1, :cond_2

    .line 3596
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    .line 3600
    :goto_0
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3601
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerIsOpaque:Z

    .line 3602
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->requestLayout()V

    .line 3603
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    .line 3604
    return-void

    .line 3598
    :cond_2
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 3620
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDividerHeight:I

    .line 3621
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->requestLayout()V

    .line 3622
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    .line 3623
    return-void
.end method

.method public setDndListAnimator(Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;)V
    .locals 2
    .param p1, "animator"    # Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setChildrenDrawingOrderEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mDndListAnimator:Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwHorizontalListView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndHorizontalListAnimator;->setAutoScrollListener(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndAutoScrollListener;)V

    .line 175
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .param p1, "footerDividersEnabled"    # Z

    .prologue
    .line 3658
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mFooterDividersEnabled:Z

    .line 3659
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    .line 3660
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .param p1, "headerDividersEnabled"    # Z

    .prologue
    .line 3635
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderDividersEnabled:Z

    .line 3636
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    .line 3637
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .param p1, "itemsCanFocus"    # Z

    .prologue
    .line 3292
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mItemsCanFocus:Z

    .line 3293
    if-nez p1, :cond_0

    .line 3294
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setDescendantFocusability(I)V

    .line 3296
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3699
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3700
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    .line 3701
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3678
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3679
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mScrollX:I

    if-gez v0, :cond_0

    .line 3680
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->invalidate()V

    .line 3682
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 500
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 501
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2072
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelectionFromTop(II)V

    .line 2073
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .locals 2

    .prologue
    .line 2238
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2239
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 2240
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mNextSelectedPosition:I

    .line 2251
    :goto_0
    return-void

    .line 2244
    :cond_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 2245
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setSelection(I)V

    goto :goto_0

    .line 2247
    :cond_1
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mNextSelectedPosition:I

    .line 2248
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLayoutMode:I

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "x"    # I

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 2112
    :cond_0
    :goto_0
    return-void

    .line 2089
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2090
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 2091
    if-ltz p1, :cond_2

    .line 2092
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2098
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 2099
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mLayoutMode:I

    .line 2100
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSpecificTop:I

    .line 2102
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 2103
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSyncPosition:I

    .line 2104
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSyncRowId:J

    .line 2107
    :cond_3
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_4

    .line 2108
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 2110
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->requestLayout()V

    goto :goto_0

    .line 2095
    :cond_5
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method setSelectionInt(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 2121
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2122
    const/4 v0, 0x0

    .line 2124
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mSelectedPosition:I

    .line 2126
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_0

    .line 2127
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_3

    .line 2128
    const/4 v0, 0x1

    .line 2134
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1

    .line 2135
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 2138
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->layoutChildren()V

    .line 2140
    if-eqz v0, :cond_2

    .line 2141
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalListView;->awakenScrollBars()Z

    .line 2143
    :cond_2
    return-void

    .line 2129
    :cond_3
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_0

    .line 2130
    const/4 v0, 0x1

    goto :goto_0
.end method

.method shouldCorrectTooHigh()Z
    .locals 1

    .prologue
    .line 1440
    const/4 v0, 0x1

    return v0
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 991
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollByOffset(I)V

    .line 992
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 981
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalAbsListView;->smoothScrollToPosition(I)V

    .line 982
    return-void
.end method

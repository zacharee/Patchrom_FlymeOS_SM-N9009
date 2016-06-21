.class public Lcom/sec/android/touchwiz/widget/TwGridView;
.super Lcom/sec/android/touchwiz/widget/TwAbsListView;
.source "TwGridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddDeleteGridAnimator:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

.field private mColumnWidth:I

.field private mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwGridView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 118
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 96
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    .line 98
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 99
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    .line 104
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 105
    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 107
    const v6, 0x800003

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    .line 109
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTempRect:Landroid/graphics/Rect;

    .line 124
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 129
    .local v2, "hSpacing":I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->setHorizontalSpacing(I)V

    .line 131
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 133
    .local v5, "vSpacing":I
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->setVerticalSpacing(I)V

    .line 135
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 136
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 137
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->setStretchMode(I)V

    .line 140
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 141
    .local v1, "columnWidth":I
    if-lez v1, :cond_1

    .line 142
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setColumnWidth(I)V

    .line 145
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 146
    .local v4, "numColumns":I
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNumColumns(I)V

    .line 148
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 149
    if-ltz v3, :cond_2

    .line 150
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->setGravity(I)V

    .line 153
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->setEnableLinearFling(Z)V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwGridView;)Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwGridView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    return-object v0
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 815
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    .line 819
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 823
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 824
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 827
    .local v0, "offset":I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 829
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 843
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 846
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 850
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 851
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 854
    .local v0, "offset":I
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 856
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 2258
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v1

    .line 2260
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 2264
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 2267
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2268
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 2269
    .local v2, "delta":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 2272
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2274
    :cond_0
    if-gez v2, :cond_1

    .line 2276
    const/4 v2, 0x0

    .line 2295
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2296
    neg-int v3, v2

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 2299
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_2
    return-void

    .line 2280
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2281
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 2283
    .restart local v2    # "delta":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 2286
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2289
    :cond_4
    if-lez v2, :cond_1

    .line 2291
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1625
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    .line 1756
    :goto_0
    return v2

    .line 1629
    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 1630
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->layoutChildren()V

    .line 1633
    :cond_1
    const/4 v1, 0x0

    .line 1634
    .local v1, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1636
    .local v0, "action":I
    if-eq v0, v3, :cond_2

    .line 1637
    sparse-switch p1, :sswitch_data_0

    .line 1740
    :cond_2
    :goto_1
    if-eqz v1, :cond_29

    move v2, v3

    .line 1741
    goto :goto_0

    .line 1639
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1640
    :cond_3
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTwCurrentFocusPosition:I

    .line 1641
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v1, v3

    :goto_2
    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    .line 1646
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1647
    :cond_6
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTwCurrentFocusPosition:I

    .line 1648
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v1, v3

    :goto_3
    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_3

    .line 1653
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1654
    :cond_9
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTwCurrentFocusPosition:I

    .line 1655
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v1, v3

    :goto_4
    goto :goto_1

    :cond_b
    move v1, v2

    goto :goto_4

    .line 1656
    :cond_c
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1657
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    move v1, v3

    :goto_5
    goto :goto_1

    :cond_e
    move v1, v2

    goto :goto_5

    .line 1662
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1663
    :cond_f
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTwCurrentFocusPosition:I

    .line 1664
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_10
    move v1, v3

    :goto_6
    goto/16 :goto_1

    :cond_11
    move v1, v2

    goto :goto_6

    .line 1665
    :cond_12
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1666
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    move v1, v3

    :goto_7
    goto/16 :goto_1

    :cond_14
    move v1, v2

    goto :goto_7

    .line 1672
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1673
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v1

    .line 1674
    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1676
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->keyPressed()V

    .line 1677
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1683
    :sswitch_5
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1684
    :cond_15
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1685
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_16
    move v1, v3

    :goto_8
    goto/16 :goto_1

    :cond_17
    move v1, v2

    goto :goto_8

    .line 1686
    :cond_18
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1687
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_19
    move v1, v3

    :goto_9
    goto/16 :goto_1

    :cond_1a
    move v1, v2

    goto :goto_9

    .line 1693
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1694
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_1b
    move v1, v3

    :goto_a
    goto/16 :goto_1

    :cond_1c
    move v1, v2

    goto :goto_a

    .line 1695
    :cond_1d
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1696
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1e
    move v1, v3

    :goto_b
    goto/16 :goto_1

    :cond_1f
    move v1, v2

    goto :goto_b

    .line 1701
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1702
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_20
    move v1, v3

    :goto_c
    goto/16 :goto_1

    :cond_21
    move v1, v2

    goto :goto_c

    .line 1703
    :cond_22
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1704
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_23
    move v1, v3

    :goto_d
    goto/16 :goto_1

    :cond_24
    move v1, v2

    goto :goto_d

    .line 1709
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1710
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_26

    :cond_25
    move v1, v3

    :goto_e
    goto/16 :goto_1

    :cond_26
    move v1, v2

    goto :goto_e

    .line 1715
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1716
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_28

    :cond_27
    move v1, v3

    :goto_f
    goto/16 :goto_1

    :cond_28
    move v1, v2

    goto :goto_f

    .line 1744
    :cond_29
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwGridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move v2, v3

    .line 1745
    goto/16 :goto_0

    .line 1748
    :cond_2a
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1750
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1752
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1754
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1637
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

    .line 1748
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 9
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 622
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .line 623
    .local v6, "lastPosition":I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    if-lez p3, :cond_3

    .line 625
    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 628
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 630
    .local v4, "lastBottom":I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mBottom:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 634
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 636
    .local v0, "bottomOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 637
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 641
    .local v3, "firstTop":I
    if-lez v0, :cond_3

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_3

    .line 642
    :cond_0
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 644
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 648
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 649
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    if-lez v7, :cond_3

    .line 652
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_2
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 655
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 659
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 10
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 662
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    if-nez v8, :cond_3

    if-lez p3, :cond_3

    .line 664
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 667
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 670
    .local v2, "firstTop":I
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 673
    .local v6, "start":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mBottom:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 677
    .local v0, "end":I
    sub-int v7, v2, v6

    .line 678
    .local v7, "topOffset":I
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 679
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 680
    .local v3, "lastBottom":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .line 684
    .local v5, "lastPosition":I
    if-lez v7, :cond_3

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 685
    :cond_0
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 687
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 691
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 692
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_3

    .line 695
    iget-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_2
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 698
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 702
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_3
    return-void
.end method

.method private determineColumns(I)Z
    .locals 8
    .param p1, "availableSpace"    # I

    .prologue
    const/4 v7, 0x1

    .line 991
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedHorizontalSpacing:I

    .line 992
    .local v2, "requestedHorizontalSpacing":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    .line 993
    .local v4, "stretchMode":I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedColumnWidth:I

    .line 994
    .local v1, "requestedColumnWidth":I
    const/4 v0, 0x0

    .line 996
    .local v0, "didNotInitiallyFit":Z
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 997
    if-lez v1, :cond_2

    .line 999
    add-int v5, p1, v2

    add-int v6, v1, v2

    div-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 1010
    :goto_0
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    if-gtz v5, :cond_0

    .line 1011
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 1014
    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 1022
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v2

    sub-int v3, v5, v6

    .line 1025
    .local v3, "spaceLeftOver":I
    if-gez v3, :cond_1

    .line 1026
    const/4 v0, 0x1

    .line 1029
    :cond_1
    packed-switch v4, :pswitch_data_1

    .line 1061
    .end local v3    # "spaceLeftOver":I
    :goto_1
    return v0

    .line 1003
    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    goto :goto_0

    .line 1007
    :cond_3
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    goto :goto_0

    .line 1017
    :pswitch_0
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 1018
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1032
    .restart local v3    # "spaceLeftOver":I
    :pswitch_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v5, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 1033
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1038
    :pswitch_2
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 1039
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    if-le v5, v7, :cond_4

    .line 1040
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1043
    :cond_4
    add-int v5, v2, v3

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1049
    :pswitch_3
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 1050
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    if-le v5, v7, :cond_5

    .line 1051
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/lit8 v5, v5, 0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1054
    :cond_5
    add-int v5, v2, v3

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1014
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1029
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    .line 307
    const/4 v1, 0x0

    .line 309
    .local v1, "selectedView":Landroid/view/View;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mBottom:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTop:I

    sub-int v0, v3, v4

    .line 310
    .local v0, "end":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 311
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    .line 314
    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    if-ge p1, v3, :cond_2

    .line 315
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 316
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 317
    move-object v1, v2

    .line 322
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 324
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 325
    goto :goto_0

    .line 327
    .end local v2    # "temp":Landroid/view/View;
    :cond_2
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->setVisibleRangeHint(II)V

    .line 328
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .param p1, "lastPosition"    # I
    .param p2, "nextBottom"    # I

    .prologue
    .line 453
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 454
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 456
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 457
    .local v0, "invertedPosition":I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 459
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 716
    .local v2, "fadingEdgeLength":I
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    .line 717
    .local v9, "selectedPosition":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 718
    .local v4, "numColumns":I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 721
    .local v11, "verticalSpacing":I
    const/4 v6, -0x1

    .line 723
    .local v6, "rowEnd":I
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    .line 724
    rem-int v12, v9, v4

    sub-int v7, v9, v12

    .line 735
    .local v7, "rowStart":I
    :goto_0
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getTopSelectionPixel(III)I

    move-result v10

    .line 736
    .local v10, "topSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 739
    .local v1, "bottomSelectionPixel":I
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v6

    :goto_1
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 741
    .local v8, "sel":Landroid/view/View;
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    .line 743
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 745
    .local v5, "referenceView":Landroid/view/View;
    if-nez v5, :cond_2

    .line 763
    :goto_2
    return-object v8

    .line 726
    .end local v1    # "bottomSelectionPixel":I
    .end local v5    # "referenceView":Landroid/view/View;
    .end local v7    # "rowStart":I
    .end local v8    # "sel":Landroid/view/View;
    .end local v10    # "topSelectionPixel":I
    :cond_0
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    .line 728
    .local v3, "invertedSelection":I
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    .line 729
    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "rowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    .restart local v1    # "bottomSelectionPixel":I
    .restart local v10    # "topSelectionPixel":I
    :cond_1
    move v12, v7

    .line 739
    goto :goto_1

    .line 749
    .restart local v5    # "referenceView":Landroid/view/View;
    .restart local v8    # "sel":Landroid/view/View;
    :cond_2
    invoke-direct {p0, v5, v10, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 750
    invoke-direct {p0, v5, v10, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 752
    iget-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-nez v12, :cond_3

    .line 753
    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 754
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 755
    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    goto :goto_2

    .line 757
    :cond_3
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 758
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 759
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .param p1, "nextTop"    # I

    .prologue
    .line 443
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    .line 444
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    .line 445
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 446
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    .line 448
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    .line 449
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 15
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->reconcileSelectedPosition()I

    move-result v10

    .line 464
    .local v10, "selectedPosition":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 465
    .local v4, "numColumns":I
    iget v12, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 468
    .local v12, "verticalSpacing":I
    const/4 v7, -0x1

    .line 470
    .local v7, "rowEnd":I
    iget-boolean v13, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    .line 471
    rem-int v13, v10, v4

    sub-int v8, v10, v13

    .line 479
    .local v8, "rowStart":I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 480
    .local v2, "fadingEdgeLength":I
    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getTopSelectionPixel(III)I

    move-result v11

    .line 482
    .local v11, "topSelectionPixel":I
    iget-boolean v13, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v7

    :goto_1
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    .line 483
    .local v9, "sel":Landroid/view/View;
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    .line 485
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 487
    .local v6, "referenceView":Landroid/view/View;
    iget-boolean v13, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-nez v13, :cond_2

    .line 488
    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 489
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->pinToBottom(I)V

    .line 490
    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 491
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 503
    :goto_2
    return-object v9

    .line 473
    .end local v2    # "fadingEdgeLength":I
    .end local v6    # "referenceView":Landroid/view/View;
    .end local v8    # "rowStart":I
    .end local v9    # "sel":Landroid/view/View;
    .end local v11    # "topSelectionPixel":I
    :cond_0
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    .line 475
    .local v3, "invertedSelection":I
    iget v13, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    .line 476
    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8    # "rowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    .restart local v2    # "fadingEdgeLength":I
    .restart local v11    # "topSelectionPixel":I
    :cond_1
    move v13, v8

    .line 482
    goto :goto_1

    .line 493
    .restart local v6    # "referenceView":Landroid/view/View;
    .restart local v9    # "sel":Landroid/view/View;
    :cond_2
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 495
    .local v1, "bottomSelectionPixel":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .line 496
    .local v5, "offset":I
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 497
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 498
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->pinToTop(I)V

    .line 499
    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 500
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 561
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 564
    .local v6, "numColumns":I
    const/4 v4, -0x1

    .line 566
    .local v4, "motionRowEnd":I
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-nez v10, :cond_1

    .line 567
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 575
    .local v5, "motionRowStart":I
    :goto_0
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-eqz v10, :cond_2

    move v10, v4

    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 578
    .local v8, "temp":Landroid/view/View;
    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    .line 580
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 582
    .local v7, "referenceView":Landroid/view/View;
    if-nez v7, :cond_3

    .line 583
    const/4 v8, 0x0

    .line 616
    .end local v8    # "temp":Landroid/view/View;
    :cond_0
    :goto_2
    return-object v8

    .line 569
    .end local v5    # "motionRowStart":I
    .end local v7    # "referenceView":Landroid/view/View;
    :cond_1
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    .line 571
    .local v3, "invertedSelection":I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 572
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5    # "motionRowStart":I
    goto :goto_0

    .end local v3    # "invertedSelection":I
    :cond_2
    move v10, v5

    .line 575
    goto :goto_1

    .line 586
    .restart local v7    # "referenceView":Landroid/view/View;
    .restart local v8    # "temp":Landroid/view/View;
    :cond_3
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 591
    .local v9, "verticalSpacing":I
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-nez v10, :cond_5

    .line 592
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 593
    .local v0, "above":Landroid/view/View;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 594
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 596
    .local v1, "below":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v2

    .line 597
    .local v2, "childCount":I
    if-lez v2, :cond_4

    .line 598
    invoke-direct {p0, v6, v9, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->correctTooHigh(III)V

    .line 611
    :cond_4
    :goto_3
    if-nez v8, :cond_0

    .line 613
    if-eqz v0, :cond_6

    move-object v8, v0

    .line 614
    goto :goto_2

    .line 601
    .end local v0    # "above":Landroid/view/View;
    .end local v1    # "below":Landroid/view/View;
    .end local v2    # "childCount":I
    :cond_5
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 602
    .restart local v1    # "below":Landroid/view/View;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 603
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 605
    .restart local v0    # "above":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v2

    .line 606
    .restart local v2    # "childCount":I
    if-lez v2, :cond_4

    .line 607
    invoke-direct {p0, v6, v9, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->correctTooLow(III)V

    goto :goto_3

    :cond_6
    move-object v8, v1

    .line 616
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 405
    const/4 v1, 0x0

    .line 407
    .local v1, "selectedView":Landroid/view/View;
    const/4 v0, 0x0

    .line 408
    .local v0, "end":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 409
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 412
    :cond_0
    :goto_0
    if-le p2, v0, :cond_2

    if-ltz p1, :cond_2

    .line 414
    invoke-direct {p0, p1, p2, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 415
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 416
    move-object v1, v2

    .line 419
    :cond_1
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 421
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    .line 423
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 424
    goto :goto_0

    .line 426
    .end local v2    # "temp":Landroid/view/View;
    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-eqz v3, :cond_3

    .line 427
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    .line 430
    :cond_3
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->setVisibleRangeHint(II)V

    .line 431
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "numColumns"    # I
    .param p4, "rowStart"    # I

    .prologue
    .line 778
    move v0, p1

    .line 779
    .local v0, "bottomSelectionPixel":I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 780
    sub-int/2addr v0, p2

    .line 782
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "rowStart"    # I

    .prologue
    .line 795
    move v0, p1

    .line 796
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_0

    .line 797
    add-int/2addr v0, p2

    .line 799
    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .param p1, "childIndex"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2007
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v0

    .line 2008
    .local v0, "count":I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 2013
    .local v1, "invertedIndex":I
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    .line 2014
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 2015
    .local v3, "rowStart":I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2021
    .local v2, "rowEnd":I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 2042
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2017
    .end local v2    # "rowEnd":I
    .end local v3    # "rowStart":I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 2018
    .restart local v2    # "rowEnd":I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3    # "rowStart":I
    goto :goto_0

    .line 2025
    :sswitch_0
    if-ne p1, v3, :cond_2

    .line 2040
    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    .line 2025
    goto :goto_1

    .line 2028
    :sswitch_1
    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    .line 2031
    :sswitch_2
    if-eq p1, v2, :cond_1

    move v4, v5

    goto :goto_1

    .line 2034
    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    move v4, v5

    goto :goto_1

    .line 2037
    :sswitch_4
    if-ne p1, v3, :cond_3

    if-eqz v3, :cond_1

    :cond_3
    move v4, v5

    goto :goto_1

    .line 2040
    :sswitch_5
    if-ne p1, v2, :cond_4

    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    :cond_4
    move v4, v5

    goto :goto_1

    .line 2021
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z
    .param p6, "where"    # I

    .prologue
    .line 1421
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1424
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1427
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1439
    .end local v1    # "child":Landroid/view/View;
    .local v9, "child":Landroid/view/View;
    :goto_0
    return-object v9

    .line 1434
    .end local v9    # "child":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1437
    .restart local v1    # "child":Landroid/view/View;
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1439
    .end local v1    # "child":Landroid/view/View;
    .restart local v9    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 18
    .param p1, "startPos"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z

    .prologue
    .line 332
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    .line 333
    .local v9, "columnWidth":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    .line 335
    .local v12, "horizontalSpacing":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isLayoutRtl()Z

    move-result v14

    .line 340
    .local v14, "isLayoutRtl":Z
    if-eqz v14, :cond_5

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    sub-int v3, v1, v9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    move v1, v12

    :goto_0
    sub-int v5, v3, v1

    .line 348
    .local v5, "nextLeft":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-nez v1, :cond_7

    .line 349
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int v1, v1, p1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 360
    .local v15, "last":I
    :cond_0
    :goto_2
    const/16 v17, 0x0

    .line 362
    .local v17, "selectedView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->shouldShowSelector()Z

    move-result v11

    .line 363
    .local v11, "hasFocus":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->touchModeDrawsInPressedState()Z

    move-result v13

    .line 364
    .local v13, "inClick":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 366
    .local v16, "selectedPosition":I
    const/4 v8, 0x0

    .line 367
    .local v8, "child":Landroid/view/View;
    move/from16 v2, p1

    .local v2, "pos":I
    :goto_3
    if-ge v2, v15, :cond_d

    .line 369
    move/from16 v0, v16

    if-ne v2, v0, :cond_9

    const/4 v6, 0x1

    .line 372
    .local v6, "selected":Z
    :goto_4
    if-eqz p3, :cond_a

    const/4 v7, -0x1

    .local v7, "where":I
    :goto_5
    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    .line 373
    invoke-direct/range {v1 .. v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v8

    .line 375
    if-eqz v14, :cond_b

    const/4 v1, -0x1

    :goto_6
    mul-int/2addr v1, v9

    add-int/2addr v5, v1

    .line 376
    add-int/lit8 v1, v15, -0x1

    if-ge v2, v1, :cond_1

    .line 377
    if-eqz v14, :cond_c

    const/4 v1, -0x1

    :goto_7
    mul-int/2addr v1, v12

    add-int/2addr v5, v1

    .line 380
    :cond_1
    if-eqz v6, :cond_3

    if-nez v11, :cond_2

    if-eqz v13, :cond_3

    .line 381
    :cond_2
    move-object/from16 v17, v8

    .line 367
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 341
    .end local v2    # "pos":I
    .end local v5    # "nextLeft":I
    .end local v6    # "selected":Z
    .end local v7    # "where":I
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "hasFocus":Z
    .end local v13    # "inClick":Z
    .end local v15    # "last":I
    .end local v16    # "selectedPosition":I
    .end local v17    # "selectedView":Landroid/view/View;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 344
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    move v1, v12

    :goto_8
    add-int v5, v3, v1

    .restart local v5    # "nextLeft":I
    goto :goto_1

    .end local v5    # "nextLeft":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_8

    .line 351
    .restart local v5    # "nextLeft":I
    :cond_7
    add-int/lit8 v15, p1, 0x1

    .line 352
    .restart local v15    # "last":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 354
    sub-int v1, v15, p1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    if-ge v1, v3, :cond_0

    .line 355
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    sub-int v3, v15, p1

    sub-int/2addr v1, v3

    add-int v3, v9, v12

    mul-int v10, v1, v3

    .line 356
    .local v10, "deltaLeft":I
    if-eqz v14, :cond_8

    const/4 v1, -0x1

    :goto_9
    mul-int/2addr v1, v10

    add-int/2addr v5, v1

    goto :goto_2

    :cond_8
    const/4 v1, 0x1

    goto :goto_9

    .line 369
    .end local v10    # "deltaLeft":I
    .restart local v2    # "pos":I
    .restart local v8    # "child":Landroid/view/View;
    .restart local v11    # "hasFocus":Z
    .restart local v13    # "inClick":Z
    .restart local v16    # "selectedPosition":I
    .restart local v17    # "selectedView":Landroid/view/View;
    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    .line 372
    .restart local v6    # "selected":Z
    :cond_a
    sub-int v7, v2, p1

    goto :goto_5

    .line 375
    .restart local v7    # "where":I
    :cond_b
    const/4 v1, 0x1

    goto :goto_6

    .line 377
    :cond_c
    const/4 v1, 0x1

    goto :goto_7

    .line 385
    .end local v6    # "selected":Z
    .end local v7    # "where":I
    :cond_d
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 387
    if-eqz v17, :cond_e

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 391
    :cond_e
    return-object v17
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 23
    .param p1, "delta"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 892
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 893
    .local v5, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 894
    .local v17, "selectedPosition":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 895
    .local v7, "numColumns":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    move/from16 v19, v0

    .line 899
    .local v19, "verticalSpacing":I
    const/4 v13, -0x1

    .line 901
    .local v13, "rowEnd":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 902
    sub-int v20, v17, p1

    sub-int v21, v17, p1

    rem-int v21, v21, v7

    sub-int v9, v20, v21

    .line 904
    .local v9, "oldRowStart":I
    rem-int v20, v17, v7

    sub-int v14, v17, v20

    .line 916
    .local v14, "rowStart":I
    :goto_0
    sub-int v12, v14, v9

    .line 918
    .local v12, "rowDelta":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->getTopSelectionPixel(III)I

    move-result v18

    .line 919
    .local v18, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Lcom/sec/android/touchwiz/widget/TwGridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 923
    .local v4, "bottomSelectionPixel":I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    .line 928
    if-lez v12, :cond_5

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    const/4 v8, 0x0

    .line 936
    .local v8, "oldBottom":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move/from16 v20, v13

    :goto_2
    add-int v21, v8, v19

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 937
    .local v15, "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 940
    .local v11, "referenceView":Landroid/view/View;
    if-nez v11, :cond_3

    move-object/from16 v16, v15

    .line 987
    .end local v8    # "oldBottom":I
    .end local v15    # "sel":Landroid/view/View;
    .local v16, "sel":Landroid/view/View;
    :goto_3
    return-object v16

    .line 906
    .end local v4    # "bottomSelectionPixel":I
    .end local v9    # "oldRowStart":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v12    # "rowDelta":I
    .end local v14    # "rowStart":I
    .end local v16    # "sel":Landroid/view/View;
    .end local v18    # "topSelectionPixel":I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    sub-int v6, v20, v17

    .line 908
    .local v6, "invertedSelection":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    rem-int v21, v6, v7

    sub-int v21, v6, v21

    sub-int v13, v20, v21

    .line 909
    const/16 v20, 0x0

    sub-int v21, v13, v7

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 911
    .restart local v14    # "rowStart":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    sub-int v21, v17, p1

    sub-int v6, v20, v21

    .line 912
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    rem-int v21, v6, v7

    sub-int v21, v6, v21

    sub-int v9, v20, v21

    .line 913
    .restart local v9    # "oldRowStart":I
    const/16 v20, 0x0

    sub-int v21, v9, v7

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_0

    .line 933
    .end local v6    # "invertedSelection":I
    .restart local v4    # "bottomSelectionPixel":I
    .restart local v12    # "rowDelta":I
    .restart local v18    # "topSelectionPixel":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_1

    .restart local v8    # "oldBottom":I
    :cond_2
    move/from16 v20, v14

    .line 936
    goto :goto_2

    .line 944
    .restart local v11    # "referenceView":Landroid/view/View;
    .restart local v15    # "sel":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v11, v1, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 977
    .end local v8    # "oldBottom":I
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    .line 978
    sub-int v20, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 979
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 980
    add-int v20, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v21

    add-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    :goto_5
    move-object/from16 v16, v15

    .line 987
    .end local v15    # "sel":Landroid/view/View;
    .restart local v16    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 945
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v16    # "sel":Landroid/view/View;
    :cond_5
    if-gez v12, :cond_9

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_6

    const/4 v10, 0x0

    .line 952
    .local v10, "oldTop":I
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    move/from16 v20, v13

    :goto_7
    sub-int v21, v10, v19

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 953
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 956
    .restart local v11    # "referenceView":Landroid/view/View;
    if-nez v11, :cond_8

    move-object/from16 v16, v15

    .line 957
    .end local v15    # "sel":Landroid/view/View;
    .restart local v16    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 949
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v16    # "sel":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_6

    .restart local v10    # "oldTop":I
    :cond_7
    move/from16 v20, v14

    .line 952
    goto :goto_7

    .line 960
    .restart local v11    # "referenceView":Landroid/view/View;
    .restart local v15    # "sel":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v11, v1, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto :goto_4

    .line 965
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    const/4 v10, 0x0

    .line 968
    .restart local v10    # "oldTop":I
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    move/from16 v20, v13

    :goto_9
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v10, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 969
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceView:Landroid/view/View;

    .line 972
    .restart local v11    # "referenceView":Landroid/view/View;
    if-nez v11, :cond_4

    move-object/from16 v16, v15

    .line 973
    .end local v15    # "sel":Landroid/view/View;
    .restart local v16    # "sel":Landroid/view/View;
    goto/16 :goto_3

    .line 965
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v16    # "sel":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_8

    .restart local v10    # "oldTop":I
    :cond_b
    move/from16 v20, v14

    .line 968
    goto :goto_9

    .line 982
    .end local v10    # "oldTop":I
    .restart local v11    # "referenceView":Landroid/view/View;
    .restart local v15    # "sel":Landroid/view/View;
    :cond_c
    add-int v20, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v21

    add-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 983
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    .line 984
    add-int/lit8 v20, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_5
.end method

.method private pinToBottom(I)V
    .locals 5
    .param p1, "childrenBottom"    # I

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v1

    .line 518
    .local v1, "count":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    if-ne v3, v4, :cond_0

    .line 519
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 520
    .local v0, "bottom":I
    sub-int v2, p1, v0

    .line 521
    .local v2, "offset":I
    if-lez v2, :cond_0

    .line 522
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 525
    .end local v0    # "bottom":I
    .end local v2    # "offset":I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 3
    .param p1, "childrenTop"    # I

    .prologue
    .line 507
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    if-nez v2, :cond_0

    .line 508
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 509
    .local v1, "top":I
    sub-int v0, p1, v1

    .line 510
    .local v0, "offset":I
    if-gez v0, :cond_0

    .line 511
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetChildrenTopAndBottom(I)V

    .line 514
    .end local v0    # "offset":I
    .end local v1    # "top":I
    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 25
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flow"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z
    .param p8, "where"    # I

    .prologue
    .line 1460
    if-eqz p6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->shouldShowSelector()Z

    move-result v22

    if-eqz v22, :cond_7

    const/4 v14, 0x1

    .line 1461
    .local v14, "isSelected":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v22

    move/from16 v0, v22

    if-eq v14, v0, :cond_8

    const/16 v20, 0x1

    .line 1462
    .local v20, "updateChildSelected":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTouchMode:I

    move/from16 v16, v0

    .line 1463
    .local v16, "mode":I
    if-lez v16, :cond_9

    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mMotionPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    const/4 v13, 0x1

    .line 1465
    .local v13, "isPressed":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v22

    move/from16 v0, v22

    if-eq v13, v0, :cond_a

    const/16 v19, 0x1

    .line 1467
    .local v19, "updateChildPressed":Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v22

    if-eqz v22, :cond_b

    :cond_0
    const/16 v17, 0x1

    .line 1471
    .local v17, "needToMeasure":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 1472
    .local v18, "p":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v18, :cond_1

    .line 1473
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .end local v18    # "p":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    check-cast v18, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 1475
    .restart local v18    # "p":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 1477
    if-eqz p7, :cond_c

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 1478
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1484
    :goto_5
    if-eqz v20, :cond_2

    .line 1485
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setSelected(Z)V

    .line 1486
    if-eqz v14, :cond_2

    .line 1487
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestFocus()Z

    .line 1491
    :cond_2
    if-eqz v19, :cond_3

    .line 1492
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 1495
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mChoiceMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 1496
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v22, p1

    .line 1497
    check-cast v22, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1504
    :cond_4
    :goto_6
    if-eqz v17, :cond_e

    .line 1505
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->height:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 1508
    .local v7, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->width:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 1510
    .local v11, "childWidthSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1515
    .end local v7    # "childHeightSpec":I
    .end local v11    # "childWidthSpec":I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1516
    .local v21, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1519
    .local v12, "h":I
    if-eqz p4, :cond_f

    move/from16 v10, p3

    .line 1521
    .local v10, "childTop":I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getLayoutDirection()I

    move-result v15

    .line 1522
    .local v15, "layoutDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    .line 1523
    .local v5, "absoluteGravity":I
    and-int/lit8 v22, v5, 0x7

    packed-switch v22, :pswitch_data_0

    .line 1534
    :pswitch_0
    move/from16 v8, p5

    .line 1538
    .local v8, "childLeft":I
    :goto_9
    if-eqz v17, :cond_10

    .line 1539
    add-int v9, v8, v21

    .line 1540
    .local v9, "childRight":I
    add-int v6, v10, v12

    .line 1541
    .local v6, "childBottom":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v9, v6}, Landroid/view/View;->layout(IIII)V

    .line 1547
    .end local v6    # "childBottom":I
    .end local v9    # "childRight":I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mCachingStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1548
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1551
    :cond_5
    if-eqz p7, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-eq v0, v1, :cond_6

    .line 1553
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1555
    :cond_6
    return-void

    .line 1460
    .end local v5    # "absoluteGravity":I
    .end local v8    # "childLeft":I
    .end local v10    # "childTop":I
    .end local v12    # "h":I
    .end local v13    # "isPressed":Z
    .end local v14    # "isSelected":Z
    .end local v15    # "layoutDirection":I
    .end local v16    # "mode":I
    .end local v17    # "needToMeasure":Z
    .end local v18    # "p":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .end local v19    # "updateChildPressed":Z
    .end local v20    # "updateChildSelected":Z
    .end local v21    # "w":I
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1461
    .restart local v14    # "isSelected":Z
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1463
    .restart local v16    # "mode":I
    .restart local v20    # "updateChildSelected":Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1465
    .restart local v13    # "isPressed":Z
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1467
    .restart local v19    # "updateChildPressed":Z
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1480
    .restart local v17    # "needToMeasure":Z
    .restart local v18    # "p":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_c
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    .line 1481
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    .line 1498
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_6

    .line 1512
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_7

    .line 1519
    .restart local v12    # "h":I
    .restart local v21    # "w":I
    :cond_f
    sub-int v10, p3, v12

    goto/16 :goto_8

    .line 1525
    .restart local v5    # "absoluteGravity":I
    .restart local v10    # "childTop":I
    .restart local v15    # "layoutDirection":I
    :pswitch_1
    move/from16 v8, p5

    .line 1526
    .restart local v8    # "childLeft":I
    goto/16 :goto_9

    .line 1528
    .end local v8    # "childLeft":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v21

    div-int/lit8 v22, v22, 0x2

    add-int v8, p5, v22

    .line 1529
    .restart local v8    # "childLeft":I
    goto/16 :goto_9

    .line 1531
    .end local v8    # "childLeft":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v22, v0

    add-int v22, v22, p5

    sub-int v8, v22, v21

    .line 1532
    .restart local v8    # "childLeft":I
    goto/16 :goto_9

    .line 1543
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    sub-int v22, v8, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1544
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v22, v10, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_a

    .line 1523
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 1822
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    .line 1823
    .local v4, "selectedPosition":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 1828
    .local v3, "numColumns":I
    const/4 v2, 0x0

    .line 1830
    .local v2, "moved":Z
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-nez v6, :cond_3

    .line 1831
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 1832
    .local v5, "startOfRowPos":I
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1839
    .local v0, "endOfRowPos":I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1870
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 1871
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->playSoundEffect(I)V

    .line 1872
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1875
    :cond_1
    if-eqz v2, :cond_2

    .line 1876
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1879
    :cond_2
    return v2

    .line 1834
    .end local v0    # "endOfRowPos":I
    .end local v5    # "startOfRowPos":I
    :cond_3
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    .line 1835
    .local v1, "invertedSelection":I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 1836
    .restart local v0    # "endOfRowPos":I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5    # "startOfRowPos":I
    goto :goto_0

    .line 1841
    .end local v1    # "invertedSelection":I
    :sswitch_0
    if-lez v5, :cond_0

    .line 1842
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mLayoutMode:I

    .line 1843
    sub-int v6, v4, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1844
    const/4 v2, 0x1

    goto :goto_1

    .line 1848
    :sswitch_1
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 1849
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mLayoutMode:I

    .line 1850
    add-int v6, v4, v3

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1851
    const/4 v2, 0x1

    goto :goto_1

    .line 1855
    :sswitch_2
    if-lt v4, v5, :cond_0

    if-lez v4, :cond_0

    .line 1856
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mLayoutMode:I

    .line 1857
    add-int/lit8 v6, v4, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1858
    const/4 v2, 0x1

    goto :goto_1

    .line 1862
    :sswitch_3
    if-gt v4, v0, :cond_0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_0

    .line 1863
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mLayoutMode:I

    .line 1864
    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1865
    const/4 v2, 0x1

    goto :goto_1

    .line 1839
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .prologue
    .line 1155
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1158
    .local v0, "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 1159
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1160
    .restart local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1163
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1164
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1165
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1166
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1168
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1169
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1170
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1177
    :goto_0
    return-void

    .line 1172
    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 1174
    .local v1, "invertedIndex":I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1175
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2303
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v1

    .line 2304
    .local v1, "count":I
    if-lez v1, :cond_2

    .line 2305
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 2306
    .local v4, "numColumns":I
    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    .line 2308
    .local v5, "rowCount":I
    mul-int/lit8 v2, v5, 0x64

    .line 2310
    .local v2, "extent":I
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2311
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2312
    .local v6, "top":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2313
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2314
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 2317
    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2318
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2319
    .local v0, "bottom":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2320
    if-lez v3, :cond_1

    .line 2321
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 2326
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "numColumns":I
    .end local v5    # "rowCount":I
    .end local v6    # "top":I
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v8

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2331
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    if-ltz v8, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 2332
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2333
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2334
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2335
    .local v0, "height":I
    if-lez v0, :cond_0

    .line 2336
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 2337
    .local v1, "numColumns":I
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    div-int v3, v8, v1

    .line 2341
    .local v3, "rowCount":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isStackFromBottom()Z

    move-result v8

    if-eqz v8, :cond_1

    mul-int v8, v3, v1

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    sub-int v2, v8, v9

    .line 2343
    .local v2, "oddItemsOnFirstRow":I
    :goto_0
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    add-int/2addr v8, v2

    div-int v6, v8, v1

    .line 2344
    .local v6, "whichRow":I
    mul-int/lit8 v8, v6, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v0

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v3

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2348
    .end local v0    # "height":I
    .end local v1    # "numColumns":I
    .end local v2    # "oddItemsOnFirstRow":I
    .end local v3    # "rowCount":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "whichRow":I
    :cond_0
    return v7

    .restart local v0    # "height":I
    .restart local v1    # "numColumns":I
    .restart local v3    # "rowCount":I
    .restart local v4    # "top":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    move v2, v7

    .line 2341
    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    .prologue
    .line 2354
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 2355
    .local v0, "numColumns":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    .line 2356
    .local v2, "rowCount":I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2357
    .local v1, "result":I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mScrollY:I

    if-eqz v3, :cond_0

    .line 2359
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2361
    :cond_0
    return v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAddDeleteGridAnimator:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAddDeleteGridAnimator:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->draw(Landroid/graphics/Canvas;)V

    .line 1396
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1398
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    if-eqz v0, :cond_1

    .line 1399
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1401
    :cond_1
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1199
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    if-eqz v1, :cond_1

    .line 1200
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->preDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1206
    :cond_0
    :goto_0
    return v0

    .line 1202
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 1203
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    if-eqz v1, :cond_0

    .line 1204
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->postDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)V

    goto :goto_0
.end method

.method fillGap(Z)V
    .locals 9
    .param p1, "down"    # Z

    .prologue
    const/16 v8, 0x22

    .line 259
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 260
    .local v1, "numColumns":I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 262
    .local v6, "verticalSpacing":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v0

    .line 264
    .local v0, "count":I
    if-eqz p1, :cond_3

    .line 265
    const/4 v3, 0x0

    .line 266
    .local v3, "paddingTop":I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getListPaddingTop()I

    move-result v3

    .line 269
    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v5, v7, v6

    .line 271
    .local v5, "startOffset":I
    :goto_0
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    add-int v4, v7, v0

    .line 272
    .local v4, "position":I
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-eqz v7, :cond_1

    .line 273
    add-int/lit8 v7, v1, -0x1

    add-int/2addr v4, v7

    .line 275
    :cond_1
    invoke-direct {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillDown(II)Landroid/view/View;

    .line 276
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->correctTooHigh(III)V

    .line 293
    .end local v3    # "paddingTop":I
    :goto_1
    return-void

    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    .restart local v3    # "paddingTop":I
    :cond_2
    move v5, v3

    .line 269
    goto :goto_0

    .line 278
    .end local v3    # "paddingTop":I
    :cond_3
    const/4 v2, 0x0

    .line 279
    .local v2, "paddingBottom":I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_4

    .line 280
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getListPaddingBottom()I

    move-result v2

    .line 282
    :cond_4
    if-lez v0, :cond_5

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v5, v7, v6

    .line 284
    .restart local v5    # "startOffset":I
    :goto_2
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    .line 285
    .restart local v4    # "position":I
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-nez v7, :cond_6

    .line 286
    sub-int/2addr v4, v1

    .line 290
    :goto_3
    invoke-direct {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    .line 291
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->correctTooLow(III)V

    goto :goto_1

    .line 282
    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getHeight()I

    move-result v7

    sub-int v5, v7, v2

    goto :goto_2

    .line 288
    .restart local v4    # "position":I
    .restart local v5    # "startOffset":I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3
.end method

.method findMotionRow(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v0

    .line 530
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 532
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 533
    .local v2, "numColumns":I
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 534
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 535
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 536
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 547
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :goto_1
    return v3

    .line 534
    .restart local v1    # "i":I
    .restart local v2    # "numColumns":I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 540
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 541
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 542
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 540
    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .line 547
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x2

    .line 1793
    const/4 v0, 0x0

    .line 1794
    .local v0, "moved":Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    .line 1795
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mLayoutMode:I

    .line 1796
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1797
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1798
    const/4 v0, 0x1

    .line 1806
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1807
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1810
    :cond_1
    return v0

    .line 1799
    :cond_2
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 1800
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mLayoutMode:I

    .line 1801
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1802
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1803
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->getChildDrawingOrder(II)I

    move-result v0

    .line 1194
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildDrawingOrder(II)I

    move-result v0

    goto :goto_0
.end method

.method public getColumnWidth()I
    .locals 1

    .prologue
    .line 2206
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 2071
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    .prologue
    .line 2106
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getNumColumns()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2250
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    return v0
.end method

.method public getRequestedColumnWidth()I
    .locals 1

    .prologue
    .line 2223
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .locals 1

    .prologue
    .line 2126
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    .line 2176
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .prologue
    .line 2157
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 21

    .prologue
    .line 1211
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mBlockLayoutRequests:Z

    .line 1212
    .local v3, "blockLayoutRequests":Z
    if-nez v3, :cond_0

    .line 1213
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwGridView;->mBlockLayoutRequests:Z

    .line 1217
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 1219
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invalidate()V

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 1222
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resetList()V

    .line 1223
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1384
    if-nez v3, :cond_1

    .line 1385
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwGridView;->mBlockLayoutRequests:Z

    .line 1388
    :cond_1
    :goto_0
    return-void

    .line 1227
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 1228
    .local v7, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mBottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 1230
    .local v6, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v5

    .line 1232
    .local v5, "childCount":I
    const/4 v9, 0x0

    .line 1235
    .local v9, "delta":I
    const/16 v16, 0x0

    .line 1236
    .local v16, "oldSel":Landroid/view/View;
    const/4 v15, 0x0

    .line 1237
    .local v15, "oldFirst":Landroid/view/View;
    const/4 v14, 0x0

    .line 1240
    .local v14, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 1259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1260
    .local v12, "index":I
    if-ltz v12, :cond_3

    if-ge v12, v5, :cond_3

    .line 1261
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1265
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1268
    .end local v12    # "index":I
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDataChanged:Z

    .line 1269
    .local v8, "dataChanged":Z
    if-eqz v8, :cond_5

    .line 1270
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->handleDataChanged()V

    .line 1275
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 1276
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resetList()V

    .line 1277
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1384
    if-nez v3, :cond_1

    .line 1385
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwGridView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 1242
    .end local v8    # "dataChanged":Z
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1243
    .restart local v12    # "index":I
    if-ltz v12, :cond_4

    if-ge v12, v5, :cond_4

    .line 1244
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_1

    .line 1253
    .end local v12    # "index":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_4

    .line 1254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    goto :goto_1

    .line 1281
    .restart local v8    # "dataChanged":Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectedPositionInt(I)V

    .line 1285
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    .line 1286
    .local v10, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v17, v0

    .line 1288
    .local v17, "recycleBin":Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    if-eqz v8, :cond_7

    .line 1289
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v5, :cond_8

    .line 1290
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    add-int v20, v10, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1289
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1293
    .end local v11    # "i":I
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1298
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->detachAllViewsFromParent()V

    .line 1300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_1

    .line 1328
    if-nez v5, :cond_13

    .line 1329
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_10

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_f

    :cond_9
    const/16 v19, -0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectedPositionInt(I)V

    .line 1332
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1354
    .end local v7    # "childrenTop":I
    .local v18, "sel":Landroid/view/View;
    :goto_4
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->scrapActiveViews()V

    .line 1356
    if-eqz v18, :cond_18

    .line 1357
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->positionSelector(ILandroid/view/View;)V

    .line 1358
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedTop:I

    .line 1367
    :cond_a
    :goto_5
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwGridView;->mLayoutMode:I

    .line 1368
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwGridView;->mDataChanged:Z

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->post(Ljava/lang/Runnable;)Z

    .line 1371
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1373
    :cond_b
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwGridView;->mNeedSync:Z

    .line 1374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNextSelectedPositionInt(I)V

    .line 1376
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->updateScrollIndicators()V

    .line 1378
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    move/from16 v19, v0

    if-lez v19, :cond_c

    .line 1379
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkSelectionChanged()V

    .line 1382
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1384
    if-nez v3, :cond_1

    .line 1385
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwGridView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1302
    .end local v18    # "sel":Landroid/view/View;
    .restart local v7    # "childrenTop":I
    :pswitch_3
    if-eqz v14, :cond_d

    .line 1303
    :try_start_3
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1305
    .end local v18    # "sel":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSelection(II)Landroid/view/View;

    move-result-object v18

    .line 1307
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1309
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    .line 1310
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1311
    .restart local v18    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 1384
    .end local v5    # "childCount":I
    .end local v6    # "childrenBottom":I
    .end local v7    # "childrenTop":I
    .end local v8    # "dataChanged":Z
    .end local v9    # "delta":I
    .end local v10    # "firstPosition":I
    .end local v14    # "newSel":Landroid/view/View;
    .end local v15    # "oldFirst":Landroid/view/View;
    .end local v16    # "oldSel":Landroid/view/View;
    .end local v17    # "recycleBin":Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    .end local v18    # "sel":Landroid/view/View;
    :catchall_0
    move-exception v19

    if-nez v3, :cond_e

    .line 1385
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwGridView;->mBlockLayoutRequests:Z

    :cond_e
    throw v19

    .line 1314
    .restart local v5    # "childCount":I
    .restart local v6    # "childrenBottom":I
    .restart local v7    # "childrenTop":I
    .restart local v8    # "dataChanged":Z
    .restart local v9    # "delta":I
    .restart local v10    # "firstPosition":I
    .restart local v14    # "newSel":Landroid/view/View;
    .restart local v15    # "oldFirst":Landroid/view/View;
    .restart local v16    # "oldSel":Landroid/view/View;
    .restart local v17    # "recycleBin":Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;
    :pswitch_5
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillUp(II)Landroid/view/View;

    move-result-object v18

    .line 1315
    .restart local v18    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1318
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1319
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1321
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSyncPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1322
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1325
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->moveSelection(III)Landroid/view/View;

    move-result-object v18

    .line 1326
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1330
    .end local v18    # "sel":Landroid/view/View;
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1334
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 1335
    .local v13, "last":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_12

    :cond_11
    const/16 v19, -0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectedPositionInt(I)V

    .line 1337
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v18

    .line 1338
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v18    # "sel":Landroid/view/View;
    :cond_12
    move/from16 v19, v13

    .line 1335
    goto :goto_6

    .line 1340
    .end local v13    # "last":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    .line 1341
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    move/from16 v19, v0

    if-nez v16, :cond_14

    .end local v7    # "childrenTop":I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v18    # "sel":Landroid/view/View;
    .restart local v7    # "childrenTop":I
    :cond_14
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_7

    .line 1343
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_17

    .line 1344
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    move/from16 v19, v0

    if-nez v15, :cond_16

    .end local v7    # "childrenTop":I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .end local v18    # "sel":Landroid/view/View;
    .restart local v7    # "childrenTop":I
    :cond_16
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_8

    .line 1347
    :cond_17
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_4

    .line 1359
    .end local v7    # "childrenTop":I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTouchMode:I

    move/from16 v19, v0

    if-lez v19, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_19

    .line 1360
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1361
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1363
    .end local v4    # "child":Landroid/view/View;
    :cond_19
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedTop:I

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 1240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1300
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v1, -0x1

    .line 243
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 244
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v1

    .line 251
    .end local p1    # "position":I
    :cond_1
    :goto_0
    return p1

    .line 248
    .restart local p1    # "position":I
    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    if-lt p1, v2, :cond_1

    :cond_3
    move p1, v1

    .line 249
    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1942
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1944
    const/4 v1, -0x1

    .line 1945
    .local v1, "closestChildIndex":I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 1946
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mScrollX:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1950
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mTempRect:Landroid/graphics/Rect;

    .line 1951
    .local v6, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1952
    .local v4, "minDistance":I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v0

    .line 1953
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1955
    invoke-direct {p0, v3, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1953
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1959
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1960
    .local v5, "other":Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1961
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/touchwiz/widget/TwGridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1962
    invoke-static {p3, v6, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 1964
    .local v2, "distance":I
    if-ge v2, v4, :cond_0

    .line 1965
    move v4, v2

    .line 1966
    move v1, v3

    goto :goto_1

    .line 1971
    .end local v0    # "childCount":I
    .end local v2    # "distance":I
    .end local v3    # "i":I
    .end local v4    # "minDistance":I
    .end local v5    # "other":Landroid/view/View;
    .end local v6    # "otherRect":Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_4

    .line 1972
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelection(I)V

    .line 1977
    :goto_2
    if-eqz p1, :cond_3

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    if-eqz v7, :cond_3

    .line 1978
    new-instance v7, Lcom/sec/android/touchwiz/widget/TwGridView$2;

    invoke-direct {v7, p0}, Lcom/sec/android/touchwiz/widget/TwGridView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwGridView;)V

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->post(Ljava/lang/Runnable;)Z

    .line 1984
    :cond_3
    return-void

    .line 1974
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2366
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2367
    const-class v0, Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2368
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2372
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2373
    const-class v0, Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2374
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1182
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1611
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1616
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1621
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/touchwiz/widget/TwGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1067
    invoke-super/range {p0 .. p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onMeasure(II)V

    .line 1069
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 1070
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1071
    .local v11, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 1072
    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1074
    .local v12, "heightSize":I
    if-nez v17, :cond_0

    .line 1075
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_9

    .line 1076
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v18, v19, v20

    .line 1080
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalScrollbarWidth()I

    move-result v19

    add-int v18, v18, v19

    .line 1083
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    .line 1084
    .local v7, "childWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwGridView;->determineColumns(I)Z

    move-result v10

    .line 1086
    .local v10, "didNotInitiallyFit":Z
    const/4 v4, 0x0

    .line 1087
    .local v4, "childHeight":I
    const/4 v6, 0x0

    .line 1089
    .local v6, "childState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_a

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    .line 1090
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    .line 1091
    .local v9, "count":I
    if-lez v9, :cond_2

    .line 1092
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mIsScrap:[Z

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwGridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 1094
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 1095
    .local v16, "p":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-nez v16, :cond_1

    .line 1096
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .end local v16    # "p":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    check-cast v16, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 1097
    .restart local v16    # "p":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    .line 1100
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->forceAdd:Z

    .line 1102
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildMeasureSpec(III)I

    move-result v5

    .line 1104
    .local v5, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildMeasureSpec(III)I

    move-result v8

    .line 1106
    .local v8, "childWidthSpec":I
    invoke-virtual {v3, v8, v5}, Landroid/view/View;->measure(II)V

    .line 1108
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1109
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->combineMeasuredStates(II)I

    move-result v6

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1116
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v16    # "p":Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_2
    if-nez v11, :cond_3

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v19, v19, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getVerticalFadingEdgeLength()I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    add-int v12, v19, v20

    .line 1121
    :cond_3
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v11, v0, :cond_6

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v15, v19, v20

    .line 1124
    .local v15, "ourSize":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 1125
    .local v14, "numColumns":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v9, :cond_5

    .line 1126
    add-int/2addr v15, v4

    .line 1127
    add-int v19, v13, v14

    move/from16 v0, v19

    if-ge v0, v9, :cond_4

    .line 1128
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    move/from16 v19, v0

    add-int v15, v15, v19

    .line 1130
    :cond_4
    if-lt v15, v12, :cond_b

    .line 1131
    move v15, v12

    .line 1135
    :cond_5
    move v12, v15

    .line 1138
    .end local v13    # "i":I
    .end local v14    # "numColumns":I
    .end local v15    # "ourSize":I
    :cond_6
    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 1139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mColumnWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mHorizontalSpacing:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v15, v19, v20

    .line 1142
    .restart local v15    # "ourSize":I
    move/from16 v0, v18

    if-gt v15, v0, :cond_7

    if-eqz v10, :cond_8

    .line 1143
    :cond_7
    const/high16 v19, 0x1000000

    or-int v18, v18, v19

    .line 1147
    .end local v15    # "ourSize":I
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lcom/sec/android/touchwiz/widget/TwGridView;->setMeasuredDimension(II)V

    .line 1148
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwGridView;->mWidthMeasureSpec:I

    .line 1149
    return-void

    .line 1078
    .end local v4    # "childHeight":I
    .end local v6    # "childState":I
    .end local v7    # "childWidth":I
    .end local v9    # "count":I
    .end local v10    # "didNotInitiallyFit":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v18, v19, v20

    goto/16 :goto_0

    .line 1089
    .restart local v4    # "childHeight":I
    .restart local v6    # "childState":I
    .restart local v7    # "childWidth":I
    .restart local v10    # "didNotInitiallyFit":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/widget/ListAdapter;->getCount()I

    move-result v19

    goto/16 :goto_1

    .line 1125
    .restart local v9    # "count":I
    .restart local v13    # "i":I
    .restart local v14    # "numColumns":I
    .restart local v15    # "ourSize":I
    :cond_b
    add-int/2addr v13, v14

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1188
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1988
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onWindowFocusChanged(Z)V

    .line 1989
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    if-eqz v0, :cond_0

    .line 1990
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwGridView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGridView$3;-><init>(Lcom/sec/android/touchwiz/widget/TwGridView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->post(Ljava/lang/Runnable;)Z

    .line 1996
    :cond_0
    return-void
.end method

.method pageScroll(I)Z
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 1767
    const/4 v0, -0x1

    .line 1769
    .local v0, "nextPage":I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    .line 1770
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1775
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    .line 1776
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1777
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1778
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1779
    const/4 v1, 0x1

    .line 1782
    :cond_1
    return v1

    .line 1771
    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    .line 1772
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method sequenceScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1887
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mSelectedPosition:I

    .line 1888
    .local v5, "selectedPosition":I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    .line 1889
    .local v4, "numColumns":I
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    .line 1893
    .local v0, "count":I
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-nez v10, :cond_3

    .line 1894
    div-int v10, v5, v4

    mul-int v7, v10, v4

    .line 1895
    .local v7, "startOfRow":I
    add-int v10, v7, v4

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1902
    .local v1, "endOfRow":I
    :goto_0
    const/4 v3, 0x0

    .line 1903
    .local v3, "moved":Z
    const/4 v6, 0x0

    .line 1904
    .local v6, "showScroll":Z
    packed-switch p1, :pswitch_data_0

    .line 1928
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1929
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwGridView;->playSoundEffect(I)V

    .line 1930
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->invokeOnItemScrollListener()V

    .line 1933
    :cond_1
    if-eqz v6, :cond_2

    .line 1934
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1937
    :cond_2
    return v3

    .line 1897
    .end local v1    # "endOfRow":I
    .end local v3    # "moved":Z
    .end local v6    # "showScroll":Z
    .end local v7    # "startOfRow":I
    :cond_3
    add-int/lit8 v10, v0, -0x1

    sub-int v2, v10, v5

    .line 1898
    .local v2, "invertedSelection":I
    add-int/lit8 v10, v0, -0x1

    div-int v11, v2, v4

    mul-int/2addr v11, v4

    sub-int v1, v10, v11

    .line 1899
    .restart local v1    # "endOfRow":I
    sub-int v10, v1, v4

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "startOfRow":I
    goto :goto_0

    .line 1906
    .end local v2    # "invertedSelection":I
    .restart local v3    # "moved":Z
    .restart local v6    # "showScroll":Z
    :pswitch_0
    add-int/lit8 v10, v0, -0x1

    if-ge v5, v10, :cond_0

    .line 1908
    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mLayoutMode:I

    .line 1909
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1910
    const/4 v3, 0x1

    .line 1912
    if-ne v5, v1, :cond_4

    move v6, v8

    :goto_2
    goto :goto_1

    :cond_4
    move v6, v9

    goto :goto_2

    .line 1917
    :pswitch_1
    if-lez v5, :cond_0

    .line 1919
    iput v12, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mLayoutMode:I

    .line 1920
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectionInt(I)V

    .line 1921
    const/4 v3, 0x1

    .line 1923
    if-ne v5, v7, :cond_5

    move v6, v8

    :goto_3
    goto :goto_1

    :cond_5
    move v6, v9

    goto :goto_3

    .line 1904
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 57
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 198
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->resetList()V

    .line 203
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clear()V

    .line 204
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 206
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mOldSelectedPosition:I

    .line 207
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mOldSelectedRowId:J

    .line 210
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 213
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mOldItemCount:I

    .line 214
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    .line 215
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDataChanged:Z

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkFocus()V

    .line 218
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    .line 219
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 221
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 224
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    .line 225
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 229
    .local v0, "position":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->setSelectedPositionInt(I)V

    .line 230
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNextSelectedPositionInt(I)V

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkSelectionChanged()V

    .line 238
    .end local v0    # "position":I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayout()V

    .line 239
    return-void

    .line 227
    :cond_1
    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_0

    .line 233
    .end local v0    # "position":I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkFocus()V

    .line 235
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setAddDeleteGridAnimator(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)V
    .locals 0
    .param p1, "animator"    # Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mAddDeleteGridAnimator:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    .line 162
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1
    .param p1, "columnWidth"    # I

    .prologue
    .line 2187
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 2188
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedColumnWidth:I

    .line 2189
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 2191
    :cond_0
    return-void
.end method

.method public setDndGridAnimator(Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;)V
    .locals 2
    .param p1, "animator"    # Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->setChildrenDrawingOrderEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mDndGridAnimator:Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwGridView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwGridView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwGridView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/animator/TwDndGridAnimator;->setAutoScrollListener(Lcom/sec/android/touchwiz/animator/TwAbsDndAnimator$TwDndAutoScrollListener;)V

    .line 174
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 2057
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 2058
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mGravity:I

    .line 2059
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 2061
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 2084
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2085
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedHorizontalSpacing:I

    .line 2086
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 2088
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 2234
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 2235
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mRequestedNumColumns:I

    .line 2236
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 2238
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 189
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1567
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1568
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNextSelectedPositionInt(I)V

    .line 1572
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mLayoutMode:I

    .line 1573
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;->stop()V

    .line 1576
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayout()V

    .line 1577
    return-void

    .line 1570
    :cond_1
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 1586
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNextSelectedPosition:I

    .line 1588
    .local v4, "previousSelectedPosition":I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    if-eqz v5, :cond_0

    .line 1589
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AbsPositionScroller;->stop()V

    .line 1592
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwGridView;->setNextSelectedPositionInt(I)V

    .line 1593
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->layoutChildren()V

    .line 1595
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    .line 1597
    .local v0, "next":I
    :goto_0
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStackFromBottom:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    .line 1600
    .local v2, "previous":I
    :goto_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v1, v0, v5

    .line 1601
    .local v1, "nextRow":I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNumColumns:I

    div-int v3, v2, v5

    .line 1603
    .local v3, "previousRow":I
    if-eq v1, v3, :cond_1

    .line 1604
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->awakenScrollBars()Z

    .line 1607
    :cond_1
    return-void

    .line 1595
    .end local v0    # "next":I
    .end local v1    # "nextRow":I
    .end local v2    # "previous":I
    .end local v3    # "previousRow":I
    :cond_2
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mNextSelectedPosition:I

    goto :goto_0

    .restart local v0    # "next":I
    :cond_3
    move v2, v4

    .line 1597
    goto :goto_1
.end method

.method public setStretchMode(I)V
    .locals 1
    .param p1, "stretchMode"    # I

    .prologue
    .line 2169
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 2170
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mStretchMode:I

    .line 2171
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 2173
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 2141
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2142
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwGridView;->mVerticalSpacing:I

    .line 2143
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->requestLayoutIfNecessary()V

    .line 2145
    :cond_0
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 875
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollByOffset(I)V

    .line 876
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 865
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollToPosition(I)V

    .line 866
    return-void
.end method

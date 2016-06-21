.class public abstract Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;
.super Ljava/lang/Object;
.source "TwAbsLayoutController.java"


# static fields
.field static final HEIGHT_MEASURE_SPEC:I = 0xc

.field static final INVALID_POSITION:I = -0x1

.field static final TOP_BUTTOM_OFFSET:I = 0x3c

.field static final WIDTH_MEASURE_SPEC:I = 0xb


# instance fields
.field protected mFirstPosition:I

.field private mGalleryEx:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

.field private mLayoutRequester:Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwGalleryEx;)V
    .locals 1
    .param p1, "aGalleryEx"    # Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    .line 37
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mGalleryEx:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    .line 38
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->createLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mLayoutRequester:Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    .line 39
    return-void
.end method

.method public static getChildMeasureSpec(IIII)I
    .locals 11
    .param p0, "spec"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I
    .param p3, "orientation"    # I

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xb

    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 77
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 78
    .local v3, "specMode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 80
    .local v4, "specSize":I
    const/4 v5, 0x0

    sub-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 82
    .local v2, "size":I
    const/4 v1, 0x0

    .line 83
    .local v1, "resultSize":I
    const/4 v0, 0x0

    .line 85
    .local v0, "resultMode":I
    sparse-switch v3, :sswitch_data_0

    .line 133
    :cond_0
    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 87
    :sswitch_0
    if-ltz p2, :cond_1

    .line 88
    move v1, p2

    .line 89
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 90
    :cond_1
    if-ne p2, v8, :cond_2

    .line 91
    move v1, v2

    .line 92
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 93
    :cond_2
    if-ne p2, v7, :cond_0

    .line 94
    move v1, v2

    .line 95
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 100
    :sswitch_1
    if-ltz p2, :cond_5

    .line 101
    if-ne p3, v9, :cond_4

    .line 102
    move v1, v2

    .line 106
    :cond_3
    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 103
    :cond_4
    if-ne p3, v10, :cond_3

    .line 104
    move v1, p2

    goto :goto_1

    .line 107
    :cond_5
    if-ne p2, v8, :cond_6

    .line 108
    move v1, v2

    .line 109
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 110
    :cond_6
    if-ne p2, v7, :cond_0

    .line 111
    if-ne p3, v9, :cond_8

    .line 112
    move v1, v2

    .line 116
    :cond_7
    :goto_2
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 113
    :cond_8
    if-ne p3, v10, :cond_7

    .line 114
    move v1, p2

    goto :goto_2

    .line 121
    :sswitch_2
    if-ltz p2, :cond_9

    .line 122
    move v1, p2

    .line 123
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 124
    :cond_9
    if-ne p2, v8, :cond_a

    .line 125
    const/4 v1, 0x0

    .line 126
    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :cond_a
    if-ne p2, v7, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 129
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 51
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 0
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 60
    return p2
.end method

.method public getFirstVisibleViewPosition()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mFirstPosition:I

    return v0
.end method

.method public final getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mLayoutRequester:Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->getView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mGalleryEx:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    return-object v0
.end method

.method public abstract layoutchildren(II)V
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    .line 64
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mGalleryEx:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 67
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mGalleryEx:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mGalleryEx:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v5, 0xb

    invoke-static {p2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getChildMeasureSpec(IIII)I

    move-result v1

    .line 69
    .local v1, "childWidthMeasureSpec":I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mGalleryEx:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->mGalleryEx:Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x78

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v5, 0xc

    invoke-static {p3, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getChildMeasureSpec(IIII)I

    move-result v0

    .line 72
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 74
    .end local v0    # "childHeightMeasureSpec":I
    .end local v1    # "childWidthMeasureSpec":I
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public abstract measureChildren(II)[I
.end method

.method public abstract onFling(F)Z
.end method

.method public abstract onOverScroll(II)Z
.end method

.method public abstract onScroll(II)Z
.end method

.method public abstract onSingleTapUp(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public refreshCaching()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method protected requestDetachViewsFromParent(IIIZ)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "startPos"    # I
    .param p4, "autoCaching"    # Z

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestDetachViewsFromParent(II)V

    .line 142
    return-void
.end method

.method protected requestDetachViewsFromParent(IIZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "pos"    # I
    .param p3, "autoCaching"    # Z

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getWidgetInstance()Lcom/sec/android/touchwiz/widget/TwGalleryEx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/touchwiz/widget/TwGalleryEx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestDetachViewsFromParent(Landroid/view/View;)V

    .line 155
    return-void
.end method

.method public requestdetachAllViewsFromParent(IZ)V
    .locals 1
    .param p1, "startPos"    # I
    .param p2, "autoCaching"    # Z

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsLayoutController;->getLayoutRequester()Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGalleryEx$LayoutRequester;->requestdetachAllViewsFromParent()V

    .line 163
    return-void
.end method

.method abstract scrollToPosition(IZ)V
.end method

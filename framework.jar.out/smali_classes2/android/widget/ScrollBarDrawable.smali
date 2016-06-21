.class public Landroid/widget/ScrollBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScrollBarDrawable.java"


# static fields
.field private static final TABLET_KK:Z

.field private static isDeviceDefault:Ljava/lang/Boolean;

.field private static isThemeHoloDark:Ljava/lang/Boolean;


# instance fields
.field private mAlwaysDrawHorizontalTrack:Z

.field private mAlwaysDrawVerticalTrack:Z

.field private mChanged:Z

.field private mClickableScrollbarTouchArea:I

.field private final mClickableThumbRect:Landroid/graphics/Rect;

.field private mExtent:I

.field private mHorizontalThumb:Landroid/graphics/drawable/Drawable;

.field private mHorizontalTrack:Landroid/graphics/drawable/Drawable;

.field private mOffset:I

.field private mRange:I

.field private mRangeChanged:Z

.field private final mTempBounds:Landroid/graphics/Rect;

.field private mTwCMCF:Landroid/graphics/ColorMatrixColorFilter;

.field private mTwParent:Landroid/view/View;

.field private mVertical:Z

.field private mVerticalThumb:Landroid/graphics/drawable/Drawable;

.field private mVerticalTrack:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "latte"

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/widget/ScrollBarDrawable;->TABLET_KK:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollBarDrawable;->mTempBounds:Landroid/graphics/Rect;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ScrollBarDrawable;->mClickableScrollbarTouchArea:I

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ScrollBarDrawable;->mClickableThumbRect:Landroid/graphics/Rect;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 51
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollBarDrawable;->mTempBounds:Landroid/graphics/Rect;

    .line 58
    iput v3, p0, Landroid/widget/ScrollBarDrawable;->mClickableScrollbarTouchArea:I

    .line 59
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollBarDrawable;->mClickableThumbRect:Landroid/graphics/Rect;

    .line 65
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mTwParent:Landroid/view/View;

    .line 66
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mTwParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/ScrollBarDrawable;->mClickableScrollbarTouchArea:I

    .line 68
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mTwParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/16 v1, 0x144

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/widget/ScrollBarDrawable;->isDeviceDefault:Ljava/lang/Boolean;

    .line 70
    const/16 v1, 0x145

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/widget/ScrollBarDrawable;->isThemeHoloDark:Ljava/lang/Boolean;

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    return-void
.end method

.method private twMakeColorFilter()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 75
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 76
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    const/4 v1, 0x0

    .line 77
    .local v1, "mat":[F
    sget-boolean v2, Landroid/widget/ScrollBarDrawable;->TABLET_KK:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroid/widget/ScrollBarDrawable;->isDeviceDefault:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/widget/ScrollBarDrawable;->isThemeHoloDark:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    new-array v1, v3, [F

    .end local v1    # "mat":[F
    fill-array-data v1, :array_0

    .line 97
    .restart local v1    # "mat":[F
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 98
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Landroid/widget/ScrollBarDrawable;->mTwCMCF:Landroid/graphics/ColorMatrixColorFilter;

    .line 99
    return-void

    .line 83
    :cond_0
    sget-boolean v2, Landroid/widget/ScrollBarDrawable;->TABLET_KK:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroid/widget/ScrollBarDrawable;->isDeviceDefault:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/widget/ScrollBarDrawable;->isThemeHoloDark:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    new-array v1, v3, [F

    .end local v1    # "mat":[F
    fill-array-data v1, :array_1

    .restart local v1    # "mat":[F
    goto :goto_0

    .line 90
    :cond_1
    new-array v1, v3, [F

    .end local v1    # "mat":[F
    fill-array-data v1, :array_2

    .restart local v1    # "mat":[F
    goto :goto_0

    .line 78
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x41980000    # 19.0f
        0x0
        0x0
        0x0
        0x0
        0x430b0000    # 139.0f
        0x0
        0x0
        0x0
        0x0
        0x433c0000    # 188.0f
        0x0
        0x0
        0x0
        0x40a00000    # 5.0f
        0x0
    .end array-data

    .line 84
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x41980000    # 19.0f
        0x0
        0x0
        0x0
        0x0
        0x430b0000    # 139.0f
        0x0
        0x0
        0x0
        0x0
        0x433c0000    # 188.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 90
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x432e0000    # 174.0f
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 159
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    move/from16 v17, v0

    .line 160
    .local v17, "vertical":Z
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    .line 161
    .local v11, "extent":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ScrollBarDrawable;->mRange:I

    .line 163
    .local v14, "range":I
    const/4 v10, 0x1

    .line 164
    .local v10, "drawTrack":Z
    const/4 v9, 0x1

    .line 165
    .local v9, "drawThumb":Z
    if-lez v11, :cond_0

    if-gt v14, v11, :cond_1

    .line 166
    :cond_0
    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    .line 167
    :goto_0
    const/4 v9, 0x0

    .line 170
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 171
    .local v13, "r":Landroid/graphics/Rect;
    iget v3, v13, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    iget v3, v13, Landroid/graphics/Rect;->top:I

    int-to-float v5, v3

    iget v3, v13, Landroid/graphics/Rect;->right:I

    int-to-float v6, v3

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v3

    sget-object v8, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 196
    :cond_2
    :goto_1
    return-void

    .line 166
    .end local v13    # "r":Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    goto :goto_0

    .line 174
    .restart local v13    # "r":Landroid/graphics/Rect;
    :cond_4
    if-eqz v10, :cond_5

    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v13, v2}, Landroid/widget/ScrollBarDrawable;->drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 178
    :cond_5
    if-eqz v9, :cond_2

    .line 179
    if-eqz v17, :cond_8

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 180
    .local v15, "size":I
    :goto_2
    if-eqz v17, :cond_9

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 181
    .local v16, "thickness":I
    :goto_3
    int-to-float v3, v15

    int-to-float v4, v11

    mul-float/2addr v3, v4

    int-to-float v4, v14

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 182
    .local v7, "length":I
    sub-int v3, v15, v7

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-int v4, v14, v11

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 185
    .local v6, "offset":I
    mul-int/lit8 v12, v16, 0x2

    .line 186
    .local v12, "minLength":I
    if-ge v7, v12, :cond_6

    .line 187
    move v7, v12

    .line 190
    :cond_6
    add-int v3, v6, v7

    if-le v3, v15, :cond_7

    .line 191
    sub-int v6, v15, v7

    :cond_7
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v13

    move/from16 v8, v17

    .line 194
    invoke-virtual/range {v3 .. v8}, Landroid/widget/ScrollBarDrawable;->drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V

    goto :goto_1

    .line 179
    .end local v6    # "offset":I
    .end local v7    # "length":I
    .end local v12    # "minLength":I
    .end local v15    # "size":I
    .end local v16    # "thickness":I
    :cond_8
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v15

    goto :goto_2

    .line 180
    .restart local v15    # "size":I
    :cond_9
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v16

    goto :goto_3
.end method

.method protected drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "vertical"    # Z

    .prologue
    .line 220
    iget-object v3, p0, Landroid/widget/ScrollBarDrawable;->mTempBounds:Landroid/graphics/Rect;

    .line 221
    .local v3, "thumbRect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mClickableThumbRect:Landroid/graphics/Rect;

    .line 222
    .local v1, "clickableThumbRect":Landroid/graphics/Rect;
    iget-boolean v4, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Landroid/widget/ScrollBarDrawable;->mChanged:Z

    if-eqz v4, :cond_6

    :cond_0
    const/4 v0, 0x1

    .line 224
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 225
    if-eqz p5, :cond_7

    .line 226
    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p3

    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, p3

    add-int/2addr v7, p4

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 228
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 229
    iget v4, p0, Landroid/widget/ScrollBarDrawable;->mClickableScrollbarTouchArea:I

    neg-int v4, v4

    iget v5, p0, Landroid/widget/ScrollBarDrawable;->mClickableScrollbarTouchArea:I

    neg-int v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 240
    :cond_1
    :goto_1
    if-eqz p5, :cond_9

    .line 241
    iget-object v4, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 242
    iget-object v2, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    .line 244
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/ScrollBarDrawable;->mTwParent:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 245
    iget-object v4, p0, Landroid/widget/ScrollBarDrawable;->mTwParent:Landroid/view/View;

    iget-object v4, v4, Landroid/view/View;->mTwVerticalScrollbarRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 246
    iget-object v4, p0, Landroid/widget/ScrollBarDrawable;->mTwParent:Landroid/view/View;

    iget-boolean v4, v4, Landroid/view/View;->mTwScrollingByScrollbar:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/widget/ScrollBarDrawable;->mTwParent:Landroid/view/View;

    iget-boolean v4, v4, Landroid/view/View;->mTwScrollingVertical:Z

    if-eqz v4, :cond_8

    .line 247
    iget-object v4, p0, Landroid/widget/ScrollBarDrawable;->mTwCMCF:Landroid/graphics/ColorMatrixColorFilter;

    if-nez v4, :cond_2

    invoke-direct {p0}, Landroid/widget/ScrollBarDrawable;->twMakeColorFilter()V

    .line 248
    :cond_2
    iget-object v4, p0, Landroid/widget/ScrollBarDrawable;->mTwCMCF:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 255
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 256
    :cond_4
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 277
    .end local v2    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_3
    return-void

    .line 222
    .end local v0    # "changed":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    .restart local v0    # "changed":Z
    :cond_7
    iget v4, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p3

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, p3

    add-int/2addr v6, p4

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 234
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 235
    iget v4, p0, Landroid/widget/ScrollBarDrawable;->mClickableScrollbarTouchArea:I

    neg-int v4, v4

    iget v5, p0, Landroid/widget/ScrollBarDrawable;->mClickableScrollbarTouchArea:I

    neg-int v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_1

    .line 250
    .restart local v2    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_8
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_2

    .line 259
    .end local v2    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_9
    iget-object v4, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 260
    iget-object v2, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    .line 262
    .restart local v2    # "thumb":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/ScrollBarDrawable;->mTwParent:Landroid/view/View;

    if-eqz v4, :cond_b

    .line 263
    iget-object v4, p0, Landroid/widget/ScrollBarDrawable;->mTwParent:Landroid/view/View;

    iget-object v4, v4, Landroid/view/View;->mTwHorizontalScrollbarRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 264
    iget-object v4, p0, Landroid/widget/ScrollBarDrawable;->mTwParent:Landroid/view/View;

    iget-boolean v4, v4, Landroid/view/View;->mTwScrollingByScrollbar:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/widget/ScrollBarDrawable;->mTwParent:Landroid/view/View;

    iget-boolean v4, v4, Landroid/view/View;->mTwScrollingVertical:Z

    if-nez v4, :cond_d

    .line 265
    iget-object v4, p0, Landroid/widget/ScrollBarDrawable;->mTwCMCF:Landroid/graphics/ColorMatrixColorFilter;

    if-nez v4, :cond_a

    invoke-direct {p0}, Landroid/widget/ScrollBarDrawable;->twMakeColorFilter()V

    .line 266
    :cond_a
    iget-object v4, p0, Landroid/widget/ScrollBarDrawable;->mTwCMCF:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 273
    :cond_b
    :goto_4
    if-eqz v0, :cond_c

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 274
    :cond_c
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 268
    :cond_d
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_4
.end method

.method protected drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "vertical"    # Z

    .prologue
    .line 206
    if-eqz p3, :cond_2

    .line 207
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    .line 211
    .local v0, "track":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_1

    .line 212
    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mChanged:Z

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 215
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 217
    :cond_1
    return-void

    .line 209
    .end local v0    # "track":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    .restart local v0    # "track":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mTwParent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mTwParent:Landroid/view/View;

    iget-boolean v0, v0, Landroid/view/View;->mTwScrollingVertical:Z

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    .line 331
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    goto :goto_0
.end method

.method public getAlwaysDrawHorizontalTrack()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    return v0
.end method

.method public getAlwaysDrawVerticalTrack()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 352
    const/4 v0, -0x3

    return v0
.end method

.method public getSize(Z)I
    .locals 2
    .param p1, "vertical"    # Z

    .prologue
    const/4 v0, 0x0

    .line 300
    if-eqz p1, :cond_2

    .line 301
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 304
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    .line 304
    :cond_2
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mChanged:Z

    .line 202
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 311
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 314
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 317
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 320
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 323
    :cond_3
    return-void
.end method

.method public setAlwaysDrawHorizontalTrack(Z)V
    .locals 0
    .param p1, "alwaysDrawTrack"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    .line 114
    return-void
.end method

.method public setAlwaysDrawVerticalTrack(Z)V
    .locals 0
    .param p1, "alwaysDrawTrack"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    .line 124
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 336
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 339
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 342
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 345
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 346
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 348
    :cond_3
    return-void
.end method

.method public setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 290
    if-eqz p1, :cond_0

    .line 291
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    .line 293
    :cond_0
    return-void
.end method

.method public setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 296
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    .line 297
    return-void
.end method

.method public setParameters(IIIZ)V
    .locals 2
    .param p1, "range"    # I
    .param p2, "offset"    # I
    .param p3, "extent"    # I
    .param p4, "vertical"    # Z

    .prologue
    const/4 v1, 0x1

    .line 143
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    if-eq v0, p4, :cond_0

    .line 144
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mChanged:Z

    .line 147
    :cond_0
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    if-eq v0, p3, :cond_2

    .line 148
    :cond_1
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    .line 151
    :cond_2
    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    .line 152
    iput p2, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    .line 153
    iput p3, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    .line 154
    iput-boolean p4, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    .line 155
    return-void
.end method

.method public setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 280
    if-eqz p1, :cond_0

    .line 281
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    .line 283
    :cond_0
    return-void
.end method

.method public setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 286
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    .line 287
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollBarDrawable: range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    if-eqz v0, :cond_0

    const-string v0, " V"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, " H"

    goto :goto_0
.end method

.class Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;
.super Ljava/lang/Object;
.source "TwPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/animator/TwPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProperyHolder"
.end annotation


# instance fields
.field private mAlpha:[F

.field private mBottom:[F

.field private mRight:[F

.field private mScaleX:[F

.field private mScaleY:[F

.field private mTypes:[I

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    .line 158
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mAlpha:[F

    .line 159
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mX:[F

    .line 160
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mY:[F

    .line 161
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleX:[F

    .line 162
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleY:[F

    .line 163
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mRight:[F

    .line 164
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mBottom:[F

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    return-object v0
.end method

.method private addTypeToArray(I)Z
    .locals 7
    .param p1, "type"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v4, v0, v2

    .line 228
    .local v4, "typeInArray":I
    if-ne v4, p1, :cond_0

    .line 229
    const/4 v6, 0x0

    .line 241
    .end local v4    # "typeInArray":I
    :goto_1
    return v6

    .line 226
    .restart local v4    # "typeInArray":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .end local v4    # "typeInArray":I
    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    new-array v5, v6, [I

    .line 233
    .local v5, "types":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 235
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    aget v6, v6, v1

    aput v6, v5, v1

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 238
    :cond_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    array-length v6, v6

    aput p1, v5, v6

    .line 239
    iput-object v5, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    .line 241
    const/4 v6, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addProperty(IFF)Z
    .locals 6
    .param p1, "type"    # I
    .param p2, "start"    # F
    .param p3, "end"    # F

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 173
    packed-switch p1, :pswitch_data_0

    .line 221
    :goto_0
    :pswitch_0
    return v0

    .line 176
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mX:[F

    aput p2, v2, v0

    .line 177
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mX:[F

    aput p3, v2, v1

    .line 178
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mX:[F

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mX:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mX:[F

    aget v0, v4, v0

    sub-float v0, v3, v0

    aput v0, v2, v5

    .line 179
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addTypeToArray(I)Z

    :goto_1
    move v0, v1

    .line 221
    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mY:[F

    aput p2, v2, v0

    .line 183
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mY:[F

    aput p3, v2, v1

    .line 184
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mY:[F

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mY:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mY:[F

    aget v0, v4, v0

    sub-float v0, v3, v0

    aput v0, v2, v5

    .line 185
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addTypeToArray(I)Z

    goto :goto_1

    .line 188
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleX:[F

    aput p2, v2, v0

    .line 189
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleX:[F

    aput p3, v2, v1

    .line 190
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleX:[F

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleX:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleX:[F

    aget v0, v4, v0

    sub-float v0, v3, v0

    aput v0, v2, v5

    .line 191
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addTypeToArray(I)Z

    goto :goto_1

    .line 194
    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleY:[F

    aput p2, v2, v0

    .line 195
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleY:[F

    aput p3, v2, v1

    .line 196
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleY:[F

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleY:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleY:[F

    aget v0, v4, v0

    sub-float v0, v3, v0

    aput v0, v2, v5

    .line 197
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addTypeToArray(I)Z

    goto :goto_1

    .line 200
    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mAlpha:[F

    aput p2, v2, v0

    .line 201
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mAlpha:[F

    aput p3, v2, v1

    .line 202
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mAlpha:[F

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mAlpha:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mAlpha:[F

    aget v0, v4, v0

    sub-float v0, v3, v0

    aput v0, v2, v5

    .line 203
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addTypeToArray(I)Z

    goto :goto_1

    .line 206
    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mRight:[F

    aput p2, v2, v0

    .line 207
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mRight:[F

    aput p3, v2, v1

    .line 208
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mRight:[F

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mRight:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mRight:[F

    aget v0, v4, v0

    sub-float v0, v3, v0

    aput v0, v2, v5

    .line 209
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addTypeToArray(I)Z

    goto/16 :goto_1

    .line 212
    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mBottom:[F

    aput p2, v2, v0

    .line 213
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mBottom:[F

    aput p3, v2, v1

    .line 214
    iget-object v2, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mBottom:[F

    iget-object v3, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mBottom:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mBottom:[F

    aget v0, v4, v0

    sub-float v0, v3, v0

    aput v0, v2, v5

    .line 215
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->addTypeToArray(I)Z

    goto/16 :goto_1

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public updateProperty(Landroid/view/View;F)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "factor"    # F

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    .line 246
    if-nez p1, :cond_0

    .line 248
    const-string v6, "GridViewEx"

    const-string v7, "updateProperty : Target view is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_0
    return v5

    .line 252
    :cond_0
    const/4 v1, 0x0

    .line 253
    .local v1, "curValue":F
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mTypes:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget v4, v0, v2

    .line 255
    .local v4, "property":I
    packed-switch v4, :pswitch_data_0

    .line 253
    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mX:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mX:[F

    aget v7, v7, v8

    mul-float/2addr v7, p2

    add-float v1, v6, v7

    .line 259
    invoke-virtual {p1, v1}, Landroid/view/View;->setX(F)V

    goto :goto_2

    .line 262
    :pswitch_2
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mY:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mY:[F

    aget v7, v7, v8

    mul-float/2addr v7, p2

    add-float v1, v6, v7

    .line 263
    invoke-virtual {p1, v1}, Landroid/view/View;->setY(F)V

    goto :goto_2

    .line 266
    :pswitch_3
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleX:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleX:[F

    aget v7, v7, v8

    mul-float/2addr v7, p2

    add-float v1, v6, v7

    .line 267
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_2

    .line 270
    :pswitch_4
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleY:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mScaleY:[F

    aget v7, v7, v8

    mul-float/2addr v7, p2

    add-float v1, v6, v7

    .line 271
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_2

    .line 274
    :pswitch_5
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mAlpha:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mAlpha:[F

    aget v7, v7, v8

    mul-float/2addr v7, p2

    add-float v1, v6, v7

    .line 275
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 278
    :pswitch_6
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mRight:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mRight:[F

    aget v7, v7, v8

    mul-float/2addr v7, p2

    add-float v1, v6, v7

    .line 279
    float-to-int v6, v1

    invoke-virtual {p1, v6}, Landroid/view/View;->setRight(I)V

    goto :goto_2

    .line 282
    :pswitch_7
    iget-object v6, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mBottom:[F

    aget v6, v6, v5

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwPropertyAnimator$ProperyHolder;->mBottom:[F

    aget v7, v7, v8

    mul-float/2addr v7, p2

    add-float v1, v6, v7

    .line 283
    float-to-int v6, v1

    invoke-virtual {p1, v6}, Landroid/view/View;->setBottom(I)V

    goto :goto_2

    .line 290
    .end local v4    # "property":I
    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

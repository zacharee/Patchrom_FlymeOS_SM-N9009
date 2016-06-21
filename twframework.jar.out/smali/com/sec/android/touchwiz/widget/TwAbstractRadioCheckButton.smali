.class public abstract Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;
.super Landroid/widget/Button;
.source "TwAbstractRadioCheckButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$1;,
        Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonDrawableGravity:I

.field protected mButtonDrawablePaddingBottom:I

.field protected mButtonDrawablePaddingLeft:I

.field protected mButtonDrawablePaddingRight:I

.field protected mButtonDrawablePaddingTop:I

.field private mButtonResource:I

.field private mChecked:Z

.field private mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v7, 0x15

    const/4 v6, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawableGravity:I

    .line 86
    sget-object v4, Ltouchwiz/R$styleable;->TwAbstractRadioCheckButton:[I

    const v5, 0x2070007

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 93
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_0
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 98
    .local v1, "checked":Z
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setChecked(Z)V

    .line 100
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 103
    .local v3, "drawableGravity":I
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setButtonDrawableGravity(I)V

    .line 105
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingLeft:I

    .line 107
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingRight:I

    .line 109
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingTop:I

    .line 111
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingBottom:I

    .line 114
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setupMinHeight()V

    .line 122
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    return-void
.end method

.method private setupMinHeight()V
    .locals 3

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "drawableIntrinsicHeight":I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 288
    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingTop:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setMinHeight(I)V

    .line 289
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 353
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 355
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getDrawableState()[I

    move-result-object v0

    .line 359
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 361
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->invalidate()V

    .line 363
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method protected getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonDrawableGravity()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawableGravity:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 344
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 345
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    sget-object v1, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mergeDrawableStates([I[I)[I

    .line 348
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawableGravity:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->onDrawButtonDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V

    .line 317
    :cond_0
    return-void
.end method

.method protected onDrawButtonDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "btnDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawGravity"    # I

    .prologue
    .line 327
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingLeft:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingTop:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingRight:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingBottom:I

    sub-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 329
    .local v0, "container":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 330
    .local v1, "drawRc":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {p3, v2, v3, v0, v1}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 333
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 334
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 335
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 427
    move-object v0, p1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;

    .line 429
    .local v0, "ss":Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 430
    iget-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setChecked(Z)V

    .line 431
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->requestLayout()V

    .line 432
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 416
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setFreezesText(Z)V

    .line 417
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 419
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 421
    .local v0, "ss":Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$SavedState;->checked:Z

    .line 422
    return-object v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->toggle()V

    .line 144
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 227
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonResource:I

    if-ne p1, v1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    if-eqz p1, :cond_0

    .line 235
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonResource:I

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonResource:I

    if-eqz v1, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 241
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 251
    if-eqz p1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 257
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 258
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 259
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 260
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 261
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setupMinHeight()V

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->refreshDrawableState()V

    .line 265
    return-void

    :cond_2
    move v0, v1

    .line 258
    goto :goto_0
.end method

.method public setButtonDrawableGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 298
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawableGravity:I

    .line 299
    return-void
.end method

.method public setButtonDrawablePadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 276
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingLeft:I

    .line 277
    iput p3, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingRight:I

    .line 278
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingTop:I

    .line 279
    iput p4, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawablePaddingBottom:I

    .line 280
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setupMinHeight()V

    .line 281
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 164
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    .line 165
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->refreshDrawableState()V

    .line 168
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mBroadcasting:Z

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mBroadcasting:Z

    .line 173
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;Z)V

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;Z)V

    .line 179
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mBroadcasting:Z

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    .line 192
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mOnCheckedChangeWidgetListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    .line 203
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->setChecked(Z)V

    .line 132
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 367
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

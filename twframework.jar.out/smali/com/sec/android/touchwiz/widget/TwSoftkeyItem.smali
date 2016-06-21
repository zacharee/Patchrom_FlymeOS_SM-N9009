.class public Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
.super Landroid/widget/FrameLayout;
.source "TwSoftkeyItem.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final IMAGE:I = 0x1

.field public static final SPACE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TwSoftkeyItem"

.field public static final TEXT:I = 0x0

.field public static final TEXT_AND_IMAGE:I = 0x2

.field private static mSoftkeyItemType:I


# instance fields
.field private mImage:Landroid/widget/ImageView;

.field private mItemIcon:Landroid/graphics/drawable/Drawable;

.field private mItemText:Ljava/lang/String;

.field private mText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mSoftkeyItemType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mItemText:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mItemText:Ljava/lang/String;

    .line 109
    sget-object v1, Ltouchwiz/R$styleable;->TwSoftkeyItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mSoftkeyItemType:I

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mItemText:Ljava/lang/String;

    .line 114
    const-string v1, "TwSoftkeyItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TwSoftkeyItem::mItemText is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mItemText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const v1, 0x2010003

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setClickable(Z)V

    .line 138
    const v0, 0x2020012

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setBackgroundResource(I)V

    .line 140
    sget v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mSoftkeyItemType:I

    packed-switch v0, :pswitch_data_0

    .line 165
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mText:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mItemText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->addView(Landroid/view/View;)V

    .line 172
    :goto_0
    :pswitch_0
    return-void

    .line 142
    :pswitch_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mImage:Landroid/widget/ImageView;

    .line 143
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 149
    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setVisibility(I)V

    .line 151
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setHapticFeedbackEnabled(Z)V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static makeImage(Landroid/content/Context;I)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemIconId"    # I

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->makeImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    return-object v0
.end method

.method public static makeImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 205
    const/4 v1, 0x1

    sput v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mSoftkeyItemType:I

    .line 206
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;-><init>(Landroid/content/Context;)V

    .line 208
    .local v0, "imageItem":Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setSoftkeyItemImage(Landroid/graphics/drawable/Drawable;)V

    .line 209
    return-object v0
.end method

.method public static makeSpace(Landroid/content/Context;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    const/4 v1, 0x3

    sput v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mSoftkeyItemType:I

    .line 229
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;-><init>(Landroid/content/Context;)V

    .line 231
    .local v0, "spaceItem":Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    return-object v0
.end method

.method public static makeText(Landroid/content/Context;I)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemTextId"    # I

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 181
    const/4 v1, 0x0

    sput v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mSoftkeyItemType:I

    .line 182
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, "textItem":Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setSoftkeyItemText(Ljava/lang/CharSequence;)V

    .line 185
    return-object v0
.end method

.method private setSoftkeyItemImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    return-void
.end method

.method private setSoftkeyItemText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    return-void
.end method
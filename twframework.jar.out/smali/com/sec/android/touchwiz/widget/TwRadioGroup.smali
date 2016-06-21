.class public Lcom/sec/android/touchwiz/widget/TwRadioGroup;
.super Landroid/widget/LinearLayout;
.source "TwRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwRadioGroup$1;,
        Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;,
        Lcom/sec/android/touchwiz/widget/TwRadioGroup$CheckedStateTracker;,
        Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;,
        Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;

.field private mPassThroughListener:Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z

    .line 51
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    .line 41
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z

    .line 65
    sget-object v2, Ltouchwiz/R$styleable;->TwRadioGroup:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "attributes":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 69
    .local v1, "value":I
    if-eq v1, v4, :cond_0

    .line 70
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->init()V

    .line 74
    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwRadioGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/touchwiz/widget/TwRadioGroup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwRadioGroup;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    .prologue
    .line 34
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwRadioGroup;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwRadioGroup;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwRadioGroup;)Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mChildOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$CheckedStateTracker;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup$CheckedStateTracker;-><init>(Lcom/sec/android/touchwiz/widget/TwRadioGroup;Lcom/sec/android/touchwiz/widget/TwRadioGroup$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mChildOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton$OnCheckedChangeListener;

    .line 78
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/sec/android/touchwiz/widget/TwRadioGroup;Lcom/sec/android/touchwiz/widget/TwRadioGroup$1;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mPassThroughListener:Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;

    .line 79
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mPassThroughListener:Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 80
    return-void
.end method

.method private setCheckedId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    .line 167
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    invoke-interface {v0, p0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwRadioGroup;I)V

    .line 170
    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 174
    .local v0, "checkedView":Landroid/view/View;
    instance-of v1, v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    if-eqz v1, :cond_0

    .line 175
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    .end local v0    # "checkedView":Landroid/view/View;
    invoke-virtual {v0, p2}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setChecked(Z)V

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v3, 0x0

    .line 109
    instance-of v1, p1, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;

    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    if-gez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-gez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 117
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;

    .line 118
    .local v0, "button":Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z

    .line 120
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 121
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    invoke-direct {p0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedStateForView(IZ)V

    .line 123
    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z

    .line 124
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedId(I)V

    .line 128
    .end local v0    # "button":Lcom/sec/android/touchwiz/widget/TwAbstractRadioCheckButton;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public check(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, -0x1

    .line 143
    if-eq p1, v2, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    if-ne p1, v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    if-eq v0, v2, :cond_2

    .line 148
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedStateForView(IZ)V

    .line 151
    :cond_2
    if-eq p1, v2, :cond_3

    .line 152
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedStateForView(IZ)V

    .line 158
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedId(I)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 227
    instance-of v0, p1, Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;

    return v0
.end method

.method public clearCheck()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    .line 202
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 232
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 219
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCheckedRadioButtonId()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 99
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 100
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z

    .line 101
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedStateForView(IZ)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mProtectFromCheckedChange:Z

    .line 103
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mCheckedId:I

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->setCheckedId(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mOnCheckedChangeListener:Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;

    .line 212
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->mPassThroughListener:Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;

    # setter for: Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0, p1}, Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;->access$202(Lcom/sec/android/touchwiz/widget/TwRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 89
    return-void
.end method

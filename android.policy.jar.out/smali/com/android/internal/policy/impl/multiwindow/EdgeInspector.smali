.class public Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;
.super Ljava/lang/Object;
.source "EdgeInspector.java"


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final LEFT:I = 0x4

.field public static final NONE:I = 0x0

.field public static final RIGHT:I = 0x8

.field public static final TOP:I = 0x1


# instance fields
.field private mBound:Landroid/graphics/Rect;

.field private mDir:I

.field private mFilter:I

.field private mIsCandidate:Z

.field private mOnlyConerResizable:Z

.field private mPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;
    .param p3, "onlyCornerResizable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    .line 27
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mFilter:I

    .line 30
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    .line 31
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mOnlyConerResizable:Z

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 35
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mOnlyConerResizable:Z

    .line 36
    return-void
.end method


# virtual methods
.method public check(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x1

    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    if-le v0, p1, :cond_7

    .line 79
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    .line 84
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    if-le v0, p2, :cond_8

    .line 85
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    .line 90
    :cond_3
    :goto_2
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    if-nez v0, :cond_5

    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-le v0, p1, :cond_9

    .line 92
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    .line 96
    :cond_4
    :goto_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    if-nez v0, :cond_5

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le v0, p2, :cond_a

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-le p2, v0, :cond_a

    .line 98
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    .line 105
    :cond_5
    :goto_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mOnlyConerResizable:Z

    if-nez v0, :cond_6

    .line 106
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    .line 109
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    .line 112
    :cond_6
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mFilter:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    goto :goto_0

    .line 80
    :cond_7
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_2

    .line 81
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    goto :goto_1

    .line 86
    :cond_8
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    if-ge v0, p2, :cond_3

    .line 87
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    goto :goto_2

    .line 93
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_4

    .line 94
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    goto :goto_3

    .line 99
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-ge v0, p2, :cond_5

    .line 100
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    goto :goto_4
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    .line 70
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    .line 71
    return-void
.end method

.method public isCandidate()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    return v0
.end method

.method public isCorner()Z
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 41
    :cond_1
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEdge()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEdge(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 61
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mDir:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mBound:Landroid/graphics/Rect;

    .line 48
    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mPadding:Landroid/graphics/Rect;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mIsCandidate:Z

    .line 50
    return-void
.end method

.method public setFilter(I)V
    .locals 0
    .param p1, "filter"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/EdgeInspector;->mFilter:I

    .line 54
    return-void
.end method

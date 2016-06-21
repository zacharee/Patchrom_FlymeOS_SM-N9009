.class public Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;
.super Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;
.source "TwAddDeleteGridAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

.field mOldViewCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwGridView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridview"    # Lcom/sec/android/touchwiz/widget/TwGridView;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;-><init>()V

    .line 78
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    .line 84
    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    .line 85
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwGridView;->setAddDeleteGridAnimator(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)V

    .line 86
    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mHostView:Landroid/view/View;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/widget/TwGridView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Ljava/util/HashSet;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;
    .param p1, "x1"    # Ljava/util/HashSet;
    .param p2, "x2"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->getNextAppearingViewPosition(Ljava/util/HashSet;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    return-object v0
.end method

.method private ensureAdapterAndListener()V
    .locals 3

    .prologue
    .line 581
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 582
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 583
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter need to be set before performing add/delete operations."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 586
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 587
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "TwAddDeleteGridAnimator requires an adapter that has stable ids"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 590
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    if-nez v1, :cond_2

    .line 591
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "OnAddDeleteListener need to be supplied before performing add/delete operations"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 593
    :cond_2
    return-void
.end method

.method private getNextAppearingViewPosition(Ljava/util/HashSet;I)I
    .locals 2
    .param p2, "lastNewlyAppearingViewPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "deletedItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    add-int/lit8 v0, p2, 0x1

    .line 345
    .local v0, "index":I
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_0
    return v0
.end method

.method private prepareDelete(Ljava/util/ArrayList;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "deletingItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->ensureAdapterAndListener()V

    .line 155
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 156
    .local v9, "deletedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 157
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 162
    .local v13, "deletedItemPosHash":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    .line 163
    .local v15, "gridView":Lcom/sec/android/touchwiz/widget/TwGridView;
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    .line 164
    .local v10, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v12

    .line 165
    .local v12, "childCountBefore":I
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGridView;->getFirstVisiblePosition()I

    move-result v14

    .line 166
    .local v14, "firstVisiblePosBefore":I
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGridView;->getLastVisiblePosition()I

    move-result v17

    .line 167
    .local v17, "lastVisiblePosBefore":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v12, :cond_0

    .line 168
    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 169
    .local v11, "child":Landroid/view/View;
    add-int v2, v16, v14

    invoke-interface {v10, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v18

    .line 170
    .local v18, "itemId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    new-instance v2, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;

    invoke-static {v11}, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    add-int v4, v16, v14

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 174
    .end local v11    # "child":Landroid/view/View;
    .end local v18    # "itemId":J
    :cond_0
    new-instance v2, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$2;

    move-object/from16 v3, p0

    move-object v4, v15

    move v5, v14

    move/from16 v6, v17

    move-object v7, v10

    move-object v8, v13

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$2;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Lcom/sec/android/touchwiz/widget/TwGridView;IILandroid/widget/ListAdapter;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mDeleteRunnable:Ljava/lang/Runnable;

    .line 341
    return-void
.end method

.method private prepareInsert(Ljava/util/ArrayList;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->ensureAdapterAndListener()V

    .line 407
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    .line 410
    .local v15, "gridView":Lcom/sec/android/touchwiz/widget/TwGridView;
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    .line 411
    .local v11, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildCount()I

    move-result v13

    .line 412
    .local v13, "childCount":I
    invoke-virtual {v15}, Lcom/sec/android/touchwiz/widget/TwGridView;->getFirstVisiblePosition()I

    move-result v14

    .line 413
    .local v14, "firstVisiblePos":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v13, :cond_0

    .line 414
    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 415
    .local v12, "child":Landroid/view/View;
    add-int v4, v16, v14

    invoke-interface {v11, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v20

    .line 416
    .local v20, "itemId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v24, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    new-instance v4, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;

    invoke-static {v12}, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    add-int v6, v16, v14

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 420
    .end local v12    # "child":Landroid/view/View;
    .end local v20    # "itemId":J
    :cond_0
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 421
    .local v23, "upcomingViewsStartCoords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[F>;"
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_2

    .line 422
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 423
    .local v17, "insertedItemPos":I
    sub-int v18, v17, v19

    .line 424
    .local v18, "itemAtStartPos":I
    sub-int v4, v18, v14

    invoke-virtual {v15, v4}, Lcom/sec/android/touchwiz/widget/TwGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 426
    .local v22, "refView":Landroid/view/View;
    if-eqz v22, :cond_1

    .line 427
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 431
    .end local v17    # "insertedItemPos":I
    .end local v18    # "itemAtStartPos":I
    .end local v22    # "refView":Landroid/view/View;
    :cond_2
    new-instance v4, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v11, v1, v2}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$4;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mInsertRunnable:Ljava/lang/Runnable;

    .line 578
    return-void
.end method


# virtual methods
.method public deleteFromAdapterCompleted()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$1;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 151
    return-void
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/Canvas;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public insertIntoAdapterCompleted()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mGridView:Lcom/sec/android/touchwiz/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$3;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 403
    return-void
.end method

.method public setDelete(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "deletingItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;->onDelete()V

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->deleteFromAdapterCompleted()V

    .line 114
    return-void
.end method

.method public setDeletePending(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "deletingItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;->onDelete()V

    .line 132
    return-void
.end method

.method public setInsert(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    .line 363
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;->onAdd()V

    .line 365
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->insertIntoAdapterCompleted()V

    .line 366
    return-void
.end method

.method public setInsertPending(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    .line 383
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;->onAdd()V

    .line 384
    return-void
.end method

.method public setOnAddDeleteListener(Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;)V
    .locals 0
    .param p1, "onAddDeleteListener"    # Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteGridAnimator$OnAddDeleteListener;

    .line 97
    return-void
.end method

.class public Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;
.super Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;
.source "TwAddDeleteListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mListView:Lcom/sec/android/touchwiz/widget/TwListView;

.field mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;
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

.field private mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Lcom/sec/android/touchwiz/widget/TwListView;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;-><init>()V

    .line 79
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    .line 86
    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    .line 87
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwListView;->setAddDeleteListAnimator(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)V

    .line 88
    iput-object p2, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mHostView:Landroid/view/View;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Lcom/sec/android/touchwiz/widget/TwListView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->getChildMaxHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private capturePreAnimationViewCoordinates()V
    .locals 25

    .prologue
    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    move-object/from16 v21, v0

    .line 337
    .local v21, "listview":Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    .line 338
    .local v12, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v15

    .line 339
    .local v15, "childCountBefore":I
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v16

    .line 340
    .local v16, "firstVisiblePosBefore":I
    invoke-interface {v12}, Landroid/widget/ListAdapter;->getCount()I

    move-result v13

    .line 341
    .local v13, "adapterCount":I
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v19

    .line 342
    .local v19, "headerViewsCount":I
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v18

    .line 343
    .local v18, "footerViewsCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v0, v15, :cond_5

    .line 344
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 345
    .local v14, "child":Landroid/view/View;
    add-int v4, v20, v16

    .line 346
    .local v4, "position":I
    invoke-interface {v12, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v22

    .line 347
    .local v22, "itemId":J
    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_1

    .line 348
    :cond_0
    sget-object v2, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDelete() child\'s one of dimensions is 0, i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 351
    :cond_1
    invoke-static {v14}, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    .line 353
    .local v3, "snapshot":Landroid/graphics/drawable/BitmapDrawable;
    const-wide/16 v6, -0x1

    cmp-long v2, v22, v6

    if-nez v2, :cond_4

    .line 354
    move/from16 v0, v19

    if-ge v4, v0, :cond_3

    .line 355
    add-int/lit8 v2, v4, 0x1

    int-to-long v0, v2

    move-wide/from16 v22, v0

    .line 360
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v2, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;

    const/4 v5, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    invoke-virtual {v9, v10, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 356
    :cond_3
    sub-int v2, v13, v18

    if-lt v4, v2, :cond_2

    .line 357
    add-int v2, v4, v18

    sub-int/2addr v2, v13

    add-int/lit8 v17, v2, 0x1

    .line 358
    .local v17, "footerId":I
    move/from16 v0, v17

    neg-int v2, v0

    int-to-long v0, v2

    move-wide/from16 v22, v0

    goto :goto_2

    .line 362
    .end local v17    # "footerId":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    new-instance v5, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;

    add-int v7, v20, v16

    const/4 v8, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v11

    move-object v6, v3

    invoke-direct/range {v5 .. v11}, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 365
    .end local v3    # "snapshot":Landroid/graphics/drawable/BitmapDrawable;
    .end local v4    # "position":I
    .end local v14    # "child":Landroid/view/View;
    .end local v22    # "itemId":J
    :cond_5
    return-void
.end method

.method private ensureAdapterAndListener()V
    .locals 3

    .prologue
    .line 673
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 674
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 675
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter need to be set before performing add/delete operations."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 678
    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 679
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "TwAddDeleteListAnimator requires an adapter that has stable ids"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 682
    :cond_1
    iget-object v1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    if-nez v1, :cond_2

    .line 683
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "OnAddDeleteListener need to be supplied before performing add/delete operations"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 685
    :cond_2
    return-void
.end method

.method private getChildMaxHeight()I
    .locals 8

    .prologue
    .line 370
    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v1

    .line 371
    .local v1, "childCount":I
    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 372
    .local v0, "adapterCount":I
    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v3

    .line 373
    .local v3, "firstVisiblePos":I
    const/4 v2, 0x0

    .line 374
    .local v2, "childHeight":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 375
    add-int v6, v5, v3

    .line 376
    .local v6, "pos":I
    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getHeaderViewsCount()I

    move-result v7

    if-lt v6, v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v7

    sub-int v7, v0, v7

    if-lt v6, v7, :cond_1

    .line 374
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 377
    :cond_1
    iget-object v7, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v7, v5}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 378
    .local v4, "height":I
    if-le v4, v2, :cond_0

    .line 379
    move v2, v4

    goto :goto_1

    .line 382
    .end local v4    # "height":I
    .end local v6    # "pos":I
    :cond_2
    return v2
.end method

.method private prepareDelete(Ljava/util/ArrayList;)V
    .locals 7
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
    .line 156
    .local p1, "deletingItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 157
    .local v5, "deletedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->ensureAdapterAndListener()V

    .line 158
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 159
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 161
    .local v6, "deletedItemPosHash":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v4

    .line 162
    .local v4, "childCountBefore":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v3

    .line 163
    .local v3, "firstVisiblePosBefore":I
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 165
    .local v2, "adapter":Landroid/widget/ListAdapter;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->capturePreAnimationViewCoordinates()V

    .line 167
    new-instance v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$2;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;Landroid/widget/ListAdapter;IILjava/util/ArrayList;Ljava/util/HashSet;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mDeleteRunnable:Ljava/lang/Runnable;

    .line 333
    return-void
.end method

.method private prepareInsert(Ljava/util/ArrayList;)V
    .locals 30
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
    .line 441
    .local p1, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->ensureAdapterAndListener()V

    .line 443
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 444
    .local v20, "insertedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    move-object/from16 v25, v0

    .line 447
    .local v25, "listview":Lcom/sec/android/touchwiz/widget/TwListView;
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    .line 448
    .local v11, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildCount()I

    move-result v14

    .line 449
    .local v14, "childCount":I
    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    .line 450
    .local v12, "adapterCount":I
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwListView;->getFirstVisiblePosition()I

    move-result v15

    .line 451
    .local v15, "firstVisiblePos":I
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/touchwiz/widget/TwListView;->getFooterViewsCount()I

    move-result v17

    .line 452
    .local v17, "footerViewsCount":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v14, :cond_4

    .line 453
    add-int v6, v18, v15

    .line 454
    .local v6, "position":I
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 455
    .local v13, "child":Landroid/view/View;
    invoke-interface {v11, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v22

    .line 456
    .local v22, "itemId":J
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v4

    if-nez v4, :cond_2

    .line 457
    :cond_0
    sget-object v4, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setInsert() child\'s one of dimensions is 0, i="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_1
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 460
    :cond_2
    invoke-static {v13}, Lcom/sec/android/touchwiz/animator/TwAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    .line 462
    .local v5, "snapshot":Landroid/graphics/drawable/BitmapDrawable;
    const-wide/16 v8, -0x1

    cmp-long v4, v22, v8

    if-nez v4, :cond_3

    .line 467
    sub-int v4, v12, v17

    if-lt v6, v4, :cond_1

    .line 468
    add-int v4, v6, v17

    sub-int/2addr v4, v12

    add-int/lit8 v16, v4, 0x1

    .line 469
    .local v16, "footerId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v28, v0

    move/from16 v0, v16

    int-to-long v8, v0

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    new-instance v4, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;

    const/4 v7, 0x0

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 472
    .end local v16    # "footerId":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v28, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    new-instance v4, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;

    const/4 v7, 0x0

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator$ViewInfo;-><init>(Landroid/graphics/drawable/BitmapDrawable;IIIII)V

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 476
    .end local v5    # "snapshot":Landroid/graphics/drawable/BitmapDrawable;
    .end local v6    # "position":I
    .end local v13    # "child":Landroid/view/View;
    .end local v22    # "itemId":J
    :cond_4
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 477
    .local v27, "upcomingViewsStartCoords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v24, 0x0

    .local v24, "j":I
    :goto_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v24

    if-ge v0, v4, :cond_6

    .line 478
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 479
    .local v19, "insertedItemPos":I
    sub-int v21, v19, v24

    .line 480
    .local v21, "itemAtStartPos":I
    sub-int v4, v21, v15

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 482
    .local v26, "refView":Landroid/view/View;
    if-eqz v26, :cond_5

    .line 483
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_5
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 487
    .end local v19    # "insertedItemPos":I
    .end local v21    # "itemAtStartPos":I
    .end local v26    # "refView":Landroid/view/View;
    :cond_6
    new-instance v4, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v11, v1, v2}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$4;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mInsertRunnable:Ljava/lang/Runnable;

    .line 670
    return-void
.end method


# virtual methods
.method public deleteFromAdapterCompleted()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$1;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 153
    return-void
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/Canvas;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/animator/TwAbsAddDeleteAnimator;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public insertIntoAdapterCompleted()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mListView:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$3;-><init>(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 438
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
    .line 111
    .local p1, "deletingItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;->onDelete()V

    .line 115
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->deleteFromAdapterCompleted()V

    .line 116
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
    .line 131
    .local p1, "deletingItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->prepareDelete(Ljava/util/ArrayList;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;->onDelete()V

    .line 134
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
    .line 395
    .local p1, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    .line 397
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;->onAdd()V

    .line 399
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->insertIntoAdapterCompleted()V

    .line 400
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
    .line 415
    .local p1, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->prepareInsert(Ljava/util/ArrayList;)V

    .line 417
    iget-object v0, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    invoke-interface {v0}, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;->onAdd()V

    .line 418
    return-void
.end method

.method public setOnAddDeleteListener(Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;)V
    .locals 0
    .param p1, "onAddDeleteListener"    # Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator;->mOnAddDeleteListener:Lcom/sec/android/touchwiz/animator/TwAddDeleteListAnimator$OnAddDeleteListener;

    .line 99
    return-void
.end method

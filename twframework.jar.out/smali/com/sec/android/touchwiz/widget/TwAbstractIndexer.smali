.class public abstract Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;
.super Landroid/database/DataSetObserver;
.source "TwAbstractIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;,
        Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final debug:Z

.field protected mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field protected mAlphabetArray:[Ljava/lang/String;

.field protected mAlphabetLength:I

.field protected mCollator:Ljava/text/Collator;

.field private mCurrentLang:I

.field private mCurrentLangEndIndex:I

.field private mCurrentLangStartIndex:I

.field private mCurrentLangStartPosition:I

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field protected mLangAlphabetArray:[Ljava/lang/String;

.field private mLangIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "indexCharacters"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, -0x1

    .line 147
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 65
    const-string v0, "TwAbstractIndexer"

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->TAG:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->debug:Z

    .line 69
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 235
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    .line 236
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    .line 237
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    .line 238
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    .line 151
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 2
    .param p1, "indexCharacters"    # [Ljava/lang/String;
    .param p2, "aLangIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 160
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 65
    const-string v0, "TwAbstractIndexer"

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->TAG:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->debug:Z

    .line 69
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    .line 235
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    .line 236
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    .line 237
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    .line 238
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    .line 161
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    .line 162
    invoke-virtual {p0, p2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->setMultiLangIndexer(I)Ljava/lang/String;

    .line 163
    return-void
.end method

.method private isJapaneseIndex(C)Z
    .locals 1
    .param p1, "index"    # C

    .prologue
    .line 531
    const/16 v0, 0x3041

    if-le p1, v0, :cond_0

    const/16 v0, 0x30fa

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKoreanLocaleLaguage()Z
    .locals 2

    .prologue
    .line 553
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const/4 v0, 0x1

    .line 556
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTaiwanLocale()Z
    .locals 2

    .prologue
    .line 546
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    const/4 v0, 0x1

    .line 549
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "indexString"    # Ljava/lang/String;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getAlphabetArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLang()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    return v0
.end method

.method public getCurrentLangEndIndex()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    return v0
.end method

.method public getCurrentLangStartIndex()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    return v0
.end method

.method public getCurrentLangStartPosition()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    return v0
.end method

.method protected getHangeulConsonant(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 858
    const v0, 0xac00

    .line 859
    .local v0, "BASE_CODE":I
    const/16 v1, 0x24c

    .line 861
    .local v1, "CHOSUNG":I
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xac00

    sub-int/2addr v4, v5

    div-int/lit16 v3, v4, 0x24c

    .line 864
    .local v3, "keyValue":I
    packed-switch v3, :pswitch_data_0

    .line 884
    const/16 v2, 0x3131

    .line 887
    .local v2, "keyCode":I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 865
    .end local v2    # "keyCode":I
    :pswitch_0
    const/16 v2, 0x3131

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 866
    .end local v2    # "keyCode":I
    :pswitch_1
    const/16 v2, 0x3131

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 867
    .end local v2    # "keyCode":I
    :pswitch_2
    const/16 v2, 0x3134

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 868
    .end local v2    # "keyCode":I
    :pswitch_3
    const/16 v2, 0x3137

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 869
    .end local v2    # "keyCode":I
    :pswitch_4
    const/16 v2, 0x3137

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 870
    .end local v2    # "keyCode":I
    :pswitch_5
    const/16 v2, 0x3139

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 871
    .end local v2    # "keyCode":I
    :pswitch_6
    const/16 v2, 0x3141

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 872
    .end local v2    # "keyCode":I
    :pswitch_7
    const/16 v2, 0x3142

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 873
    .end local v2    # "keyCode":I
    :pswitch_8
    const/16 v2, 0x3142

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 874
    .end local v2    # "keyCode":I
    :pswitch_9
    const/16 v2, 0x3145

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 875
    .end local v2    # "keyCode":I
    :pswitch_a
    const/16 v2, 0x3145

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 876
    .end local v2    # "keyCode":I
    :pswitch_b
    const/16 v2, 0x3147

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 877
    .end local v2    # "keyCode":I
    :pswitch_c
    const/16 v2, 0x3148

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 878
    .end local v2    # "keyCode":I
    :pswitch_d
    const/16 v2, 0x3148

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 879
    .end local v2    # "keyCode":I
    :pswitch_e
    const/16 v2, 0x314a

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 880
    .end local v2    # "keyCode":I
    :pswitch_f
    const/16 v2, 0x314b

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 881
    .end local v2    # "keyCode":I
    :pswitch_10
    const/16 v2, 0x314c

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 882
    .end local v2    # "keyCode":I
    :pswitch_11
    const/16 v2, 0x314d

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 883
    .end local v2    # "keyCode":I
    :pswitch_12
    const/16 v2, 0x314e

    .restart local v2    # "keyCode":I
    goto :goto_0

    .line 864
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method getIndexInfo()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "base"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInfo(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 24
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "foundOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    const/4 v8, 0x0

    .line 376
    .local v8, "isJapanese":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v22

    if-nez v22, :cond_0

    .line 377
    const/16 v18, 0x0

    .line 527
    :goto_0
    return-object v18

    .line 379
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v9

    .line 381
    .local v9, "itemCount":I
    if-nez v9, :cond_1

    .line 385
    const/16 v18, 0x0

    goto :goto_0

    .line 388
    :cond_1
    if-nez p1, :cond_2

    const-string v2, ""

    .line 389
    .local v2, "baseString":Ljava/lang/String;
    :goto_1
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v18, "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->onBeginTransaction()V

    .line 424
    const/4 v3, 0x0

    .line 425
    .local v3, "charExistedOfCurrentLang":Z
    const/16 v16, -0x1

    .line 427
    .local v16, "posOfPreviousExisted":I
    const/16 v21, 0x0

    .local v21, "sectionIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 428
    const/16 v20, 0x0

    .line 429
    .local v20, "sectionFound":Z
    const/4 v15, -0x1

    .line 430
    .local v15, "posFound":I
    const/4 v14, -0x1

    .line 431
    .local v14, "lastposFound":I
    const/4 v13, 0x0

    .line 441
    .local v13, "lastSectionFound":Z
    const/16 v17, 0x0

    .line 443
    .local v17, "pr":Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isCurrentLanguagePosition(I)Z

    move-result v22

    if-nez v22, :cond_4

    .line 447
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v11

    .line 448
    .local v11, "lLangInd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v12, v22, v11

    .line 449
    .local v12, "lOtherLangString":Ljava/lang/String;
    const/4 v10, 0x0

    .line 450
    .local v10, "lLangChars":I
    const/4 v6, 0x1

    .line 452
    .local v6, "i":I
    :goto_3
    if-nez v20, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ge v10, v0, :cond_3

    .line 454
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 455
    .local v19, "searchString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-result-object v17

    .line 456
    move-object/from16 v0, v17

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 457
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    move/from16 v20, v0

    .line 458
    add-int/lit8 v10, v10, 0x1

    .line 460
    goto :goto_3

    .end local v2    # "baseString":Ljava/lang/String;
    .end local v3    # "charExistedOfCurrentLang":Z
    .end local v6    # "i":I
    .end local v10    # "lLangChars":I
    .end local v11    # "lLangInd":I
    .end local v12    # "lOtherLangString":Ljava/lang/String;
    .end local v13    # "lastSectionFound":Z
    .end local v14    # "lastposFound":I
    .end local v15    # "posFound":I
    .end local v16    # "posOfPreviousExisted":I
    .end local v17    # "pr":Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .end local v18    # "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    .end local v19    # "searchString":Ljava/lang/String;
    .end local v20    # "sectionFound":Z
    .end local v21    # "sectionIndex":I
    :cond_2
    move-object/from16 v2, p1

    .line 388
    goto :goto_1

    .line 461
    .restart local v2    # "baseString":Ljava/lang/String;
    .restart local v3    # "charExistedOfCurrentLang":Z
    .restart local v6    # "i":I
    .restart local v10    # "lLangChars":I
    .restart local v11    # "lLangInd":I
    .restart local v12    # "lOtherLangString":Ljava/lang/String;
    .restart local v13    # "lastSectionFound":Z
    .restart local v14    # "lastposFound":I
    .restart local v15    # "posFound":I
    .restart local v16    # "posOfPreviousExisted":I
    .restart local v17    # "pr":Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .restart local v18    # "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    .restart local v20    # "sectionFound":Z
    .restart local v21    # "sectionIndex":I
    :cond_3
    const/4 v13, 0x0

    .line 462
    :goto_4
    if-nez v13, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ge v10, v0, :cond_5

    .line 466
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v23

    sub-int v23, v23, v6

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 467
    .restart local v19    # "searchString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-result-object v17

    .line 468
    move-object/from16 v0, v17

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 469
    move-object/from16 v0, v17

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    .line 470
    add-int/lit8 v10, v10, 0x1

    .line 471
    add-int/lit8 v6, v6, 0x1

    .line 472
    goto :goto_4

    .line 477
    .end local v6    # "i":I
    .end local v10    # "lLangChars":I
    .end local v11    # "lLangInd":I
    .end local v12    # "lOtherLangString":Ljava/lang/String;
    .end local v19    # "searchString":Ljava/lang/String;
    :cond_4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 478
    .restart local v19    # "searchString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-result-object v17

    .line 479
    move-object/from16 v0, v17

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 480
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    move/from16 v20, v0

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isJapaneseIndex(C)Z

    move-result v8

    .line 484
    .end local v19    # "searchString":Ljava/lang/String;
    :cond_5
    if-gez v15, :cond_6

    .line 485
    neg-int v15, v15

    .line 489
    :cond_6
    if-eqz p2, :cond_7

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v13, v0, :cond_c

    .line 491
    :cond_7
    new-instance v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    invoke-direct {v7}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;-><init>()V

    .line 492
    .local v7, "indexInfo":Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    move/from16 v0, v20

    iput-boolean v0, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mExists:Z

    .line 494
    iput v15, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 496
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isCurrentLanguagePosition(I)Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isTaiwanLocale()Z

    move-result v22

    if-nez v22, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isKoreanLocaleLaguage()Z

    move-result v22

    if-nez v22, :cond_9

    .line 497
    if-eqz v20, :cond_8

    .line 498
    const/4 v3, 0x1

    .line 499
    move/from16 v16, v15

    .line 501
    :cond_8
    if-nez v8, :cond_9

    if-nez v20, :cond_9

    if-eqz v3, :cond_9

    .line 502
    move/from16 v0, v16

    iput v0, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 506
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getCurrentLang()I

    move-result v4

    .line 507
    .local v4, "currentLang":I
    if-eqz v13, :cond_a

    if-nez v4, :cond_a

    .line 509
    iput v14, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 510
    iput v15, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mLastPosition:I

    .line 512
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v21

    move-object/from16 v0, v22

    iput-object v0, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    .line 514
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 516
    iget v0, v7, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartPosition:I

    .line 519
    :cond_b
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    .end local v4    # "currentLang":I
    .end local v7    # "indexInfo":Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    :cond_c
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 523
    .end local v13    # "lastSectionFound":Z
    .end local v14    # "lastposFound":I
    .end local v15    # "posFound":I
    .end local v17    # "pr":Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .end local v20    # "sectionFound":Z
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->onEndTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 524
    .end local v3    # "charExistedOfCurrentLang":Z
    .end local v16    # "posOfPreviousExisted":I
    .end local v21    # "sectionIndex":I
    :catch_0
    move-exception v5

    .line 525
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public getIndexInfo(Ljava/lang/String;ZII)Ljava/util/ArrayList;
    .locals 15
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "foundOnly"    # Z
    .param p3, "aDepth"    # I
    .param p4, "aIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isDataToBeIndexedAvailable()Z

    move-result v13

    if-nez v13, :cond_0

    .line 574
    const/4 v10, 0x0

    .line 623
    :goto_0
    return-object v10

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v5

    .line 578
    .local v5, "itemCount":I
    if-nez v5, :cond_1

    .line 582
    const/4 v10, 0x0

    goto :goto_0

    .line 586
    :cond_1
    const/4 v13, 0x1

    move/from16 v0, p4

    if-ge v0, v13, :cond_2

    .line 587
    const/4 v10, 0x0

    goto :goto_0

    .line 589
    :cond_2
    if-nez p1, :cond_6

    const-string v1, ""

    .line 590
    .local v1, "baseString":Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v10, "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->onBeginTransaction()V

    .line 594
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getLangbyIndex(I)I

    move-result v6

    .line 595
    .local v6, "lLangInd":I
    iget-object v13, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v7, v13, v6

    .line 596
    .local v7, "lOtherLangString":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v3, v13, :cond_7

    .line 597
    const/4 v12, 0x0

    .line 598
    .local v12, "sectionFound":Z
    const/4 v8, -0x1

    .line 600
    .local v8, "posFound":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 601
    .local v11, "searchString":Ljava/lang/String;
    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getPositionForString(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-result-object v9

    .line 602
    .local v9, "pr":Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    iget v8, v9, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->position:I

    .line 603
    iget-boolean v12, v9, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;->exactMatch:Z

    .line 605
    if-gez v8, :cond_3

    .line 606
    neg-int v8, v8

    .line 609
    :cond_3
    if-eqz p2, :cond_4

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 611
    :cond_4
    new-instance v4, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;

    invoke-direct {v4}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;-><init>()V

    .line 612
    .local v4, "indexInfo":Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    iput-boolean v12, v4, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mExists:Z

    .line 613
    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mPosition:I

    .line 614
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;->mIndexString:Ljava/lang/String;

    .line 615
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    .end local v4    # "indexInfo":Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1    # "baseString":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v6    # "lLangInd":I
    .end local v7    # "lOtherLangString":Ljava/lang/String;
    .end local v8    # "posFound":I
    .end local v9    # "pr":Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .end local v10    # "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    .end local v11    # "searchString":Ljava/lang/String;
    .end local v12    # "sectionFound":Z
    :cond_6
    move-object/from16 v1, p1

    .line 589
    goto :goto_1

    .line 619
    .restart local v1    # "baseString":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v6    # "lLangInd":I
    .restart local v7    # "lOtherLangString":Ljava/lang/String;
    .restart local v10    # "retIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$IndexInfo;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->onEndTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 620
    .end local v3    # "i":I
    .end local v6    # "lLangInd":I
    .end local v7    # "lOtherLangString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 621
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected abstract getItemAt(I)Ljava/lang/String;
.end method

.method protected abstract getItemCount()I
.end method

.method public getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getLangbyIndex(I)I
    .locals 2
    .param p1, "aIndex"    # I

    .prologue
    .line 290
    if-ltz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 292
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 293
    .local v0, "lIndexVal":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 300
    .end local v0    # "lIndexVal":Ljava/lang/Integer;
    :goto_0
    return v1

    .line 296
    :catch_0
    move-exception v1

    .line 300
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getPositionForString(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;
    .locals 23
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 656
    .local v2, "alphaMap":Landroid/util/SparseIntArray;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemCount()I

    move-result v3

    .line 658
    .local v3, "count":I
    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 659
    :cond_0
    new-instance v21, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(I)V

    .line 824
    :goto_0
    return-object v21

    .line 661
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_3

    .line 663
    :cond_2
    new-instance v21, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(I)V

    goto :goto_0

    .line 666
    :cond_3
    const/16 v19, 0x0

    .line 667
    .local v19, "start":I
    move v6, v3

    .line 669
    .local v6, "end":I
    const/4 v9, 0x0

    .line 670
    .local v9, "matchFound":Z
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 671
    .local v8, "letter":C
    move-object/from16 v20, p1

    .line 672
    .local v20, "targetLetter":Ljava/lang/String;
    move v7, v8

    .line 674
    .local v7, "key":I
    const/high16 v21, -0x80000000

    const/high16 v22, -0x80000000

    move/from16 v0, v22

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v15

    .local v15, "pos":I
    move/from16 v0, v21

    if-eq v0, v15, :cond_a

    .line 708
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 734
    :cond_4
    :goto_1
    const/4 v10, 0x0

    .line 735
    .local v10, "mflag":Z
    const/16 v21, 0x2

    move/from16 v0, v21

    if-lt v3, v0, :cond_5

    .line 736
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v11

    .line 737
    .local v11, "name_0":Ljava/lang/String;
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v12

    .line 740
    .local v12, "name_1":Ljava/lang/String;
    if-eqz v11, :cond_c

    if-eqz v12, :cond_c

    .line 741
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 742
    .local v5, "diff":I
    if-lez v5, :cond_5

    .line 743
    const/4 v10, 0x1

    .line 751
    .end local v5    # "diff":I
    .end local v11    # "name_0":Ljava/lang/String;
    .end local v12    # "name_1":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int v21, v6, v19

    div-int/lit8 v15, v21, 0x2

    .line 752
    :goto_3
    if-ge v15, v6, :cond_7

    .line 754
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    .line 755
    .local v4, "curName":Ljava/lang/String;
    if-eqz v4, :cond_6

    const-string v21, ""

    move-object/from16 v0, v21

    if-ne v4, v0, :cond_e

    .line 756
    :cond_6
    if-nez v15, :cond_d

    .line 814
    .end local v4    # "curName":Ljava/lang/String;
    :cond_7
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 815
    invoke-virtual {v2, v7, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 817
    :cond_8
    if-ge v15, v3, :cond_9

    .line 818
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v4

    .line 820
    .restart local v4    # "curName":Ljava/lang/String;
    if-eqz v4, :cond_9

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 821
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 824
    .end local v4    # "curName":Ljava/lang/String;
    :cond_9
    new-instance v21, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;

    move-object/from16 v0, v21

    invoke-direct {v0, v15, v9}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer$PositionResult;-><init>(IZ)V

    goto/16 :goto_0

    .line 712
    .end local v10    # "mflag":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 714
    .local v18, "sectionIndex":I
    if-lez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    if-le v7, v0, :cond_b

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    .line 716
    .local v16, "prevLetter":I
    const/high16 v21, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v17

    .line 717
    .local v17, "prevLetterPos":I
    const/high16 v21, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 718
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 724
    .end local v16    # "prevLetter":I
    .end local v17    # "prevLetterPos":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, 0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_4

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, 0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 726
    .local v13, "nextLetter":I
    const/high16 v21, -0x80000000

    move/from16 v0, v21

    invoke-virtual {v2, v13, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    .line 727
    .local v14, "nextLetterPos":I
    const/high16 v21, -0x80000000

    move/from16 v0, v21

    if-eq v14, v0, :cond_4

    .line 728
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto/16 :goto_1

    .line 744
    .end local v13    # "nextLetter":I
    .end local v14    # "nextLetterPos":I
    .end local v18    # "sectionIndex":I
    .restart local v10    # "mflag":Z
    .restart local v11    # "name_0":Ljava/lang/String;
    .restart local v12    # "name_1":Ljava/lang/String;
    :cond_c
    if-eqz v11, :cond_5

    if-nez v12, :cond_5

    .line 745
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 759
    .end local v11    # "name_0":Ljava/lang/String;
    .end local v12    # "name_1":Ljava/lang/String;
    .restart local v4    # "curName":Ljava/lang/String;
    :cond_d
    add-int/lit8 v15, v15, -0x1

    .line 760
    goto/16 :goto_3

    .line 764
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 766
    .restart local v5    # "diff":I
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x23

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 767
    const/4 v5, 0x1

    .line 770
    :cond_f
    if-eqz v5, :cond_14

    .line 782
    if-gez v5, :cond_11

    .line 783
    add-int/lit8 v19, v15, 0x1

    .line 785
    if-eqz v10, :cond_10

    if-eqz v15, :cond_7

    .line 789
    :cond_10
    move/from16 v0, v19

    if-lt v0, v3, :cond_13

    .line 790
    move v15, v3

    .line 791
    goto/16 :goto_4

    .line 795
    :cond_11
    if-eqz v10, :cond_12

    if-nez v15, :cond_12

    .line 796
    const/4 v15, 0x1

    .line 797
    goto/16 :goto_4

    .line 800
    :cond_12
    move v6, v15

    .line 812
    :cond_13
    :goto_5
    add-int v21, v19, v6

    div-int/lit8 v15, v21, 0x2

    .line 813
    goto/16 :goto_3

    .line 804
    :cond_14
    move/from16 v0, v19

    if-eq v0, v15, :cond_7

    .line 809
    move v6, v15

    goto :goto_5
.end method

.method protected initIndexer(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "alphabet"    # Ljava/lang/CharSequence;

    .prologue
    .line 308
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 309
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid indexString :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_1
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 312
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    .line 314
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_2

    .line 316
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_2
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 321
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    .line 322
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCollator:Ljava/text/Collator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 323
    return-void
.end method

.method public isCurrentLanguagePosition(I)Z
    .locals 2
    .param p1, "sectionIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 538
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    if-le p1, v0, :cond_1

    .line 539
    :cond_0
    const/4 v0, 0x0

    .line 541
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract isDataToBeIndexedAvailable()Z
.end method

.method protected onBeginTransaction()V
    .locals 0

    .prologue
    .line 951
    return-void
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 896
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 897
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 899
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 903
    return-void
.end method

.method protected onEndTransaction()V
    .locals 0

    .prologue
    .line 958
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 911
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 912
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 913
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 914
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 933
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 934
    return-void
.end method

.method protected seeIfExactMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 838
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 839
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 843
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xac00

    if-lt v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xd7a3

    if-gt v1, v2, :cond_1

    .line 844
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->getHangeulConsonant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 847
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 848
    const/4 v0, 0x1

    .line 850
    :cond_2
    return v0
.end method

.method public setMultiLangIndexer(I)Ljava/lang/String;
    .locals 9
    .param p1, "aLangIndex"    # I

    .prologue
    const/4 v8, 0x0

    .line 184
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLang:I

    .line 186
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 187
    .local v4, "lS":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->isTaiwanLocale()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 188
    .local v1, "isTaiwan":Ljava/lang/Boolean;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 189
    if-eq v0, p1, :cond_2

    .line 200
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 205
    .local v3, "lFixedChar":C
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 206
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 188
    .end local v3    # "lFixedChar":C
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .restart local v3    # "lFixedChar":C
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 208
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 210
    :cond_1
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 216
    .end local v3    # "lFixedChar":C
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangStartIndex:I

    .line 218
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 220
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 224
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mCurrentLangEndIndex:I

    goto :goto_1

    .line 227
    .end local v2    # "j":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    .line 228
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 943
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 944
    return-void
.end method

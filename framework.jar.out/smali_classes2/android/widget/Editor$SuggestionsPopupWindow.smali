.class Landroid/widget/Editor$SuggestionsPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionsPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;,
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;,
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;,
        Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;
    }
.end annotation


# static fields
.field private static final ADD_TO_DICTIONARY:I = -0x1

.field private static final DELETE_TEXT:I = -0x2

.field private static final MAX_NUMBER_SUGGESTIONS:I = 0x5


# instance fields
.field private mCursorWasVisibleBeforeSuggestions:Z

.field private mIsShowingUp:Z

.field private mNumberOfSuggestions:I

.field private final mSpansLengths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

.field private final mSuggestionSpanComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 2

    .prologue
    .line 2660
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    .line 2634
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 2661
    iget-boolean v0, p1, Landroid/widget/Editor;->mCursorVisible:Z

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    .line 2662
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionSpanComparator:Ljava/util/Comparator;

    .line 2663
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    .line 2664
    return-void
.end method

.method static synthetic access$1900(Landroid/widget/Editor$SuggestionsPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    .line 2627
    iget-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/Editor$SuggestionsPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    .line 2627
    iget v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/Editor$SuggestionsPopupWindow;)[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    .line 2627
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/Editor$SuggestionsPopupWindow;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    .line 2627
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    return-object v0
.end method

.method private getSuggestionSpans()[Landroid/text/style/SuggestionSpan;
    .locals 11

    .prologue
    .line 2774
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 2775
    .local v4, "pos":I
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    .line 2776
    .local v5, "spannable":Landroid/text/Spannable;
    const-class v9, Landroid/text/style/SuggestionSpan;

    invoke-interface {v5, v4, v4, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/SuggestionSpan;

    .line 2778
    .local v8, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 2779
    move-object v0, v8

    .local v0, "arr$":[Landroid/text/style/SuggestionSpan;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    .line 2780
    .local v7, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v5, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 2781
    .local v6, "start":I
    invoke-interface {v5, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 2782
    .local v1, "end":I
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    sub-int v10, v1, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2779
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2787
    .end local v1    # "end":I
    .end local v6    # "start":I
    .end local v7    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_0
    iget-object v9, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionSpanComparator:Ljava/util/Comparator;

    invoke-static {v8, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2788
    return-object v8
.end method

.method private highlightTextDifferences(Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;II)V
    .locals 9
    .param p1, "suggestionInfo"    # Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    .param p2, "unionStart"    # I
    .param p3, "unionEnd"    # I

    .prologue
    const/4 v8, 0x0

    .line 2970
    iget-object v4, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 2971
    .local v2, "text":Landroid/text/Spannable;
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 2972
    .local v1, "spanStart":I
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 2975
    .local v0, "spanEnd":I
    sub-int v4, v1, p2

    iput v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    .line 2976
    iget v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    iget-object v5, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionEnd:I

    .line 2979
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    iget-object v5, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    iget-object v6, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2983
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2984
    .local v3, "textAsString":Ljava/lang/String;
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2985
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2986
    return-void
.end method

.method private updateSuggestions()Z
    .locals 35

    .prologue
    .line 2857
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    check-cast v21, Landroid/text/Spannable;

    .line 2858
    .local v21, "spannable":Landroid/text/Spannable;
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->getSuggestionSpans()[Landroid/text/style/SuggestionSpan;

    move-result-object v27

    .line 2860
    .local v27, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v27

    array-length v10, v0

    .line 2862
    .local v10, "nbSpans":I
    if-nez v10, :cond_0

    const/16 v30, 0x0

    .line 2965
    :goto_0
    return v30

    .line 2864
    :cond_0
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 2865
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .line 2866
    .local v20, "spanUnionStart":I
    const/16 v19, 0x0

    .line 2868
    .local v19, "spanUnionEnd":I
    const/4 v8, 0x0

    .line 2869
    .local v8, "misspelledSpan":Landroid/text/style/SuggestionSpan;
    const/16 v29, 0x0

    .line 2871
    .local v29, "underlineColor":I
    const/16 v17, 0x0

    .local v17, "spanIndex":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v10, :cond_7

    .line 2872
    aget-object v26, v27, v17

    .line 2873
    .local v26, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    .line 2874
    .local v18, "spanStart":I
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v16

    .line 2875
    .local v16, "spanEnd":I
    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 2876
    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 2878
    invoke-virtual/range {v26 .. v26}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v30

    and-int/lit8 v30, v30, 0x2

    if-eqz v30, :cond_1

    .line 2879
    move-object/from16 v8, v26

    .line 2883
    :cond_1
    if-nez v17, :cond_2

    invoke-virtual/range {v26 .. v26}, Landroid/text/style/SuggestionSpan;->getUnderlineColor()I

    move-result v29

    .line 2885
    :cond_2
    invoke-virtual/range {v26 .. v26}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v28

    .line 2886
    .local v28, "suggestions":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v11, v0

    .line 2887
    .local v11, "nbSuggestions":I
    const/16 v23, 0x0

    .local v23, "suggestionIndex":I
    :goto_2
    move/from16 v0, v23

    if-ge v0, v11, :cond_4

    .line 2888
    aget-object v22, v28, v23

    .line 2890
    .local v22, "suggestion":Ljava/lang/String;
    const/16 v25, 0x0

    .line 2891
    .local v25, "suggestionIsDuplicate":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v6, v0, :cond_3

    .line 2892
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    aget-object v30, v30, v6

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 2893
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    aget-object v30, v30, v6

    move-object/from16 v0, v30

    iget-object v15, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 2894
    .local v15, "otherSuggestionSpan":Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    .line 2895
    .local v14, "otherSpanStart":I
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 2896
    .local v13, "otherSpanEnd":I
    move/from16 v0, v18

    if-ne v0, v14, :cond_5

    move/from16 v0, v16

    if-ne v0, v13, :cond_5

    .line 2897
    const/16 v25, 0x1

    .line 2903
    .end local v13    # "otherSpanEnd":I
    .end local v14    # "otherSpanStart":I
    .end local v15    # "otherSuggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_3
    if-nez v25, :cond_6

    .line 2904
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v31, v0

    aget-object v24, v30, v31

    .line 2905
    .local v24, "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 2906
    move/from16 v0, v23

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    .line 2907
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v32

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2909
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 2911
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    const/16 v31, 0x5

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    .line 2913
    move/from16 v17, v10

    .line 2871
    .end local v6    # "i":I
    .end local v22    # "suggestion":Ljava/lang/String;
    .end local v24    # "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    .end local v25    # "suggestionIsDuplicate":Z
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 2891
    .restart local v6    # "i":I
    .restart local v22    # "suggestion":Ljava/lang/String;
    .restart local v25    # "suggestionIsDuplicate":Z
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 2887
    :cond_6
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 2920
    .end local v6    # "i":I
    .end local v11    # "nbSuggestions":I
    .end local v16    # "spanEnd":I
    .end local v18    # "spanStart":I
    .end local v22    # "suggestion":Ljava/lang/String;
    .end local v23    # "suggestionIndex":I
    .end local v25    # "suggestionIsDuplicate":Z
    .end local v26    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v28    # "suggestions":[Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v6, v0, :cond_8

    .line 2921
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    aget-object v30, v30, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v20

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SuggestionsPopupWindow;->highlightTextDifferences(Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;II)V

    .line 2920
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2925
    :cond_8
    if-eqz v8, :cond_9

    .line 2926
    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 2927
    .local v9, "misspelledStart":I
    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 2928
    .local v7, "misspelledEnd":I
    if-ltz v9, :cond_9

    if-le v7, v9, :cond_9

    .line 2929
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v31, v0

    aget-object v24, v30, v31

    .line 2930
    .restart local v24    # "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v24

    iput-object v8, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 2931
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    .line 2932
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v33 .. v33}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v33

    const v34, 0x1040466

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v30 .. v33}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2934
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x21

    invoke-virtual/range {v30 .. v34}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2937
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 2942
    .end local v7    # "misspelledEnd":I
    .end local v9    # "misspelledStart":I
    .end local v24    # "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v31, v0

    aget-object v24, v30, v31

    .line 2943
    .restart local v24    # "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 2944
    const/16 v30, -0x2

    move/from16 v0, v30

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    .line 2945
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v33 .. v33}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v33

    const v34, 0x1040467

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v30 .. v33}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2947
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x21

    invoke-virtual/range {v30 .. v34}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2949
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 2951
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v30, v0

    if-nez v30, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    new-instance v31, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct/range {v31 .. v31}, Landroid/text/style/SuggestionRangeSpan;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    .line 2952
    :cond_a
    if-nez v29, :cond_b

    .line 2954
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v31 .. v31}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/widget/TextView;->mHighlightColor:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    .line 2961
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v30, v0

    const/16 v31, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2964
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->notifyDataSetChanged()V

    .line 2965
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 2956
    :cond_b
    const v5, 0x3ecccccd    # 0.4f

    .line 2957
    .local v5, "BACKGROUND_TRANSPARENCY":F
    invoke-static/range {v29 .. v29}, Landroid/graphics/Color;->alpha(I)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const v31, 0x3ecccccd    # 0.4f

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v12, v0

    .line 2958
    .local v12, "newAlpha":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v30, v0

    const v31, 0xffffff

    and-int v31, v31, v29

    shl-int/lit8 v32, v12, 0x18

    add-int v31, v31, v32

    invoke-virtual/range {v30 .. v31}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    goto :goto_5
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 3
    .param p1, "positionY"    # I

    .prologue
    .line 2846
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 2847
    .local v1, "height":I
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2848
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method protected createPopupWindow()V
    .locals 3

    .prologue
    .line 2668
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010373

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 2670
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 2671
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2672
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2673
    return-void
.end method

.method protected getTextOffset()I
    .locals 1

    .prologue
    .line 2836
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 2841
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 2853
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    .line 2854
    return-void
.end method

.method protected initContentView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2677
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2678
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v2, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-direct {v2, p0, v4}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V

    iput-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    .line 2679
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2680
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2681
    iput-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 2684
    const/4 v2, 0x7

    new-array v2, v2, [Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    iput-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    .line 2685
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 2686
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    new-instance v3, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    invoke-direct {v3, p0, v4}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V

    aput-object v3, v2, v0

    .line 2685
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2688
    :cond_0
    return-void
.end method

.method public isShowingUp()Z
    .locals 1

    .prologue
    .line 2691
    iget-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    return v0
.end method

.method protected measureContent()V
    .locals 9

    .prologue
    const/high16 v8, -0x80000000

    .line 2805
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2806
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2808
    .local v1, "horizontalMeasure":I
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2811
    .local v4, "verticalMeasure":I
    const/4 v6, 0x0

    .line 2812
    .local v6, "width":I
    const/4 v5, 0x0

    .line 2813
    .local v5, "view":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ge v2, v7, :cond_0

    .line 2814
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2, v5, v8}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2815
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, -0x2

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2816
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    .line 2817
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2813
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2821
    :cond_0
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v8, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 2825
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2826
    .local v3, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 2827
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    # setter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7, v8}, Landroid/widget/Editor;->access$2602(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 2828
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2829
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 2831
    :cond_2
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2832
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 37
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2990
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v33 .. v33}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Editable;

    .line 2991
    .local v4, "editable":Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v33, v0

    aget-object v23, v33, p3

    .line 2993
    .local v23, "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v33, v0

    const/16 v34, -0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3

    .line 2994
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v19

    .line 2995
    .local v19, "spanUnionStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v18

    .line 2996
    .local v18, "spanUnionEnd":I
    if-ltz v19, :cond_2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 2998
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v33

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_1

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v33

    if-eqz v33, :cond_1

    if-eqz v19, :cond_0

    add-int/lit8 v33, v19, -0x1

    move/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 3002
    :cond_0
    add-int/lit8 v18, v18, 0x1

    .line 3004
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v33 .. v33}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 3006
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 3105
    .end local v18    # "spanUnionEnd":I
    .end local v19    # "spanUnionStart":I
    :goto_0
    return-void

    .line 3010
    :cond_3
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v17

    .line 3011
    .local v17, "spanStart":I
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v16

    .line 3012
    .local v16, "spanEnd":I
    if-ltz v17, :cond_4

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_5

    .line 3014
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    goto :goto_0

    .line 3018
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 3020
    .local v11, "originalText":Ljava/lang/String;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_6

    .line 3021
    new-instance v6, Landroid/content/Intent;

    const-string v33, "com.android.settings.USER_DICTIONARY_INSERT"

    move-object/from16 v0, v33

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3022
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v33, "word"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3023
    const-string v33, "locale"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3026
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v33

    const/high16 v34, 0x10000000

    or-int v33, v33, v34

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3027
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v33 .. v33}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3030
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-interface {v4, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 3031
    move/from16 v0, v16

    invoke-static {v4, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3032
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v34

    # invokes: Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V
    invoke-static {v0, v1, v2, v3}, Landroid/widget/Editor;->access$2700(Landroid/widget/Editor;IIZ)V

    .line 3104
    .end local v6    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    goto/16 :goto_0

    .line 3035
    :cond_6
    const-class v33, Landroid/text/style/SuggestionSpan;

    move/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v33

    invoke-interface {v4, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Landroid/text/style/SuggestionSpan;

    .line 3037
    .local v26, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v26

    array-length v7, v0

    .line 3038
    .local v7, "length":I
    new-array v0, v7, [I

    move-object/from16 v29, v0

    .line 3039
    .local v29, "suggestionSpansStarts":[I
    new-array v0, v7, [I

    move-object/from16 v27, v0

    .line 3040
    .local v27, "suggestionSpansEnds":[I
    new-array v0, v7, [I

    move-object/from16 v28, v0

    .line 3041
    .local v28, "suggestionSpansFlags":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v7, :cond_8

    .line 3042
    aget-object v24, v26, v5

    .line 3043
    .local v24, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v33

    aput v33, v29, v5

    .line 3044
    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v33

    aput v33, v27, v5

    .line 3045
    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v33

    aput v33, v28, v5

    .line 3048
    invoke-virtual/range {v24 .. v24}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v25

    .line 3049
    .local v25, "suggestionSpanFlags":I
    and-int/lit8 v33, v25, 0x2

    if-lez v33, :cond_7

    .line 3050
    and-int/lit8 v25, v25, -0x3

    .line 3051
    and-int/lit8 v25, v25, -0x2

    .line 3052
    invoke-virtual/range {v24 .. v25}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 3041
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3056
    .end local v24    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v25    # "suggestionSpanFlags":I
    :cond_8
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    move/from16 v30, v0

    .line 3057
    .local v30, "suggestionStart":I
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionEnd:I

    move/from16 v22, v0

    .line 3058
    .local v22, "suggestionEnd":I
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v30

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    .line 3060
    .local v21, "suggestion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v33 .. v33}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v17

    move/from16 v2, v16

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 3064
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v11, v2}, Landroid/text/style/SuggestionSpan;->notifySelection(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3068
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v31

    .line 3069
    .local v31, "suggestions":[Ljava/lang/String;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v33, v0

    aput-object v11, v31, v33

    .line 3072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v33 .. v33}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v15

    .line 3073
    .local v15, "realSuggestionLength":I
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v33

    sub-int v34, v16, v17

    sub-int v8, v33, v34

    .line 3074
    .local v8, "lengthDifference":I
    sub-int v33, v16, v17

    sub-int v14, v15, v33

    .line 3076
    .local v14, "realSuggestionDiff":I
    if-ge v14, v8, :cond_9

    .line 3077
    move v8, v14

    .line 3080
    :cond_9
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v7, :cond_c

    .line 3084
    aget v33, v29, v5

    move/from16 v0, v33

    move/from16 v1, v17

    if-gt v0, v1, :cond_a

    aget v33, v27, v5

    move/from16 v0, v33

    move/from16 v1, v16

    if-lt v0, v1, :cond_a

    .line 3087
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v33 .. v33}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 3088
    .local v9, "nTextLen":I
    aget v33, v27, v5

    add-int v20, v33, v8

    .line 3089
    .local v20, "spansEnd":I
    move/from16 v0, v20

    if-le v0, v9, :cond_b

    move v13, v9

    .line 3090
    .local v13, "realSpansEnd":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v33 .. v33}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v33

    aget-object v34, v26, v5

    aget v35, v29, v5

    aget v36, v28, v5

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v13, v3}, Landroid/widget/TextView;->setSpan_internal(Ljava/lang/Object;III)V

    .line 3080
    .end local v9    # "nTextLen":I
    .end local v13    # "realSpansEnd":I
    .end local v20    # "spansEnd":I
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .restart local v9    # "nTextLen":I
    .restart local v20    # "spansEnd":I
    :cond_b
    move/from16 v13, v20

    .line 3089
    goto :goto_4

    .line 3096
    .end local v9    # "nTextLen":I
    .end local v20    # "spansEnd":I
    :cond_c
    add-int v10, v16, v8

    .line 3098
    .local v10, "newCursorPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v33 .. v33}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->length()I

    move-result v32

    .line 3099
    .local v32, "textLen":I
    move/from16 v0, v32

    if-le v10, v0, :cond_d

    move/from16 v12, v32

    .line 3101
    .local v12, "realNewCursorPosition":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v33, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v33 .. v33}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12, v12}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    goto/16 :goto_1

    .end local v12    # "realNewCursorPosition":I
    :cond_d
    move v12, v10

    .line 3099
    goto :goto_5
.end method

.method public onParentLostFocus()V
    .locals 1

    .prologue
    .line 2695
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 2696
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 2793
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_1

    .line 2801
    :cond_0
    :goto_0
    return-void

    .line 2795
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->updateSuggestions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2796
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    .line 2797
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 2798
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 2799
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    goto :goto_0
.end method

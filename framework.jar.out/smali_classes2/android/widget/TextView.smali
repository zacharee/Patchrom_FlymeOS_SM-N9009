.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$7;,
        Landroid/widget/TextView$FlymeInjector;,
        Landroid/widget/TextView$MzInputShownChangeListener;,
        Landroid/widget/TextView$StylusEventListener;,
        Landroid/widget/TextView$TouchMonitorListener;,
        Landroid/widget/TextView$PenSelectVibrator;,
        Landroid/widget/TextView$MoreInfoHPW;,
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$Drawables;,
        Landroid/widget/TextView$IClipboardDataPasteEventImpl;
    }
.end annotation


# static fields
.field static final ID_COPY_ALL:I

.field static final ID_START_SELECTING:I = #android:id@startSelectingText#t

.field private static final ACTION_DELETE_TEXT:I = 0x2

.field private static final ACTION_INIT:I = 0x0

.field private static final ACTION_PASTE_TEXT:I = 0x3

.field private static final ACTION_PASTING:I = 0x6

.field private static final ACTION_REDOING:I = 0x5

.field private static final ACTION_TYPING_TEXT:I = 0x1

.field private static final ACTION_UNDOING:I = 0x4

.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final CHANGE_WATCHER_PRIORITY:I = 0x64

.field public static final CLIPBOARD_ID:I = 0x5

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field public static final DICTIONARY_ID:I = 0x9

.field private static final EMPTY_SPANNED:Landroid/text/Spanned;

.field private static final EMS:I = 0x1

.field static final ID_CLIPBOARD:I = #android:id@clipboard#t

.field static final ID_COPY:I = #android:id@copy#t

.field static final ID_CUT:I = #android:id@cut#t

.field static final ID_DELETE:I = #android:id@deleteText#t

.field static final ID_DICTIONARY:I = #android:id@dictionary#t

.field static final ID_MULTI_SELECT_ALL:I = #android:id@multiSelectAll#t

.field static final ID_MULTI_SELECT_COPY:I = #android:id@multiSelectCopy#t

.field static final ID_MULTI_SELECT_DICTIONARY:I = #android:id@multiSelectDictionary#t

.field static final ID_MULTI_SELECT_SHARE:I = #android:id@multiSelectShare#t

.field static final ID_MULTI_SELECT_TRANSLATE:I = #android:id@multiSelectTranslate#t

.field static final ID_PASTE:I = #android:id@paste#t

.field static final ID_REDO:I = #android:id@redo#t

.field static final ID_SELECT_ALL:I = #android:id@selectAll#t

.field static final ID_SHARE:I = #android:id@share#t

.field static final ID_TRANSLATE:I = #android:id@translation#t

.field static final ID_UNDO:I = #android:id@undo#t

.field static final ID_WEBSEARCH:I = #android:id@websearch#t

.field static LAST_CUT_OR_COPY_TIME:J = 0x0L

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MARQUEE_FADE_NORMAL:I = 0x0

.field private static final MARQUEE_FADE_SWITCH_SHOW_ELLIPSIS:I = 0x1

.field private static final MARQUEE_FADE_SWITCH_SHOW_FADE:I = 0x2

.field private static final MONOSPACE:I = 0x3

.field private static final MULTILINE_STATE_SET:[I

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PIXELS:I = 0x2

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field public static final SHARE_ID:I = 0x7

.field private static final SIGNED:I = 0x2

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field public static final TRANSLATE_ID:I = 0x6

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

.field private static final VERY_WIDE:I = 0x100000

.field public static final WEBSEARCH_ID:I = 0x8

.field private static final emailPattern:Ljava/util/regex/Pattern;

.field private static mIsFindTargetView:Z

.field private static mLastHoveredTime:J

.field private static mLastHoveredView:Landroid/widget/TextView;

.field private static mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

.field private static mTargetView:Landroid/widget/TextView;

.field private static final urlPattern:Ljava/util/regex/Pattern;


# instance fields
.field mAutoLinkMaskIncludeDateTime:Z

.field private mCurrentCursorVisible:Z

.field mCursorWidth:I

.field public mEmojiAlphaEnabled:Z

.field private mHintPadding:I

.field mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

.field mPasswordUseMonospaceFont:Z

.field mTempCoords:[I

.field private mTempCurosrRect:Landroid/graphics/Rect;

.field private final HOVER_INTERVAL:I

.field private TOUCH_DELTA:F

.field private fromResLock:Z

.field private mAllowTransformationLengthChange:Z

.field private mAttachedWindow:Z

.field private mAutoLinkMask:I

.field mBoostHelper:Landroid/os/DVFSHelper;

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mCanTextMultiSelection:Z

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mChangedSelectionBySIP:Z

.field private mChangedSize:I

.field private mChangedText:Z

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mClipboardDataFormat:I

.field private mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCurHintTextColor:I

.field private mCurTextColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private volatile mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

.field mCursorDrawableRes:I

.field private mDeferScroll:I

.field private mDesiredHeightAtMeasure:I

.field private mDispatchTemporaryDetach:Z

.field private mDisplayText:Ljava/lang/CharSequence;

.field mDrawables:Landroid/widget/TextView$Drawables;

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEditor:Landroid/widget/Editor;

.field private mEllipsisKeywordCount:I

.field private mEllipsisKeywordStart:I

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mEnableLinkPreview:Z

.field private mEnableMultiSelection:Z

.field private mEnableUndoRedo:Z

.field private mFilters:[Landroid/text/InputFilter;

.field private mFreezesText:Z

.field private mGravity:I

.field private mHideSoftInput:Z

.field mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mHoverEnterTime:J

.field private mHoverExitTime:J

.field private mHoveredSpan:Ljava/lang/Object;

.field private mIgnoreAccessibility:Z

.field private mIncludePad:Z

.field mIsTouchDown:Z

.field private mKeycodeDpadCenterStatus:Z

.field private mLastAction:I

.field private mLastCurPosEnd:I

.field private mLastCurPosStart:I

.field private mLastKeyCode:I

.field private mLastLayoutDirection:I

.field private mLastScroll:J

.field private mLayout:Landroid/text/Layout;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeFadeMode:I

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mMultiHighlightColor:I

.field private mMultiHighlightPaint:Landroid/graphics/Paint;

.field private mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

.field private mOldMaxMode:I

.field private mOldMaximum:I

.field protected mOnDragResult:Z

.field protected mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

.field private mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

.field private mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

.field private mPreDrawListenerDetached:Z

.field private mPreDrawRegistered:Z

.field private mPreText:Ljava/lang/CharSequence;

.field private mPretextCurPosEnd:I

.field private mPretextCurPosStart:I

.field private mPreventDefaultMovement:Z

.field mQuickPopupCopyRes:I

.field mQuickPopupDictionaryRes:I

.field mQuickPopupDividerRes:I

.field mQuickPopupItemBackGroundRes:I

.field mQuickPopupSelectAllRes:I

.field mQuickPopupShareRes:I

.field mQuickPopupTranslateRes:I

.field mQuickPopupWindowBackgroundRes:I

.field private mRedoText:Ljava/lang/CharSequence;

.field private mRestartMarquee:Z

.field private mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mSavedMarqueeModeLayout:Landroid/text/Layout;

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectall:Z

.field private mShadowColor:I

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mSingleLine:Z

.field private mSkipUpdateDisplayText:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field private mStringName:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation
.end field

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field mTextEditActionPopupBackGroundRes:I

.field mTextEditActionPopupClipboardRes:I

.field mTextEditActionPopupCopyRes:I

.field mTextEditActionPopupCutRes:I

.field mTextEditActionPopupDictionaryRes:I

.field mTextEditActionPopupDividerRes:I

.field mTextEditActionPopupPasteRes:I

.field mTextEditActionPopupSelectAllRes:I

.field mTextEditActionPopupShareRes:I

.field mTextEditActionPopupTranslateRes:I

.field mTextEditActionPopupWebSearchRes:I

.field mTextEditSuggestionItemLayout:I

.field private final mTextPaint:Landroid/text/TextPaint;

.field mTextSelectHandleLeftRes:I

.field mTextSelectHandleRes:I

.field mTextSelectHandleRightRes:I

.field private mThemeIsDeviceDefault:Z

.field private mToast:Landroid/widget/Toast;

.field protected mToolType:I

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUndoText:Ljava/lang/CharSequence;

.field private mUseDisplayText:Z

.field private mUserSetTextScaleX:Z

.field private mWBMaxLength:I

.field private mWBTextBuffer:Ljava/lang/CharSequence;

.field private mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

.field private mhasMultiSelection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 350
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    .line 356
    new-array v1, v3, [Landroid/text/InputFilter;

    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 357
    new-instance v1, Landroid/text/SpannedString;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    .line 362
    new-array v1, v5, [I

    const v2, #android:attr@state_multiline#t

    aput v2, v1, v3

    sput-object v1, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    sput-object v1, Landroid/widget/TextView;->urlPattern:Ljava/util/regex/Pattern;

    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    sput-object v1, Landroid/widget/TextView;->emailPattern:Ljava/util/regex/Pattern;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sput-object v4, Landroid/widget/TextView;->mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    sput-object v4, Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;

    sput-object v4, Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;

    sput-boolean v3, Landroid/widget/TextView;->mIsFindTargetView:Z

    const-wide/16 v2, 0x0

    sput-wide v2, Landroid/widget/TextView;->mLastHoveredTime:J

    sget v1, Lcom/flyme/internal/R$id;->copyAll:I

    sput v1, Landroid/widget/TextView;->ID_COPY_ALL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 974
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 975
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, #android:attr@textViewStyle#t

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 982
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 983
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 70
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 987
    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 378
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mChangedSelectionBySIP:Z

    .line 384
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->fromResLock:Z

    .line 386
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 387
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 404
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    .line 405
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mEllipsisKeywordCount:I

    .line 408
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mToolType:I

    .line 412
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mChangedText:Z

    .line 413
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mChangedSize:I

    .line 414
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    .line 415
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    .line 416
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

    .line 418
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIgnoreAccessibility:Z

    .line 421
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    .line 425
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectall:Z

    .line 427
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mKeycodeDpadCenterStatus:Z

    .line 761
    const/16 v67, 0x3

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 763
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastLayoutDirection:I

    .line 770
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    .line 783
    sget-object v67, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 794
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnableUndoRedo:Z

    .line 814
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    .line 815
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mUseDisplayText:Z

    .line 816
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSkipUpdateDisplayText:Z

    .line 817
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mhasMultiSelection:Z

    .line 818
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnableMultiSelection:Z

    .line 819
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnableLinkPreview:Z

    .line 820
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCanTextMultiSelection:Z

    .line 822
    const v67, -0x66ff8747

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMultiHighlightColor:I

    .line 825
    const/16 v67, 0x12c

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->HOVER_INTERVAL:I

    .line 826
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    .line 827
    const-wide/16 v68, -0x1

    move-wide/from16 v0, v68

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverEnterTime:J

    .line 828
    const-wide/16 v68, -0x1

    move-wide/from16 v0, v68

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverExitTime:J

    .line 829
    const/high16 v67, 0x41400000    # 12.0f

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->TOUCH_DELTA:F

    .line 831
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 833
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    .line 834
    invoke-static {}, Lcom/samsung/android/penselect/PenSelectionController;->getInstance()Lcom/samsung/android/penselect/PenSelectionController;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

    .line 847
    const v67, 0x800033

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    .line 851
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    .line 853
    const/high16 v67, 0x3f800000    # 1.0f

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    .line 854
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    .line 856
    const v67, 0x7fffffff

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    .line 857
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxMode:I

    .line 858
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinimum:I

    .line 859
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinMode:I

    .line 861
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaximum:I

    .line 862
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxMode:I

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOldMaxMode:I

    .line 864
    const v67, 0x7fffffff

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    .line 865
    const/16 v67, 0x2

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 866
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidth:I

    .line 867
    const/16 v67, 0x2

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidthMode:I

    .line 870
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 871
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIncludePad:Z

    .line 872
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDeferScroll:I

    .line 884
    sget-object v67, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 890
    const v67, 0x6633b5e5

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    .line 893
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6587
    const/16 v67, 0x2

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mClipboardDataFormat:I

    .line 10948
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mOnDragResult:Z

    .line 11560
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHideSoftInput:Z

    .line 12320
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    .line 12397
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsTouchDown:Z

    .line 13024
    const/16 v67, -0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mWBMaxLength:I

    .line 13101
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    .line 13276
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->getInstance()Landroid/widget/MultiSelectPopupWindow;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

    .line 989
    const-string v67, ""

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 992
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastAction:I

    .line 993
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastKeyCode:I

    .line 994
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    .line 995
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    .line 996
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    .line 997
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastCurPosStart:I

    .line 998
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastCurPosEnd:I

    .line 1001
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v51

    .line 1002
    .local v51, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v51 .. v51}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v18

    .line 1005
    .local v18, "compat":Landroid/content/res/CompatibilityInfo;
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 1008
    new-instance v67, Landroid/text/TextPaint;

    const/16 v68, 0x1

    invoke-direct/range {v67 .. v68}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v67, v0

    invoke-virtual/range {v51 .. v51}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v68

    move-object/from16 v0, v68

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v68, v0

    move/from16 v0, v68

    move-object/from16 v1, v67

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 1012
    new-instance v67, Landroid/graphics/Paint;

    const/16 v68, 0x1

    invoke-direct/range {v67 .. v68}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 1016
    new-instance v67, Landroid/graphics/Paint;

    const/16 v68, 0x1

    invoke-direct/range {v67 .. v68}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMultiHighlightPaint:Landroid/graphics/Paint;

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMultiHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget v0, v0, Landroid/text/TextPaint;->density:F

    move/from16 v67, v0

    const/high16 v68, 0x41400000    # 12.0f

    mul-float v67, v67, v68

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->TOUCH_DELTA:F

    .line 1021
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 1023
    const/16 v67, 0x0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 1025
    const/16 v59, 0x0

    .line 1026
    .local v59, "textColorHighlight":I
    const/16 v58, 0x0

    .line 1027
    .local v58, "textColor":Landroid/content/res/ColorStateList;
    const/16 v60, 0x0

    .line 1028
    .local v60, "textColorHint":Landroid/content/res/ColorStateList;
    const/16 v61, 0x0

    .line 1029
    .local v61, "textColorLink":Landroid/content/res/ColorStateList;
    const/16 v62, 0xf

    .line 1030
    .local v62, "textSize":I
    const/16 v35, 0x0

    .line 1031
    .local v35, "fontFamily":Ljava/lang/String;
    const/16 v64, -0x1

    .line 1032
    .local v64, "typefaceIndex":I
    const/16 v56, -0x1

    .line 1033
    .local v56, "styleIndex":I
    const/4 v7, 0x0

    .line 1034
    .local v7, "allCaps":Z
    const/16 v53, 0x0

    .line 1035
    .local v53, "shadowcolor":I
    const/16 v27, 0x0

    .local v27, "dx":F
    const/16 v28, 0x0

    .local v28, "dy":F
    const/16 v50, 0x0

    .line 1036
    .local v50, "r":F
    const/16 v31, 0x0

    .line 1037
    .local v31, "elegant":Z
    const/16 v41, 0x0

    .line 1038
    .local v41, "letterSpacing":F
    const/16 v36, 0x0

    .line 1040
    .local v36, "fontFeatureSettings":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v63

    .line 1043
    .local v63, "theme":Landroid/content/res/Resources$Theme;
    sget-boolean v67, Landroid/text/TextUtils;->IS_INDOCHINA_RESHAPING:Z

    if-eqz v67, :cond_0

    .line 1044
    sget-object v67, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V

    .line 1054
    :cond_0
    sget-object v67, Lcom/android/internal/R$styleable;->TextViewAppearance:[I

    move-object/from16 v0, v63

    move-object/from16 v1, p2

    move-object/from16 v2, v67

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1056
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    .line 1057
    .local v9, "appearance":Landroid/content/res/TypedArray;
    const/16 v67, 0x0

    const/16 v68, -0x1

    move/from16 v0, v67

    move/from16 v1, v68

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1059
    .local v8, "ap":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1060
    const/16 v67, -0x1

    move/from16 v0, v67

    if-eq v8, v0, :cond_1

    .line 1061
    sget-object v67, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, v63

    move-object/from16 v1, v67

    invoke-virtual {v0, v8, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1064
    :cond_1
    if-eqz v9, :cond_3

    .line 1065
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v44

    .line 1066
    .local v44, "n":I
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_0
    move/from16 v0, v38

    move/from16 v1, v44

    if-ge v0, v1, :cond_2

    .line 1067
    move/from16 v0, v38

    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 1069
    .local v10, "attr":I
    packed-switch v10, :pswitch_data_0

    .line 1066
    :goto_1
    add-int/lit8 v38, v38, 0x1

    goto :goto_0

    .line 1071
    :pswitch_0
    move/from16 v0, v59

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v59

    .line 1072
    goto :goto_1

    .line 1077
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->twGetColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v58

    .line 1078
    goto :goto_1

    .line 1081
    :pswitch_2
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v60

    .line 1082
    goto :goto_1

    .line 1085
    :pswitch_3
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v61

    .line 1086
    goto :goto_1

    .line 1089
    :pswitch_4
    move/from16 v0, v62

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v62

    .line 1090
    goto :goto_1

    .line 1093
    :pswitch_5
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v64

    .line 1094
    goto :goto_1

    .line 1097
    :pswitch_6
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1098
    goto :goto_1

    .line 1101
    :pswitch_7
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v56

    .line 1102
    goto :goto_1

    .line 1105
    :pswitch_8
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1106
    goto :goto_1

    .line 1109
    :pswitch_9
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v53

    .line 1110
    goto :goto_1

    .line 1113
    :pswitch_a
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    .line 1114
    goto :goto_1

    .line 1117
    :pswitch_b
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v28

    .line 1118
    goto :goto_1

    .line 1121
    :pswitch_c
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v50

    .line 1122
    goto :goto_1

    .line 1125
    :pswitch_d
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v31

    .line 1126
    goto :goto_1

    .line 1129
    :pswitch_e
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v9, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v41

    .line 1130
    goto :goto_1

    .line 1133
    :pswitch_f
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v36

    goto :goto_1

    .line 1138
    .end local v10    # "attr":I
    :cond_2
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1141
    .end local v38    # "i":I
    .end local v44    # "n":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v30

    .line 1142
    .local v30, "editable":Z
    const/16 v39, 0x0

    .line 1143
    .local v39, "inputMethod":Ljava/lang/CharSequence;
    const/16 v46, 0x0

    .line 1144
    .local v46, "numeric":I
    const/16 v19, 0x0

    .line 1145
    .local v19, "digits":Ljava/lang/CharSequence;
    const/16 v49, 0x0

    .line 1146
    .local v49, "phone":Z
    const/4 v12, 0x0

    .line 1147
    .local v12, "autotext":Z
    const/4 v11, -0x1

    .line 1148
    .local v11, "autocap":I
    const/4 v14, 0x0

    .line 1149
    .local v14, "buffertype":I
    const/16 v52, 0x0

    .line 1150
    .local v52, "selectallonfocus":Z
    const/16 v22, 0x0

    .local v22, "drawableLeft":Landroid/graphics/drawable/Drawable;
    const/16 v26, 0x0

    .local v26, "drawableTop":Landroid/graphics/drawable/Drawable;
    const/16 v24, 0x0

    .line 1151
    .local v24, "drawableRight":Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    .local v20, "drawableBottom":Landroid/graphics/drawable/Drawable;
    const/16 v25, 0x0

    .local v25, "drawableStart":Landroid/graphics/drawable/Drawable;
    const/16 v21, 0x0

    .line 1152
    .local v21, "drawableEnd":Landroid/graphics/drawable/Drawable;
    const/16 v23, 0x0

    .line 1153
    .local v23, "drawablePadding":I
    const/16 v32, -0x1

    .line 1154
    .local v32, "ellipsize":I
    const/16 v54, 0x0

    .line 1155
    .local v54, "singleLine":Z
    const/16 v43, -0x1

    .line 1156
    .local v43, "maxlength":I
    const-string v57, ""

    .line 1157
    .local v57, "text":Ljava/lang/CharSequence;
    const/16 v55, -0x1

    .line 1158
    .local v55, "stringID":I
    const/16 v37, 0x0

    .line 1159
    .local v37, "hint":Ljava/lang/CharSequence;
    const/16 v47, 0x0

    .line 1160
    .local v47, "password":Z
    const/16 v40, 0x0

    .line 1162
    .local v40, "inputType":I
    sget-object v67, Lcom/android/internal/R$styleable;->TextView:[I

    move-object/from16 v0, v63

    move-object/from16 v1, p2

    move-object/from16 v2, v67

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1165
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v44

    .line 1166
    .restart local v44    # "n":I
    const/16 v38, 0x0

    .restart local v38    # "i":I
    :goto_2
    move/from16 v0, v38

    move/from16 v1, v44

    if-ge v0, v1, :cond_5

    .line 1167
    move/from16 v0, v38

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .line 1169
    .restart local v10    # "attr":I
    packed-switch v10, :pswitch_data_1

    .line 1166
    :cond_4
    :goto_3
    :pswitch_10
    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    .line 1171
    :pswitch_11
    move/from16 v0, v30

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v30

    .line 1172
    goto :goto_3

    .line 1175
    :pswitch_12
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v39

    .line 1176
    goto :goto_3

    .line 1179
    :pswitch_13
    move/from16 v0, v46

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v46

    .line 1180
    goto :goto_3

    .line 1183
    :pswitch_14
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1184
    goto :goto_3

    .line 1187
    :pswitch_15
    move/from16 v0, v49

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v49

    .line 1188
    goto :goto_3

    .line 1191
    :pswitch_16
    invoke-virtual {v6, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 1192
    goto :goto_3

    .line 1195
    :pswitch_17
    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 1196
    goto :goto_3

    .line 1199
    :pswitch_18
    invoke-virtual {v6, v10, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 1200
    goto :goto_3

    .line 1203
    :pswitch_19
    move/from16 v0, v52

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v52

    .line 1204
    goto :goto_3

    .line 1207
    :pswitch_1a
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_3

    .line 1211
    :pswitch_1b
    const/16 v67, 0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_3

    .line 1215
    :pswitch_1c
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 1216
    goto :goto_3

    .line 1219
    :pswitch_1d
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 1220
    goto :goto_3

    .line 1223
    :pswitch_1e
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 1224
    goto :goto_3

    .line 1227
    :pswitch_1f
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 1228
    goto :goto_3

    .line 1231
    :pswitch_20
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 1232
    goto :goto_3

    .line 1235
    :pswitch_21
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 1236
    goto :goto_3

    .line 1239
    :pswitch_22
    move/from16 v0, v23

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v23

    .line 1240
    goto :goto_3

    .line 1243
    :pswitch_23
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_3

    .line 1247
    :pswitch_24
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_3

    .line 1251
    :pswitch_25
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_3

    .line 1255
    :pswitch_26
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_3

    .line 1259
    :pswitch_27
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_3

    .line 1263
    :pswitch_28
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_3

    .line 1267
    :pswitch_29
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_3

    .line 1271
    :pswitch_2a
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_3

    .line 1275
    :pswitch_2b
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_3

    .line 1279
    :pswitch_2c
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_3

    .line 1283
    :pswitch_2d
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_3

    .line 1287
    :pswitch_2e
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_3

    .line 1291
    :pswitch_2f
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_3

    .line 1295
    :pswitch_30
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v37

    .line 1296
    sget-boolean v67, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v67, :cond_4

    .line 1297
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v55

    goto/16 :goto_3

    .line 1302
    :pswitch_31
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v57

    .line 1303
    sget-boolean v67, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v67, :cond_4

    .line 1304
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v55

    goto/16 :goto_3

    .line 1309
    :pswitch_32
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    if-eqz v67, :cond_4

    .line 1310
    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_3

    .line 1315
    :pswitch_33
    move/from16 v0, v54

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v54

    .line 1316
    goto/16 :goto_3

    .line 1319
    :pswitch_34
    move/from16 v0, v32

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v32

    .line 1320
    goto/16 :goto_3

    .line 1323
    :pswitch_35
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    move/from16 v67, v0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_3

    .line 1327
    :pswitch_36
    const/16 v67, 0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    if-nez v67, :cond_4

    .line 1328
    const/16 v67, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_3

    .line 1333
    :pswitch_37
    const/16 v67, 0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    if-nez v67, :cond_4

    .line 1334
    const/16 v67, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_3

    .line 1339
    :pswitch_38
    const/16 v67, -0x1

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v43

    .line 1340
    goto/16 :goto_3

    .line 1343
    :pswitch_39
    const/high16 v67, 0x3f800000    # 1.0f

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_3

    .line 1347
    :pswitch_3a
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_3

    .line 1351
    :pswitch_3b
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v53

    .line 1352
    goto/16 :goto_3

    .line 1355
    :pswitch_3c
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    .line 1356
    goto/16 :goto_3

    .line 1359
    :pswitch_3d
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v28

    .line 1360
    goto/16 :goto_3

    .line 1363
    :pswitch_3e
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v50

    .line 1364
    goto/16 :goto_3

    .line 1367
    :pswitch_3f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v67

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 1371
    :pswitch_40
    move/from16 v0, v59

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v59

    .line 1372
    goto/16 :goto_3

    .line 1377
    :pswitch_41
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->twGetColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v58

    .line 1378
    goto/16 :goto_3

    .line 1381
    :pswitch_42
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v60

    .line 1382
    goto/16 :goto_3

    .line 1385
    :pswitch_43
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v61

    .line 1386
    goto/16 :goto_3

    .line 1389
    :pswitch_44
    move/from16 v0, v62

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v62

    .line 1390
    goto/16 :goto_3

    .line 1393
    :pswitch_45
    move/from16 v0, v64

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v64

    .line 1394
    goto/16 :goto_3

    .line 1397
    :pswitch_46
    move/from16 v0, v56

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v56

    .line 1398
    goto/16 :goto_3

    .line 1401
    :pswitch_47
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1402
    goto/16 :goto_3

    .line 1405
    :pswitch_48
    move/from16 v0, v47

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v47

    .line 1406
    goto/16 :goto_3

    .line 1409
    :pswitch_49
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v67, v0

    move/from16 v0, v67

    float-to-int v0, v0

    move/from16 v67, v0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v67

    move/from16 v0, v67

    int-to-float v0, v0

    move/from16 v67, v0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_3

    .line 1413
    :pswitch_4a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v67, v0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_3

    .line 1417
    :pswitch_4b
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v40

    .line 1418
    goto/16 :goto_3

    .line 1421
    :pswitch_4c
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v68

    move/from16 v0, v68

    move-object/from16 v1, v67

    iput v0, v1, Landroid/widget/Editor$InputContentType;->imeOptions:I

    goto/16 :goto_3

    .line 1428
    :pswitch_4d
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v67, v0

    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v67

    iput-object v0, v1, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 1434
    :pswitch_4e
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    move/from16 v68, v0

    move/from16 v0, v68

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v68

    move/from16 v0, v68

    move-object/from16 v1, v67

    iput v0, v1, Landroid/widget/Editor$InputContentType;->imeActionId:I

    goto/16 :goto_3

    .line 1441
    :pswitch_4f
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1446
    :pswitch_50
    const/16 v67, 0x0

    :try_start_0
    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 1447
    :catch_0
    move-exception v29

    .line 1448
    .local v29, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v67, "TextView"

    const-string v68, "Failure reading input extras"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1449
    .end local v29    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v29

    .line 1450
    .local v29, "e":Ljava/io/IOException;
    const-string v67, "TextView"

    const-string v68, "Failure reading input extras"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1455
    .end local v29    # "e":Ljava/io/IOException;
    :pswitch_51
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mCursorDrawableRes:I

    goto/16 :goto_3

    .line 1459
    :pswitch_52
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_3

    .line 1464
    :pswitch_53
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditActionPopupBackGroundRes:I

    goto/16 :goto_3

    .line 1468
    :pswitch_54
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditActionPopupDividerRes:I

    goto/16 :goto_3

    .line 1472
    :pswitch_55
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditActionPopupSelectAllRes:I

    goto/16 :goto_3

    .line 1476
    :pswitch_56
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditActionPopupCopyRes:I

    goto/16 :goto_3

    .line 1480
    :pswitch_57
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditActionPopupCutRes:I

    goto/16 :goto_3

    .line 1484
    :pswitch_58
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditActionPopupPasteRes:I

    goto/16 :goto_3

    .line 1488
    :pswitch_59
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditActionPopupTranslateRes:I

    goto/16 :goto_3

    .line 1492
    :pswitch_5a
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditActionPopupShareRes:I

    goto/16 :goto_3

    .line 1496
    :pswitch_5b
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditActionPopupWebSearchRes:I

    goto/16 :goto_3

    .line 1500
    :pswitch_5c
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditActionPopupClipboardRes:I

    goto/16 :goto_3

    .line 1504
    :pswitch_5d
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditActionPopupDictionaryRes:I

    goto/16 :goto_3

    .line 1510
    :pswitch_5e
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mQuickPopupWindowBackgroundRes:I

    goto/16 :goto_3

    .line 1514
    :pswitch_5f
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mQuickPopupItemBackGroundRes:I

    goto/16 :goto_3

    .line 1518
    :pswitch_60
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mQuickPopupDividerRes:I

    goto/16 :goto_3

    .line 1522
    :pswitch_61
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mQuickPopupSelectAllRes:I

    goto/16 :goto_3

    .line 1526
    :pswitch_62
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mQuickPopupCopyRes:I

    goto/16 :goto_3

    .line 1530
    :pswitch_63
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mQuickPopupDictionaryRes:I

    goto/16 :goto_3

    .line 1534
    :pswitch_64
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mQuickPopupTranslateRes:I

    goto/16 :goto_3

    .line 1538
    :pswitch_65
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mQuickPopupShareRes:I

    goto/16 :goto_3

    .line 1543
    :pswitch_66
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_3

    .line 1547
    :pswitch_67
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_3

    .line 1552
    :pswitch_68
    const/16 v67, 0x2

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mClipboardDataFormat:I

    goto/16 :goto_3

    .line 1556
    :pswitch_69
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextEditSuggestionItemLayout:I

    goto/16 :goto_3

    .line 1560
    :pswitch_6a
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v67

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    goto/16 :goto_3

    .line 1564
    :pswitch_6b
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1565
    goto/16 :goto_3

    .line 1568
    :pswitch_6c
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v31

    .line 1569
    goto/16 :goto_3

    .line 1572
    :pswitch_6d
    const/16 v67, 0x0

    move/from16 v0, v67

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v41

    .line 1573
    goto/16 :goto_3

    .line 1576
    :pswitch_6e
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_3

    .line 1580
    .end local v10    # "attr":I
    :cond_5
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1582
    sget-object v13, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 1584
    .local v13, "bufferType":Landroid/widget/TextView$BufferType;
    move/from16 v0, v40

    and-int/lit16 v0, v0, 0xfff

    move/from16 v65, v0

    .line 1586
    .local v65, "variation":I
    const/16 v67, 0x81

    move/from16 v0, v65

    move/from16 v1, v67

    if-ne v0, v1, :cond_13

    const/16 v48, 0x1

    .line 1588
    .local v48, "passwordInputType":Z
    :goto_4
    const/16 v67, 0xe1

    move/from16 v0, v65

    move/from16 v1, v67

    if-ne v0, v1, :cond_14

    const/16 v66, 0x1

    .line 1590
    .local v66, "webPasswordInputType":Z
    :goto_5
    const/16 v67, 0x12

    move/from16 v0, v65

    move/from16 v1, v67

    if-ne v0, v1, :cond_15

    const/16 v45, 0x1

    .line 1593
    .local v45, "numberPasswordInputType":Z
    :goto_6
    if-eqz v39, :cond_17

    .line 1597
    :try_start_1
    invoke-interface/range {v39 .. v39}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v15

    .line 1603
    .local v15, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v68, v0

    invoke-virtual {v15}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/text/method/KeyListener;

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1611
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v68, v0

    if-eqz v40, :cond_16

    move/from16 v67, v40

    :goto_7
    move/from16 v0, v67

    move-object/from16 v1, v68

    iput v0, v1, Landroid/widget/Editor;->mInputType:I
    :try_end_3
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_3 .. :try_end_3} :catch_5

    .line 1703
    .end local v15    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    if-eqz v67, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v66

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Editor;->adjustInputType(ZZZZ)V

    .line 1706
    :cond_6
    if-eqz v52, :cond_7

    .line 1707
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move/from16 v0, v68

    move-object/from16 v1, v67

    iput-boolean v0, v1, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    .line 1710
    sget-object v67, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v67

    if-ne v13, v0, :cond_7

    .line 1711
    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 1715
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    move-object/from16 v3, v24

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1717
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1718
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1722
    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    .line 1723
    move-object/from16 v0, p0

    move/from16 v1, v54

    move/from16 v2, v54

    move/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    .line 1725
    if-eqz v54, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v67

    if-nez v67, :cond_8

    if-gez v32, :cond_8

    .line 1726
    const/16 v32, 0x3

    .line 1729
    :cond_8
    packed-switch v32, :pswitch_data_2

    .line 1751
    :goto_9
    if-eqz v58, :cond_29

    .end local v58    # "textColor":Landroid/content/res/ColorStateList;
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1752
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1753
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1754
    if-eqz v59, :cond_9

    .line 1755
    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1757
    :cond_9
    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v67, v0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1758
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 1759
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 1760
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 1762
    if-eqz v7, :cond_a

    .line 1763
    new-instance v67, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v68

    invoke-direct/range {v67 .. v68}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_a
    invoke-static/range {p0 .. p1}, Landroid/widget/TextView$FlymeInjector;->initExtFlymeFields(Landroid/widget/TextView;Landroid/content/Context;)V

    if-nez v47, :cond_b

    if-nez v48, :cond_b

    if-nez v66, :cond_b

    if-eqz v45, :cond_2a

    :cond_b
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_c
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v64

    move/from16 v3, v56

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    if-eqz v53, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v53

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_d
    if-ltz v43, :cond_2b

    const/16 v67, 0x1

    move/from16 v0, v67

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    new-instance v69, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v69

    move/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v69, v67, v68

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :goto_c
    const/16 v67, -0x1

    move/from16 v0, v55

    move/from16 v1, v67

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setStringName(I)V

    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->fromResLock:Z

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-eqz v37, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_f
    sget-object v67, Lcom/android/internal/R$styleable;->View:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v67

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v67, v0

    if-nez v67, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v67

    if-eqz v67, :cond_2c

    :cond_10
    const/16 v34, 0x1

    .local v34, "focusable":Z
    :goto_d
    if-nez v34, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isClickable()Z

    move-result v67

    if-eqz v67, :cond_2d

    :cond_11
    const/16 v17, 0x1

    .local v17, "clickable":Z
    :goto_e
    if-nez v34, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v67

    if-eqz v67, :cond_2e

    :cond_12
    const/16 v42, 0x1

    .local v42, "longClickable":Z
    :goto_f
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v44

    const/16 v38, 0x0

    :goto_10
    move/from16 v0, v38

    move/from16 v1, v44

    if-ge v0, v1, :cond_2f

    move/from16 v0, v38

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    .restart local v10    # "attr":I
    sparse-switch v10, :sswitch_data_0

    :goto_11
    add-int/lit8 v38, v38, 0x1

    goto :goto_10

    .end local v10    # "attr":I
    .end local v17    # "clickable":Z
    .end local v34    # "focusable":Z
    .end local v42    # "longClickable":Z
    .end local v45    # "numberPasswordInputType":Z
    .end local v48    # "passwordInputType":Z
    .end local v66    # "webPasswordInputType":Z
    .restart local v58    # "textColor":Landroid/content/res/ColorStateList;
    :cond_13
    const/16 v48, 0x0

    goto/16 :goto_4

    .restart local v48    # "passwordInputType":Z
    :cond_14
    const/16 v66, 0x0

    goto/16 :goto_5

    .restart local v66    # "webPasswordInputType":Z
    :cond_15
    const/16 v45, 0x0

    goto/16 :goto_6

    .restart local v45    # "numberPasswordInputType":Z
    :catch_2
    move-exception v33

    .local v33, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v67, Ljava/lang/RuntimeException;

    move-object/from16 v0, v67

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v67

    .end local v33    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v15    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_3
    move-exception v33

    .local v33, "ex":Ljava/lang/InstantiationException;
    new-instance v67, Ljava/lang/RuntimeException;

    move-object/from16 v0, v67

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v67

    .end local v33    # "ex":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v33

    .local v33, "ex":Ljava/lang/IllegalAccessException;
    new-instance v67, Ljava/lang/RuntimeException;

    move-object/from16 v0, v67

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v67

    .end local v33    # "ex":Ljava/lang/IllegalAccessException;
    :cond_16
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    move-object/from16 v67, v0

    invoke-interface/range {v67 .. v67}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_4
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_4 .. :try_end_4} :catch_5

    move-result v67

    goto/16 :goto_7

    :catch_5
    move-exception v29

    .local v29, "e":Ljava/lang/IncompatibleClassChangeError;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move/from16 v0, v68

    move-object/from16 v1, v67

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .end local v15    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v29    # "e":Ljava/lang/IncompatibleClassChangeError;
    :cond_17
    if-eqz v19, :cond_19

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v68 .. v68}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v67

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v68, v0

    if-eqz v40, :cond_18

    move/from16 v67, v40

    :goto_12
    move/from16 v0, v67

    move-object/from16 v1, v68

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    :cond_18
    const/16 v67, 0x1

    goto :goto_12

    :cond_19
    if-eqz v40, :cond_1b

    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v67

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    invoke-static/range {v40 .. v40}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v67

    if-nez v67, :cond_1a

    const/16 v54, 0x1

    :goto_13
    goto/16 :goto_8

    :cond_1a
    const/16 v54, 0x0

    goto :goto_13

    :cond_1b
    if-eqz v49, :cond_1c

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v67

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    const/16 v40, 0x3

    move/from16 v0, v40

    move-object/from16 v1, v67

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    :cond_1c
    if-eqz v46, :cond_21

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v69, v0

    and-int/lit8 v67, v46, 0x2

    if-eqz v67, :cond_1f

    const/16 v67, 0x1

    move/from16 v68, v67

    :goto_14
    and-int/lit8 v67, v46, 0x4

    if-eqz v67, :cond_20

    const/16 v67, 0x1

    :goto_15
    move/from16 v0, v68

    move/from16 v1, v67

    invoke-static {v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v69

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    const/16 v40, 0x2

    and-int/lit8 v67, v46, 0x2

    if-eqz v67, :cond_1d

    move/from16 v0, v40

    or-int/lit16 v0, v0, 0x1000

    move/from16 v40, v0

    :cond_1d
    and-int/lit8 v67, v46, 0x4

    if-eqz v67, :cond_1e

    move/from16 v0, v40

    or-int/lit16 v0, v0, 0x2000

    move/from16 v40, v0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    move/from16 v0, v40

    move-object/from16 v1, v67

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    :cond_1f
    const/16 v67, 0x0

    move/from16 v68, v67

    goto :goto_14

    :cond_20
    const/16 v67, 0x0

    goto :goto_15

    :cond_21
    if-nez v12, :cond_22

    const/16 v67, -0x1

    move/from16 v0, v67

    if-eq v11, v0, :cond_23

    :cond_22
    const/16 v40, 0x1

    packed-switch v11, :pswitch_data_3

    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .local v16, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_16
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v67

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    move/from16 v0, v40

    move-object/from16 v1, v67

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_6f
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v40

    or-int/lit16 v0, v0, 0x4000

    move/from16 v40, v0

    goto :goto_16

    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_70
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v40

    or-int/lit16 v0, v0, 0x2000

    move/from16 v40, v0

    goto :goto_16

    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_71
    sget-object v16, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v40

    or-int/lit16 v0, v0, 0x1000

    move/from16 v40, v0

    goto :goto_16

    .end local v16    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v67

    if-eqz v67, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    if-eqz v67, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move-object/from16 v0, v68

    move-object/from16 v1, v67

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move/from16 v0, v68

    move-object/from16 v1, v67

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    :cond_24
    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_8

    :cond_25
    if-eqz v30, :cond_26

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v67

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    move/from16 v0, v68

    move-object/from16 v1, v67

    iput v0, v1, Landroid/widget/Editor;->mInputType:I

    goto/16 :goto_8

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    if-eqz v67, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    move-object/from16 v0, v68

    move-object/from16 v1, v67

    iput-object v0, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    :cond_27
    packed-switch v14, :pswitch_data_4

    goto/16 :goto_8

    :pswitch_72
    sget-object v13, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto/16 :goto_8

    :pswitch_73
    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_8

    :pswitch_74
    sget-object v13, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_8

    :pswitch_75
    sget-object v67, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    :pswitch_76
    sget-object v67, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    :pswitch_77
    sget-object v67, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    :pswitch_78
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v67

    if-eqz v67, :cond_28

    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    :goto_17
    sget-object v67, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9

    :cond_28
    const/16 v67, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_17

    :cond_29
    const/high16 v67, -0x1000000

    invoke-static/range {v67 .. v67}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v58

    goto/16 :goto_a

    .end local v58    # "textColor":Landroid/content/res/ColorStateList;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    if-eqz v67, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    move/from16 v67, v0

    move/from16 v0, v67

    and-int/lit16 v0, v0, 0xfff

    move/from16 v67, v0

    const/16 v68, 0x81

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_c

    goto/16 :goto_b

    :cond_2b
    sget-object v67, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_c

    :cond_2c
    const/16 v34, 0x0

    goto/16 :goto_d

    .restart local v34    # "focusable":Z
    :cond_2d
    const/16 v17, 0x0

    goto/16 :goto_e

    .restart local v17    # "clickable":Z
    :cond_2e
    const/16 v42, 0x0

    goto/16 :goto_f

    .restart local v10    # "attr":I
    .restart local v42    # "longClickable":Z
    :sswitch_0
    move/from16 v0, v34

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v34

    goto/16 :goto_11

    :sswitch_1
    move/from16 v0, v17

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    goto/16 :goto_11

    :sswitch_2
    move/from16 v0, v42

    invoke-virtual {v6, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v42

    goto/16 :goto_11

    .end local v10    # "attr":I
    :cond_2f
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    if-eqz v67, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    if-eqz v67, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    move-object/from16 v67, v0

    if-eqz v67, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    instance-of v0, v0, Landroid/text/Editable;

    move/from16 v67, v0

    if-eqz v67, :cond_31

    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnableUndoRedo:Z

    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getImportantForAccessibility()I

    move-result v67

    if-nez v67, :cond_32

    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    :cond_32
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHoverUIFeatureLevel()I

    move-result v67

    const/16 v68, 0x2

    move/from16 v0, v67

    move/from16 v1, v68

    if-lt v0, v1, :cond_33

    const/16 v67, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHoverPopupType(I)V

    :cond_33
    sget-boolean v67, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v67, :cond_34

    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->fromResLock:Z

    :cond_34
    new-instance v67, Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$IClipboardDataPasteEventImpl;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mWBMaxLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z

    move-result v67

    if-eqz v67, :cond_35

    new-instance v67, Landroid/widget/TextView$PenSelectVibrator;

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$PenSelectVibrator;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    new-instance v67, Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, v67

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    :cond_35
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_6
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_10
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_41
        :pswitch_40
        :pswitch_42
        :pswitch_43
        :pswitch_34
        :pswitch_2f
        :pswitch_1a
        :pswitch_1b
        :pswitch_2a
        :pswitch_24
        :pswitch_2e
        :pswitch_28
        :pswitch_18
        :pswitch_31
        :pswitch_30
        :pswitch_39
        :pswitch_37
        :pswitch_23
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_29
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_32
        :pswitch_48
        :pswitch_33
        :pswitch_19
        :pswitch_36
        :pswitch_38
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_11
        :pswitch_3a
        :pswitch_1d
        :pswitch_1f
        :pswitch_1c
        :pswitch_1e
        :pswitch_22
        :pswitch_49
        :pswitch_4a
        :pswitch_35
        :pswitch_4b
        :pswitch_4f
        :pswitch_50
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_52
        :pswitch_66
        :pswitch_67
        :pswitch_10
        :pswitch_10
        :pswitch_6a
        :pswitch_10
        :pswitch_10
        :pswitch_51
        :pswitch_69
        :pswitch_6b
        :pswitch_20
        :pswitch_21
        :pswitch_47
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5c
        :pswitch_10
        :pswitch_10
        :pswitch_5b
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_65
        :pswitch_63
        :pswitch_64
        :pswitch_68
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x1e -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_70
        :pswitch_71
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_72
        :pswitch_73
        :pswitch_74
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/widget/TextView;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TextView;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$1600(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/widget/TextView;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    iget v0, p0, Landroid/widget/TextView;->TOUCH_DELTA:F

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/TextView;)Lcom/samsung/android/penselect/PenSelectionController;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableMultiSelection:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleLocked()V

    return-void
.end method

.method static synthetic access$3000()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/widget/TextView;->mIsFindTargetView:Z

    return v0
.end method

.method static synthetic access$3002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Landroid/widget/TextView;->mIsFindTargetView:Z

    return p0
.end method

.method static synthetic access$3100()Landroid/widget/TextView;
    .locals 1

    .prologue
    sget-object v0, Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3102(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    sput-object p0, Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3200(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->canTextMultiSelection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300()Landroid/widget/TextView;
    .locals 1

    .prologue
    sget-object v0, Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3302(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    sput-object p0, Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3400()J
    .locals 2

    .prologue
    sget-wide v0, Landroid/widget/TextView;->mLastHoveredTime:J

    return-wide v0
.end method

.method static synthetic access$3500(Landroid/widget/TextView;)Landroid/widget/Editor;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/widget/TextView;III)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;->checkPosInView(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/TextView;III)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;->checkPosOnText(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->hideMultiSelectPopupWindow()V

    return-void
.end method

.method static synthetic access$402(Landroid/widget/TextView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/TextView;->mSelectall:Z

    return p1
.end method

.method static synthetic access$4100(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4402(Landroid/widget/TextView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    return p1
.end method

.method static synthetic access$4502(Landroid/widget/TextView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    return p1
.end method

.method static synthetic access$4600(Landroid/widget/TextView;II)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;->selectCurrentWordForMultiSelection(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->showMultiSelectPopupWindow()V

    return-void
.end method

.method static synthetic access$4800(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectionEnabled()Z

    move-result v0

    return v0
.end method

.method private applySingleLine(ZZZ)V
    .locals 1
    .param p1, "singleLine"    # Z
    .param p2, "applyTransformation"    # Z
    .param p3, "changeMaxLines"    # Z

    .prologue
    const/4 v0, 0x1

    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method private assumeLayout()V
    .locals 7

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v0, v3

    .local v1, "width":I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    .local v2, "physicalWidth":I
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1

    const/high16 v1, 0x100000

    :cond_1
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    return-void
.end method

.method private boostCpuClock()V
    .locals 7

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mBoostHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DVFSHelper;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SHARE_LINK_BOOST"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/widget/TextView;->mBoostHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Landroid/widget/TextView;->mBoostHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v6

    .local v6, "freqTable":[I
    if-eqz v6, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mBoostHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .end local v6    # "freqTable":[I
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mBoostHelper:Landroid/os/DVFSHelper;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    return-void
.end method

.method private bringTextIntoView()Z
    .locals 15

    .prologue
    const/16 v14, 0x50

    const/4 v11, 0x1

    invoke-direct {p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .local v4, "layout":Landroid/text/Layout;
    :goto_0
    const/4 v6, 0x0

    .local v6, "line":I
    iget v12, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v12, v12, 0x70

    if-ne v12, v14, :cond_0

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    :cond_0
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .local v0, "a":Landroid/text/Layout$Alignment;
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .local v1, "dir":I
    iget v12, p0, Landroid/widget/TextView;->mRight:I

    iget v13, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v2, v12, v13

    .local v2, "hspace":I
    iget v12, p0, Landroid/widget/TextView;->mBottom:I

    iget v13, p0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v13

    sub-int v10, v12, v13

    .local v10, "vspace":I
    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .local v3, "ht":I
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_5

    if-ne v1, v11, :cond_4

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    :cond_1
    :goto_1
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_9

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->floor(F)F

    move-result v12

    float-to-int v5, v12

    .local v5, "left":I
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->ceil(F)F

    move-result v12

    float-to-int v7, v12

    .local v7, "right":I
    sub-int v12, v7, v5

    if-ge v12, v2, :cond_7

    add-int v12, v7, v5

    div-int/lit8 v12, v12, 0x2

    div-int/lit8 v13, v2, 0x2

    sub-int v8, v12, v13

    .end local v5    # "left":I
    .end local v7    # "right":I
    .local v8, "scrollx":I
    :goto_2
    if-ge v3, v10, :cond_b

    const/4 v9, 0x0

    .local v9, "scrolly":I
    :goto_3
    iget v12, p0, Landroid/widget/TextView;->mScrollX:I

    if-ne v8, v12, :cond_2

    iget v12, p0, Landroid/widget/TextView;->mScrollY:I

    if-eq v9, v12, :cond_d

    :cond_2
    invoke-virtual {p0, v8, v9}, Landroid/widget/TextView;->scrollTo(II)V

    :goto_4
    return v11

    .end local v0    # "a":Landroid/text/Layout$Alignment;
    .end local v1    # "dir":I
    .end local v2    # "hspace":I
    .end local v3    # "ht":I
    .end local v4    # "layout":Landroid/text/Layout;
    .end local v6    # "line":I
    .end local v8    # "scrollx":I
    .end local v9    # "scrolly":I
    .end local v10    # "vspace":I
    :cond_3
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto :goto_0

    .restart local v0    # "a":Landroid/text/Layout$Alignment;
    .restart local v1    # "dir":I
    .restart local v2    # "hspace":I
    .restart local v3    # "ht":I
    .restart local v4    # "layout":Landroid/text/Layout;
    .restart local v6    # "line":I
    .restart local v10    # "vspace":I
    :cond_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_5
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_1

    if-ne v1, v11, :cond_6

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_5
    goto :goto_1

    :cond_6
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_5

    .restart local v5    # "left":I
    .restart local v7    # "right":I
    :cond_7
    if-gez v1, :cond_8

    sub-int v8, v7, v2

    .restart local v8    # "scrollx":I
    goto :goto_2

    .end local v8    # "scrollx":I
    :cond_8
    move v8, v5

    .restart local v8    # "scrollx":I
    goto :goto_2

    .end local v5    # "left":I
    .end local v7    # "right":I
    .end local v8    # "scrollx":I
    :cond_9
    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v12, :cond_a

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineRight(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->ceil(F)F

    move-result v12

    float-to-int v7, v12

    .restart local v7    # "right":I
    sub-int v8, v7, v2

    .restart local v8    # "scrollx":I
    goto :goto_2

    .end local v7    # "right":I
    .end local v8    # "scrollx":I
    :cond_a
    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    invoke-static {v12}, Landroid/util/FloatMath;->floor(F)F

    move-result v12

    float-to-int v8, v12

    .restart local v8    # "scrollx":I
    goto :goto_2

    :cond_b
    iget v12, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v12, v12, 0x70

    if-ne v12, v14, :cond_c

    sub-int v9, v3, v10

    .restart local v9    # "scrolly":I
    goto :goto_3

    .end local v9    # "scrolly":I
    :cond_c
    const/4 v9, 0x0

    .restart local v9    # "scrolly":I
    goto :goto_3

    :cond_d
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private canMarquee()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .local v0, "width":I
    if-lez v0, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private canSelectText()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canTextMultiSelection()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableMultiSelection:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isCoverOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isFinishSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isCarMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->isDisabledStylusPenEvent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForRelayout()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x2

    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v3, :cond_6

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v3, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_6

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    .local v7, "oldht":I
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .local v1, "want":I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_2

    move v2, v6

    .local v2, "hintWant":I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v8, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    .end local v7    # "oldht":I
    :goto_1
    return-void

    .restart local v1    # "want":I
    .restart local v7    # "oldht":I
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0

    .restart local v2    # "hintWant":I
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    .end local v7    # "oldht":I
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1
.end method

.method private checkForResize()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v2, 0x0

    .local v2, "sizeChanged":Z
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .local v0, "desiredHeight":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    if-eq v0, v3, :cond_1

    const/4 v2, 0x1

    .end local v0    # "desiredHeight":I
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .local v1, "root":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/ViewRootImpl;->setDrawDuringWindowsAnimating(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .end local v1    # "root":Landroid/view/ViewRootImpl;
    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v3, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .restart local v0    # "desiredHeight":I
    iget v3, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v0, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkPosInView(III)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "overplus"    # I

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->isVisibleToUser()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    .local v1, "startPos":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    neg-int v3, p3

    neg-int v4, p3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-lt p1, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-gt p1, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-lt p2, v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkPosOnText(III)Z
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "overplus"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    const/4 v11, 0x2

    new-array v8, v11, [I

    .local v8, "screenOffsetOfView":[I
    invoke-virtual {p0, v8}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    const/4 v11, 0x0

    aget v11, v8, v11

    sub-int v6, p1, v11

    .local v6, "posX":I
    const/4 v11, 0x1

    aget v11, v8, v11

    sub-int v7, p2, v11

    .local v7, "posY":I
    int-to-float v11, v7

    invoke-virtual {p0, v11}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .local v3, "lineStart":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v12

    add-int v4, v11, v12

    .local v4, "lineTop":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v12

    add-int v2, v11, v12

    .local v2, "lineBtm":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v11

    float-to-int v5, v11

    .local v5, "lineWidth":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v12

    add-int v10, v11, v12

    .local v10, "textStartX":I
    const/4 v9, 0x0

    .local v9, "textEndX":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    move v9, v10

    sub-int v10, v9, v5

    :goto_1
    sub-int v11, v10, p3

    if-lt v6, v11, :cond_1

    add-int v11, v9, p3

    if-lt v11, v6, :cond_1

    if-lt v7, v4, :cond_1

    if-le v7, v2, :cond_3

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    add-int v9, v10, v5

    goto :goto_1

    :cond_3
    const/4 v11, 0x1

    goto :goto_0
.end method

.method private compressText(F)Z
    .locals 7
    .param p1, "width"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/TextView;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    cmpl-float v4, p1, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-boolean v4, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .local v1, "textWidth":F
    add-float v4, v1, v5

    sub-float/2addr v4, p1

    div-float v0, v4, p1

    .local v0, "overflow":F
    cmpl-float v4, v0, v6

    if-lez v4, :cond_0

    const v4, 0x3d8f5c29    # 0.07f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float v4, v5, v0

    const v5, 0x3ba3d70a    # 0.005f

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextScaleX(F)V

    new-instance v2, Landroid/widget/TextView$2;

    invoke-direct {v2, p0}, Landroid/widget/TextView$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    move v2, v3

    goto :goto_0
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .local v0, "horizontalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    .local v1, "verticalOffset":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private createEditorIfNeeded()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor;

    invoke-direct {v0, p0}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    :cond_0
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 6
    .param p0, "layout"    # Landroid/text/Layout;

    .prologue
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .local v2, "n":I
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "max":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    const/4 v4, -0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    goto :goto_1
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "otherEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move v3, v4

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_2

    iput-boolean v4, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_2
    sparse-switch p1, :sswitch_data_0

    :cond_3
    :goto_1
    const/16 v2, 0x43

    if-ne p1, v2, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_8

    iput v4, p0, Landroid/widget/TextView;->mLastKeyCode:I

    :goto_2
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    .local v0, "doDown":Z
    if-eqz p3, :cond_a

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v7, p0, v2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v1

    .local v1, "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    goto :goto_0

    .end local v0    # "doDown":Z
    .end local v1    # "handled":Z
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v4, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v5, v2, Landroid/widget/Editor$InputContentType;->enterDown:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_5

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-eqz v2, :cond_0

    move v3, v4

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v4

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnTab()Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v4

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto/16 :goto_0

    :sswitch_4
    iget v2, p0, Landroid/widget/TextView;->mLastAction:I

    if-eq v2, v6, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    invoke-virtual {p0, v2, v7, v8}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;II)Z

    goto/16 :goto_1

    :cond_8
    iput p1, p0, Landroid/widget/TextView;->mLastKeyCode:I

    goto/16 :goto_2

    .restart local v0    # "doDown":Z
    .restart local v1    # "handled":Z
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .end local v1    # "handled":Z
    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v2, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v7, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    .restart local v1    # "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    if-eqz v1, :cond_b

    move v3, v5

    goto/16 :goto_0

    .end local v1    # "handled":Z
    :catch_0
    move-exception v2

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw v2

    .end local v0    # "doDown":Z
    :cond_b
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_e

    const/4 v0, 0x1

    .restart local v0    # "doDown":Z
    if-eqz p3, :cond_c

    :try_start_1
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v7, p0, v2, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .restart local v1    # "handled":Z
    const/4 v0, 0x0

    if-nez v1, :cond_0

    .end local v1    # "handled":Z
    :cond_c
    :goto_4
    if-eqz v0, :cond_e

    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v7, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_d

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_d

    iput-boolean v5, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_d
    move v3, v6

    goto/16 :goto_0

    .end local v0    # "doDown":Z
    :cond_e
    iget-boolean v2, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    if-eqz v2, :cond_f

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v2

    if-nez v2, :cond_f

    move v2, v3

    :goto_5
    move v3, v2

    goto/16 :goto_0

    :cond_f
    move v2, v4

    goto :goto_5

    .restart local v0    # "doDown":Z
    :catch_1
    move-exception v2

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x17 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_0
        0x43 -> :sswitch_4
    .end sparse-switch
.end method

.method private fixFocusableAndClickableSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    goto :goto_0
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 6
    .param p1, "forceNormal"    # Z

    .prologue
    const/4 v4, 0x0

    .local v4, "voffset":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .local v1, "gravity":I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .local v2, "l":Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :cond_0
    const/16 v5, 0x50

    if-eq v1, v5, :cond_1

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v0

    .local v0, "boxht":I
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .local v3, "textht":I
    if-ge v3, v0, :cond_1

    const/16 v5, 0x30

    if-ne v1, v5, :cond_2

    sub-int v4, v0, v3

    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_1
    :goto_0
    return v4

    .restart local v0    # "boxht":I
    .restart local v3    # "textht":I
    :cond_2
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_0
.end method

.method private getBoxHeight(Landroid/text/Layout;)I
    .locals 4
    .param p1, "l"    # Landroid/text/Layout;

    .prologue
    iget-object v2, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    invoke-static {v2}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .local v0, "opticalInsets":Landroid/graphics/Insets;
    :goto_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    .local v1, "padding":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v2, v3

    return v2

    .end local v0    # "opticalInsets":Landroid/graphics/Insets;
    .end local v1    # "padding":I
    :cond_0
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_0

    .restart local v0    # "opticalInsets":Landroid/graphics/Insets;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v3

    add-int v1, v2, v3

    goto :goto_1
.end method

.method private getDesiredHeight()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-direct {p0, v1, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_0

    :goto_0
    invoke-direct {p0, v2, v0}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .locals 7
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "cap"    # Z

    .prologue
    const/4 v6, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .local v2, "linecount":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .local v3, "pad":I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .local v0, "desired":I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_1

    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/2addr v0, v3

    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v4, v6, :cond_5

    if-eqz p2, :cond_3

    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_3

    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    if-eqz v1, :cond_2

    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    add-int/2addr v0, v3

    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    :cond_3
    :goto_1
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v6, :cond_6

    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_5
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "line"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    if-nez p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method private getLayoutAlignment()Landroid/text/Layout$Alignment;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .local v0, "alignment":Landroid/text/Layout$Alignment;
    :goto_0
    return-object v0

    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_0
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    const v2, 0x800007

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    :goto_1
    goto :goto_0

    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    :goto_2
    goto :goto_0

    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_2

    :sswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :sswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    goto :goto_0

    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_2

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    :goto_3
    goto :goto_0

    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_3

    :pswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .restart local v0    # "alignment":Landroid/text/Layout$Alignment;
    :goto_4
    goto :goto_0

    .end local v0    # "alignment":Landroid/text/Layout$Alignment;
    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_1
    .end sparse-switch
.end method

.method private getOffsetAtCoordinate(IF)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "x"    # F

    .prologue
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method private getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .local v1, "screenPointOfView":Landroid/graphics/Point;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .local v0, "screenOffsetOfView":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    return-object v1
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/content/res/TypedArray;
    .param p2, "def"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .local v0, "colors":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    .end local p2    # "def":I
    :goto_0
    return p2

    .restart local p2    # "def":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    goto :goto_0
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    sget-object v4, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .local v3, "colors":Landroid/content/res/ColorStateList;
    if-nez v3, :cond_1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .local v1, "ap":I
    if-eqz v1, :cond_1

    sget-object v4, Landroid/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .local v2, "appearance":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .end local v1    # "ap":I
    .end local v2    # "appearance":Landroid/content/res/TypedArray;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3
.end method

.method private getTextForRectSelection(Landroid/graphics/Rect;)Ljava/lang/CharSequence;
    .locals 23
    .param p1, "selectedRect"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v15

    .local v15, "text":Ljava/lang/CharSequence;
    if-nez v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    :cond_0
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    :cond_1
    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_2
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .local v20, "tvRect":Landroid/graphics/Rect;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v12

    .local v12, "startPos":Landroid/graphics/Point;
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v19

    .local v19, "topPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    .local v7, "leftPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    .local v8, "lineCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/text/Layout;->getLineTop(I)I

    move-result v21

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int v21, v21, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    sub-int v17, v21, v22

    .local v17, "textTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v21, v0

    add-int/lit8 v22, v8, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v21

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int v21, v21, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v22

    sub-int v16, v21, v22

    .local v16, "textBtm":I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v21

    if-nez v21, :cond_3

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    sub-int v13, v21, v22

    .local v13, "startX":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    sub-int v14, v21, v22

    .local v14, "startY":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    sub-int v5, v21, v22

    .local v5, "endX":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    sub-int v6, v21, v22

    .local v6, "endY":I
    int-to-float v0, v14

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v10

    .local v10, "startLine":I
    int-to-float v0, v13

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v10, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v11

    .local v11, "startOffset":I
    int-to-float v0, v6

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v3

    .local v3, "endLine":I
    int-to-float v0, v5

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v3, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v4

    .local v4, "endOffset":I
    if-ltz v11, :cond_4

    if-ltz v4, :cond_4

    if-ne v11, v4, :cond_5

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_5
    if-le v11, v4, :cond_6

    move/from16 v18, v11

    .local v18, "tmp":I
    move v11, v4

    move/from16 v4, v18

    .end local v18    # "tmp":I
    :cond_6
    invoke-interface {v15, v11, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .local v9, "retText":Ljava/lang/CharSequence;
    goto/16 :goto_0
.end method

.method private getTextServicesLocale(Z)Ljava/util/Locale;
    .locals 1
    .param p1, "allowNullLocale"    # Z

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextServicesLocaleAsync()V

    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    goto :goto_0
.end method

.method private getUpdatedHighlightPath()Landroid/graphics/Path;
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v1, 0x0

    .local v1, "highlight":Landroid/graphics/Path;
    iget-object v2, p0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .local v2, "highlightPaint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .local v8, "selStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    .local v7, "selEnd":I
    iget-boolean v10, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v9

    .local v9, "text":Ljava/lang/CharSequence;
    if-nez v9, :cond_0

    iput-boolean v14, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    const/4 v10, 0x0

    .end local v9    # "text":Ljava/lang/CharSequence;
    :goto_0
    return-object v10

    .restart local v9    # "text":Ljava/lang/CharSequence;
    :cond_0
    iget-boolean v10, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v10, :cond_1

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_1
    iget-object v10, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    move-object v10, v9

    check-cast v10, Landroid/text/Spannable;

    invoke-static {v10}, Landroid/text/MultiSelection;->getMultiSelectionStart(Landroid/text/Spannable;)[I

    move-result-object v6

    .local v6, "multiSelStart":[I
    move-object v10, v9

    check-cast v10, Landroid/text/Spannable;

    invoke-static {v10}, Landroid/text/MultiSelection;->getMultiSelectionEnd(Landroid/text/Spannable;)[I

    move-result-object v5

    .local v5, "multiSelEnd":[I
    check-cast v9, Landroid/text/Spannable;

    .end local v9    # "text":Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v4

    .local v4, "multiSelCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_2

    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    aget v11, v6, v3

    aget v12, v5, v3

    iget-object v13, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v10, v11, v12, v13}, Landroid/text/Layout;->addSelectionPath(IILandroid/graphics/Path;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v14, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .end local v3    # "i":I
    .end local v4    # "multiSelCount":I
    .end local v5    # "multiSelEnd":[I
    .end local v6    # "multiSelStart":[I
    :cond_3
    iget-object v10, p0, Landroid/widget/TextView;->mMultiHighlightPaint:Landroid/graphics/Paint;

    iget v11, p0, Landroid/widget/TextView;->mMultiHighlightColor:I

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v10, p0, Landroid/widget/TextView;->mMultiHighlightPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v10, v1

    goto :goto_0

    :cond_4
    iget-object v10, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_5
    if-ltz v8, :cond_8

    if-ne v8, v7, :cond_b

    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v10, :cond_8

    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v10}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-object v12, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-wide v12, v12, Landroid/widget/Editor;->mShowCursor:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    rem-long/2addr v10, v12

    const-wide/16 v12, 0x1f4

    cmp-long v10, v10, v12

    if-gez v10, :cond_8

    iget-boolean v10, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v10, :cond_6

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_6
    iget-object v10, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v11, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v10, v8, v11, v12}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v10}, Landroid/widget/Editor;->updateCursorsPositions()V

    iput-boolean v14, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_7
    const/4 v0, 0x0

    .local v0, "cursorWidth":I
    iget-object v10, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v10, v10, Landroid/text/TextPaint;->density:F

    const/high16 v11, 0x40800000    # 4.0f

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_9

    const/4 v0, 0x5

    :goto_2
    iget v10, p0, Landroid/widget/TextView;->mCurTextColor:I

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v10, v0

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .end local v0    # "cursorWidth":I
    :cond_8
    :goto_3
    move-object v10, v1

    goto/16 :goto_0

    .restart local v0    # "cursorWidth":I
    :cond_9
    iget-object v10, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v10, v10, Landroid/text/TextPaint;->density:F

    const/high16 v11, 0x40000000    # 2.0f

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_a

    const/4 v0, 0x3

    goto :goto_2

    .line 1766
    :cond_a
    const/4 v0, 0x1

    goto :goto_2

    .end local v0    # "cursorWidth":I
    :cond_b
    iget-boolean v10, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v10, :cond_d

    iget-object v10, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v10, :cond_c

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_c
    iget-object v10, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v11, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v10, v8, v7, v11}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    iput-boolean v14, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_d
    iget v10, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    goto :goto_3
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideMultiSelectPopupWindow()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->hideMultiSelectPopupWindow()V

    return-void
.end method

.method private invalidateCursor(III)V
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    .prologue
    if-gez p1, :cond_0

    if-gez p2, :cond_0

    if-ltz p3, :cond_1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "start":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "end":I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_1
    return-void
.end method

.method private isCarMode()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "car_mode_on"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isCoverOpened()Z
    .locals 5

    .prologue
    iget-object v3, p0, Landroid/widget/TextView;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v3, :cond_1

    :try_start_0
    const-string v3, "cover"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v2    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "TextView"

    const-string v4, "isCoverOpened() : RemoteException!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "TextView"

    const-string v4, "isCoverOpened() : mCoverManager is null!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isDisabledStylusPenEvent()Z
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "packName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "flipboard.boxer.app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFinishSetupWizard()Z
    .locals 2

    .prologue
    const-string v0, "FINISH"

    const-string v1, "persist.sys.setupwizard"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLinkPreviewEnabled(I)Z
    .locals 1
    .param p1, "toolType"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->isLinkPreviewSettingsEnabled()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isLinkPreviewSettingsEnabled()Z
    .locals 6

    .prologue
    const/4 v5, -0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .local v0, "isSPenHoveringOn":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_link_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    return v1

    .end local v0    # "isSPenHoveringOn":Z
    :cond_0
    move v0, v2

    goto :goto_0

    .restart local v0    # "isSPenHoveringOn":Z
    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static isMultilineInputType(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    const v0, 0x2000f

    and-int/2addr v0, p0

    const v1, 0x20001

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .prologue
    and-int/lit16 v0, p0, 0xfff

    .local v0, "variation":I
    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isShowingHint()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVisiblePasswordInputType(I)Z
    .locals 2
    .param p0, "inputType"    # I

    .prologue
    and-int/lit16 v0, p0, 0xfff

    .local v0, "variation":I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logLetterMode(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit8 v0, p1, 0xf

    .local v0, "cls":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    .local v1, "shift":I
    and-int/lit16 v2, p1, 0x1000

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    :goto_1
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>KEYSELECT: SHIFT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    and-int/lit16 v2, p1, 0x2000

    if-eqz v2, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    and-int/lit16 v2, p1, 0x4000

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 37
    .param p1, "wantWidth"    # I
    .param p2, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p3, "ellipsisWidth"    # I
    .param p4, "alignment"    # Landroid/text/Layout$Alignment;
    .param p5, "shouldEllipsize"    # Z
    .param p6, "effectiveEllipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "useSaved"    # Z

    .prologue
    const/4 v15, 0x0

    .local v15, "result":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    .local v17, "transformed":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mUseDisplayText:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    :cond_0
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->KEYWORD:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    if-ltz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .local v5, "len":I
    new-array v3, v5, [C

    .local v3, "chars":[C
    new-array v9, v5, [F

    .local v9, "widths":[F
    const/4 v2, 0x1

    new-array v0, v2, [C

    move-object/from16 v30, v0

    const/4 v2, 0x0

    const/16 v4, 0x2026

    aput-char v4, v30, v2

    .local v30, "ELLIPSIS_NORMAL":[C
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v5, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    new-instance v34, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    sub-int v4, v5, v4

    move-object/from16 v0, v34

    invoke-direct {v0, v3, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .local v34, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v36

    .local v36, "tmpwid":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v2, v0, v4, v6}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v31

    .local v31, "ellipsWid":F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    if-nez v2, :cond_3

    sget-object p6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .end local v3    # "chars":[C
    .end local v5    # "len":I
    .end local v9    # "widths":[F
    .end local v15    # "result":Landroid/text/Layout;
    .end local v30    # "ELLIPSIS_NORMAL":[C
    .end local v31    # "ellipsWid":F
    .end local v34    # "s":Ljava/lang/String;
    .end local v36    # "tmpwid":F
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_b

    new-instance v15, Landroid/text/DynamicLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_a

    move-object/from16 v25, p6

    :goto_1
    move/from16 v19, p1

    move-object/from16 v20, p4

    move/from16 v26, p3

    invoke-direct/range {v15 .. v26}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .restart local v15    # "result":Landroid/text/Layout;
    :cond_2
    :goto_2
    return-object v15

    .restart local v3    # "chars":[C
    .restart local v5    # "len":I
    .restart local v9    # "widths":[F
    .restart local v30    # "ELLIPSIS_NORMAL":[C
    .restart local v31    # "ellipsWid":F
    .restart local v34    # "s":Ljava/lang/String;
    .restart local v36    # "tmpwid":F
    :cond_3
    add-float v2, v36, v31

    move/from16 v0, p3

    int-to-float v4, v0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_4

    sget-object p6, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_4
    const/16 v32, 0x0

    .local v32, "i":I
    const/16 v35, 0x0

    .local v35, "sum":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v7, v5

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v33

    .local v33, "ret":F
    const/16 v32, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move/from16 v0, v32

    if-ge v0, v2, :cond_5

    move/from16 v0, v35

    int-to-float v2, v0

    aget v4, v9, v32

    add-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v2, v0

    cmpg-float v2, v31, v2

    if-gtz v2, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move/from16 v0, v32

    if-ge v0, v2, :cond_9

    const/4 v2, 0x0

    const/4 v4, 0x0

    aget-char v4, v30, v4

    aput-char v4, v3, v2

    const/16 v32, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    move/from16 v0, v32

    if-ge v0, v2, :cond_7

    const v2, 0xfeff

    aput-char v2, v3, v32

    add-int/lit8 v32, v32, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v32, v32, 0x1

    goto :goto_3

    :cond_7
    new-instance v34, Ljava/lang/String;

    .end local v34    # "s":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-direct {v0, v3, v2, v5}, Ljava/lang/String;-><init>([CII)V

    .restart local v34    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_8

    new-instance v14, Landroid/text/SpannableString;

    move-object/from16 v0, v34

    invoke-direct {v14, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v14, "ss":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    const/4 v11, 0x0

    const-class v13, Ljava/lang/Object;

    const/4 v15, 0x0

    move v12, v5

    invoke-static/range {v10 .. v15}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .end local v15    # "result":Landroid/text/Layout;
    move-object/from16 v17, v14

    .end local v14    # "ss":Landroid/text/SpannableString;
    :goto_5
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_0

    .restart local v15    # "result":Landroid/text/Layout;
    :cond_8
    move-object/from16 v17, v34

    goto :goto_5

    :cond_9
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_0

    .end local v3    # "chars":[C
    .end local v5    # "len":I
    .end local v9    # "widths":[F
    .end local v15    # "result":Landroid/text/Layout;
    .end local v30    # "ELLIPSIS_NORMAL":[C
    .end local v31    # "ellipsWid":F
    .end local v32    # "i":I
    .end local v33    # "ret":F
    .end local v34    # "s":Ljava/lang/String;
    .end local v35    # "sum":I
    .end local v36    # "tmpwid":F
    :cond_a
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 1767
    :cond_b
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, v17

    invoke-static {v0, v2, v4, v6}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p2

    if-eqz p2, :cond_c

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 1777
    :cond_c
    if-eqz p2, :cond_14

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_f

    if-eqz p6, :cond_d

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p3

    if-gt v2, v0, :cond_f

    :cond_d
    if-eqz p7, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v15

    .restart local v15    # "result":Landroid/text/Layout;
    :goto_6
    if-eqz p7, :cond_2

    move-object v2, v15

    check-cast v2, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto/16 :goto_2

    .end local v15    # "result":Landroid/text/Layout;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    invoke-static/range {v17 .. v24}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v15

    .restart local v15    # "result":Landroid/text/Layout;
    goto :goto_6

    .end local v15    # "result":Landroid/text/Layout;
    :cond_f
    if-eqz p5, :cond_11

    move-object/from16 v0, p2

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_11

    if-eqz p7, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    move-object/from16 v25, p6

    move/from16 v26, p3

    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v15

    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_2

    .end local v15    # "result":Landroid/text/Layout;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p1

    move-object/from16 v20, p4

    move-object/from16 v23, p2

    move-object/from16 v25, p6

    move/from16 v26, p3

    invoke-static/range {v17 .. v26}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v15

    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_2

    .end local v15    # "result":Landroid/text/Layout;
    :cond_11
    if-eqz p5, :cond_13

    new-instance v15, Landroid/text/StaticLayout;

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_7
    move-object/from16 v16, v15

    move/from16 v21, p1

    move-object/from16 v22, p4

    move-object/from16 v27, p6

    move/from16 v28, p3

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_2

    .end local v15    # "result":Landroid/text/Layout;
    :cond_12
    const v29, 0x7fffffff

    goto :goto_7

    :cond_13
    new-instance v15, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v16, v15

    move/from16 v19, p1

    move-object/from16 v20, p4

    invoke-direct/range {v16 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_2

    .end local v15    # "result":Landroid/text/Layout;
    :cond_14
    if-eqz p5, :cond_16

    new-instance v15, Landroid/text/StaticLayout;

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_8
    move-object/from16 v16, v15

    move/from16 v21, p1

    move-object/from16 v22, p4

    move-object/from16 v27, p6

    move/from16 v28, p3

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_2

    .end local v15    # "result":Landroid/text/Layout;
    :cond_15
    const v29, 0x7fffffff

    goto :goto_8

    :cond_16
    new-instance v15, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v16, v15

    move/from16 v19, p1

    move-object/from16 v20, p4

    invoke-direct/range {v16 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .restart local v15    # "result":Landroid/text/Layout;
    goto/16 :goto_2
.end method

.method private nullLayouts()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    :cond_1
    iput-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    iput-object v1, p0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_2
    return-void
.end method

.method private paste(II)V
    .locals 12
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    iget-object v9, p0, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v9}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "clipboard"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_4

    const/4 v4, 0x0

    .local v4, "didFirst":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-ge v6, v9, :cond_2

    invoke-virtual {v0, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .local v7, "paste":Ljava/lang/CharSequence;
    if-eqz v7, :cond_0

    if-nez v4, :cond_1

    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-interface {v9, p1, p2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v4, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    const-string v11, "\n"

    invoke-interface {v9, v10, v11}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    invoke-interface {v9, v10, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .end local v7    # "paste":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    const-wide/16 v10, 0x0

    sput-wide v10, Landroid/widget/TextView;->LAST_CUT_OR_COPY_TIME:J

    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    .end local v4    # "didFirst":Z
    .end local v6    # "i":I
    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/sec/clipboard/ClipboardExManager;->getFrozenState()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    .local v3, "clipdataTemp":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/sec/clipboard/ClipboardExManager;->callPasteApplication(Landroid/sec/clipboard/data/ClipboardData;)V

    goto :goto_2

    .end local v3    # "clipdataTemp":Landroid/sec/clipboard/data/ClipboardData;
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .local v2, "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v7

    .restart local v7    # "paste":Ljava/lang/CharSequence;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_3

    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Spannable;

    invoke-static {v9, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v9, v9, Landroid/text/Spanned;

    if-eqz v9, :cond_6

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v8, "sp":Landroid/text/Spannable;
    move-object v7, v8

    .end local v8    # "sp":Landroid/text/Spannable;
    :cond_6
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Editable;

    invoke-interface {v9, p1, p2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    const-wide/16 v10, 0x0

    sput-wide v10, Landroid/widget/TextView;->LAST_CUT_OR_COPY_TIME:J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v2    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v7    # "paste":Ljava/lang/CharSequence;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/ClassCastException;
    const-string v9, "TextView"

    const-string v10, "skip to paste clipdata - ClassCastException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 23
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v8, 0x0

    .local v8, "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .local v7, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .local v13, "prevString":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;II)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/text/Editable;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v20

    if-nez v20, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v15

    .local v15, "selStart":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v14

    .local v14, "selEnd":I
    const/16 v20, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/16 v20, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v7

    .end local v14    # "selEnd":I
    .end local v15    # "selStart":I
    :cond_2
    const/4 v12, 0x0

    .local v12, "paste":Ljava/lang/CharSequence;
    const/16 v17, -0x1

    .local v17, "stringId":I
    invoke-virtual/range {p1 .. p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-eqz v12, :cond_8

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v20

    if-lez v20, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v7, v12}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v10

    .local v10, "minMax":J
    const/16 v20, 0x0

    invoke-static {v10, v11}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/16 v20, 0x0

    invoke-static {v10, v11}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    check-cast v20, Landroid/text/Spannable;

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mChangedText:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "addedSpaceString":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    new-instance v16, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v16, "sp":Landroid/text/Spannable;
    move-object/from16 v12, v16

    .end local v16    # "sp":Landroid/text/Spannable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    check-cast v20, Landroid/text/Editable;

    move-object/from16 v0, v20

    invoke-interface {v0, v8, v7, v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    if-ne v8, v7, :cond_6

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastAction:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPretextCurPosStart:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    :cond_4
    :goto_3
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mChangedText:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mChangedSize:I

    goto/16 :goto_0

    .end local v4    # "addedSpaceString":Ljava/lang/CharSequence;
    .end local v10    # "minMax":J
    :pswitch_1
    move-object/from16 v18, p1

    check-cast v18, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .local v18, "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual/range {v18 .. v18}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v12

    const v17, #android:string@tw_clipboard_pasted_from_clipboard#t

    goto/16 :goto_1

    .end local v18    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :pswitch_2
    move-object/from16 v5, p1

    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .local v5, "html":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->getText()Ljava/lang/String;

    move-result-object v12

    const v17, #android:string@tw_clipboard_pasted_from_clipboard#t

    goto/16 :goto_1

    .end local v5    # "html":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :pswitch_3
    move-object/from16 v19, p1

    check-cast v19, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .local v19, "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual/range {v19 .. v19}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    const v17, #android:string@tw_clipboard_pasted_from_clipboard#t

    goto/16 :goto_1

    .end local v19    # "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :pswitch_4
    move-object/from16 v9, p1

    check-cast v9, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    .local v9, "multipleUri":Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;->GetMultipleUri()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v12

    const v17, #android:string@tw_clipboard_pasted_from_clipboard#t

    goto/16 :goto_1

    .end local v9    # "multipleUri":Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;
    :pswitch_5
    move-object/from16 v6, p1

    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .local v6, "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v12

    const v17, #android:string@tw_clipboard_pasted_from_clipboard#t

    goto/16 :goto_1

    .end local v6    # "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    .restart local v4    # "addedSpaceString":Ljava/lang/CharSequence;
    .restart local v10    # "minMax":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mChangedText:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mChangedSize:I

    move/from16 v20, v0

    if-lez v20, :cond_4

    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    if-nez v20, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mLastAction:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPretextCurPosStart:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mToast:Landroid/widget/Toast;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_4

    .end local v4    # "addedSpaceString":Ljava/lang/CharSequence;
    .end local v10    # "minMax":J
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private registerForPreDraw()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    :cond_0
    return-void
.end method

.method private registerForStylusPenEvent()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/widget/TextView;->mEnableMultiSelection:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Landroid/widget/TextView;->removeForStylusPenEvent()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->isDisabledStylusPenEvent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Landroid/widget/TextView$StylusEventListener;

    invoke-direct {v1, p0, p0}, Landroid/widget/TextView$StylusEventListener;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewTreeObserver;->addOnStylusButtonEventListener(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    goto :goto_0
.end method

.method private removeForStylusPenEvent()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/TextView;->mStylusEventListener:Landroid/widget/TextView$StylusEventListener;

    goto :goto_0
.end method

.method private removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    .local v5, "text":Landroid/text/Editable;
    invoke-interface {v5, p1, p2, p3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .local v4, "spans":[Ljava/lang/Object;, "[TT;"
    array-length v1, v4

    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .local v3, "spanStart":I
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_0

    if-eq v3, p2, :cond_0

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 3
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .local v1, "spans":[Ljava/lang/Object;
    array-length v0, v1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private requestWritingBuddy()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const-string v1, "TextView"

    const-string v2, "Request WritingBuddy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/TextView;->isWritingBuddyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->show()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    :cond_0
    return-void
.end method

.method private selectCurrentWordForMultiSelection(II)Z
    .locals 13
    .param p1, "minOffset"    # I
    .param p2, "maxOffset"    # I

    .prologue
    const/4 v12, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, "text":Ljava/lang/CharSequence;
    if-nez v4, :cond_0

    move v8, v9

    .end local v4    # "text":Ljava/lang/CharSequence;
    :goto_0
    return v8

    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v8

    if-eqz v8, :cond_1

    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/MultiSelection;->selectAll(Landroid/text/Spannable;)V

    move v8, v10

    goto :goto_0

    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    .local v1, "klass":I
    and-int/lit16 v7, v0, 0xff0

    .local v7, "variation":I
    const/4 v8, 0x2

    if-eq v1, v8, :cond_2

    const/4 v8, 0x3

    if-eq v1, v8, :cond_2

    const/4 v8, 0x4

    if-eq v1, v8, :cond_2

    const/16 v8, 0x10

    if-eq v7, v8, :cond_2

    const/16 v8, 0x20

    if-eq v7, v8, :cond_2

    const/16 v8, 0xd0

    if-eq v7, v8, :cond_2

    const/16 v8, 0xb0

    if-ne v7, v8, :cond_3

    :cond_2
    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/MultiSelection;->selectAll(Landroid/text/Spannable;)V

    move v8, v10

    goto :goto_0

    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_3
    move-object v8, v4

    check-cast v8, Landroid/text/Spanned;

    const-class v11, Landroid/text/style/URLSpan;

    invoke-interface {v8, p1, p2, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/URLSpan;

    .local v6, "urlSpans":[Landroid/text/style/URLSpan;
    array-length v8, v6

    if-lt v8, v10, :cond_6

    aget-object v5, v6, v9

    .local v5, "urlSpan":Landroid/text/style/URLSpan;
    move-object v8, v4

    check-cast v8, Landroid/text/Spanned;

    invoke-interface {v8, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .local v3, "selectionStart":I
    move-object v8, v4

    check-cast v8, Landroid/text/Spanned;

    invoke-interface {v8, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .end local v5    # "urlSpan":Landroid/text/style/URLSpan;
    .local v2, "selectionEnd":I
    :cond_4
    if-ltz v3, :cond_5

    if-gez v2, :cond_9

    :cond_5
    move v8, v9

    goto :goto_0

    .end local v2    # "selectionEnd":I
    .end local v3    # "selectionStart":I
    :cond_6
    iget-object v8, p0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    if-nez v8, :cond_7

    new-instance v8, Landroid/text/method/WordIterator;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v8, p0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    :cond_7
    iget-object v8, p0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    invoke-virtual {v8, v4, p1, p2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    iget-object v8, p0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    invoke-virtual {v8, p1}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v3

    .restart local v3    # "selectionStart":I
    iget-object v8, p0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    invoke-virtual {v8, p2}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v2

    .restart local v2    # "selectionEnd":I
    if-eq v3, v12, :cond_8

    if-eq v2, v12, :cond_8

    if-ne v3, v2, :cond_4

    :cond_8
    move v8, v9

    goto/16 :goto_0

    :cond_9
    if-ge v3, v2, :cond_b

    iput-boolean v9, p0, Landroid/widget/TextView;->mIsTouchDown:Z

    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4, v3, v2}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    iget-object v8, p0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    if-eqz v8, :cond_a

    iget-object v8, p0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    invoke-virtual {v8, v10}, Landroid/widget/TextView$PenSelectVibrator;->playVibrator(I)V

    :cond_a
    move v8, v10

    goto/16 :goto_0

    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_b
    move v8, v9

    goto/16 :goto_0
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    iget-boolean v3, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v3, :cond_1

    if-ge p3, p4, :cond_2

    iget v3, p0, Landroid/widget/TextView;->mLastKeyCode:I

    const/16 v4, 0x43

    if-eq v3, v4, :cond_2

    iget v3, p0, Landroid/widget/TextView;->mLastAction:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;II)Z

    :cond_1
    :goto_1
    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SpellCheckSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    add-int v3, p2, p3

    const-class v4, Landroid/text/style/SuggestionSpan;

    invoke-direct {p0, p2, v3, v4}, Landroid/widget/TextView;->removeIntersectingNonAdjacentSpans(IILjava/lang/Class;)V

    return-void

    :cond_2
    iget v3, p0, Landroid/widget/TextView;->mLastAction:I

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;II)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/widget/TextView;->mLastAction:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;II)Z

    goto :goto_1
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .locals 6
    .param p1, "e"    # Landroid/text/Editable;
    .param p2, "filters"    # [Landroid/text/InputFilter;

    .prologue
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mUndoInputFilter:Landroid/text/InputFilter;

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    .local v3, "undoFilter":Z
    :goto_0
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    instance-of v0, v5, Landroid/text/InputFilter;

    .local v0, "keyFilter":Z
    const/4 v2, 0x0

    .local v2, "num":I
    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    if-eqz v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    if-lez v2, :cond_5

    array-length v5, p2

    add-int/2addr v5, v2

    new-array v1, v5, [Landroid/text/InputFilter;

    .local v1, "nf":[Landroid/text/InputFilter;
    array-length v5, p2

    invoke-static {p2, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    if-eqz v3, :cond_2

    array-length v4, p2

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mUndoInputFilter:Landroid/text/InputFilter;

    aput-object v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    :cond_2
    if-eqz v0, :cond_3

    array-length v4, p2

    add-int v5, v4, v2

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    check-cast v4, Landroid/text/InputFilter;

    aput-object v4, v1, v5

    :cond_3
    invoke-interface {p1, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .end local v0    # "keyFilter":Z
    .end local v1    # "nf":[Landroid/text/InputFilter;
    .end local v2    # "num":I
    .end local v3    # "undoFilter":Z
    :goto_1
    return-void

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_1
.end method

.method private setInputType(IZ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "direct"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    and-int/lit8 v2, p1, 0xf

    .local v2, "cls":I
    if-ne v2, v4, :cond_5

    const v6, 0x8000

    and-int/2addr v6, p1

    if-eqz v6, :cond_1

    move v0, v4

    .local v0, "autotext":Z
    :goto_0
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_2

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .local v1, "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :goto_1
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    .local v3, "input":Landroid/text/method/KeyListener;
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    if-eqz p2, :cond_b

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v3, v4, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    :goto_3
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/TextView;->logLetterMode(I)V

    :cond_0
    return-void

    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_1
    move v0, v5

    goto :goto_0

    .restart local v0    # "autotext":Z
    :cond_2
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_3

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_3
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_4

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_4
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .end local v0    # "autotext":Z
    .end local v1    # "cap":Landroid/text/method/TextKeyListener$Capitalize;
    :cond_5
    const/4 v6, 0x2

    if-ne v2, v6, :cond_8

    and-int/lit16 v6, p1, 0x1000

    if-eqz v6, :cond_6

    move v6, v4

    :goto_4
    and-int/lit16 v7, p1, 0x2000

    if-eqz v7, :cond_7

    :goto_5
    invoke-static {v6, v4}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_6
    move v6, v5

    goto :goto_4

    :cond_7
    move v4, v5

    goto :goto_5

    :cond_8
    const/4 v4, 0x4

    if-ne v2, v4, :cond_9

    and-int/lit16 v4, p1, 0xff0

    sparse-switch v4, :sswitch_data_0

    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_0
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .end local v3    # "input":Landroid/text/method/KeyListener;
    :sswitch_1
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_9
    const/4 v4, 0x3

    if-ne v2, v4, :cond_a

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    .end local v3    # "input":Landroid/text/method/KeyListener;
    :cond_a
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    .restart local v3    # "input":Landroid/text/method/KeyListener;
    goto :goto_2

    :cond_b
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private setInputTypeSingleLine(Z)V
    .locals 3
    .param p1, "singleLine"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, v0, Landroid/widget/Editor;->mInputType:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .locals 2
    .param p1, "input"    # Landroid/text/method/KeyListener;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private setPrimaryClip(Landroid/content/ClipData;)V
    .locals 4
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Landroid/widget/TextView;->LAST_CUT_OR_COPY_TIME:J

    return-void
.end method

.method private setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V
    .locals 2
    .param p1, "clip"    # Landroid/sec/clipboard/data/list/ClipboardDataText;

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/widget/TextView;->LAST_CUT_OR_COPY_TIME:J

    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method private setRelativeDrawablesIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "end"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    move v2, v5

    .local v2, "hasRelativeDrawables":Z
    :goto_0
    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_1
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v5, v6, Landroid/widget/TextView$Drawables;->mOverride:Z

    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .local v3, "state":[I
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p2, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    .end local v0    # "compoundRect":Landroid/graphics/Rect;
    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    .end local v3    # "state":[I
    :cond_2
    return-void

    .end local v2    # "hasRelativeDrawables":Z
    :cond_3
    move v2, v4

    goto :goto_0

    .restart local v0    # "compoundRect":Landroid/graphics/Rect;
    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v2    # "hasRelativeDrawables":Z
    .restart local v3    # "state":[I
    :cond_4
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_1

    :cond_5
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_2
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 22
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;
    .param p3, "notifyBefore"    # Z
    .param p4, "oldlen"    # I

    .prologue
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static/range {p0 .. p1}, Landroid/widget/TextView$FlymeInjector;->pregressEmojiStyle(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextScaleX(F)V

    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_3

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spanned;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->isFadingMarqueeEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    :goto_0
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v14, v4

    .local v14, "n":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v4, v4, v12

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sget-object v8, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v10}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v16

    .local v16, "out":Ljava/lang/CharSequence;
    if-eqz v16, :cond_4

    move-object/from16 p1, v16

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v12    # "i":I
    .end local v14    # "n":I
    .end local v16    # "out":Ljava/lang/CharSequence;
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    goto :goto_0

    .restart local v12    # "i":I
    .restart local v14    # "n":I
    :cond_6
    if-eqz p3, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v5, v1, v6}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_7
    :goto_2
    const/4 v15, 0x0

    .local v15, "needEditableForNotification":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_8

    const/4 v15, 0x1

    :cond_8
    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v4

    if-nez v4, :cond_9

    if-eqz v15, :cond_e

    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v19

    .local v19, "t":Landroid/text/Editable;
    move-object/from16 p1, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    .local v13, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .end local v13    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v19    # "t":Landroid/text/Editable;
    :cond_a
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/TextView;->mUseDisplayText:Z

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v4, :cond_c

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_b

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_11

    :cond_b
    move-object/from16 v17, p1

    check-cast v17, Landroid/text/Spannable;

    .local v17, "s2":Landroid/text/Spannable;
    :goto_4
    invoke-static/range {p0 .. p0}, Landroid/widget/TextView$FlymeInjector;->resetAutoLinkMask(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 p1, v17

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_12

    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .end local v17    # "s2":Landroid/text/Spannable;
    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-nez v4, :cond_13

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    :goto_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/TextView;->mLastAction:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;)Z

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .local v20, "textLength":I
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spannable;

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    if-nez v4, :cond_1d

    move-object/from16 v18, p1

    check-cast v18, Landroid/text/Spannable;

    .local v18, "sp":Landroid/text/Spannable;
    const/4 v4, 0x0

    invoke-interface/range {v18 .. v18}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/widget/TextView$ChangeWatcher;

    .local v21, "watchers":[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v21

    array-length v11, v0

    .local v11, "count":I
    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_14

    aget-object v4, v21, v12

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .end local v11    # "count":I
    .end local v15    # "needEditableForNotification":Z
    .end local v18    # "sp":Landroid/text/Spannable;
    .end local v20    # "textLength":I
    .end local v21    # "watchers":[Landroid/widget/TextView$ChangeWatcher;
    :cond_d
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_2

    .restart local v15    # "needEditableForNotification":Z
    :cond_e
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/widget/TextView$CharWrapper;

    if-nez v4, :cond_a

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v17

    .restart local v17    # "s2":Landroid/text/Spannable;
    goto/16 :goto_4

    :cond_12
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_5

    .end local v17    # "s2":Landroid/text/Spannable;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v4, v0, v1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_6

    .restart local v11    # "count":I
    .restart local v18    # "sp":Landroid/text/Spannable;
    .restart local v20    # "textLength":I
    .restart local v21    # "watchers":[Landroid/widget/TextView$ChangeWatcher;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_15

    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    const v6, 0x640012

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/Editor;->addSpanWatchers(Landroid/text/Spannable;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v4, v5, v1, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v4, p1

    check-cast v4, Landroid/text/Spannable;

    move-object/from16 v0, p0

    invoke-interface {v5, v0, v4}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/Editor;->mSelectionMoved:Z

    .end local v11    # "count":I
    .end local v18    # "sp":Landroid/text/Spannable;
    .end local v21    # "watchers":[Landroid/widget/TextView$ChangeWatcher;
    :cond_18
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_19

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    if-eqz v15, :cond_1a

    check-cast p1, Landroid/text/Editable;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_1b
    sget-boolean v4, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setStringName(Ljava/lang/CharSequence;)V

    :cond_1c
    return-void

    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x1388

    if-le v4, v5, :cond_1e

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    goto :goto_8

    :cond_1e
    new-instance v4, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    check-cast v18, Landroid/text/Spannable;

    .restart local v18    # "sp":Landroid/text/Spannable;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_1f

    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const v7, 0x640012

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/TextView;->mUseDisplayText:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/TextView;->mSkipUpdateDisplayText:Z

    goto/16 :goto_8
.end method

.method private setTypefaceFromAttrs(Ljava/lang/String;II)V
    .locals 1
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "typefaceIndex"    # I
    .param p3, "styleIndex"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "tf":Landroid/graphics/Typeface;
    if-eqz p1, :cond_0

    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_1
    invoke-virtual {p0, v0, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v3, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v3, 0xff0

    .local v0, "variation":I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_3

    const/16 v3, 0x30

    if-ne v0, v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private shouldAdvanceFocusOnTab()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v2, 0xff0

    .local v0, "variation":I
    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_0

    const/high16 v2, 0x20000

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .end local v0    # "variation":I
    :cond_1
    return v1
.end method

.method private shouldSpeakPasswordsForAccessibility()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speak_password"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private showMultiSelectPopupWindow()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/MultiSelectPopupWindow;->changeCurrentSelectedView(Landroid/widget/TextView;)V

    iget-object v0, p0, Landroid/widget/TextView;->mMultiSelectPopupWindow:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->showMultiSelectPopupWindow()V

    return-void
.end method

.method private startMarquee()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->compressText(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-ne v1, v3, :cond_4

    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .end local v0    # "tmp":Landroid/text/Layout;
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v1, :cond_5

    new-instance v1, Landroid/widget/TextView$Marquee;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    :cond_5
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v2, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_0
.end method

.method private startStopMarquee(Z)V
    .locals 2
    .param p1, "start"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method private stopMarquee()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->stop()V

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    iget-object v0, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .local v0, "tmp":Landroid/text/Layout;
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iput-object v1, p0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .end local v0    # "tmp":Landroid/text/Layout;
    :cond_1
    return-void
.end method

.method private unregisterForPreDraw()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    return-void
.end method

.method private updateTextColors()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .local v1, "inval":Z
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .local v0, "color":I
    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v0, v2, :cond_0

    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    const/4 v1, 0x1

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_4

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_4
    return-void
.end method

.method private updateTextServicesLocaleAsync()V
    .locals 1

    .prologue
    new-instance v0, Landroid/widget/TextView$5;

    invoke-direct {v0, p0}, Landroid/widget/TextView$5;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTextServicesLocaleLocked()V
    .locals 5

    .prologue
    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    const-string v4, "textservices"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/TextServicesManager;

    .local v2, "textServicesManager":Landroid/view/textservice/TextServicesManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .local v1, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/view/textservice/SpellCheckerSubtype;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .local v0, "locale":Ljava/util/Locale;
    :goto_0
    iput-object v0, p0, Landroid/widget/TextView;->mCurrentSpellCheckerLocaleCache:Ljava/util/Locale;

    return-void

    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "locale":Ljava/util/Locale;
    goto :goto_0
.end method


# virtual methods
.method public addInnerShadowTextEffect(FFFIF)I
    .locals 6
    .param p1, "angle"    # F
    .param p2, "offset"    # F
    .param p3, "softness"    # F
    .param p4, "color"    # I
    .param p5, "blendingOpacity"    # F

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/text/TextPaint;->addInnerShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public addLinearGradientTextEffect(FF[I[F[FF)I
    .locals 7
    .param p1, "angle"    # F
    .param p2, "scale"    # F
    .param p3, "colors"    # [I
    .param p4, "alphas"    # [F
    .param p5, "positions"    # [F
    .param p6, "blendingOpacity"    # F

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/text/TextPaint;->addLinearGradientTextEffect(FF[I[F[FF)I

    move-result v0

    return v0
.end method

.method public addOuterGlowTextEffect(FIF)I
    .locals 1
    .param p1, "size"    # F
    .param p2, "color"    # I
    .param p3, "blendingOpacity"    # F

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/TextPaint;->addOuterGlowTextEffect(FIF)I

    move-result v0

    return v0
.end method

.method public addOuterShadowTextEffect(FFFIF)I
    .locals 6
    .param p1, "angle"    # F
    .param p2, "offset"    # F
    .param p3, "softness"    # F
    .param p4, "color"    # I
    .param p5, "blendingOpacity"    # F

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/text/TextPaint;->addOuterShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public addStrokeTextEffect(FIF)I
    .locals 1
    .param p1, "size"    # F
    .param p2, "color"    # I
    .param p3, "blendingOpacity"    # F

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/TextPaint;->addStrokeTextEffect(FIF)I

    move-result v0

    return v0
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    return-void
.end method

.method public applyWBTextBuffer(Z)Z
    .locals 7
    .param p1, "initBuffer"    # Z

    .prologue
    const/4 v4, 0x0

    iget-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Editable;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v6, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :goto_0
    iget-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .local v2, "selectionStart":I
    iget-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, "selectionEnd":I
    const-string v3, "TextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WB index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v0

    .local v0, "length":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    if-le v2, v0, :cond_0

    move v2, v0

    .end local v2    # "selectionStart":I
    :cond_0
    if-le v1, v0, :cond_4

    .end local v0    # "length":I
    :goto_1
    invoke-static {v3, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    :cond_2
    const/4 v3, 0x1

    .end local v1    # "selectionEnd":I
    :goto_2
    return v3

    :cond_3
    iget-object v3, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    .restart local v0    # "length":I
    .restart local v1    # "selectionEnd":I
    :cond_4
    move v0, v1

    goto :goto_1

    .end local v0    # "length":I
    .end local v1    # "selectionEnd":I
    :cond_5
    move v3, v4

    goto :goto_2
.end method

.method public beginBatchEdit()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->beginBatchEdit()V

    :cond_0
    return-void
.end method

.method public bringPointIntoView(I)Z
    .locals 30
    .param p1, "offset"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRequested()Z

    move-result v25

    if-eqz v25, :cond_1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDeferScroll:I

    const/4 v5, 0x0

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    .local v5, "changed":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->isShowingHint()Z

    move-result v25

    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    .local v16, "layout":Landroid/text/Layout;
    :goto_1
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v18

    .local v18, "line":I
    sget-object v25, Landroid/widget/TextView$7;->$SwitchMap$android$text$Layout$Alignment:[I

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v26

    aget v25, v25, v26

    packed-switch v25, :pswitch_data_0

    const/4 v11, 0x0

    .local v11, "grav":I
    :goto_2
    if-lez v11, :cond_11

    const/4 v6, 0x1

    .local v6, "clamped":Z
    :goto_3
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .local v24, "x":I
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    .local v20, "top":I
    add-int/lit8 v25, v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .local v4, "bottom":I
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->floor(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v17, v0

    .local v17, "left":I
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->ceil(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    .local v19, "right":I
    invoke-virtual/range {v16 .. v16}, Landroid/text/Layout;->getHeight()I

    move-result v15

    .local v15, "ht":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v26

    sub-int v14, v25, v26

    .local v14, "hspace":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v26

    sub-int v23, v25, v26

    .local v23, "vspace":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    move/from16 v25, v0

    if-nez v25, :cond_2

    sub-int v25, v19, v17

    move/from16 v0, v25

    if-le v0, v14, :cond_2

    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_2

    add-int v25, v17, v14

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v19

    :cond_2
    sub-int v25, v4, v20

    div-int/lit8 v13, v25, 0x2

    .local v13, "hslack":I
    move/from16 v22, v13

    .local v22, "vslack":I
    div-int/lit8 v25, v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    div-int/lit8 v22, v23, 0x4

    :cond_3
    div-int/lit8 v25, v14, 0x4

    move/from16 v0, v25

    if-le v13, v0, :cond_4

    div-int/lit8 v13, v14, 0x4

    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    .local v12, "hs":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v21, v0

    .local v21, "vs":I
    sub-int v25, v20, v21

    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    sub-int v21, v20, v22

    :cond_5
    sub-int v25, v4, v21

    sub-int v26, v23, v22

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_6

    sub-int v25, v23, v22

    sub-int v21, v4, v25

    :cond_6
    sub-int v25, v15, v21

    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    sub-int v21, v15, v23

    :cond_7
    rsub-int/lit8 v25, v21, 0x0

    if-lez v25, :cond_8

    const/16 v21, 0x0

    :cond_8
    if-eqz v11, :cond_a

    sub-int v25, v24, v12

    move/from16 v0, v25

    if-ge v0, v13, :cond_9

    sub-int v12, v24, v13

    :cond_9
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_a

    sub-int v25, v14, v13

    sub-int v12, v24, v25

    :cond_a
    if-gez v11, :cond_12

    sub-int v25, v17, v12

    if-lez v25, :cond_b

    move/from16 v12, v17

    :cond_b
    sub-int v25, v19, v12

    move/from16 v0, v25

    if-ge v0, v14, :cond_c

    sub-int v12, v19, v14

    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v12, v0, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    if-nez v25, :cond_1b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/widget/TextView;->scrollTo(II)V

    :goto_5
    const/4 v5, 0x1

    .line 1794
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    if-nez v25, :cond_f

    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 1802
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    add-int/lit8 v26, v24, -0x2

    add-int/lit8 v27, v24, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v20

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v25

    if-eqz v25, :cond_0

    const/4 v5, 0x1

    goto/16 :goto_0

    .end local v4    # "bottom":I
    .end local v6    # "clamped":Z
    .end local v11    # "grav":I
    .end local v12    # "hs":I
    .end local v13    # "hslack":I
    .end local v14    # "hspace":I
    .end local v15    # "ht":I
    .end local v16    # "layout":Landroid/text/Layout;
    .end local v17    # "left":I
    .end local v18    # "line":I
    .end local v19    # "right":I
    .end local v20    # "top":I
    .end local v21    # "vs":I
    .end local v22    # "vslack":I
    .end local v23    # "vspace":I
    .end local v24    # "x":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    goto/16 :goto_1

    .restart local v16    # "layout":Landroid/text/Layout;
    .restart local v18    # "line":I
    :pswitch_0
    const/4 v11, 0x1

    .restart local v11    # "grav":I
    goto/16 :goto_2

    .end local v11    # "grav":I
    :pswitch_1
    const/4 v11, -0x1

    .restart local v11    # "grav":I
    goto/16 :goto_2

    .end local v11    # "grav":I
    :pswitch_2
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    .restart local v11    # "grav":I
    goto/16 :goto_2

    .end local v11    # "grav":I
    :pswitch_3
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v25

    move/from16 v0, v25

    neg-int v11, v0

    .restart local v11    # "grav":I
    goto/16 :goto_2

    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_3

    .restart local v4    # "bottom":I
    .restart local v6    # "clamped":Z
    .restart local v12    # "hs":I
    .restart local v13    # "hslack":I
    .restart local v14    # "hspace":I
    .restart local v15    # "ht":I
    .restart local v17    # "left":I
    .restart local v19    # "right":I
    .restart local v20    # "top":I
    .restart local v21    # "vs":I
    .restart local v22    # "vslack":I
    .restart local v23    # "vspace":I
    .restart local v24    # "x":I
    :cond_12
    if-lez v11, :cond_14

    sub-int v25, v19, v12

    move/from16 v0, v25

    if-ge v0, v14, :cond_13

    sub-int v12, v19, v14

    :cond_13
    sub-int v25, v17, v12

    if-lez v25, :cond_c

    move/from16 v12, v17

    goto/16 :goto_4

    :cond_14
    sub-int v25, v19, v17

    move/from16 v0, v25

    if-gt v0, v14, :cond_15

    sub-int v25, v19, v17

    sub-int v25, v14, v25

    div-int/lit8 v25, v25, 0x2

    sub-int v12, v17, v25

    goto/16 :goto_4

    :cond_15
    sub-int v25, v19, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_16

    sub-int v12, v19, v14

    goto/16 :goto_4

    :cond_16
    add-int v25, v17, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_17

    move/from16 v12, v17

    goto/16 :goto_4

    :cond_17
    move/from16 v0, v17

    if-le v0, v12, :cond_18

    move/from16 v12, v17

    goto/16 :goto_4

    :cond_18
    add-int v25, v12, v14

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_19

    sub-int v12, v19, v14

    goto/16 :goto_4

    :cond_19
    sub-int v25, v24, v12

    move/from16 v0, v25

    if-ge v0, v13, :cond_1a

    sub-int v12, v24, v13

    :cond_1a
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_c

    sub-int v25, v14, v13

    sub-int v12, v24, v25

    goto/16 :goto_4

    :cond_1b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v26

    .line 1623
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    move-wide/from16 v28, v0

    sub-long v8, v26, v28

    .local v8, "duration":J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v25, v0

    sub-int v7, v12, v25

    .local v7, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v25, v0

    sub-int v10, v21, v25

    .local v10, "dy":I
    const-wide/16 v26, 0xfa

    cmp-long v25, v8, v26

    if-lez v25, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v7, v10}, Landroid/widget/Scroller;->startScroll(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->getDuration()I

    move-result v25

    .line 1632
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    :goto_6
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->isFinished()Z

    move-result v25

    if-nez v25, :cond_1d

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Landroid/widget/TextView;->scrollBy(II)V

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method canCopy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method canCut()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method canDelete()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method canPaste()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/sec/clipboard/ClipboardExManager;->hasDataOf(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clipEx is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clipEx has text data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/ClipboardExManager;->hasDataOf(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canRedo()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method canTranslate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method canUndo()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public cancelLongPress()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    :cond_0
    return-void
.end method

.method public changeClipboardDataFormat(I)V
    .locals 1
    .param p1, "newFormat"    # I

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mClipboardDataFormat:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/TextView;->mClipboardDataFormat:I

    :cond_0
    return-void
.end method

.method public checkValidMultiSelectionForPreDraw()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isVisibleToUser()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p0

    .local v0, "parent":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v1

    .local v1, "rootView":Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "parent":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "parent":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    instance-of v3, v0, Landroid/view/View;

    if-nez v3, :cond_2

    goto :goto_0
.end method

.method public clearAllMultiSelection()Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->removeForTouchMonitorListener()V

    iget-object v0, p0, Landroid/widget/TextView;->mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/penselect/PenSelectionController;->clearAllPenSelection(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public clearAllTextEffect()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearAllTextEffect()V

    return-void
.end method

.method public clearComposingText()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    :cond_0
    return-void
.end method

.method public clearEditables()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    .local v0, "e":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    iput-object v2, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    .end local v0    # "e":Landroid/text/Editable;
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    .restart local v0    # "e":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    iput-object v2, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    .end local v0    # "e":Landroid/text/Editable;
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    .restart local v0    # "e":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    iput-object v2, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    .end local v0    # "e":Landroid/text/Editable;
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .restart local v0    # "e":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .end local v0    # "e":Landroid/text/Editable;
    :cond_3
    const-string v1, ""

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clearMultiSelection()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    iput-object v3, p0, Landroid/widget/TextView;->mWordIteratorForMultiSelection:Landroid/text/method/WordIterator;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .end local v0    # "text":Ljava/lang/CharSequence;
    :goto_0
    return v1

    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    iget-boolean v2, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/MultiSelection;->clearMultiSelection(Landroid/text/Spannable;)V

    invoke-direct {p0}, Landroid/widget/TextView;->hideMultiSelectPopupWindow()V

    invoke-virtual {p0}, Landroid/widget/TextView;->removeForTouchMonitorListener()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    sput-object v3, Landroid/widget/TextView;->mTargetView:Landroid/widget/TextView;

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public clearTextEffectOpacity()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearTextEffectOpacity()V

    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollX:I

    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateParentCaches()V

    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method convertToLocalHorizontalCoordinate(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method public debug(I)V
    .locals 3
    .param p1, "depth"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "output":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "} scroll={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mStringName = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected deleteText_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_5

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_2
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_3
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_4
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_5
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .local v1, "state":[I
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_6
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_7
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_8
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .end local v1    # "state":[I
    :cond_9
    return-void
.end method

.method public enableMultiSelection(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/TextView;->mEnableMultiSelection:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->removeForStylusPenEvent()V

    :cond_0
    return-void
.end method

.method public enableNewActionPopupWindow(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->enableNewActionPopupWindow(Z)V

    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->endBatchEdit()V

    :cond_0
    return-void
.end method

.method public extractEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 6
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x8000000

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v2, :cond_7

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v2, v2, Landroid/widget/Editor$InputContentType;->imeOptions:I

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v2, v2, Landroid/widget/Editor$InputContentType;->imeActionId:I

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :goto_1
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v4

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_3
    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_4
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_5

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_a

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :goto_2
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_5
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v2}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v2, v5

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_6
    iget-object v2, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .end local v1    # "v":Landroid/view/View;
    :cond_7
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_8

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :cond_8
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v3, "maxLength"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "maxLength":I
    if-gez v0, :cond_1

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    const-string v3, "maxLength"

    iget v4, p0, Landroid/widget/TextView;->mWBMaxLength:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .end local v0    # "maxLength":I
    :cond_9
    const/4 v2, 0x0

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_1

    .restart local v1    # "v":Landroid/view/View;
    :cond_a
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_2
.end method

.method public extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 7
    .param p1, "resultElement"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .param p2, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .local v2, "elementImpl":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getExtractionMode()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    .local v3, "transformationMethod":Landroid/text/method/TransformationMethod;
    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/text/method/PasswordTransformationMethod;

    if-nez v4, :cond_2

    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .local v1, "cropRect":Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/widget/TextView;->getTextForRectSelection(Landroid/graphics/Rect;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "charSequence":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    new-instance v4, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v5, "plain_text"

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    .end local v1    # "cropRect":Landroid/graphics/Rect;
    .end local v3    # "transformationMethod":Landroid/text/method/TransformationMethod;
    :cond_2
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I

    goto :goto_0
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "outText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 3
    .param p2, "searched"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "outViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .local v0, "searchedLowerCase":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .local v1, "textLowerCase":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0    # "searchedLowerCase":Ljava/lang/String;
    .end local v1    # "textLowerCase":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public forceHideSoftInput(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .prologue
    return-void
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public final getAutoLinkMask()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    invoke-static/range {p0 .. p0}, Landroid/widget/TextView$FlymeInjector;->mzGetAutoLinkMask(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public getBaseline()I
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    .local v0, "voffset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    invoke-static {v1}, Landroid/widget/TextView;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextEffectOffsetBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method protected getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboardEx"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, Landroid/widget/TextView;->mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mClipboardExManager:Landroid/sec/clipboard/ClipboardExManager;

    return-object v0
.end method

.method public getCompoundDrawablePadding()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_0
.end method

.method public getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_0
.end method

.method public getCompoundPaddingBottom()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingEnd()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingStart()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getCompoundPaddingTop()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    goto :goto_0
.end method

.method public final getCurrentTextColor()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    goto :goto_0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getExtendedPaddingBottom()I
    .locals 7

    .prologue
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_3

    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_3
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .local v4, "viewht":I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .local v2, "layoutht":I
    if-ge v2, v4, :cond_0

    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .local v1, "gravity":I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_5

    add-int v5, v0, v4

    sub-int v0, v5, v2

    goto :goto_0

    :cond_5
    const/16 v5, 0x50

    if-eq v1, v5, :cond_0

    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    goto :goto_0
.end method

.method public getExtendedPaddingTop()I
    .locals 7

    .prologue
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_3

    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_3
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .local v4, "viewht":I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .local v2, "layoutht":I
    if-ge v2, v4, :cond_0

    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .local v1, "gravity":I
    const/16 v5, 0x30

    if-eq v1, v5, :cond_0

    const/16 v5, 0x50

    if-ne v1, v5, :cond_5

    add-int v5, v3, v4

    sub-int v3, v5, v2

    goto :goto_0

    :cond_5
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method protected getFadeHeight(Z)I
    .locals 1
    .param p1, "offsetRequired"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFadeTop(Z)I
    .locals 3
    .param p1, "offsetRequired"    # Z

    .prologue
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    .local v0, "voffset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v12, 0x0

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v8, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    .local v6, "selEnd":I
    if-gez v6, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .local v7, "selStart":I
    if-ltz v7, :cond_2

    if-lt v7, v6, :cond_4

    :cond_2
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .local v0, "line":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x2

    iput v8, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v8, v8, 0x4

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .end local v0    # "line":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    .local v4, "paddingLeft":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    .local v5, "paddingTop":I
    iget v8, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v8, v8, 0x70

    const/16 v9, 0x30

    if-eq v8, v9, :cond_3

    invoke-virtual {p0, v12}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v8

    add-int/2addr v5, v8

    :cond_3
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v3

    .local v3, "paddingBottom":I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v3

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .end local v3    # "paddingBottom":I
    .end local v4    # "paddingLeft":I
    .end local v5    # "paddingTop":I
    :cond_4
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .local v2, "lineStart":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .local v1, "lineEnd":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v1, :cond_5

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_5
    iget-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    if-nez v8, :cond_6

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    :cond_6
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget-object v9, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    invoke-virtual {v8, v7, v6, v9}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    iput-boolean v12, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    :cond_7
    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x1

    iput v8, p1, Landroid/graphics/Rect;->left:I

    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    iput v8, p1, Landroid/graphics/Rect;->right:I

    monitor-exit v9

    goto/16 :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreezesText()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHideSoftInput()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mHideSoftInput:Z

    return v0
.end method

.method public getHighlightColor()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final getHintLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontallyScrolling()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    return v0
.end method

.method public getHoverPopupWindow()Landroid/widget/HoverPopupWindow;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->isHoveringUIEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/TextView$MoreInfoHPW;

    iget v1, p0, Landroid/widget/TextView;->mHoverPopupType:I

    invoke-direct {v0, p0, p0, v1}, Landroid/widget/TextView$MoreInfoHPW;-><init>(Landroid/widget/TextView;Landroid/view/View;I)V

    iput-object v0, p0, Landroid/widget/TextView;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHoverPopupWindowSettings(I)Z

    iget-object v0, p0, Landroid/widget/TextView;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_0
.end method

.method public getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;
    .locals 4
    .param p1, "tooltype"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->isHoveringUIEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-nez v1, :cond_1

    iput p1, p0, Landroid/widget/TextView;->mToolType:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    new-instance v1, Landroid/widget/TextView$MoreInfoHPW;

    iget v2, p0, Landroid/widget/TextView;->mHoverPopupType:I

    invoke-direct {v1, p0, p0, v2}, Landroid/widget/TextView$MoreInfoHPW;-><init>(Landroid/widget/TextView;Landroid/view/View;I)V

    iput-object v1, p0, Landroid/widget/TextView;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    :cond_1
    :goto_1
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHoverPopupWindowSettings(I)Z

    iput p1, p0, Landroid/widget/TextView;->mHoverPopupToolTypeByApp:I

    if-ne p1, v3, :cond_2

    iget v1, p0, Landroid/widget/TextView;->mHoverPopupType:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v1}, Landroid/widget/HoverPopupWindow;->dismiss()V

    iput-object v0, p0, Landroid/widget/TextView;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_1

    iget v1, p0, Landroid/widget/TextView;->mHoverPopupType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_1
    new-instance v1, Landroid/widget/TextView$MoreInfoHPW;

    iget v2, p0, Landroid/widget/TextView;->mHoverPopupType:I

    invoke-direct {v1, p0, p0, v2}, Landroid/widget/TextView$MoreInfoHPW;-><init>(Landroid/widget/TextView;Landroid/view/View;I)V

    iput-object v1, p0, Landroid/widget/TextView;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_1

    :pswitch_2
    new-instance v1, Landroid/widget/TextView$MoreInfoHPW;

    iget v2, p0, Landroid/widget/TextView;->mHoverPopupType:I

    invoke-direct {v1, p0, p0, v2}, Landroid/widget/TextView$MoreInfoHPW;-><init>(Landroid/widget/TextView;Landroid/view/View;I)V

    iput-object v1, p0, Landroid/widget/TextView;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getImeActionId()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v0, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncludeFontPadding()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    return v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 2
    .param p1, "create"    # Z

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v1, :cond_3

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 3
    .param p1, "granularity"    # I

    .prologue
    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .local v1, "text":Landroid/text/Spannable;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    move-result-object v0

    .local v0, "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    goto :goto_0

    .end local v0    # "iterator":Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    .end local v1    # "text":Landroid/text/Spannable;
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .restart local v1    # "text":Landroid/text/Spannable;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    move-result-object v0

    .local v0, "iterator":Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
    invoke-virtual {v0, p0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->initialize(Landroid/widget/TextView;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    goto :goto_0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    iget-object v6, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v7, :cond_2

    iget v6, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v6, v9, :cond_2

    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .local v2, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v3

    .local v3, "scroll":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v3, v5

    .end local v2    # "marquee":Landroid/widget/TextView$Marquee;
    .end local v3    # "scroll":F
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    if-ne v6, v9, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    .local v1, "layoutDirection":I
    iget v6, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v6, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .local v0, "absoluteGravity":I
    and-int/lit8 v6, v0, 0x7

    packed-switch v6, :pswitch_data_0

    .end local v0    # "absoluteGravity":I
    .end local v1    # "layoutDirection":I
    :cond_2
    :pswitch_1
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v5

    goto :goto_0

    .restart local v0    # "absoluteGravity":I
    .restart local v1    # "layoutDirection":I
    :pswitch_2
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mRight:I

    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    :pswitch_3
    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    .local v4, "textDirection":I
    if-eq v4, v9, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mRight:I

    iget v7, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextEffectOffsetLeft()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getLetterSpacing()F
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    return v0
.end method

.method getLineAtCoordinate(F)I
    .locals 2
    .param p1, "y"    # F

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 4
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    .local v0, "baseline":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    .local v1, "voffset":I
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    add-int v2, v0, v1

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineHeight()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public getLineSpacingExtra()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public getMarqueeRepeatLimit()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return v0
.end method

.method public getMaxEms()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxLines()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaximum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMaxWidth()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinEms()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinLines()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMinMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinimum:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinWidth()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method public getMultiSelectionText()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .local v4, "selectedText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, "text":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    iget-boolean v6, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    if-nez v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    move-object v6, v5

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->getMultiSelectionStart(Landroid/text/Spannable;)[I

    move-result-object v3

    .local v3, "multiSelStart":[I
    move-object v6, v5

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->getMultiSelectionEnd(Landroid/text/Spannable;)[I

    move-result-object v2

    .local v2, "multiSelEnd":[I
    move-object v6, v5

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v1

    .local v1, "multiSelCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    aget v6, v3, v0

    aget v7, v2, v0

    if-le v6, v7, :cond_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    new-instance v4, Landroid/text/SpannableStringBuilder;

    .end local v4    # "selectedText":Ljava/lang/CharSequence;
    aget v6, v3, v0

    aget v7, v2, v0

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v4    # "selectedText":Ljava/lang/CharSequence;
    goto :goto_2

    :cond_3
    move-object v6, v4

    check-cast v6, Landroid/text/Editable;

    aget v7, v3, v0

    aget v8, v2, v0

    invoke-interface {v5, v7, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    :cond_4
    move-object v6, v4

    goto :goto_0
.end method

.method public getMyanmarEncoding()Landroid/graphics/Paint$MyanmarEncoding;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getMyanmarEncoding()Landroid/graphics/Paint$MyanmarEncoding;

    move-result-object v0

    return-object v0
.end method

.method public getOffsetForPosition(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .local v0, "line":I
    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v1

    .local v1, "offset":I
    goto :goto_0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v0, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    iget-object v9, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v10, :cond_2

    iget v9, p0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eq v9, v12, :cond_2

    iget-object v9, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v9}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .local v3, "marquee":Landroid/widget/TextView$Marquee;
    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getMaxFadeScroll()F

    move-result v4

    .local v4, "maxFadeScroll":F
    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v5

    .local v5, "scroll":F
    sub-float v8, v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .end local v3    # "marquee":Landroid/widget/TextView$Marquee;
    .end local v4    # "maxFadeScroll":F
    .end local v5    # "scroll":F
    :cond_0
    :goto_0
    :pswitch_0
    return v8

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v9

    if-ne v9, v12, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    .local v1, "layoutDirection":I
    iget v9, p0, Landroid/widget/TextView;->mGravity:I

    invoke-static {v9, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .local v0, "absoluteGravity":I
    and-int/lit8 v9, v0, 0x7

    packed-switch v9, :pswitch_data_0

    .end local v0    # "absoluteGravity":I
    .end local v1    # "layoutDirection":I
    :cond_2
    :pswitch_1
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v8

    goto :goto_0

    .restart local v0    # "absoluteGravity":I
    .restart local v1    # "layoutDirection":I
    :pswitch_2
    iget v8, p0, Landroid/widget/TextView;->mRight:I

    iget v9, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    sub-int v7, v8, v9

    .local v7, "textWidth":I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v11}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    .local v2, "lineWidth":F
    int-to-float v8, v7

    sub-float v8, v2, v8

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    goto :goto_0

    .end local v2    # "lineWidth":F
    .end local v7    # "textWidth":I
    :pswitch_3
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v11}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .local v6, "textDirection":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v11}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v8

    iget v9, p0, Landroid/widget/TextView;->mRight:I

    iget v10, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .locals 4

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextEffectOffsetRight()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getScaledTextSize()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getSelectallStatus()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectall:Z

    return v0
.end method

.method public getSelectionEnd()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mShadowColor:I

    return v0
.end method

.method public getShadowDx()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mShadowDx:F

    return v0
.end method

.method public getShadowDy()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mShadowDy:F

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    return v0
.end method

.method public final getShowSoftInputOnFocus()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpannedTextRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 22
    .param p1, "targetRect"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    .local v15, "text":Ljava/lang/CharSequence;
    instance-of v2, v15, Landroid/text/Spanned;

    if-eqz v2, :cond_5

    .line 1676
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_5

    .line 1677
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v14

    .local v14, "startPos":Landroid/graphics/Point;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v14, Landroid/graphics/Point;->x:I

    sub-int v17, v2, v3

    .local v17, "tx":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v14, Landroid/graphics/Point;->y:I

    sub-int v19, v2, v3

    .local v19, "ty":I
    move/from16 v0, v19

    int-to-float v2, v0

    .line 1678
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v10

    .local v10, "line":I
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v11

    .local v11, "offset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .local v18, "txtright":I
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v11, :cond_1

    add-int/lit8 v11, v11, 0x1

    .line 1686
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    const/4 v12, 0x0

    .end local v10    # "line":I
    .end local v11    # "offset":I
    .end local v14    # "startPos":Landroid/graphics/Point;
    .end local v17    # "tx":I
    .end local v18    # "txtright":I
    .end local v19    # "ty":I
    :cond_0
    :goto_0
    return-object v12

    .restart local v10    # "line":I
    .restart local v11    # "offset":I
    .restart local v14    # "startPos":Landroid/graphics/Point;
    .restart local v17    # "tx":I
    .restart local v18    # "txtright":I
    .restart local v19    # "ty":I
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    move-object v4, v15

    check-cast v4, Landroid/text/Spanned;

    .local v4, "spannedText":Landroid/text/Spanned;
    const/4 v12, 0x0

    .local v12, "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v7, Landroid/text/style/ReplacementSpan;

    invoke-interface {v4, v2, v3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/ReplacementSpan;

    .local v13, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v2, v13

    if-ge v9, v2, :cond_0

    aget-object v2, v13, v9

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, "start":I
    aget-object v2, v13, v9

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .local v6, "end":I
    if-ge v5, v11, :cond_3

    if-ge v6, v11, :cond_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v3, v11, -0x1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v20, v0

    .local v20, "x":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v16

    .local v16, "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    .local v8, "bottom":I
    new-instance v12, Landroid/graphics/Rect;

    .end local v12    # "rect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-direct {v12, v2, v3, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v12    # "rect":Landroid/graphics/Rect;
    aget-object v2, v13, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    iput v2, v12, Landroid/graphics/Rect;->right:I

    sub-int v2, v8, v16

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iget v2, v14, Landroid/graphics/Point;->x:I

    add-int v2, v2, v20

    iget v3, v14, Landroid/graphics/Point;->y:I

    add-int v3, v3, v16

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .end local v4    # "spannedText":Landroid/text/Spanned;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v8    # "bottom":I
    .end local v9    # "i":I
    .end local v10    # "line":I
    .end local v11    # "offset":I
    .end local v12    # "rect":Landroid/graphics/Rect;
    .end local v13    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v14    # "startPos":Landroid/graphics/Point;
    .end local v16    # "top":I
    .end local v17    # "tx":I
    .end local v18    # "txtright":I
    .end local v19    # "ty":I
    .end local v20    # "x":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public getSpellCheckerLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getStringName()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    .local v0, "defaultIsRtl":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    if-eqz v0, :cond_2

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .end local v0    # "defaultIsRtl":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "defaultIsRtl":Z
    :cond_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_0
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getTextDirectionHeuristic(Z)Landroid/text/TextDirectionHeuristic;
    .locals 2
    .param p1, "isHint"    # Z

    .prologue
    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    .local v0, "defaultIsRtl":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    if-eqz v0, :cond_2

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    .end local v0    # "defaultIsRtl":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "defaultIsRtl":Z
    :cond_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_0
    sget-object v1, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_1
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_2
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :pswitch_3
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTextForAccessibility()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTextForMultiSelection()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mUseDisplayText:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextServicesLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->getTextServicesLocale(Z)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextEffectOffsetTop()I

    move-result v0

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getTotalPaddingBottom()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingEnd()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingLeft()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingStart()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method getTransformedText(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getTypefaceStyle()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NORMAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "BOLD"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ITALIC"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "BOLD_ITALIC"
            .end subannotation
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    return v0
.end method

.method public final getUndoManager()Landroid/content/UndoManager;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    goto :goto_0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [Landroid/text/style/URLSpan;

    goto :goto_0
.end method

.method getVerticalOffset(Z)I
    .locals 6
    .param p1, "forceNormal"    # Z

    .prologue
    const/4 v4, 0x0

    .local v4, "voffset":I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .local v1, "gravity":I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .local v2, "l":Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :cond_0
    const/16 v5, 0x30

    if-eq v1, v5, :cond_1

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getBoxHeight(Landroid/text/Layout;)I

    move-result v0

    .local v0, "boxht":I
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .local v3, "textht":I
    :goto_0
    if-ge v3, v0, :cond_1

    const/16 v5, 0x50

    if-ne v1, v5, :cond_3

    sub-int v4, v0, v3

    .end local v0    # "boxht":I
    .end local v3    # "textht":I
    :cond_1
    :goto_1
    return v4

    .restart local v0    # "boxht":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .restart local v3    # "textht":I
    :cond_3
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_1
.end method

.method public getVisibleTextRange([I)Z
    .locals 9
    .param p1, "range"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    array-length v7, p1

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v7, v8, :cond_4

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .local v3, "start":I
    invoke-virtual {v1, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    .local v0, "count":I
    if-lez v0, :cond_3

    add-int v7, v3, v0

    add-int/lit8 v7, v7, -0x1

    aput v7, p1, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    aput v5, p1, v6

    .end local v0    # "count":I
    .end local v3    # "start":I
    :cond_2
    :goto_1
    move v5, v6

    goto :goto_0

    .restart local v0    # "count":I
    .restart local v3    # "start":I
    :cond_3
    aput v5, p1, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    aput v5, p1, v6

    goto :goto_1

    .end local v0    # "count":I
    .end local v3    # "start":I
    :cond_4
    iget-object v7, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    if-ne v7, v8, :cond_5

    aput v5, p1, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    aput v5, p1, v6

    goto :goto_1

    :cond_5
    iget-object v7, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->KEYWORD:Landroid/text/TextUtils$TruncateAt;

    if-ne v7, v8, :cond_7

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .restart local v3    # "start":I
    invoke-virtual {v1, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    .restart local v0    # "count":I
    aput v5, p1, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    aput v7, p1, v6

    if-nez v3, :cond_6

    if-lez v0, :cond_2

    add-int v7, v3, v0

    add-int/lit8 v7, v7, -0x1

    aput v7, p1, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    aput v5, p1, v6

    goto :goto_1

    :cond_6
    if-lez v0, :cond_2

    aput v5, p1, v5

    add-int/lit8 v5, v3, 0x1

    aput v5, p1, v6

    goto :goto_1

    .end local v0    # "count":I
    .end local v3    # "start":I
    :cond_7
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "line":I
    if-ltz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .restart local v3    # "start":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    .restart local v0    # "count":I
    if-lez v0, :cond_8

    aput v5, p1, v5

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, p1, v6

    goto :goto_1

    :cond_8
    aput v5, p1, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    aput v5, p1, v6

    goto :goto_1
.end method

.method public getWBTextBuffer(Z)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "refresh"    # Z

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    return-object v0

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "buffer"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    const/16 v6, 0x43

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_5

    const/4 v0, 0x0

    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    :cond_1
    if-eqz v0, :cond_2

    iput-boolean v4, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_6

    iput p2, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    :goto_1
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    :cond_2
    iget-boolean v1, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v1, :cond_4

    if-le p3, p4, :cond_7

    iget v1, p0, Landroid/widget/TextView;->mLastKeyCode:I

    if-ne v1, v6, :cond_7

    iget v1, p0, Landroid/widget/TextView;->mLastAction:I

    if-eq v1, v5, :cond_7

    iput v5, p0, Landroid/widget/TextView;->mLastAction:I

    iget-object v1, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v3, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    :cond_3
    :goto_2
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView;->mLastKeyCode:I

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void

    .end local v0    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_5
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v1, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    goto :goto_0

    .restart local v0    # "ims":Landroid/widget/Editor$InputMethodState;
    :cond_6
    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    iget v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    goto :goto_1

    :cond_7
    if-ge p3, p4, :cond_8

    iget v1, p0, Landroid/widget/TextView;->mLastKeyCode:I

    if-eq v1, v6, :cond_8

    iget v1, p0, Landroid/widget/TextView;->mLastAction:I

    if-ne v1, v5, :cond_8

    iput v4, p0, Landroid/widget/TextView;->mLastAction:I

    iget-object v1, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v3, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    goto :goto_2

    :cond_8
    iget v1, p0, Landroid/widget/TextView;->mLastAction:I

    if-nez v1, :cond_9

    iput v4, p0, Landroid/widget/TextView;->mLastAction:I

    iget-object v1, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v3, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    goto :goto_2

    :cond_9
    iget v1, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v2, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Landroid/widget/TextView;->mLastAction:I

    if-ne v1, v4, :cond_3

    iput v4, p0, Landroid/widget/TextView;->mLastAction:I

    iget-object v1, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v3, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    goto :goto_2
.end method

.method public hasMultiSelection()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSelection()Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .local v1, "selectionStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, "selectionEnd":I
    if-ltz v1, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hideCursorControllers()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideControllers()V

    :cond_0
    return-void
.end method

.method public hideErrorIfUnchanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method invalidateCursor()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, "where":I
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    return-void
.end method

.method invalidateCursorPath()V
    .locals 12

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    iget-boolean v5, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .local v1, "horizontalPadding":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v6

    add-int v4, v5, v6

    .local v4, "verticalPadding":I
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    if-nez v5, :cond_3

    sget-object v6, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    .local v3, "thick":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_2
    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget-object v5, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    int-to-float v5, v1

    sget-object v7, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v3

    sub-float/2addr v5, v11

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    float-to-int v5, v5

    int-to-float v7, v4

    sget-object v8, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    sub-float/2addr v7, v3

    sub-float/2addr v7, v11

    invoke-static {v7}, Landroid/util/FloatMath;->floor(F)F

    move-result v7

    float-to-int v7, v7

    int-to-float v8, v1

    sget-object v9, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    add-float/2addr v8, v3

    add-float/2addr v8, v11

    invoke-static {v8}, Landroid/util/FloatMath;->ceil(F)F

    move-result v8

    float-to-int v8, v8

    int-to-float v9, v4

    sget-object v10, Landroid/widget/TextView;->TEMP_RECTF:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v10

    add-float/2addr v9, v3

    add-float/2addr v9, v11

    invoke-static {v9}, Landroid/util/FloatMath;->ceil(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0, v5, v7, v8, v9}, Landroid/widget/TextView;->invalidate(IIII)V

    monitor-exit v6

    goto :goto_0

    .end local v3    # "thick":F
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v5, v5, Landroid/widget/Editor;->mCursorCount:I

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "bounds":Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget v7, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v4

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/widget/TextView;->invalidate(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 16
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .local v7, "handled":Z
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .local v5, "dirty":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mScrollX:I

    .local v9, "scrollX":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/TextView;->mScrollY:I

    .local v10, "scrollY":I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v6, "drawables":Landroid/widget/TextView$Drawables;
    if-eqz v6, :cond_0

    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    .local v4, "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    .local v1, "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v1

    sub-int v11, v12, v4

    .local v11, "vspace":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int/2addr v9, v12

    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v12, v11, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    add-int/2addr v10, v12

    const/4 v7, 0x1

    .end local v1    # "compoundPaddingBottom":I
    .end local v4    # "compoundPaddingTop":I
    .end local v11    # "vspace":I
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    iget v12, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v9

    iget v13, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v10

    iget v14, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v9

    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v15, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    .end local v5    # "dirty":Landroid/graphics/Rect;
    .end local v6    # "drawables":Landroid/widget/TextView$Drawables;
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-nez v7, :cond_2

    invoke-super/range {p0 .. p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    .restart local v5    # "dirty":Landroid/graphics/Rect;
    .restart local v6    # "drawables":Landroid/widget/TextView$Drawables;
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_3
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    .restart local v4    # "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    .restart local v1    # "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v1

    sub-int v11, v12, v4

    .restart local v11    # "vspace":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v12, v13

    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v12, v13

    add-int/2addr v9, v12

    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v12, v11, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    add-int/2addr v10, v12

    const/4 v7, 0x1

    goto :goto_0

    .end local v1    # "compoundPaddingBottom":I
    .end local v4    # "compoundPaddingTop":I
    .end local v11    # "vspace":I
    :cond_4
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    .local v2, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    .local v3, "compoundPaddingRight":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    sub-int v8, v12, v2

    .local v8, "hspace":I
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v12, v8, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v2

    add-int/2addr v9, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mPaddingTop:I

    add-int/2addr v10, v12

    const/4 v7, 0x1

    goto :goto_0

    .end local v2    # "compoundPaddingLeft":I
    .end local v3    # "compoundPaddingRight":I
    .end local v8    # "hspace":I
    :cond_5
    iget-object v12, v6, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    .restart local v2    # "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    .restart local v3    # "compoundPaddingRight":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v3

    sub-int v8, v12, v2

    .restart local v8    # "hspace":I
    iget v12, v6, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v12, v8, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v2

    add-int/2addr v9, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/TextView;->mPaddingBottom:I

    sub-int/2addr v12, v13

    iget v13, v6, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v12, v13

    add-int/2addr v10, v12

    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method invalidateRegion(IIZ)V
    .locals 16
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "invalidateCursor"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .local v8, "lineStart":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .local v10, "top":I
    if-lez v8, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v12

    sub-int/2addr v10, v12

    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    move v7, v8

    .local v7, "lineEnd":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v12, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .local v2, "bottom":I
    if-eqz p3, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v12, :cond_3

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v12, v12, Landroid/widget/Editor;->mCursorCount:I

    if-ge v5, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v12, v12, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .local v3, "bounds":Landroid/graphics/Rect;
    iget v12, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v2    # "bottom":I
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v5    # "i":I
    .end local v7    # "lineEnd":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .restart local v7    # "lineEnd":I
    goto :goto_1

    .restart local v2    # "bottom":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    .local v4, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v13

    add-int v11, v12, v13

    .local v11, "verticalPadding":I
    if-ne v8, v7, :cond_4

    if-nez p3, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-int v6, v12

    .local v6, "left":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    double-to-int v9, v12

    .local v9, "right":I
    add-int/2addr v6, v4

    add-int/2addr v9, v4

    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v12, v6

    add-int v13, v11, v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollX:I

    add-int/2addr v14, v9

    add-int v15, v11, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/widget/TextView;->invalidate(IIII)V

    goto/16 :goto_0

    .end local v6    # "left":I
    .end local v9    # "right":I
    :cond_4
    move v6, v4

    .restart local v6    # "left":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .restart local v9    # "right":I
    goto :goto_3
.end method

.method public isAccessibilitySelectionExtendable()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public isCursorControllersShowing()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public isCursorVisible()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    goto :goto_0
.end method

.method public isEllipsis()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/TextView;->mRight:I

    iget v4, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v0, v3, v4

    .local v0, "width":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public isEnableMultiSelection()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableMultiSelection:Z

    return v0
.end method

.method public isEnableNewActionPopupWindow()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->isEnableNewActionPopupWindow()Z

    move-result v0

    return v0
.end method

.method isInBatchEditMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v2, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .local v0, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_2

    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mInBatchEditControllers:Z

    goto :goto_0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMultiSelectionLinkArea(II)Z
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v11, 0x0

    iget-boolean v10, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v10, :cond_0

    invoke-direct {p0, p1, p2, v11}, Landroid/widget/TextView;->checkPosInView(III)Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    move v10, v11

    :goto_0
    return v10

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v9

    .local v9, "text":Ljava/lang/CharSequence;
    if-nez v9, :cond_2

    move v10, v11

    goto :goto_0

    :cond_2
    invoke-direct {p0, p0}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v8

    .local v8, "startPos":Landroid/graphics/Point;
    iget v10, v8, Landroid/graphics/Point;->x:I

    sub-int v6, p1, v10

    .local v6, "posX":I
    iget v10, v8, Landroid/graphics/Point;->y:I

    sub-int v7, p2, v10

    .local v7, "posY":I
    int-to-float v10, v7

    invoke-virtual {p0, v10}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    .local v1, "line":I
    int-to-float v10, v6

    invoke-direct {p0, v1, v10}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v5

    .local v5, "offset":I
    move-object v10, v9

    check-cast v10, Landroid/text/Spannable;

    invoke-static {v10}, Landroid/text/MultiSelection;->getMultiSelectionStart(Landroid/text/Spannable;)[I

    move-result-object v4

    .local v4, "multiSelStart":[I
    move-object v10, v9

    check-cast v10, Landroid/text/Spannable;

    invoke-static {v10}, Landroid/text/MultiSelection;->getMultiSelectionEnd(Landroid/text/Spannable;)[I

    move-result-object v3

    .local v3, "multiSelEnd":[I
    check-cast v9, Landroid/text/Spannable;

    .end local v9    # "text":Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v2

    .local v2, "multiSelCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_4

    aget v10, v4, v0

    if-gt v10, v5, :cond_3

    aget v10, v3, v0

    if-gt v5, v10, :cond_3

    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v10, v11

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->hasTextEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSingleLine()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mSingleLine:Z

    return v0
.end method

.method public isSuggestionsEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-gtz v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v3, v3, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v3, 0xff0

    .local v0, "variation":I
    if-eqz v0, :cond_2

    const/16 v3, 0x30

    if-eq v0, v3, :cond_2

    const/16 v3, 0x50

    if-eq v0, v3, :cond_2

    const/16 v3, 0x40

    if-eq v0, v3, :cond_2

    const/16 v3, 0xa0

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method isTextEditable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextSelectable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    goto :goto_0
.end method

.method public isValidMultiSelection()Z
    .locals 23

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mhasMultiSelection:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isVisibleToUser()Z

    move-result v20

    if-nez v20, :cond_1

    :cond_0
    const/16 v20, 0x0

    :goto_0
    return v20

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v15

    .local v15, "text":Ljava/lang/CharSequence;
    if-nez v15, :cond_2

    const/16 v20, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    .local v6, "layout":Landroid/text/Layout;
    if-nez v6, :cond_3

    const/16 v20, 0x0

    goto :goto_0

    :cond_3
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .local v18, "tvRect":Landroid/graphics/Rect;
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v13

    .local v13, "startPos":Landroid/graphics/Point;
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v20, v15

    check-cast v20, Landroid/text/Spannable;

    invoke-static/range {v20 .. v20}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v11

    .local v11, "selStart":I
    check-cast v15, Landroid/text/Spannable;

    .end local v15    # "text":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v10

    .local v10, "selEnd":I
    if-lt v11, v10, :cond_4

    move/from16 v16, v11

    .local v16, "tmp":I
    move v11, v10

    move/from16 v10, v16

    .end local v16    # "tmp":I
    :cond_4
    invoke-virtual {v6, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    .local v9, "sLine":I
    invoke-virtual {v6, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .local v4, "eLine":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v17

    .local v17, "topPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    .local v7, "leftPadding":I
    invoke-virtual {v6, v11}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v20, v20, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v21

    sub-int v14, v20, v21

    .local v14, "sx":I
    invoke-virtual {v6, v10}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v20, v20, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v21

    sub-int v5, v20, v21

    .local v5, "ex":I
    if-le v14, v5, :cond_5

    move/from16 v16, v14

    .restart local v16    # "tmp":I
    move v14, v5

    move/from16 v5, v16

    .end local v16    # "tmp":I
    :cond_5
    invoke-virtual {v6, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    add-int v20, v20, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v21

    sub-int v8, v20, v21

    .local v8, "lineTop":I
    invoke-virtual {v6, v4}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v20

    add-int v20, v20, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v21

    sub-int v3, v20, v21

    .local v3, "baseLine":I
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v13

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v14, v8, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v12, "srcRect":Landroid/graphics/Rect;
    iget v0, v13, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    iget v0, v13, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v20

    if-nez v20, :cond_6

    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v12}, Lcom/samsung/android/penselect/PenSelectionController;->findTargetTextView(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v19

    .local v19, "view":Landroid/view/View;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_7

    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_7
    const/16 v20, 0x1

    goto/16 :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_5
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 34
    .param p1, "wantWidth"    # I
    .param p2, "hintWidth"    # I
    .param p3, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p4, "hintBoring"    # Landroid/text/BoringLayout$Metrics;
    .param p5, "ellipsisWidth"    # I
    .param p6, "bringIntoView"    # Z

    .prologue
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaximum:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mOldMaxMode:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-gez p1, :cond_0

    const/16 p1, 0x0

    :cond_0
    if-gez p2, :cond_1

    const/16 p2, 0x0

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    .local v6, "alignment":Landroid/text/Layout$Alignment;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_f

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v6, v2, :cond_2

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v6, v2, :cond_f

    :cond_2
    const/16 v33, 0x1

    .local v33, "testDirChange":Z
    :goto_0
    const/16 v31, 0x0

    .local v31, "oldDir":I
    if-eqz v33, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v31

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-nez v2, :cond_10

    const/4 v7, 0x1

    .local v7, "shouldEllipsize":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    if-eqz v2, :cond_11

    const/16 v32, 0x1

    .local v32, "switchEllipsize":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .local v8, "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getTextDirectionHeuristic(Z)Landroid/text/TextDirectionHeuristic;

    move-result-object v23

    .local v23, "hintTextDir":Landroid/text/TextDirectionHeuristic;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_12

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v2 .. v9}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v32, :cond_6

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v8, v2, :cond_13

    sget-object v15, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .local v15, "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v8, v2, :cond_14

    const/16 v16, 0x1

    :goto_5
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p5

    move-object v13, v6

    move v14, v7

    invoke-direct/range {v9 .. v16}, Landroid/widget/TextView;->makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedMarqueeModeLayout:Landroid/text/Layout;

    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_15

    const/4 v7, 0x1

    :goto_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a

    if-eqz v7, :cond_7

    move/from16 p2, p1

    :cond_7
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p4

    if-eqz p4, :cond_8

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    :cond_8
    if-eqz p4, :cond_1c

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_17

    if-eqz v7, :cond_9

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p5

    if-gt v2, v0, :cond_17

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    invoke-virtual/range {v16 .. v24}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    .end local v23    # "hintTextDir":Landroid/text/TextDirectionHeuristic;
    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v2, Landroid/text/BoringLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    :cond_a
    :goto_8
    if-nez p6, :cond_b

    if-eqz v33, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    move/from16 v0, v31

    if-eq v0, v2, :cond_c

    :cond_b
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_d

    move/from16 v0, p5

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/widget/TextView;->compressText(F)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v30, v0

    .local v30, "height":I
    const/4 v2, -0x2

    move/from16 v0, v30

    if-eq v0, v2, :cond_1f

    const/4 v2, -0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_1f

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    .end local v30    # "height":I
    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_e
    return-void

    .end local v7    # "shouldEllipsize":Z
    .end local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v31    # "oldDir":I
    .end local v32    # "switchEllipsize":Z
    .end local v33    # "testDirChange":Z
    :cond_f
    const/16 v33, 0x0

    goto/16 :goto_0

    .restart local v31    # "oldDir":I
    .restart local v33    # "testDirChange":Z
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_1

    .restart local v7    # "shouldEllipsize":Z
    :cond_11
    const/16 v32, 0x0

    goto/16 :goto_2

    .restart local v8    # "effectiveEllipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v23    # "hintTextDir":Landroid/text/TextDirectionHeuristic;
    .restart local v32    # "switchEllipsize":Z
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_13
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_4

    .restart local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_14
    const/16 v16, 0x0

    goto/16 :goto_5

    .end local v15    # "oppositeEllipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    .end local v23    # "hintTextDir":Landroid/text/TextDirectionHeuristic;
    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    invoke-static/range {v16 .. v23}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_7

    .restart local v23    # "hintTextDir":Landroid/text/TextDirectionHeuristic;
    :cond_17
    if-eqz v7, :cond_19

    move-object/from16 v0, p4

    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v0, p2

    if-gt v2, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v25, v0

    move/from16 v19, p2

    move-object/from16 v20, v6

    move-object/from16 v23, p4

    move/from16 v26, p5

    invoke-virtual/range {v16 .. v26}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    .end local v23    # "hintTextDir":Landroid/text/TextDirectionHeuristic;
    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    .restart local v23    # "hintTextDir":Landroid/text/TextDirectionHeuristic;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v23, v0

    .end local v23    # "hintTextDir":Landroid/text/TextDirectionHeuristic;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v24, v0

    move/from16 v18, p2

    move-object/from16 v19, v6

    move-object/from16 v22, p4

    move/from16 v25, p5

    invoke-static/range {v16 .. v25}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    .restart local v23    # "hintTextDir":Landroid/text/TextDirectionHeuristic;
    :cond_19
    if-eqz v7, :cond_1b

    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_a
    move/from16 v21, p2

    move-object/from16 v22, v6

    move/from16 v28, p5

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    :cond_1a
    const v29, 0x7fffffff

    goto :goto_a

    :cond_1b
    new-instance v18, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move/from16 v21, p2

    move-object/from16 v22, v6

    invoke-direct/range {v18 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    :cond_1c
    if-eqz v7, :cond_1e

    new-instance v16, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move/from16 v29, v0

    :goto_b
    move/from16 v21, p2

    move-object/from16 v22, v6

    move/from16 v28, p5

    invoke-direct/range {v16 .. v29}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    :cond_1d
    const v29, 0x7fffffff

    goto :goto_b

    :cond_1e
    new-instance v18, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v26, v0

    move/from16 v21, p2

    move-object/from16 v22, v6

    invoke-direct/range {v18 .. v26}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_8

    .end local v23    # "hintTextDir":Landroid/text/TextDirectionHeuristic;
    .restart local v30    # "height":I
    :cond_1f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/TextView;->mRestartMarquee:Z

    goto/16 :goto_9
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 20

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v17, v0

    if-nez v17, :cond_0

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    .local v12, "start":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .local v3, "end":I
    if-eq v12, v3, :cond_1

    const/16 v17, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .local v8, "line":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineTop(I)I

    move-result v13

    .local v13, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int/lit8 v18, v8, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v18

    sub-int v16, v17, v18

    .local v16, "vspace":I
    sub-int v17, v2, v13

    div-int/lit8 v15, v17, 0x2

    .local v15, "vslack":I
    div-int/lit8 v17, v16, 0x4

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    div-int/lit8 v15, v16, 0x4

    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mScrollY:I

    .local v14, "vs":I
    add-int v17, v14, v15

    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v14, v15

    sub-int v19, v2, v13

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v18

    sub-int v6, v17, v18

    .local v6, "hspace":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/TextView;->mScrollX:I

    .local v5, "hs":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v7

    .local v7, "leftChar":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v6, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v11

    .local v11, "rightChar":I
    if-ge v7, v11, :cond_6

    move v9, v7

    .local v9, "lowChar":I
    :goto_2
    if-le v7, v11, :cond_7

    move v4, v7

    .local v4, "highChar":I
    :goto_3
    move v10, v12

    .local v10, "newStart":I
    if-ge v10, v9, :cond_8

    move v10, v9

    :cond_4
    :goto_4
    if-eq v10, v12, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Landroid/text/Spannable;

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/16 v17, 0x1

    goto/16 :goto_0

    .end local v4    # "highChar":I
    .end local v5    # "hs":I
    .end local v6    # "hspace":I
    .end local v7    # "leftChar":I
    .end local v9    # "lowChar":I
    .end local v10    # "newStart":I
    .end local v11    # "rightChar":I
    :cond_5
    add-int v17, v16, v14

    sub-int v17, v17, v15

    move/from16 v0, v17

    if-le v2, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    add-int v18, v16, v14

    sub-int v18, v18, v15

    sub-int v19, v2, v13

    sub-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    goto :goto_1

    .restart local v5    # "hs":I
    .restart local v6    # "hspace":I
    .restart local v7    # "leftChar":I
    .restart local v11    # "rightChar":I
    :cond_6
    move v9, v11

    goto :goto_2

    .restart local v9    # "lowChar":I
    :cond_7
    move v4, v11

    goto :goto_3

    .restart local v4    # "highChar":I
    .restart local v10    # "newStart":I
    :cond_8
    if-le v10, v4, :cond_4

    move v10, v4

    goto :goto_4

    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Landroid/widget/TextView;->mAttachedWindow:Z

    invoke-direct {p0}, Landroid/widget/TextView;->registerForStylusPenEvent()V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onAttachedToWindow()V

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0}, Landroid/widget/TextView$IClipboardDataPasteEventImpl;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    :cond_2
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-boolean v1, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    :cond_3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/widget/TextView$FlymeInjector;->updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/widget/TextView;->sSpenUspLevel:I

    if-lez v0, :cond_0

    iput-boolean v2, p0, Landroid/widget/TextView;->mAttachedWindow:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->registerForStylusPenEvent()V

    goto :goto_0
.end method

.method public onBeginBatchEdit()V
    .locals 0

    .prologue
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mInputType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onScrollChanged()V

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->showNewActionPopupWindow()V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Landroid/widget/Editor;->updateCurrentOrientation(I)V

    :cond_1
    iget-boolean v0, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 7
    .param p1, "extraSpace"    # I

    .prologue
    const/4 v6, 0x0

    iget-boolean v4, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v4, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .local v0, "drawableState":[I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v4

    if-eqz v4, :cond_2

    array-length v2, v0

    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget v4, v0, v1

    const v5, #android:attr@state_pressed#t

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v2, -0x1

    new-array v3, v4, [I

    .local v3, "nonPressedState":[I
    invoke-static {v0, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "nonPressedState":[I
    :goto_2
    return-object v3

    .end local v0    # "drawableState":[I
    :cond_0
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .restart local v0    # "drawableState":[I
    sget-object v4, Landroid/widget/TextView;->MULTILINE_STATE_SET:[I

    invoke-static {v0, v4}, Landroid/widget/TextView;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_2
    move-object v3, v0

    goto :goto_2
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x8000000

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputMethodStateIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v1, v1, Landroid/widget/Editor$InputContentType;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget v1, v1, Landroid/widget/Editor$InputContentType;->imeActionId:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v1, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    :goto_0
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_0
    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_2

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_5

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_2
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v4

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_6

    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_2
    return-object v0

    :cond_4
    const/4 v1, 0x0

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    :cond_5
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x6

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mPreDrawRegistered:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mPreDrawListenerDetached:Z

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->removeForStylusPenEvent()V

    invoke-virtual {p0}, Landroid/widget/TextView;->clearMultiSelection()Z

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/widget/TextView;->sSpenUspLevel:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Landroid/widget/TextView;->removeForStylusPenEvent()V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onDetachedFromWindow()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/widget/TextView$FlymeInjector;->updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .end local v0    # "offset":I
    :pswitch_4
    iput-boolean v2, p0, Landroid/widget/TextView;->mOnDragResult:Z

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/TextView;->mLastAction:I

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, p1}, Landroid/widget/Editor;->onDrop(Landroid/view/DragEvent;)V

    :cond_2
    iget-boolean v2, p0, Landroid/widget/TextView;->mOnDragResult:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v16

    .local v16, "compoundPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v18

    .local v18, "compoundPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v17

    .local v17, "compoundPaddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v15

    .local v15, "compoundPaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollX:I

    move/from16 v33, v0

    .local v33, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mScrollY:I

    move/from16 v34, v0

    .local v34, "scrollY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mRight:I

    move/from16 v31, v0

    .local v31, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mLeft:I

    move/from16 v26, v0

    .local v26, "left":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/TextView;->mBottom:I

    .local v9, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mTop:I

    move/from16 v35, v0

    .local v35, "top":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v24

    .local v24, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHorizontalOffsetForDrawables()I

    move-result v29

    .local v29, "offset":I
    if-eqz v24, :cond_f

    const/16 v27, 0x0

    .local v27, "leftOffset":I
    :goto_0
    if-eqz v24, :cond_10

    move/from16 v32, v29

    .local v32, "rightOffset":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v19, v0

    .local v19, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v19, :cond_3

    sub-int v2, v9, v35

    sub-int/2addr v2, v15

    sub-int v38, v2, v18

    .local v38, "vspace":I
    sub-int v2, v31, v26

    sub-int v2, v2, v17

    sub-int v23, v2, v16

    .local v23, "hspace":I
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mPaddingLeft:I

    add-int v2, v2, v33

    add-int v2, v2, v27

    int-to-float v2, v2

    add-int v3, v34, v18

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    move/from16 v40, v0

    sub-int v40, v38, v40

    div-int/lit8 v40, v40, 0x2

    add-int v3, v3, v40

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v2, v33, v31

    sub-int v2, v2, v26

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mPaddingRight:I

    sub-int/2addr v2, v3

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v2, v3

    sub-int v2, v2, v32

    int-to-float v2, v2

    add-int v3, v34, v18

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    move/from16 v40, v0

    sub-int v40, v38, v40

    div-int/lit8 v40, v40, 0x2

    add-int v3, v3, v40

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v2, v33, v16

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v3, v23, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mPaddingTop:I

    add-int v3, v3, v34

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-int v2, v33, v16

    move-object/from16 v0, v19

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v3, v23, v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-int v3, v34, v9

    sub-int v3, v3, v35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPaddingBottom:I

    move/from16 v40, v0

    sub-int v3, v3, v40

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    move/from16 v40, v0

    sub-int v3, v3, v40

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .end local v23    # "hspace":I
    .end local v38    # "vspace":I
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mCurTextColor:I

    .local v14, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .local v4, "layout":Landroid/text/Layout;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v14}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v22

    .local v22, "extendedPaddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v21

    .local v21, "extendedPaddingBottom":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v15

    sub-int v38, v2, v18

    .restart local v38    # "vspace":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int v28, v2, v38

    .local v28, "maxScrollY":I
    add-int v2, v16, v33

    int-to-float v11, v2

    .local v11, "clipLeft":F
    if-nez v34, :cond_11

    const/4 v13, 0x0

    .local v13, "clipTop":F
    :goto_2
    sub-int v2, v31, v26

    sub-int v2, v2, v17

    add-int v2, v2, v33

    int-to-float v12, v2

    .local v12, "clipRight":F
    sub-int v2, v9, v35

    add-int v2, v2, v34

    move/from16 v0, v34

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    const/16 v21, 0x0

    .end local v21    # "extendedPaddingBottom":I
    :cond_7
    sub-int v2, v2, v21

    int-to-float v10, v2

    .local v10, "clipBottom":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->hasTextEffect()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextEffectOffsetLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextEffectOffsetRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v12, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextEffectOffsetTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v13, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextEffectOffsetBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v10, v2

    :cond_8
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v13, v12, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/16 v37, 0x0

    .local v37, "voffsetText":I
    const/16 v36, 0x0

    .local v36, "voffsetCursor":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v37

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v36

    :cond_9
    move/from16 v0, v16

    int-to-float v2, v0

    add-int v3, v22, v37

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v25

    .local v25, "layoutDirection":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mGravity:I

    move/from16 v0, v25

    invoke-static {v2, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    .local v8, "absoluteGravity":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMarqueeFadeMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mSingleLine:Z

    if-nez v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v2

    if-eqz v2, :cond_a

    and-int/lit8 v2, v8, 0x7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mRight:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mLeft:I

    sub-int v39, v2, v3

    .local v39, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    add-int v30, v2, v3

    .local v30, "padding":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    sub-int v3, v39, v30

    int-to-float v3, v3

    sub-float v20, v2, v3

    .local v20, "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .end local v20    # "dx":F
    .end local v30    # "padding":I
    .end local v39    # "width":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getScroll()F

    move-result v2

    neg-float v0, v2

    move/from16 v20, v0

    .restart local v20    # "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .end local v20    # "dx":F
    :cond_b
    sub-int v7, v36, v37

    .local v7, "cursorOffsetVertical":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getUpdatedHighlightPath()Landroid/graphics/Path;

    move-result-object v5

    .local v5, "highlight":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .local v6, "highlightPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mhasMultiSelection:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/TextView;->mMultiHighlightPaint:Landroid/graphics/Paint;

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Editor;->onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v2}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v20

    .restart local v20    # "dx":F
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v20

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .end local v20    # "dx":F
    :cond_d
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Landroid/util/GateConfig;->isGateLcdtextEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "<GATE-M>LCDSTR:"

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v40, "/LCDSTR</GATE-M>"

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .end local v4    # "layout":Landroid/text/Layout;
    .end local v5    # "highlight":Landroid/graphics/Path;
    .end local v6    # "highlightPaint":Landroid/graphics/Paint;
    .end local v7    # "cursorOffsetVertical":I
    .end local v8    # "absoluteGravity":I
    .end local v10    # "clipBottom":F
    .end local v11    # "clipLeft":F
    .end local v12    # "clipRight":F
    .end local v13    # "clipTop":F
    .end local v14    # "color":I
    .end local v19    # "dr":Landroid/widget/TextView$Drawables;
    .end local v22    # "extendedPaddingTop":I
    .end local v25    # "layoutDirection":I
    .end local v27    # "leftOffset":I
    .end local v28    # "maxScrollY":I
    .end local v32    # "rightOffset":I
    .end local v36    # "voffsetCursor":I
    .end local v37    # "voffsetText":I
    .end local v38    # "vspace":I
    :cond_f
    move/from16 v27, v29

    goto/16 :goto_0

    .restart local v27    # "leftOffset":I
    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_1

    .restart local v4    # "layout":Landroid/text/Layout;
    .restart local v11    # "clipLeft":F
    .restart local v14    # "color":I
    .restart local v19    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v21    # "extendedPaddingBottom":I
    .restart local v22    # "extendedPaddingTop":I
    .restart local v28    # "maxScrollY":I
    .restart local v32    # "rightOffset":I
    .restart local v38    # "vspace":I
    :cond_11
    add-int v2, v22, v34

    int-to-float v13, v2

    goto/16 :goto_2

    .end local v21    # "extendedPaddingBottom":I
    .restart local v10    # "clipBottom":F
    .restart local v12    # "clipRight":F
    .restart local v13    # "clipTop":F
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move/from16 v40, v0

    sub-float v3, v3, v40

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v11, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDx:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move/from16 v40, v0

    add-float v3, v3, v40

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v12, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move/from16 v40, v0

    sub-float v3, v3, v40

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float/2addr v13, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/TextView;->mShadowDy:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move/from16 v40, v0

    add-float v3, v3, v40

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v10, v2

    goto/16 :goto_3

    .restart local v5    # "highlight":Landroid/graphics/Path;
    .restart local v6    # "highlightPaint":Landroid/graphics/Paint;
    .restart local v7    # "cursorOffsetVertical":I
    .restart local v8    # "absoluteGravity":I
    .restart local v25    # "layoutDirection":I
    .restart local v36    # "voffsetCursor":I
    .restart local v37    # "voffsetText":I
    :cond_13
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto/16 :goto_4
.end method

.method public onEditorAction(I)V
    .locals 22
    .param p1, "actionCode"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .local v2, "ict":Landroid/widget/Editor$InputContentType;
    :goto_0
    if-eqz v2, :cond_5

    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v3, v0, v1, v6}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_1
    return-void

    .end local v2    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    goto :goto_0

    .restart local v2    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_2
    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .local v20, "v":Landroid/view/View;
    if-eqz v20, :cond_0

    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v20    # "v":Landroid/view/View;
    :cond_3
    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .restart local v20    # "v":Landroid/view/View;
    if-eqz v20, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v20    # "v":Landroid/view/View;
    :cond_4
    const/4 v3, 0x6

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v19

    .local v19, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .end local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v21

    .local v21, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v21, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x16

    move-wide v6, v4

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x16

    move-wide v10, v4

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    goto/16 :goto_1
.end method

.method public onEndBatchEdit()V
    .locals 0

    .prologue
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->onFocusChanged(ZI)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_2

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    .local v6, "sp":Landroid/text/Spannable;
    invoke-static {v6}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .end local v6    # "sp":Landroid/text/Spannable;
    :cond_2
    invoke-static/range {p0 .. p1}, Landroid/widget/TextView$FlymeInjector;->updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V

    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 42
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v30

    .local v30, "text":Ljava/lang/CharSequence;
    sput-object p0, Landroid/widget/TextView;->mLastHoveredView:Landroid/widget/TextView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    sput-wide v38, Landroid/widget/TextView;->mLastHoveredTime:J

    if-eqz v30, :cond_17

    sget v38, Landroid/widget/TextView;->sSpenUspLevel:I

    const/16 v39, 0x3

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v38

    and-int/lit8 v38, v38, 0x2

    if-eqz v38, :cond_3

    const/16 v17, 0x1

    .local v17, "isBtnPressed":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .local v4, "action":I
    const/16 v38, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/widget/TextView;->isLinkPreviewEnabled(I)Z

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnableLinkPreview:Z

    const/16 v38, 0x9

    move/from16 v0, v38

    if-ne v4, v0, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canTextMultiSelection()Z

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCanTextMultiSelection:Z

    :cond_0
    const/16 v38, 0xa

    move/from16 v0, v38

    if-ne v4, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    if-eqz v38, :cond_1

    :try_start_0
    new-instance v14, Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v14, v0}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    .local v14, "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    invoke-virtual {v14}, Lcom/samsung/android/hermes/HermesServiceManager;->dismissHermes()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :cond_1
    :goto_1
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverEnterTime:J

    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverExitTime:J

    invoke-static {}, Landroid/text/MultiSelection;->isTextViewHovered()Z

    move-result v38

    if-eqz v38, :cond_2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Landroid/text/MultiSelection;->setTextViewHovered(Z)V

    const/16 v38, 0x1

    const/16 v39, -0x1

    :try_start_1
    invoke-static/range {v38 .. v39}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    .end local v4    # "action":I
    .end local v17    # "isBtnPressed":Z
    :goto_3
    return v38

    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    .restart local v4    # "action":I
    .restart local v17    # "isBtnPressed":Z
    :catch_0
    move-exception v16

    .local v16, "ie":Ljava/lang/IllegalStateException;
    const-string v38, "TextView"

    const-string v39, "** skip HERMES Service by IllegalStateException, onHoverExit **"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v16    # "ie":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    const-string v38, "TextView"

    const-string v39, "Failed to change Pen Point to HOVERING_SPENICON_HOVERPOPUP_DEFAULT"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mEnableLinkPreview:Z

    move/from16 v38, v0

    if-nez v38, :cond_5

    if-nez v17, :cond_5

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto :goto_3

    :cond_5
    const/16 v38, 0x7

    move/from16 v0, v38

    if-ne v4, v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v18

    .local v18, "layout":Landroid/text/Layout;
    if-nez v18, :cond_6

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto :goto_3

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v22, v0

    .local v22, "rawX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v23, v0

    .local v23, "rawY":I
    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mCanTextMultiSelection:Z

    move/from16 v38, v0

    if-eqz v38, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->TOUCH_DELTA:F

    move/from16 v38, v0

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView;->checkPosOnText(III)Z

    move-result v38

    if-eqz v38, :cond_9

    invoke-static {}, Landroid/text/MultiSelection;->getHoveredIcon()I

    move-result v38

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_8

    new-instance v38, Landroid/widget/TextView$3;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$3;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    if-eqz v38, :cond_7

    new-instance v14, Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v14, v0}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    .restart local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    invoke-virtual {v14}, Lcom/samsung/android/hermes/HermesServiceManager;->dismissHermes()V

    .end local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :cond_7
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverEnterTime:J

    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverExitTime:J
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_8
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_3

    :catch_2
    move-exception v16

    .restart local v16    # "ie":Ljava/lang/IllegalStateException;
    const-string v38, "TextView"

    const-string v39, "** hovering dismiss **"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v16    # "ie":Ljava/lang/IllegalStateException;
    :cond_9
    invoke-static {}, Landroid/text/MultiSelection;->getHoveredIcon()I

    move-result v38

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_a

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Landroid/text/MultiSelection;->setTextViewHovered(Z)V

    const/16 v38, 0x1

    const/16 v39, -0x1

    :try_start_3
    invoke-static/range {v38 .. v39}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_a
    :goto_5
    move-object/from16 v38, v30

    check-cast v38, Landroid/text/Spannable;

    const/16 v39, 0x0

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->length()I

    move-result v40

    const-class v41, Landroid/text/style/URLSpan;

    invoke-interface/range {v38 .. v41}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [Landroid/text/style/URLSpan;

    .local v34, "urlSpans":[Landroid/text/style/URLSpan;
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v38, v0

    if-eqz v38, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v36, v0

    .local v36, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v37, v0

    .local v37, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v38

    sub-int v36, v36, v38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v38

    sub-int v37, v37, v38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v38

    add-int v36, v36, v38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v38

    add-int v37, v37, v38

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    .local v6, "curLine":I
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, v18

    move/from16 v1, v38

    invoke-virtual {v0, v6, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v21

    .local v21, "off":I
    move-object/from16 v38, v30

    check-cast v38, Landroid/text/Spannable;

    const-class v39, Landroid/text/style/URLSpan;

    move-object/from16 v0, v38

    move/from16 v1, v21

    move/from16 v2, v21

    move-object/from16 v3, v39

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/text/style/URLSpan;

    .local v19, "link":[Landroid/text/style/URLSpan;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v38, v0

    if-eqz v38, :cond_14

    move-object/from16 v38, v30

    check-cast v38, Landroid/text/Spannable;

    const/16 v39, 0x0

    aget-object v39, v19, v39

    invoke-interface/range {v38 .. v39}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v29

    .local v29, "start":I
    move-object/from16 v38, v30

    check-cast v38, Landroid/text/Spannable;

    const/16 v39, 0x0

    aget-object v39, v19, v39

    invoke-interface/range {v38 .. v39}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .local v9, "end":I
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-interface {v0, v1, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    .local v33, "url":Ljava/lang/String;
    sget-object v38, Landroid/widget/TextView;->emailPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .local v20, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v38

    if-eqz v38, :cond_b

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_3

    .end local v6    # "curLine":I
    .end local v9    # "end":I
    .end local v19    # "link":[Landroid/text/style/URLSpan;
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v21    # "off":I
    .end local v29    # "start":I
    .end local v33    # "url":Ljava/lang/String;
    .end local v34    # "urlSpans":[Landroid/text/style/URLSpan;
    .end local v36    # "x":I
    .end local v37    # "y":I
    :catch_3
    move-exception v7

    .restart local v7    # "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_5

    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v6    # "curLine":I
    .restart local v9    # "end":I
    .restart local v19    # "link":[Landroid/text/style/URLSpan;
    .restart local v20    # "m":Ljava/util/regex/Matcher;
    .restart local v21    # "off":I
    .restart local v29    # "start":I
    .restart local v33    # "url":Ljava/lang/String;
    .restart local v34    # "urlSpans":[Landroid/text/style/URLSpan;
    .restart local v36    # "x":I
    .restart local v37    # "y":I
    :cond_b
    sget-object v38, Landroid/widget/TextView;->urlPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/regex/Matcher;->find()Z

    move-result v38

    if-nez v38, :cond_c

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v25

    .local v25, "sLine":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .local v8, "eLine":I
    const/16 v28, 0x0

    .local v28, "spanStartX":I
    const/16 v27, 0x0

    .local v27, "spanEndX":I
    move/from16 v0, v25

    if-ne v6, v0, :cond_10

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    :goto_6
    if-ne v6, v8, :cond_11

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v27, v0

    :goto_7
    move/from16 v0, v28

    move/from16 v1, v36

    if-gt v0, v1, :cond_13

    move/from16 v0, v36

    move/from16 v1, v27

    if-gt v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aget-object v39, v19, v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mHoverEnterTime:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-lez v38, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mHoverEnterTime:J

    move-wide/from16 v40, v0

    sub-long v10, v38, v40

    .local v10, "elipse":J
    const-wide/16 v38, 0x12c

    cmp-long v38, v10, v38

    if-lez v38, :cond_f

    const/4 v14, 0x0

    .restart local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :try_start_4
    new-instance v15, Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v15, v0}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    .local v15, "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    move-object v14, v15

    .end local v15    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    .restart local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    if-eqz v38, :cond_d

    if-eqz v14, :cond_d

    invoke-virtual {v14}, Lcom/samsung/android/hermes/HermesServiceManager;->dismissHermes()V

    :cond_d
    const/16 v38, 0x0

    aget-object v38, v19, v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverEnterTime:J

    if-eqz v14, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v32

    .local v32, "topPadding":I
    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v38

    add-int v31, v38, v32

    .local v31, "top":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v38

    add-int v5, v38, v32

    .local v5, "bottom":I
    new-instance v26, Landroid/graphics/PointF;

    const/high16 v38, 0x3f800000    # 1.0f

    const/high16 v39, 0x3f800000    # 1.0f

    move-object/from16 v0, v26

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .local v26, "scaleRatio":Landroid/graphics/PointF;
    const/16 v35, 0x0

    .local v35, "viewRootImpl":Landroid/view/ViewRootImpl;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v38

    if-eqz v38, :cond_e

    if-eqz v35, :cond_e

    invoke-virtual/range {v35 .. v35}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v26

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v38

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v39, v0

    sub-float v38, v38, v39

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v39, v0

    mul-float v13, v38, v39

    .local v13, "gabTop":F
    int-to-float v0, v5

    move/from16 v38, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v39

    sub-float v38, v38, v39

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v39, v0

    mul-float v12, v38, v39

    .local v12, "gabBtm":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v38, v0

    sub-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v38, v0

    add-float v38, v38, v12

    move/from16 v0, v38

    float-to-int v5, v0

    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .local v24, "rect":Landroid/graphics/Rect;
    add-int/lit8 v38, v22, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v31

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_f

    const/16 v38, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    move/from16 v2, v38

    invoke-virtual {v14, v0, v1, v2}, Lcom/samsung/android/hermes/HermesServiceManager;->showHermes(Ljava/lang/String;Landroid/graphics/Rect;I)V

    .end local v5    # "bottom":I
    .end local v10    # "elipse":J
    .end local v12    # "gabBtm":F
    .end local v13    # "gabTop":F
    .end local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    .end local v24    # "rect":Landroid/graphics/Rect;
    .end local v26    # "scaleRatio":Landroid/graphics/PointF;
    .end local v31    # "top":I
    .end local v32    # "topPadding":I
    .end local v35    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_f
    :goto_9
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_3

    :cond_10
    const/16 v38, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v28, v0

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v38

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v27, v0

    goto/16 :goto_7

    .restart local v10    # "elipse":J
    .restart local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :catch_4
    move-exception v16

    .restart local v16    # "ie":Ljava/lang/IllegalStateException;
    const-string v38, "TextView"

    const-string v39, "** skip HERMES Service by IllegalStateException, onHover : URLSpan1 **"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .end local v10    # "elipse":J
    .end local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    .end local v16    # "ie":Ljava/lang/IllegalStateException;
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverEnterTime:J

    new-instance v38, Landroid/widget/TextView$4;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$4;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    :cond_13
    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverExitTime:J

    goto :goto_9

    .end local v6    # "curLine":I
    .end local v8    # "eLine":I
    .end local v9    # "end":I
    .end local v19    # "link":[Landroid/text/style/URLSpan;
    .end local v20    # "m":Ljava/util/regex/Matcher;
    .end local v21    # "off":I
    .end local v25    # "sLine":I
    .end local v27    # "spanEndX":I
    .end local v28    # "spanStartX":I
    .end local v29    # "start":I
    .end local v33    # "url":Ljava/lang/String;
    .end local v36    # "x":I
    .end local v37    # "y":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    move-object/from16 v38, v0

    if-eqz v38, :cond_17

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mHoverExitTime:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-lez v38, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mHoverExitTime:J

    move-wide/from16 v40, v0

    sub-long v10, v38, v40

    .restart local v10    # "elipse":J
    const-wide/16 v38, 0x12c

    cmp-long v38, v10, v38

    if-lez v38, :cond_15

    :try_start_5
    new-instance v14, Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v14, v0}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    .restart local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    invoke-virtual {v14}, Lcom/samsung/android/hermes/HermesServiceManager;->dismissHermes()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5

    .end local v14    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :goto_a
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHoveredSpan:Ljava/lang/Object;

    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverEnterTime:J

    const-wide/16 v38, -0x1

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverExitTime:J

    .end local v10    # "elipse":J
    :cond_15
    :goto_b
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_3

    .restart local v10    # "elipse":J
    :catch_5
    move-exception v16

    .restart local v16    # "ie":Ljava/lang/IllegalStateException;
    const-string v38, "TextView"

    const-string v39, "** skip HERMES Service by IllegalStateException, onHover : hover exit **"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .end local v10    # "elipse":J
    .end local v16    # "ie":Ljava/lang/IllegalStateException;
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mHoverExitTime:J

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Landroid/text/MultiSelection;->setTextViewHovered(Z)V

    const/16 v38, 0x1

    const/16 v39, -0x1

    :try_start_6
    invoke-static/range {v38 .. v39}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_b

    :catch_6
    move-exception v7

    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string v38, "TextView"

    const-string v39, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .end local v4    # "action":I
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v17    # "isBtnPressed":Z
    .end local v18    # "layout":Landroid/text/Layout;
    .end local v22    # "rawX":I
    .end local v23    # "rawY":I
    .end local v34    # "urlSpans":[Landroid/text/style/URLSpan;
    :cond_17
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v38

    goto/16 :goto_3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .local v0, "isPassword":Z
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v2

    .local v2, "isPassword":Z
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    if-ne v4, v5, :cond_2

    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    :cond_2
    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget v4, v4, Landroid/widget/Editor;->mInputType:I

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentInvalid(Z)V

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x100

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v4, 0x200

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v4, 0x1f

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v4

    if-eqz v4, :cond_5

    const/high16 v4, 0x20000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x4000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x8000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_8

    const/high16 v4, 0x10000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_8
    iget-object v4, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    array-length v3, v4

    .local v3, "numFilters":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_a

    iget-object v4, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    aget-object v0, v4, v1

    .local v0, "filter":Landroid/text/InputFilter;
    instance-of v4, v0, Landroid/text/InputFilter$LengthFilter;

    if-eqz v4, :cond_9

    check-cast v0, Landroid/text/InputFilter$LengthFilter;

    .end local v0    # "filter":Landroid/text/InputFilter;
    invoke-virtual {v0}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    :cond_b
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v11, 0x14

    const/16 v10, 0x13

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x10d

    if-ne p1, v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Landroid/widget/TextView;->mClipboardDataFormat:I

    iget-object v9, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-virtual {v6, v7, v8, v9}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    move-result v2

    .local v2, "clipdata":Z
    if-nez v2, :cond_0

    const-string v6, "TextView"

    const-string v7, "clip board is not shown"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "clipdata":Z
    :cond_0
    if-eq p1, v10, :cond_1

    if-eq p1, v11, :cond_1

    const/16 v6, 0x15

    if-eq p1, v6, :cond_1

    const/16 v6, 0x16

    if-ne p1, v6, :cond_5

    :cond_1
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    :cond_2
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v6, v6, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    :cond_3
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v3, v6, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    if-eqz v6, :cond_5

    iput-boolean v5, p0, Landroid/widget/TextView;->mChangedSelectionBySIP:Z

    :cond_5
    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, v6}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v4

    .local v4, "which":I
    if-nez v4, :cond_7

    const/16 v1, 0x102

    .local v1, "ccSource":I
    const/4 v0, 0x6

    .local v0, "ccFlag":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v6

    const/16 v7, 0x102

    if-ne v6, v7, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_6

    move v3, v5

    .local v3, "isKeyFromCursorControl":Z
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_8

    if-eqz v3, :cond_8

    if-eq p1, v10, :cond_7

    if-ne p1, v11, :cond_8

    .end local v0    # "ccFlag":I
    .end local v1    # "ccSource":I
    .end local v3    # "isKeyFromCursorControl":Z
    :cond_7
    :goto_0
    return v5

    .restart local v0    # "ccFlag":I
    .restart local v1    # "ccSource":I
    .restart local v3    # "isKeyFromCursorControl":Z
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .local v0, "down":Landroid/view/KeyEvent;
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    .local v2, "which":I
    if-nez v2, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    invoke-static {p3, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .local v1, "up":Landroid/view/KeyEvent;
    if-ne v2, v4, :cond_4

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    :goto_2
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v5, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    const/4 v0, 0x0

    .local v0, "isInSelectionMode":Z
    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v3, v3, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v3, :cond_3

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .end local v0    # "isInSelectionMode":Z
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    :goto_1
    return v2

    .restart local v0    # "isInSelectionMode":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_5

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto :goto_1

    .end local v0    # "isInSelectionMode":Z
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v0, v1, -0x7001

    .local v0, "filteredMetaState":I
    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, #android:id@selectAll#t

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, #android:id@cut#t

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, #android:id@copy#t

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, #android:id@paste#t

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->canDelete()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, #android:id@deleteText#t

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Landroid/widget/TextView;->canRedo()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, #android:id@redo#t

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Landroid/widget/TextView;->canUndo()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, #android:id@undo#t

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0

    .line 1813
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_2
        0x20 -> :sswitch_4
        0x32 -> :sswitch_3
        0x34 -> :sswitch_1
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
    .end sparse-switch
.end method

.method public onKeyTextMultiSelection(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TextView;->mhasMultiSelection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->clearMultiSelection()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyTextMultiSelection(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x82

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_0
    return v5

    :cond_0
    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v5

    if-nez v5, :cond_1

    iput-boolean v7, p0, Landroid/widget/TextView;->mPreventDefaultMovement:Z

    :cond_1
    sparse-switch p1, :sswitch_data_0

    :cond_2
    const/16 v5, 0x3b

    if-eq p1, v5, :cond_3

    const/16 v5, 0x3c

    if-ne p1, v5, :cond_5

    :cond_3
    iget-boolean v5, p0, Landroid/widget/TextView;->mChangedSelectionBySIP:Z

    if-eqz v5, :cond_5

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    .local v0, "accessoryKeyboardState":I
    and-int/lit8 v5, v0, 0x7

    if-nez v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .local v3, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .local v1, "end":I
    if-le v3, v1, :cond_4

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_4
    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .end local v0    # "accessoryKeyboardState":I
    .end local v1    # "end":I
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "start":I
    :cond_5
    iput-boolean v7, p0, Landroid/widget/TextView;->mChangedSelectionBySIP:Z

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, v5, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    invoke-interface {v7, p0, v5, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v6

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Editable;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2, p0, v7}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v5, v5, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-boolean v5, v5, Landroid/widget/Editor$InputContentType;->enterDown:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-boolean v7, v5, Landroid/widget/Editor$InputContentType;->enterDown:Z

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v5, v5, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v5, p0, v7, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_8

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_a

    invoke-virtual {v4, v8}, Landroid/view/View;->requestFocus(I)Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v5, v6

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_b

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_b

    invoke-virtual {v2, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v2, v5, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "v":Landroid/view/View;
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    :cond_c
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v5, :cond_d

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_d

    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v7, p0, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v5, v6

    goto/16 :goto_0

    :cond_d
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    if-ltz v1, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mDeferScroll:I

    .local v0, "curs":I
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TextView;->mDeferScroll:I

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .end local v0    # "curs":I
    :cond_0
    return-void
.end method

.method onLocaleChanged()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 30
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    .local v24, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .local v14, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    .local v25, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .local v15, "heightSize":I
    sget-object v5, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .local v5, "boring":Landroid/text/BoringLayout$Metrics;
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .local v6, "hintBoring":Landroid/text/BoringLayout$Metrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    :cond_0
    const/4 v9, -0x1

    .local v9, "des":I
    const/4 v12, 0x0

    .local v12, "fromexisting":Z
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v24

    if-ne v0, v2, :cond_8

    move/from16 v22, v25

    .local v22, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v3, v2, v7

    .local v3, "want":I
    move/from16 v21, v3

    .local v21, "unpaddedWidth":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v2, :cond_2

    const/high16 v3, 0x100000

    :cond_2
    move v4, v3

    .local v4, "hintWant":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v2, :cond_18

    move/from16 v17, v4

    .local v17, "hintWidth":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    :cond_3
    :goto_2
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v14, v2, :cond_22

    move v13, v15

    .local v13, "height":I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int v2, v13, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int v20, v2, v7

    .local v20, "unpaddedHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v20

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    move/from16 v0, v21

    if-gt v2, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    move/from16 v0, v20

    if-le v2, v0, :cond_23

    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v7, 0x2

    if-lt v2, v7, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v7, -0x2

    if-ne v2, v7, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v7, 0xe48

    if-lt v2, v7, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v7, 0xe4f

    if-gt v2, v7, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    invoke-virtual {v2, v7, v8, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v2, v0

    add-int v22, v22, v2

    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 7326
    return-void

    .end local v3    # "want":I
    .end local v4    # "hintWant":I
    .end local v13    # "height":I
    .end local v17    # "hintWidth":I
    .end local v20    # "unpaddedHeight":I
    .end local v21    # "unpaddedWidth":I
    .end local v22    # "width":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v9

    :cond_9
    if-gez v9, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    :cond_a
    :goto_5
    if-eqz v5, :cond_b

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v5, v2, :cond_14

    :cond_b
    if-gez v9, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v9, v2

    :cond_c
    move/from16 v22, v9

    .restart local v22    # "width":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v11, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v11, :cond_d

    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    iget v2, v11, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_12

    const/16 v16, -0x1

    .local v16, "hintDes":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-static {v2}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v16

    :cond_e
    if-gez v16, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v2, v7, v8, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    :cond_f
    if-eqz v6, :cond_10

    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v6, v2, :cond_15

    :cond_10
    if-gez v16, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    invoke-static {v2}, Landroid/util/FloatMath;->ceil(F)F

    move-result v2

    float-to-int v0, v2

    move/from16 v16, v0

    :cond_11
    move/from16 v17, v16

    .restart local v17    # "hintWidth":I
    :goto_7
    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_12

    move/from16 v22, v17

    .end local v16    # "hintDes":I
    .end local v17    # "hintWidth":I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    add-int/2addr v2, v7

    add-int v22, v22, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v22

    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidthMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    mul-int/2addr v2, v7

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    const/high16 v2, -0x80000000

    move/from16 v0, v24

    if-ne v0, v2, :cond_1

    move/from16 v0, v25

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    goto/16 :goto_0

    .end local v11    # "dr":Landroid/widget/TextView$Drawables;
    .end local v22    # "width":I
    :cond_13
    const/4 v12, 0x1

    goto/16 :goto_5

    :cond_14
    iget v0, v5, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v22, v0

    .restart local v22    # "width":I
    goto/16 :goto_6

    .restart local v11    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v16    # "hintDes":I
    :cond_15
    iget v0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v17, v0

    .restart local v17    # "hintWidth":I
    goto :goto_7

    .end local v16    # "hintDes":I
    .end local v17    # "hintWidth":I
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxWidth:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v22

    goto :goto_8

    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMinWidth:I

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto :goto_9

    .end local v11    # "dr":Landroid/widget/TextView$Drawables;
    .restart local v3    # "want":I
    .restart local v4    # "hintWant":I
    .restart local v21    # "unpaddedWidth":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v17

    goto/16 :goto_1

    .restart local v17    # "hintWidth":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-ne v2, v3, :cond_1a

    move/from16 v0, v17

    if-ne v0, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int v7, v22, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    if-eq v2, v7, :cond_1e

    :cond_1a
    const/16 v18, 0x1

    .local v18, "layoutChanged":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-le v3, v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v2, v2, Landroid/text/BoringLayout;

    if-nez v2, :cond_1b

    if-eqz v12, :cond_1f

    if-ltz v9, :cond_1f

    if-gt v9, v3, :cond_1f

    :cond_1b
    const/16 v23, 0x1

    .local v23, "widthChanged":Z
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaxMode:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaxMode:I

    if-ne v2, v7, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/TextView;->mMaximum:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/TextView;->mOldMaximum:I

    if-eq v2, v7, :cond_20

    :cond_1c
    const/16 v19, 0x1

    .local v19, "maximumChanged":Z
    :goto_c
    if-nez v18, :cond_1d

    if-eqz v19, :cond_3

    :cond_1d
    if-nez v19, :cond_21

    if-eqz v23, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v3}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto/16 :goto_2

    .end local v18    # "layoutChanged":Z
    .end local v19    # "maximumChanged":Z
    .end local v23    # "widthChanged":Z
    :cond_1e
    const/16 v18, 0x0

    goto :goto_a

    .restart local v18    # "layoutChanged":Z
    :cond_1f
    const/16 v23, 0x0

    goto :goto_b

    .restart local v23    # "widthChanged":Z
    :cond_20
    const/16 v19, 0x0

    goto :goto_c

    .restart local v19    # "maximumChanged":Z
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int v7, v2, v7

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->initSelectControllersPosition()V

    goto/16 :goto_2

    .end local v18    # "layoutChanged":Z
    .end local v19    # "maximumChanged":Z
    .end local v23    # "widthChanged":Z
    :cond_22
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v10

    .local v10, "desired":I
    move v13, v10

    .restart local v13    # "height":I
    move-object/from16 v0, p0

    iput v10, v0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    const/high16 v2, -0x80000000

    if-ne v14, v2, :cond_4

    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto/16 :goto_3

    .end local v10    # "desired":I
    .restart local v20    # "unpaddedHeight":I
    :cond_23
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/widget/TextView;->scrollTo(II)V

    goto/16 :goto_4
.end method

.method public onMultiSelectMenuItem(I)Z
    .locals 12
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    .local v0, "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v9, p0, Landroid/widget/TextView;->mPenSelectionController:Lcom/samsung/android/penselect/PenSelectionController;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/penselect/PenSelectionController;->getPenSelectionContents(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    .local v5, "source":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "text":Ljava/lang/CharSequence;
    if-nez v6, :cond_1

    const-string v8, "TextView"

    const-string v9, "getTextFormultiSelection() text is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return v7

    .restart local v6    # "text":Ljava/lang/CharSequence;
    :cond_1
    const v9, #android:id@multiSelectAll#t

    if-eq p1, v9, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    :cond_2
    if-nez v5, :cond_3

    const-string v8, "TextView"

    const-string v9, "Multi Selected Text String is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v9, 0x2

    new-array v3, v9, [I

    .local v3, "range":[I
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v1

    .local v1, "flag":Z
    if-nez v1, :cond_4

    aput v7, v3, v7

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    aput v9, v3, v8

    :cond_4
    check-cast v6, Landroid/text/Spannable;

    .end local v6    # "text":Ljava/lang/CharSequence;
    aget v7, v3, v7

    aget v9, v3, v8

    invoke-static {v6, v7, v9}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    invoke-direct {p0}, Landroid/widget/TextView;->showMultiSelectPopupWindow()V

    move v7, v8

    goto :goto_0

    .end local v1    # "flag":Z
    .end local v3    # "range":[I
    .restart local v6    # "text":Ljava/lang/CharSequence;
    :pswitch_1
    iget-object v9, p0, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v9, v8}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v0    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .restart local v0    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v0, v5}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    invoke-direct {p0, v0}, Landroid/widget/TextView;->setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->playCopyVibrator()Z

    move v7, v8

    goto :goto_0

    :pswitch_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v5, v7, v9}, Landroid/widget/TextView;->sendToDictionary(Ljava/lang/String;II)V

    move v7, v8

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->sendToTranslate(Ljava/lang/String;)V

    move v7, v8

    goto :goto_0

    :pswitch_4
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "send":Landroid/content/Intent;
    const-string v7, "text/plain"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, #android:string@share_via#t

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .local v2, "i":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "i":Landroid/content/Intent;
    :goto_1
    move v7, v8

    goto/16 :goto_0

    :catch_0
    move-exception v7

    goto :goto_1

    :pswitch_data_0
    .packed-switch #android:id@multiSelectAll#t
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    .local v0, "isPassword":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->shouldSpeakPasswordsForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public onPreDraw()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, "curs":I
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    :cond_1
    if-gez v0, :cond_2

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_2
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    .end local v0    # "curs":I
    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/Editor;->mCreatedWithASelection:Z

    :cond_4
    instance-of v1, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_5
    invoke-direct {p0}, Landroid/widget/TextView;->unregisterForPreDraw()V

    const/4 v1, 0x1

    return v1

    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    goto :goto_0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$Drawables;->resolveWithLayoutDirection(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    instance-of v4, p1, Landroid/widget/TextView$SavedState;

    if-nez v4, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView$SavedState;

    .local v3, "ss":Landroid/widget/TextView$SavedState;
    invoke-virtual {v3}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v4, :cond_5

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v4, :cond_5

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "len":I
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v4, v1, :cond_3

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v4, v1, :cond_6

    :cond_3
    const-string v2, ""

    .local v2, "restored":Ljava/lang/String;
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    const-string v2, "(restored) "

    :cond_4
    const-string v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved cursor position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "len":I
    .end local v2    # "restored":Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    iget-object v0, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .local v0, "error":Ljava/lang/CharSequence;
    new-instance v4, Landroid/widget/TextView$1;

    invoke-direct {v4, p0, v0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .end local v0    # "error":Ljava/lang/CharSequence;
    .restart local v1    # "len":I
    :cond_6
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    iget v5, v3, Landroid/widget/TextView$SavedState;->selStart:I

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget-boolean v4, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v4, :cond_5

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/Editor;->mFrozenWithFocus:Z

    goto :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v11

    .local v11, "superState":Landroid/os/Parcelable;
    iget-boolean v12, p0, Landroid/widget/TextView;->mIsWritingBuddyEnabled:Z

    if-eqz v12, :cond_4

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/widget/TextView;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    if-eqz v12, :cond_4

    iget-object v12, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentWritingBuddyView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {p0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    instance-of v12, p0, Landroid/widget/SearchView$SearchAutoComplete;

    if-eqz v12, :cond_4

    :cond_0
    new-instance v9, Landroid/widget/TextView$SavedState;

    invoke-direct {v9, v11}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .local v9, "ss":Landroid/widget/TextView$SavedState;
    iget-object v12, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v7

    .local v7, "selectionStart":I
    iget-object v12, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    .local v6, "selectionEnd":I
    iget-object v12, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    instance-of v12, v12, Landroid/text/Spanned;

    if-eqz v12, :cond_3

    new-instance v8, Landroid/text/SpannableString;

    iget-object v12, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-direct {v8, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v8, "sp":Landroid/text/Spannable;
    const/4 v12, 0x0

    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v13

    const-class v14, Landroid/widget/TextView$ChangeWatcher;

    invoke-interface {v8, v12, v13, v14}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView$ChangeWatcher;

    .local v0, "arr$":[Landroid/widget/TextView$ChangeWatcher;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .local v1, "cw":Landroid/widget/TextView$ChangeWatcher;
    invoke-interface {v8, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "cw":Landroid/widget/TextView$ChangeWatcher;
    :cond_1
    iput-object v8, v9, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .end local v0    # "arr$":[Landroid/widget/TextView$ChangeWatcher;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v8    # "sp":Landroid/text/Spannable;
    :goto_1
    iput v7, v9, Landroid/widget/TextView$SavedState;->selStart:I

    iput v6, v9, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v9, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v12

    if-eqz v12, :cond_2

    if-ltz v7, :cond_2

    if-ltz v6, :cond_2

    const/4 v12, 0x1

    iput-boolean v12, v9, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    :cond_2
    const-string v12, "TextView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WB.saveInstance : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "selectionEnd":I
    .end local v7    # "selectionStart":I
    .end local v9    # "ss":Landroid/widget/TextView$SavedState;
    :goto_2
    return-object v9

    .restart local v6    # "selectionEnd":I
    .restart local v7    # "selectionStart":I
    .restart local v9    # "ss":Landroid/widget/TextView$SavedState;
    :cond_3
    iget-object v12, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .end local v6    # "selectionEnd":I
    .end local v7    # "selectionStart":I
    .end local v9    # "ss":Landroid/widget/TextView$SavedState;
    :cond_4
    iget-boolean v5, p0, Landroid/widget/TextView;->mFreezesText:Z

    .local v5, "save":Z
    const/4 v10, 0x0

    .local v10, "start":I
    const/4 v2, 0x0

    .local v2, "end":I
    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v12, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-gez v10, :cond_5

    if-ltz v2, :cond_6

    :cond_5
    const/4 v5, 0x1

    :cond_6
    if-eqz v5, :cond_a

    new-instance v9, Landroid/widget/TextView$SavedState;

    invoke-direct {v9, v11}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .restart local v9    # "ss":Landroid/widget/TextView$SavedState;
    iput v10, v9, Landroid/widget/TextView$SavedState;->selStart:I

    iput v2, v9, Landroid/widget/TextView$SavedState;->selEnd:I

    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v12, v12, Landroid/text/Spanned;

    if-eqz v12, :cond_9

    new-instance v8, Landroid/text/SpannableStringBuilder;

    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v8, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v8    # "sp":Landroid/text/Spannable;
    iget-object v12, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v12, :cond_7

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    iget-object v12, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v12, v12, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v8, v12}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_7
    iput-object v8, v9, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .end local v8    # "sp":Landroid/text/Spannable;
    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v12

    if-eqz v12, :cond_8

    if-ltz v10, :cond_8

    if-ltz v2, :cond_8

    const/4 v12, 0x1

    iput-boolean v12, v9, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v9, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_9
    iget-object v12, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_3

    .end local v9    # "ss":Landroid/widget/TextView$SavedState;
    :cond_a
    move-object v9, v11

    goto :goto_2
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onScreenStateChanged(I)V

    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "horiz"    # I
    .param p2, "vert"    # I
    .param p3, "oldHoriz"    # I
    .param p4, "oldVert"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onScrollChanged()V

    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 13445
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mTemporaryDetach:Z

    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 14
    .param p1, "id"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    .local v4, "min":I
    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .local v3, "max":I
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .local v6, "selStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .local v5, "selEnd":I
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .end local v5    # "selEnd":I
    .end local v6    # "selStart":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    sparse-switch p1, :sswitch_data_0

    invoke-static/range {p0 .. p1}, Landroid/widget/TextView$FlymeInjector;->mzOnTextContextMenuItem(Landroid/widget/TextView;I)Z

    move-result v11

    if-eqz v11, :cond_flyme_0

    const/4 v9, 0x1

    return v9

    :cond_flyme_0

    move v9, v10

    :cond_1
    :goto_0
    return v9

    :sswitch_0
    iput-boolean v9, p0, Landroid/widget/TextView;->mSelectall:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->selectAllText()Z

    new-instance v10, Landroid/widget/TextView$6;

    invoke-direct {v10, p0}, Landroid/widget/TextView$6;-><init>(Landroid/widget/TextView;)V

    const-wide/16 v12, 0xfa0

    invoke-virtual {p0, v10, v12, v13}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :sswitch_1
    const/4 v10, 0x3

    iput v10, p0, Landroid/widget/TextView;->mLastAction:I

    iget-boolean v10, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    :cond_2
    invoke-direct {p0, v4, v3}, Landroid/widget/TextView;->paste(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->playPasteVibrator()Z

    goto :goto_0

    :sswitch_2
    iget-object v11, p0, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v11, v9}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v11

    if-nez v11, :cond_3

    move v9, v10

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v1    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .restart local v1    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v10, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v10, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    invoke-direct {p0, v1}, Landroid/widget/TextView;->setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V

    iget-boolean v10, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v10, :cond_4

    iput v12, p0, Landroid/widget/TextView;->mLastAction:I

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    :cond_4
    invoke-virtual {p0, v4, v3}, Landroid/widget/TextView;->deleteText_internal(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto :goto_0

    :sswitch_3
    iget-object v11, p0, Landroid/widget/TextView;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    invoke-virtual {v11, v9}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v11

    if-nez v11, :cond_5

    move v9, v10

    goto :goto_0

    :cond_5
    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v1    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .restart local v1    # "clipdata":Landroid/sec/clipboard/data/list/ClipboardDataText;
    iget-object v10, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v10, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    invoke-direct {p0, v1}, Landroid/widget/TextView;->setPrimaryClipEx(Landroid/sec/clipboard/data/list/ClipboardDataText;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    iget v12, p0, Landroid/widget/TextView;->mClipboardDataFormat:I

    iget-object v13, p0, Landroid/widget/TextView;->mPasteEvent:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-virtual {v10, v11, v12, v13}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    move-result v0

    .local v0, "cData":Z
    if-nez v0, :cond_1

    const-string v10, "TextView"

    const-string v11, "clip board is not shown"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "cData":Z
    :sswitch_5
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v10, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "source":Ljava/lang/String;
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v10}, Landroid/widget/Editor;->stopSelectionActionMode()V

    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v10, v8, v4, v3}, Landroid/widget/Editor;->translateRegister(Ljava/lang/String;II)V

    goto/16 :goto_0

    .end local v8    # "source":Ljava/lang/String;
    :sswitch_6
    invoke-direct {p0}, Landroid/widget/TextView;->boostCpuClock()V

    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEND"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "send":Landroid/content/Intent;
    iget-object v10, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v10, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "source":Ljava/lang/String;
    const-string v10, "text/plain"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.intent.extra.TEXT"

    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v10, p0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    if-eqz v10, :cond_6

    :cond_6
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, #android:string@share_via#t

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v2    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .end local v7    # "send":Landroid/content/Intent;
    .end local v8    # "source":Ljava/lang/String;
    :sswitch_7
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.WEB_SEARCH"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v7    # "send":Landroid/content/Intent;
    iget-object v10, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v10, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "source":Ljava/lang/String;
    const-string v10, "new_search"

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v10, "query"

    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v10, 0x10000000

    :try_start_1
    invoke-virtual {v7, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v10

    goto/16 :goto_0

    .end local v7    # "send":Landroid/content/Intent;
    .end local v8    # "source":Ljava/lang/String;
    :sswitch_8
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v10, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "source":Ljava/lang/String;
    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v10}, Landroid/widget/Editor;->stopSelectionActionMode()V

    iget-object v10, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v10, v8, v4, v3}, Landroid/widget/Editor;->sendToDictionary(Ljava/lang/String;II)V

    goto/16 :goto_0

    .end local v8    # "source":Ljava/lang/String;
    :sswitch_9
    iget-boolean v10, p0, Landroid/widget/TextView;->mEnableUndoRedo:Z

    if-eqz v10, :cond_7

    iput v12, p0, Landroid/widget/TextView;->mLastAction:I

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;II)Z

    :cond_7
    invoke-virtual {p0, v4, v3}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p0}, Landroid/widget/TextView;->runRedo()Z

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p0}, Landroid/widget/TextView;->runUndo()Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        #android:id@selectAll#t -> :sswitch_0
        #android:id@cut#t -> :sswitch_2
        #android:id@copy#t -> :sswitch_3
        #android:id@paste#t -> :sswitch_1
        #android:id@dictionary#t -> :sswitch_8
        #android:id@translation#t -> :sswitch_5
        #android:id@clipboard#t -> :sswitch_4
        #android:id@deleteText#t -> :sswitch_9
        #android:id@undo#t -> :sswitch_b
        #android:id@redo#t -> :sswitch_a
        #android:id@share#t -> :sswitch_6
        #android:id@websearch#t -> :sswitch_7
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7, p1}, Landroid/widget/Editor;->onTouchEventMz(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .local v4, "superResult":Z
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    if-eqz v7, :cond_2

    if-ne v0, v8, :cond_2

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v9, v7, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .end local v4    # "superResult":Z
    :cond_1
    :goto_0
    return v4

    .restart local v4    # "superResult":Z
    :cond_2
    if-ne v0, v8, :cond_b

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    if-nez v7, :cond_b

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_b

    move v6, v8

    .local v6, "touchIsFinished":Z
    :goto_1
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v7, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v7, v7, Landroid/text/Spannable;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v7, :cond_1

    const/4 v1, 0x0

    .local v1, "handled":Z
    iget-object v7, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v7, :cond_5

    iget-object v10, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    invoke-interface {v10, p0, v7, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v7

    or-int/2addr v1, v7

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    .local v5, "textIsSelectable":Z
    if-eqz v6, :cond_6

    iget-boolean v7, p0, Landroid/widget/TextView;->mLinksClickable:Z

    if-eqz v7, :cond_6

    iget v7, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    const-class v12, Landroid/text/style/ClickableSpan;

    invoke-interface {v7, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .local v3, "links":[Landroid/text/style/ClickableSpan;
    array-length v7, v3

    if-lez v7, :cond_6

    aget-object v7, v3, v9

    invoke-virtual {v7, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    const/4 v1, 0x1

    .end local v3    # "links":[Landroid/text/style/ClickableSpan;
    :cond_6
    if-eqz v6, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v5, :cond_a

    :cond_7
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v7, p1}, Landroid/widget/Editor;->onTouchUpEventMz(Landroid/view/MotionEvent;)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    if-nez v5, :cond_9

    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v7, v7, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v7, :cond_9

    if-eqz v2, :cond_8

    invoke-virtual {v2, p0, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_8

    move v9, v8

    :cond_8
    or-int/2addr v1, v9

    :cond_9
    iget-object v7, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    #invoke-virtual {v7, p1}, Landroid/widget/Editor;->onTouchUpEvent(Landroid/view/MotionEvent;)V

    const/4 v1, 0x1

    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_a
    if-eqz v1, :cond_1

    move v4, v8

    goto/16 :goto_0

    .end local v1    # "handled":Z
    .end local v5    # "textIsSelectable":Z
    .end local v6    # "touchIsFinished":Z
    :cond_b
    move v6, v9

    goto/16 :goto_1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideControllers()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->clearMultiSelection()Z

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    invoke-static/range {p0 .. p1}, Landroid/widget/TextView$FlymeInjector;->updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Landroid/widget/TextView;Z)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->onWindowFocusChanged(Z)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :sswitch_0
    const/4 v1, 0x0

    .local v1, "handled":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    const/4 v1, 0x1

    :cond_3
    iget-object v5, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spannable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->viewClicked(Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v5, v5, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_0

    .end local v1    # "handled":Z
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v5

    if-eqz v5, :cond_6

    const v5, #android:id@copy#t

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_6
    move v1, v6

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    if-eqz v5, :cond_7

    const v5, #android:id@paste#t

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_7
    move v1, v6

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    if-eqz v5, :cond_8

    const v5, #android:id@cut#t

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_8
    move v1, v6

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, "text":Ljava/lang/CharSequence;
    if-nez v4, :cond_9

    move v1, v6

    goto/16 :goto_0

    :cond_9
    if-eqz p2, :cond_b

    const-string v7, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p2, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .local v3, "start":I
    :goto_1
    if-eqz p2, :cond_c

    const-string v7, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p2, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "end":I
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    if-ne v7, v3, :cond_a

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    if-eq v7, v0, :cond_e

    :cond_a
    if-ne v3, v0, :cond_d

    if-ne v0, v5, :cond_d

    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto/16 :goto_0

    .end local v0    # "end":I
    .end local v3    # "start":I
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_b
    move v3, v5

    goto :goto_1

    .restart local v3    # "start":I
    :cond_c
    move v0, v5

    goto :goto_2

    .restart local v0    # "end":I
    :cond_d
    if-ltz v3, :cond_e

    if-gt v3, v0, :cond_e

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-gt v0, v5, :cond_e

    check-cast v4, Landroid/text/Spannable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-static {v4, v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto/16 :goto_0

    .end local v0    # "end":I
    .end local v3    # "start":I
    :cond_e
    move v1, v6

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_2
        0x10000 -> :sswitch_3
        0x20000 -> :sswitch_4
    .end sparse-switch
.end method

.method public performLongClick()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "handled":Z
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, v0}, Landroid/widget/Editor;->performLongClickMz(Z)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_3
    return v0
.end method

.method public performWBEditorAction(I)V
    .locals 22
    .param p1, "actionCode"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v3, :cond_3

    const/4 v2, 0x0

    .local v2, "ict":Landroid/widget/Editor$InputContentType;
    :goto_0
    if-eqz v2, :cond_9

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v19

    .local v19, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-interface {v3, v0, v1, v6}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    :cond_0
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_1
    const/4 v3, 0x5

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .local v20, "v":Landroid/view/View;
    if-eqz v20, :cond_2

    move-object/from16 v0, v20

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    move-object/from16 v3, v20

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {v3}, Landroid/widget/TextView;->requestWritingBuddy()Z

    move-result v3

    if-eqz v3, :cond_4

    .end local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v20    # "v":Landroid/view/View;
    :cond_2
    :goto_1
    return-void

    .end local v2    # "ict":Landroid/widget/Editor$InputContentType;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v3, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    goto :goto_0

    .restart local v2    # "ict":Landroid/widget/Editor$InputContentType;
    .restart local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v20    # "v":Landroid/view/View;
    :cond_4
    const/4 v3, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v20    # "v":Landroid/view/View;
    :cond_5
    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_7

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v20

    .restart local v20    # "v":Landroid/view/View;
    if-eqz v20, :cond_2

    move-object/from16 v0, v20

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_6

    move-object/from16 v3, v20

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {v3}, Landroid/widget/TextView;->requestWritingBuddy()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v20    # "v":Landroid/view/View;
    :cond_7
    const/4 v3, 0x6

    move/from16 v0, p1

    if-ne v0, v3, :cond_8

    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    :cond_8
    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v19    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v21

    .local v21, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v21, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x16

    move-wide v6, v4

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x16

    move-wide v10, v4

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    goto/16 :goto_1
.end method

.method public playCopyVibrator()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView$PenSelectVibrator;->playVibrator(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playPasteVibrator()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView$PenSelectVibrator;->playVibrator(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playPenSelectionVibrator()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/TextView;->mIsTouchDown:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mPenSelectVibrator:Landroid/widget/TextView$PenSelectVibrator;

    invoke-virtual {v1, v0}, Landroid/widget/TextView$PenSelectVibrator;->playVibrator(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J
    .locals 7
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "paste"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v6, 0xa

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    if-lez p1, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .local v1, "charBefore":C
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "charAfter":C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .local v3, "originalLength":I
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4, p1}, Landroid/widget/TextView;->deleteText_internal(II)V

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    .local v2, "delta":I
    add-int/2addr p1, v2

    add-int/2addr p2, v2

    .end local v0    # "charAfter":C
    .end local v1    # "charBefore":C
    .end local v2    # "delta":I
    .end local v3    # "originalLength":I
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge p2, v4, :cond_1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .restart local v1    # "charBefore":C
    iget-object v4, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v4, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0    # "charAfter":C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, p2, v4}, Landroid/widget/TextView;->deleteText_internal(II)V

    .end local v0    # "charAfter":C
    .end local v1    # "charBefore":C
    :cond_1
    :goto_1
    invoke-static {p1, p2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    .restart local v0    # "charAfter":C
    .restart local v1    # "charBefore":C
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    if-eq v1, v6, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    if-eq v0, v6, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .restart local v3    # "originalLength":I
    const-string v4, " "

    invoke-virtual {p0, p1, p1, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    .restart local v2    # "delta":I
    add-int/2addr p1, v2

    add-int/2addr p2, v2

    goto :goto_0

    .end local v2    # "delta":I
    .end local v3    # "originalLength":I
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v1, v6, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v0, v6, :cond_1

    const-string v4, " "

    invoke-virtual {p0, p2, p2, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public registerForTouchMonitorListener()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Landroid/widget/TextView;->mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->removeForTouchMonitorListener()V

    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getMotionEventMonitor()Landroid/view/ViewRootImpl$MotionEventMonitor;

    move-result-object v0

    .local v0, "monitor":Landroid/view/ViewRootImpl$MotionEventMonitor;
    new-instance v2, Landroid/widget/TextView$TouchMonitorListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/TextView$TouchMonitorListener;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    sput-object v2, Landroid/widget/TextView;->mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    sget-object v2, Landroid/widget/TextView;->mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$MotionEventMonitor;->registerMotionEventMonitor(Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;)V

    goto :goto_0
.end method

.method removeAdjacentSuggestionSpans(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Editable;

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Editable;

    .local v5, "text":Landroid/text/Editable;
    const-class v6, Landroid/text/style/SuggestionSpan;

    invoke-interface {v5, p1, p1, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/SuggestionSpan;

    .local v4, "spans":[Landroid/text/style/SuggestionSpan;
    array-length v1, v4

    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .local v3, "spanStart":I
    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .local v2, "spanEnd":I
    if-eq v2, p1, :cond_2

    if-ne v3, p1, :cond_3

    :cond_2
    invoke-static {v5, p1, p1, v3, v2}, Landroid/widget/SpellChecker;->haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z

    move-result v6

    if-eqz v6, :cond_3

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeForTouchMonitorListener()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .local v1, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Landroid/widget/TextView;->mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getMotionEventMonitor()Landroid/view/ViewRootImpl$MotionEventMonitor;

    move-result-object v0

    .local v0, "monitor":Landroid/view/ViewRootImpl$MotionEventMonitor;
    sget-object v2, Landroid/widget/TextView;->mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$MotionEventMonitor;->unregisterMotionEventMonitor(Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;)V

    const/4 v2, 0x0

    sput-object v2, Landroid/widget/TextView;->mMotionEventMonitorListener:Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    goto :goto_0
.end method

.method removeMisspelledSpans(Landroid/text/Spannable;)V
    .locals 6
    .param p1, "spannable"    # Landroid/text/Spannable;

    .prologue
    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .local v2, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .local v0, "flags":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_0

    aget-object v3, v2, v1

    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "flags":I
    :cond_1
    return-void
.end method

.method removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/text/Spannable;

    .local v1, "spannable":Landroid/text/Spannable;
    :goto_0
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .local v2, "spans":[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "spans":[Landroid/text/style/SuggestionSpan;
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v1    # "spannable":Landroid/text/Spannable;
    move-object p1, v1

    goto :goto_0

    .end local v1    # "spannable":Landroid/text/Spannable;
    :cond_1
    return-object p1
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, "i":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public removeTextEffect(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->removeTextEffect(I)V

    return-void
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public resetErrorChangedFlag()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    :cond_0
    return-void
.end method

.method protected resetResolvedDrawables()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/view/View;->resetResolvedDrawables()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView;->mLastLayoutDirection:I

    return-void
.end method

.method runRedo()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .local v1, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, "end":I
    const/4 v2, 0x5

    iput v2, p0, Landroid/widget/TextView;->mLastAction:I

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;)Z

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5, v2, v3}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    iget v3, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iget v4, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget v2, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iput v2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v2, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    iput v2, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    iput v1, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iput v0, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    iget-object v2, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    iput v5, p0, Landroid/widget/TextView;->mLastAction:I

    const/4 v2, 0x1

    return v2
.end method

.method runUndo()Z
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .local v2, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "isPastingText":Z
    iget v3, p0, Landroid/widget/TextView;->mLastAction:I

    if-ne v3, v7, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/TextView;->mLastAction:I

    invoke-virtual {p0}, Landroid/widget/TextView;->clearComposingText()V

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;)Z

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6, v3, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    iget v4, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    iget v5, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget v3, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iput v3, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iget v3, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    iput v3, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    iput v2, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iput v0, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    iget-object v3, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iput v7, p0, Landroid/widget/TextView;->mLastAction:I

    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_1
    iput v6, p0, Landroid/widget/TextView;->mLastAction:I

    goto :goto_0
.end method

.method savePreText(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    :goto_0
    iput v1, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iput v1, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method savePreText(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->savePreText(Ljava/lang/CharSequence;)Z

    move-result v0

    .local v0, "ret":Z
    iput p2, p0, Landroid/widget/TextView;->mPretextCurPosStart:I

    iput p3, p0, Landroid/widget/TextView;->mPretextCurPosEnd:I

    return v0
.end method

.method saveRedoText(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    :goto_0
    iput v1, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iput v1, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method saveUndoText(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mPreText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/widget/TextView;->mRedoText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    :goto_0
    iput v1, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iput v1, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Landroid/widget/TextView;->mUndoText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method saveUndoText(Ljava/lang/CharSequence;II)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->saveUndoText(Ljava/lang/CharSequence;)Z

    move-result v0

    .local v0, "ret":Z
    iput p2, p0, Landroid/widget/TextView;->mLastCurPosStart:I

    iput p3, p0, Landroid/widget/TextView;->mLastCurPosEnd:I

    return v0
.end method

.method selectAllText()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .local v0, "length":I
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->showNewActionPopupWindow()V

    :cond_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "beforeText"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "removedCount"    # I
    .param p4, "addedCount"    # I

    .prologue
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextWatcher;

    invoke-interface {v3, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    const/4 v7, 0x0

    iget-object v4, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/TextWatcher;

    invoke-interface {v4, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->clearMultiSelection()Z

    iget-boolean v4, p0, Landroid/widget/TextView;->mUseDisplayText:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroid/widget/TextView;->mSkipUpdateDisplayText:Z

    if-nez v4, :cond_2

    new-instance v4, Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v4, p0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    .local v3, "sp":Landroid/text/Spannable;
    iget-object v4, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    if-nez v4, :cond_1

    new-instance v4, Landroid/widget/TextView$ChangeWatcher;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v4, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    iget-object v5, p0, Landroid/widget/TextView;->mDisplayText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const v6, 0x640012

    invoke-interface {v3, v4, v7, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .end local v3    # "sp":Landroid/text/Spannable;
    :cond_2
    iput-boolean v7, p0, Landroid/widget/TextView;->mSkipUpdateDisplayText:Z

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v4, p2, p4}, Landroid/widget/Editor;->sendOnTextChanged(II)V

    :cond_3
    return-void
.end method

.method public sendToDictionary(Ljava/lang/String;II)V
    .locals 6
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v5, 0x20

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "keyword"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "force"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public sendToTranslate(Ljava/lang/String;)V
    .locals 9
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const-string v0, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    .local v0, "ACTION_SEC_TRANSLATE":Ljava/lang/String;
    const-string v3, "mode"

    .local v3, "EXTRA_NAME_MODE":Ljava/lang/String;
    const-string v4, "source_text"

    .local v4, "EXTRA_NAME_SOURCE_TEXT":Ljava/lang/String;
    const-string v1, "auto_start_translation"

    .local v1, "EXTRA_NAME_AUTO_START":Ljava/lang/String;
    const-string v2, "client_id"

    .local v2, "EXTRA_NAME_CLIENT_ID":Ljava/lang/String;
    const-string v5, "viewer"

    .local v5, "EXTRA_VALUE_VIEWER_MODE":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .local v6, "intent":Landroid/content/Intent;
    const-string v7, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "mode"

    const-string v8, "viewer"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "source_text"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "auto_start_translation"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "client_id"

    const-string v8, "XGPPDdj5SG"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setAccessibilitySelection(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionStart()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getAccessibilitySelectionEnd()I

    move-result v1

    if-ne v1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hideControllers()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_2

    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_2
    check-cast v0, Landroid/text/Spannable;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_0
.end method

.method public setAllCaps(Z)V
    .locals 2
    .param p1, "allCaps"    # Z

    .prologue
    if-eqz p1, :cond_0

    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public final setAutoLinkMask(I)V
    .locals 0
    .param p1, "mask"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 2
    .param p1, "pad"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v0, "dr":Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v0    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_2
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_2

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    :cond_2
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_6

    :cond_3
    const/4 v2, 0x1

    .local v2, "drawables":Z
    :goto_0
    if-nez v2, :cond_c

    if-eqz v1, :cond_4

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v5, :cond_7

    iput-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void

    .end local v2    # "drawables":Z
    :cond_6
    move v2, v4

    goto :goto_0

    .restart local v2    # "drawables":Z
    :cond_7
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_8

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_8
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_9

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_9
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_a
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 8137
    :cond_b
    iput-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    :cond_c
    if-nez v1, :cond_d

    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 8148
    :cond_d
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v4, v5, Landroid/widget/TextView$Drawables;->mOverride:Z

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq v5, p1, :cond_e

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_e

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_e
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v5, p2, :cond_f

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_f

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_f
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq v5, p3, :cond_10

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_10

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_10
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v5, p4, :cond_11

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_11

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_11
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .local v3, "state":[I
    if-eqz p1, :cond_12

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    :goto_2
    if-eqz p3, :cond_13

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_3
    if-eqz p2, :cond_14

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    :goto_4
    if-eqz p4, :cond_15

    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    :cond_12
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    goto :goto_2

    :cond_13
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_3

    :cond_14
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    :cond_15
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .local v1, "dr":Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_2

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    iget-object v6, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :cond_2
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_5

    :cond_3
    move v2, v5

    .local v2, "drawables":Z
    :goto_0
    if-nez v2, :cond_b

    if-eqz v1, :cond_4

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v5, :cond_6

    iput-object v7, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->resetResolvedDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->resolveDrawables()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void

    .end local v2    # "drawables":Z
    :cond_5
    move v2, v4

    goto :goto_0

    .restart local v2    # "drawables":Z
    :cond_6
    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_7
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_8

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_8
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_9

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_9
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_a
    iput-object v7, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    :cond_b
    if-nez v1, :cond_c

    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1    # "dr":Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView$Drawables;-><init>(Landroid/content/Context;)V

    .restart local v1    # "dr":Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    :cond_c
    iget-object v6, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iput-boolean v5, v6, Landroid/widget/TextView$Drawables;->mOverride:Z

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq v5, p1, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_d

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_d
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v5, p2, :cond_e

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_e

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_e
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eq v5, p3, :cond_f

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_f

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_f
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v5, p4, :cond_10

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_10

    iget-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_10
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .local v3, "state":[I
    if-eqz p1, :cond_11

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    :goto_2
    if-eqz p3, :cond_12

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    :goto_3
    if-eqz p2, :cond_13

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    :goto_4
    if-eqz p4, :cond_14

    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    :cond_11
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    goto :goto_2

    :cond_12
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    goto :goto_3

    :cond_13
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    :cond_14
    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v4, v3, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_2
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCursorColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 9857
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mCursorVisible:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->makeBlink()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    goto :goto_0
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method public setDeviceDefaultTheme(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/TextView;->mThemeIsDeviceDefault:Z

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->setDeviceDefaultTheme(Z)V

    return-void
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/text/Editable$Factory;

    .prologue
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setElegantTextHeight(Z)V
    .locals 1
    .param p1, "elegant"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setElegantTextHeight(Z)V

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    const/4 v1, -0x1

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->KEYWORD:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_1

    iput v1, p0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    iput v1, p0, Landroid/widget/TextView;->mEllipsisKeywordCount:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;II)V
    .locals 1
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p2, "keywordStart"    # I
    .param p3, "keywordCount"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iput p2, p0, Landroid/widget/TextView;->mEllipsisKeywordStart:I

    iput p3, p0, Landroid/widget/TextView;->mEllipsisKeywordCount:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0
.end method

.method public setEms(I)V
    .locals 1
    .param p1, "ems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->prepareCursorControllers()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, #android:drawable@indicator_input_error#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 8
    .param p1, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .local v1, "content":Landroid/text/Editable;
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    if-nez v1, :cond_4

    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .local v3, "sp":Landroid/text/Spannable;
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v0

    .local v0, "N":I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .local v4, "start":I
    if-gez v4, :cond_8

    const/4 v4, 0x0

    :cond_1
    :goto_1
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .local v2, "end":I
    if-gez v2, :cond_9

    const/4 v2, 0x0

    :cond_2
    :goto_2
    invoke-static {v3, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    instance-of v5, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_3
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_a

    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    :goto_3
    return-void

    .end local v0    # "N":I
    .end local v2    # "end":I
    .end local v3    # "sp":Landroid/text/Spannable;
    .end local v4    # "start":I
    :cond_4
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-gez v5, :cond_5

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v1, v7, v5}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    iget-object v6, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .restart local v0    # "N":I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .restart local v4    # "start":I
    if-le v4, v0, :cond_6

    move v4, v0

    :cond_6
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .restart local v2    # "end":I
    if-le v2, v0, :cond_7

    move v2, v0

    :cond_7
    invoke-static {v1, v4, v2}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v4, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .end local v2    # "end":I
    .restart local v3    # "sp":Landroid/text/Spannable;
    :cond_8
    if-le v4, v0, :cond_1

    move v4, v0

    goto :goto_1

    .restart local v2    # "end":I
    :cond_9
    if-le v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    :cond_a
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_3
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 1
    .param p1, "req"    # Landroid/view/inputmethod/ExtractedTextRequest;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    iput-object p1, v0, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideControllers()V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    :cond_1
    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontFeatureSettings"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->setFrame()V

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    return v0
.end method

.method public setFreezesText(Z)V
    .locals 0
    .param p1, "freezesText"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 8
    .param p1, "gravity"    # I

    .prologue
    const v4, 0x800007

    and-int v0, p1, v4

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    const/4 v7, 0x0

    .local v7, "newLayout":Z
    and-int v0, p1, v4

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/2addr v3, v4

    if-eq v0, v3, :cond_2

    const/4 v7, 0x1

    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    if-eqz v7, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 8027
    .local v1, "want":I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_5

    const/4 v2, 0x0

    .line 8034
    .local v2, "hintWant":I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/widget/TextView;->mRight:I

    iget v5, p0, Landroid/widget/TextView;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .end local v1    # "want":I
    .end local v2    # "hintWant":I
    :cond_4
    return-void

    .restart local v1    # "want":I
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setHint(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setStringName(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setStringName(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    :cond_3
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1
    .param p1, "whether"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "actionId"    # I

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p2, v0, Landroid/widget/Editor$InputContentType;->imeActionId:I

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput p1, v0, Landroid/widget/Editor$InputContentType;->imeOptions:I

    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1
    .param p1, "includepad"    # Z

    .prologue
    iget-boolean v0, p0, Landroid/widget/TextView;->mIncludePad:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInputExtras(I)V
    .locals 3
    .param p1, "xmlResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iget-object v2, v2, Landroid/widget/Editor$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    return-void
.end method

.method public setInputType(I)V
    .locals 11
    .param p1, "type"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    invoke-static {v9}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v5

    .local v5, "wasPassword":Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v9

    invoke-static {v9}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v6

    .local v6, "wasVisiblePassword":Z
    invoke-direct {p0, p1, v8}, Landroid/widget/TextView;->setInputType(IZ)V

    invoke-static {p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    .local v2, "isPassword":Z
    invoke-static {p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v3

    .local v3, "isVisiblePassword":Z
    const/4 v0, 0x0

    .local v0, "forceUpdate":Z
    if-eqz v2, :cond_7

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/widget/TextView;->isMultilineInputType(I)Z

    move-result v9

    if-nez v9, :cond_a

    move v4, v7

    .local v4, "singleLine":Z
    :goto_1
    iget-boolean v9, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-ne v9, v4, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    if-nez v2, :cond_2

    move v8, v7

    :cond_2
    invoke-direct {p0, v4, v8, v7}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->removeSuggestionSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    :cond_4
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0, p1}, Landroid/widget/TextView;->logLetterMode(I)V

    :cond_5
    invoke-static/range {p0 .. p0}, Landroid/widget/TextView$FlymeInjector;->updateCurrentCursorVisbilityOnFocusOrInputTypeChangedIfHasFocus(Landroid/widget/TextView;)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_6

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_6
    return-void

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v4    # "singleLine":Z
    :cond_7
    if-eqz v3, :cond_8

    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    if-nez v5, :cond_9

    if-eqz v6, :cond_0

    :cond_9
    const/4 v9, 0x0

    invoke-direct {p0, v9, v10, v10}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    iget-object v9, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v10

    if-ne v9, v10, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    move v4, v8

    goto :goto_1
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 4
    .param p1, "input"    # Landroid/text/method/KeyListener;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {v3}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v3

    iput v3, v2, Landroid/widget/Editor;->mInputType:I
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    :cond_0
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_1
    return-void

    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IncompatibleClassChangeError;
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x1

    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IncompatibleClassChangeError;
    :cond_2
    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/Editor;->mInputType:I

    goto :goto_1
.end method

.method public setLetterSpacing(F)V
    .locals 1
    .param p1, "letterSpacing"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 1
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mSpacingAdd:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mSpacingMult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .param p1, "lines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 0
    .param p1, "whether"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0
    .param p1, "marqueeLimit"    # I

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    return-void
.end method

.method public setMaxEms(I)V
    .locals 1
    .param p1, "maxems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1, "maxpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinEms(I)V
    .locals 1
    .param p1, "minems"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "minHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinLines(I)V
    .locals 1
    .param p1, "minlines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "minpixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .param p1, "movement"    # Landroid/text/method/MovementMethod;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_1
    return-void
.end method

.method public setMyanmarEncoding(I)V
    .locals 2
    .param p1, "myanmarEncoding"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_AUTO:Landroid/graphics/Paint$MyanmarEncoding;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V
    .locals 1
    .param p1, "myanmarEncoding"    # Landroid/graphics/Paint$MyanmarEncoding;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getMyanmarEncoding()Landroid/graphics/Paint$MyanmarEncoding;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setNewActionPopupMenu(IZ)V
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "value"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Editor;->setNewActionPopupMenu(IZ)V

    :cond_0
    return-void
.end method

.method public setOnDragResult(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/TextView;->mOnDragResult:Z

    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mPaddingLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingRight:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v0

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setPaintFlags(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->createInputContentTypeIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    iput-object p1, v0, Landroid/widget/Editor$InputContentType;->privateImeOptions:Ljava/lang/String;

    return-void
.end method

.method public setRawInputType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput p1, v0, Landroid/widget/Editor;->mInputType:I

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/TextView;->logLetterMode(I)V

    goto :goto_0
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0
    .param p1, "s"    # Landroid/widget/Scroller;

    .prologue
    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 2
    .param p1, "selectAllOnFocus"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    return-void
.end method

.method public setSelected(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "selected"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    .local v0, "wasSelected":Z
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method public setShadowLayer(FFFI)V
    .locals 1
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "color"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    iput p4, p0, Landroid/widget/TextView;->mShadowColor:I

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setShowSoftInputOnFocus(Z)V
    .locals 1
    .param p1, "show"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .param p1, "singleLine"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/widget/TextView;->setInputTypeSingleLine(Z)V

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/TextView;->applySingleLine(ZZZ)V

    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 1
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 1
    .param p1, "factory"    # Landroid/text/Spannable$Factory;

    .prologue
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setStringName(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method public final setStringName(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/TextView;->fromResLock:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringNames(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView;->mStringName:Ljava/lang/CharSequence;

    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method public final setText(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setStringName(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "resid"    # I
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setStringName(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 v1, 0x0

    # setter for: Landroid/widget/TextView$CharWrapper;->mChars:[C
    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->access$102(Landroid/widget/TextView$CharWrapper;[C)[C

    :cond_0
    return-void
.end method

.method public final setText([CII)V
    .locals 4
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "oldlen":I
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_3

    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    return-void

    :cond_2
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_1
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    sget-object v11, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v11}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "appearance":Landroid/content/res/TypedArray;
    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .local v1, "color":I
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_0
    const/4 v11, 0x3

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .local v2, "colors":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .local v9, "ts":I
    if-eqz v9, :cond_2

    int-to-float v11, v9

    invoke-direct {p0, v11}, Landroid/widget/TextView;->setRawTextSize(F)V

    :cond_2
    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    const/4 v11, 0x6

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    const/16 v11, 0xc

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "familyName":Ljava/lang/String;
    const/4 v11, 0x1

    const/4 v12, -0x1

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .local v10, "typefaceIndex":I
    const/4 v11, 0x2

    const/4 v12, -0x1

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .local v8, "styleIndex":I
    invoke-direct {p0, v5, v10, v8}, Landroid/widget/TextView;->setTypefaceFromAttrs(Ljava/lang/String;II)V

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .local v7, "shadowcolor":I
    if-eqz v7, :cond_5

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .local v3, "dx":F
    const/16 v11, 0x9

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .local v4, "dy":F
    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .local v6, "r":F
    invoke-virtual {p0, v6, v3, v4, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v6    # "r":F
    :cond_5
    const/16 v11, 0xb

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v11, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v11}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_6
    const/16 v11, 0xd

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0xd

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    invoke-virtual {p0, v11}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_7
    const/16 v11, 0xe

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0xe

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    invoke-virtual {p0, v11}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :cond_8
    const/16 v11, 0xf

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v11, 0xf

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    return-void
.end method

.method public setTextEffectOpacity(F)V
    .locals 1
    .param p1, "blendingOpacity"    # F

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextEffectOpacity(F)V

    return-void
.end method

.method public setTextIsSelectable(Z)V
    .locals 2
    .param p1, "selectable"    # Z

    .prologue
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isMultiPenSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/widget/TextView;->registerForStylusPenEvent()V

    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean p1, v0, Landroid/widget/Editor;->mTextIsSelectable:Z

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLongClickable(Z)V

    if-eqz p1, :cond_4

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_5

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    :goto_3
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->prepareCursorControllers()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/widget/TextView;->sSpenUspLevel:I

    if-lez v0, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Landroid/widget/TextView;->mAttachedWindow:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/TextView;->registerForStylusPenEvent()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_3
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .local v2, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, "end":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "len":I
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    if-gez v2, :cond_0

    if-ltz v0, :cond_1

    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 3
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "r":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    return-void

    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1    # "r":Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 4
    .param p1, "method"    # Landroid/text/method/TransformationMethod;

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spannable;

    iget-object v3, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v1, p1, Landroid/text/method/TransformationMethod2;

    if-eqz v1, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/text/method/TransformationMethod2;

    .local v0, "method2":Landroid/text/method/TransformationMethod2;
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    iget-boolean v1, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    invoke-interface {v0, v1}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :goto_2
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    goto :goto_0

    .restart local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_3
    move v1, v2

    goto :goto_1

    .end local v0    # "method2":Landroid/text/method/TransformationMethod2;
    :cond_4
    iput-boolean v2, p0, Landroid/widget/TextView;->mAllowTransformationLengthChange:Z

    goto :goto_2
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .local v1, "typefaceStyle":I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .local v0, "need":I
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    .line 11960
    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x41800000    # -0.25f

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :goto_3
    return-void

    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .restart local v0    # "need":I
    .restart local v1    # "typefaceStyle":I
    :cond_3
    move v2, v3

    goto :goto_2

    .end local v0    # "need":I
    .end local v1    # "typefaceStyle":I
    :cond_4
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 7657
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public final setUndoManager(Landroid/content/UndoManager;Ljava/lang/String;)V
    .locals 3
    .param p1, "undoManager"    # Landroid/content/UndoManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/widget/TextView;->createEditorIfNeeded()V

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object p1, v0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {p1, p2, p0}, Landroid/content/UndoManager;->getOwner(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/UndoOwner;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    new-instance v1, Landroid/widget/Editor$UndoInputFilter;

    iget-object v2, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-direct {v1, v2}, Landroid/widget/Editor$UndoInputFilter;-><init>(Landroid/widget/Editor;)V

    iput-object v1, v0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/text/InputFilter;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v1, v0, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v1, v0, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-object v1, v0, Landroid/widget/Editor;->mUndoInputFilter:Landroid/text/InputFilter;

    .line 7663
    goto :goto_0
.end method

.method public setWBPositionListenerEnalbed(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->setWBPositionListenerEnalbed(Z)V

    :cond_0
    return-void
.end method

.method public setWBTextBuffer(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Landroid/widget/TextView;->mWBTextBuffer:Ljava/lang/CharSequence;

    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "pixels"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 9
    .param p1, "buf"    # Landroid/text/Spanned;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "oldStart"    # I
    .param p4, "newStart"    # I
    .param p5, "oldEnd"    # I
    .param p6, "newEnd"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .local v5, "selChanged":Z
    const/4 v4, -0x1

    .local v4, "newSelStart":I
    const/4 v3, -0x1

    .local v3, "newSelEnd":I
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v6, :cond_19

    const/4 v1, 0x0

    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    :goto_0
    const/4 v2, 0x0

    .local v2, "multiSelChanged":Z
    sget-object v6, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    if-ne p2, v6, :cond_1

    const/4 v2, 0x1

    move v3, p4

    if-gez p3, :cond_0

    if-ltz p4, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-direct {p0, v6, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->makeBlink()V

    :cond_1
    sget-object v6, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    if-ne p2, v6, :cond_3

    const/4 v2, 0x1

    move v4, p4

    if-gez p3, :cond_2

    if-ltz p4, :cond_3

    :cond_2
    invoke-static {p1}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, "end":I
    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .end local v0    # "end":I
    :cond_3
    if-eqz v2, :cond_4

    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v8, v6, Landroid/widget/Editor;->mSelectionMoved:Z

    :cond_4
    sget-object v6, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v6, :cond_6

    const/4 v5, 0x1

    move v3, p4

    if-gez p3, :cond_5

    if-ltz p4, :cond_6

    :cond_5
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-direct {p0, v6, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->makeBlink()V

    :cond_6
    sget-object v6, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v6, :cond_8

    const/4 v5, 0x1

    move v4, p4

    if-gez p3, :cond_7

    if-ltz p4, :cond_8

    :cond_7
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .restart local v0    # "end":I
    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .end local v0    # "end":I
    :cond_8
    if-eqz v5, :cond_c

    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iput-boolean v8, v6, Landroid/widget/Editor;->mSelectionMoved:Z

    :cond_9
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_c

    if-gez v4, :cond_a

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    :cond_a
    if-gez v3, :cond_b

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    :cond_b
    invoke-virtual {p0, v4, v3}, Landroid/widget/TextView;->onSelectionChanged(II)V

    :cond_c
    invoke-static/range {p0 .. p6}, Landroid/widget/TextView$FlymeInjector;->editorOnSelectionChanged(Landroid/widget/TextView;Landroid/text/Spanned;Ljava/lang/Object;IIII)V

    instance-of v6, p2, Landroid/text/style/UpdateAppearance;

    if-nez v6, :cond_d

    instance-of v6, p2, Landroid/text/style/ParagraphStyle;

    if-nez v6, :cond_d

    instance-of v6, p2, Landroid/text/style/CharacterStyle;

    if-eqz v6, :cond_10

    :cond_d
    if-eqz v1, :cond_e

    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v6, :cond_1a

    :cond_e
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    :goto_1
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_10

    if-ltz p3, :cond_f

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v7, p3, p5}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    :cond_f
    if-ltz p4, :cond_10

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v7, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v7, p4, p6}, Landroid/widget/Editor;->invalidateTextDisplayList(Landroid/text/Layout;II)V

    :cond_10
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    iput-boolean v8, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v1, :cond_11

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    iput-boolean v8, v1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    :cond_11
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    if-ltz v6, :cond_13

    if-eqz v1, :cond_12

    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v6, :cond_1b

    :cond_12
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidateCursor()V

    :cond_13
    :goto_2
    instance-of v6, p2, Landroid/text/ParcelableSpan;

    if-eqz v6, :cond_17

    if-eqz v1, :cond_17

    iget-object v6, v1, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v6, :cond_17

    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v6, :cond_1c

    if-ltz p3, :cond_15

    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v6, p3, :cond_14

    iput p3, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_14
    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v6, p5, :cond_15

    iput p5, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_15
    if-ltz p4, :cond_17

    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v6, p4, :cond_16

    iput p4, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_16
    iget v6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-le v6, p6, :cond_17

    iput p6, v1, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    :cond_17
    :goto_3
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v6, :cond_18

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v6, :cond_18

    if-gez p4, :cond_18

    instance-of v6, p2, Landroid/text/style/SpellCheckSpan;

    if-eqz v6, :cond_18

    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    check-cast p2, Landroid/text/style/SpellCheckSpan;

    .end local p2    # "what":Ljava/lang/Object;
    invoke-virtual {v6, p2}, Landroid/widget/SpellChecker;->onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V

    :cond_18
    return-void

    .end local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    .end local v2    # "multiSelChanged":Z
    .restart local p2    # "what":Ljava/lang/Object;
    :cond_19
    iget-object v6, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    iget-object v1, v6, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    goto/16 :goto_0

    .restart local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    .restart local v2    # "multiSelChanged":Z
    :cond_1a
    iput-boolean v8, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto/16 :goto_1

    :cond_1b
    iput-boolean v8, v1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    goto :goto_2

    :cond_1c
    iput-boolean v8, v1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_3
.end method

.method public stopCursorBlink(Z)V
    .locals 1
    .param p1, "stop"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->stopCursorBlink(Z)V

    :cond_0
    return-void
.end method

.method protected stopSelectionActionMode()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    return-void
.end method

.method textCanBeSelected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v1}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 6784
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method updateAfterEdit()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .local v0, "curs":I
    if-gez v0, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    if-ltz v0, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->makeBlink()V

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .local v0, "verified":Z
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method viewportToContentHorizontalOffset()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/widget/TextView;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method viewportToContentVerticalOffset()I
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView;->mScrollY:I

    sub-int v0, v1, v2

    .local v0, "offset":I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public canCopyAll()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method getCursorWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mCursorWidth:I

    return v0
.end method

.method protected getDefaultCursorAlwaysVisible()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMagnifierVisible()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultOptionsVisible()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public getHintPadding()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mHintPadding:I

    return v0
.end method

.method public isOffsetOutOfVisible(I)Z
    .locals 11
    .param p1, "offset"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .local v3, "line":I
    if-eqz v3, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mTempCoords:[I

    .local v1, "coords":[I
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    iget v10, p0, Landroid/widget/TextView;->mScrollY:I

    sub-int v5, v9, v10

    .local v5, "lineTop":I
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    iget v10, p0, Landroid/widget/TextView;->mScrollY:I

    sub-int v4, v9, v10

    .local v4, "lineBottom":I
    iget-object v9, p0, Landroid/widget/TextView;->mTempCurosrRect:Landroid/graphics/Rect;

    if-nez v9, :cond_2

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/TextView;->mTempCurosrRect:Landroid/graphics/Rect;

    :cond_2
    iget-object v6, p0, Landroid/widget/TextView;->mTempCurosrRect:Landroid/graphics/Rect;

    .local v6, "r":Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v9, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    float-to-int v2, v9

    .local v2, "cursorX":I
    aget v9, v1, v7

    add-int/2addr v9, v2

    iput v9, v6, Landroid/graphics/Rect;->left:I

    aget v9, v1, v8

    add-int/2addr v9, v5

    iput v9, v6, Landroid/graphics/Rect;->top:I

    aget v9, v1, v7

    add-int/2addr v9, v2

    iput v9, v6, Landroid/graphics/Rect;->right:I

    aget v9, v1, v8

    add-int/2addr v9, v4

    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v9, :cond_3

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .local v0, "clip":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v9

    add-int/lit8 v9, v9, 0x0

    iput v9, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v9

    add-int/lit8 v9, v9, 0x0

    iput v9, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getRight()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Landroid/widget/TextView;->mParent:Landroid/view/ViewParent;

    const/4 v10, 0x0

    invoke-interface {v9, p0, v0, v10}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, v6, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-lt v9, v10, :cond_4

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    if-le v9, v10, :cond_0

    .line 6819
    :cond_4
    move v7, v8

    goto/16 :goto_0
.end method

.method mzGetEditor()Landroid/widget/Editor;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    return-object v0
.end method

.method mzGetFieldAutoLinkMask()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method mzGetTransformed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    return-object v0
.end method

.method mzIsCursorVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Landroid/widget/TextView;->mCurrentCursorVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method mzSetFieldAutoLinkMask(I)V
    .locals 0
    .param p1, "mask"    # I

    .prologue
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return-void
.end method

.method mzSetPrimaryClip(Landroid/content/ClipData;)V
    .locals 0
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public pregressEmojiStyle(ILandroid/text/Spannable;III)V
    .locals 10
    .param p1, "alpha"    # I
    .param p2, "s"    # Landroid/text/Spannable;
    .param p3, "start"    # I
    .param p4, "before"    # I
    .param p5, "after"    # I

    .prologue
    if-eqz p2, :cond_0

    if-ltz p3, :cond_0

    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v8

    if-ge p3, v8, :cond_0

    if-gtz p5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v7, p3

    .local v7, "subStart":I
    add-int v8, p3, p5

    :try_start_0
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v9

    if-le v8, v9, :cond_4

    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v6

    .local v6, "subEnd":I
    :goto_1
    const-string v8, "[\u263a\ud83d\ude01\ud83d\ude04\ud83d\ude07\ud83d\ude2f\ud83d\ude15\ud83d\ude20\ud83d\ude10\ud83d\ude08\ud83d\ude05\ud83d\ude02\ud83d\ude0a\ud83d\ude00\ud83d\ude03\ud83d\ude06\ud83d\ude09\ud83d\ude11\ud83d\ude21\ud83d\ude22\ud83d\ude23\ud83d\ude26\ud83d\ude29\ud83d\ude31\ud83d\ude35\ud83d\ude34\ud83d\ude24\ud83d\ude27\ud83d\ude30\ud83d\ude32\ud83d\ude36\ud83d\ude2e\ud83d\ude25\ud83d\ude28\ud83d\ude1f\ud83d\ude33\ud83d\ude37\ud83d\ude1e\ud83d\ude1b\ud83d\ude0b\ud83d\ude18\ud83d\ude2d\ud83d\ude14\ud83d\ude12\ud83d\ude1c\ud83d\ude17\ud83d\ude1a\ud83d\ude0c\ud83d\ude0d\ud83d\ude1d\ud83d\ude19\ud83d\ude0e\ud83d\ude16\ud83d\ude0f\ud83d\ude2a\ud83d\ude13\ud83d\ude4c\ud83d\ude46\ud83d\ude4f\ud83d\ude38\ud83d\ude3d\ud83d\ude2b\ud83d\ude4d\ud83d\ude47\ud83d\ude3a\ud83d\ude39\ud83d\ude3f\ud83d\ude4b\ud83d\ude45\ud83d\ude4e\ud83d\ude3c\ud83d\ude3b\ud83d\ude3e\ud83d\ude40\ud83d\ude4a\ud83d\udc66\ud83d\udc69\ud83d\udc8f\ud83d\udc6b\ud83d\ude48\ud83d\udca9\ud83d\udc67\ud83d\udc74\ud83d\udc91\ud83d\udc6c\ud83d\ude49\ud83d\udc76\ud83d\udc68\ud83d\udc75\ud83d\udc6a\ud83d\udc6d\ud83d\udc64\ud83d\udc65\ud83d\udc6e\ud83d\udc77\ud83d\udc81\ud83d\udc82\ud83d\udc6f\ud83d\udc70\ud83d\udc78\ud83c\udf85\ud83d\udc7c\ud83d\udc71\ud83d\udc72\ud83d\udc73\ud83d\udc83\ud83d\udc86\ud83d\udc87\ud83d\udc85\ud83d\udc7b\ud83d\udc7d\ud83d\udc80\ud83d\udc42\ud83d\udc44\ud83d\udc79\ud83d\udc7e\ud83d\udcaa\ud83d\udc43\ud83d\udc45\ud83d\udc99\ud83d\udc7a\ud83d\udc7f\ud83d\udc40\ud83d\udc63\ud83d\udc8b\ud83d\udc9a\ud83d\udc9b\ud83d\udc94\ud83d\udc97\ud83d\udc9e\ud83d\udc9c\ud83d\udc95\ud83d\udc98\ud83d\udc9f\ud83d\udc93\ud83d\udc96\ud83d\udc9d\ud83d\udc4d\u270a\ud83d\udc4c\ud83d\udc4e\u270c\u270b\ud83d\udc4a\u261d\ud83d\udc46\ud83d\udc47\ud83d\udc4b\ud83d\udc49\ud83d\udc48\ud83d\udc4f\ud83d\udc50\ud83c\udfe0\ud83c\udfe3\ud83c\udfe2\ud83c\udfe1\ud83c\udfe4\ud83c\udfe5\ud83c\udfe6\ud83c\udfe9\ud83c\udfe7]"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-interface {p2, v7, v6}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .local v3, "matcher":Ljava/util/regex/Matcher;
    const/4 v2, 0x0

    .local v2, "matchStart":I
    const/4 v1, 0x0

    .local v1, "matchEnd":I
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    add-int v2, v7, v8

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int v1, v2, v8

    const-class v8, Landroid/text/style/EmojiStyleSpan;

    invoke-interface {p2, v2, v1, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/EmojiStyleSpan;

    .local v5, "spans":[Landroid/text/style/EmojiStyleSpan;
    if-eqz v5, :cond_3

    array-length v8, v5

    const/4 v9, 0x1

    if-ge v8, v9, :cond_2

    :cond_3
    new-instance v8, Landroid/text/style/EmojiStyleSpan;

    invoke-direct {v8, p1}, Landroid/text/style/EmojiStyleSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-interface {p2, v8, v2, v1, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v1    # "matchEnd":I
    .end local v2    # "matchStart":I
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v5    # "spans":[Landroid/text/style/EmojiStyleSpan;
    .end local v6    # "subEnd":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    add-int v6, p3, p5

    goto :goto_1
.end method

.method public setAutoLinkMaskIncludeDateTime(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/widget/TextView;->mAutoLinkMaskIncludeDateTime:Z

    return-void
.end method

.method public setEllipsisSmall(Z)V
    .locals 0
    .param p1, "ellipsisSmall"    # Z

    .prologue
    return-void
.end method

.method public setEmojiAlphaEnabled(Z)V
    .locals 9
    .param p1, "enabled"    # Z

    .prologue
    const/4 v8, 0x0

    iget-boolean v5, p0, Landroid/widget/TextView;->mEmojiAlphaEnabled:Z

    if-eq v5, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/TextView;->mEmojiAlphaEnabled:Z

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Landroid/widget/TextView;->mEmojiAlphaEnabled:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v5, v5, Landroid/text/Spannable;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Landroid/text/style/EmojiStyleSpan;

    invoke-interface {v5, v8, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/EmojiStyleSpan;

    .local v4, "spans":[Landroid/text/style/EmojiStyleSpan;
    if-eqz v4, :cond_1

    array-length v5, v4

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .end local v4    # "spans":[Landroid/text/style/EmojiStyleSpan;
    :cond_0
    :goto_0
    return-void

    .restart local v4    # "spans":[Landroid/text/style/EmojiStyleSpan;
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Landroid/text/style/EmojiStyleSpan;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, "emojiSpan":Landroid/text/style/EmojiStyleSpan;
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v5, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Landroid/text/style/EmojiStyleSpan;
    .end local v1    # "emojiSpan":Landroid/text/style/EmojiStyleSpan;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "spans":[Landroid/text/style/EmojiStyleSpan;
    :cond_2
    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/TextView;->mEmojiAlphaEnabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v5, v6, v8, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    goto :goto_0
.end method

.method public setEnableDragSelection(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->setEnableDragSelection(Z)V

    :cond_0
    return-void
.end method

.method public setHintPadding(I)V
    .locals 1
    .param p1, "padding"    # I

    .prologue
    iget v0, p0, Landroid/widget/TextView;->mHintPadding:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/TextView;->mHintPadding:I

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public startSelectionActionMode()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, "start":Ljava/lang/Boolean;
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .end local v0    # "start":Ljava/lang/Boolean;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateBackground(Z)V
    .locals 8
    .param p1, "cursorVisible"    # Z

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    .local v1, "drawableState":[I
    array-length v3, v1

    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v5, v1, v2

    const v6, #android:attr@state_focused#t

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, v3, -0x1

    new-array v4, v5, [I

    .local v4, "nonFocusedState":[I
    invoke-static {v1, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v5, v2, 0x1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy([II[III)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .end local v1    # "drawableState":[I
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "nonFocusedState":[I
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "drawableState":[I
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "drawableState":[I
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .restart local v1    # "drawableState":[I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1
.end method

.method public updateCurrentCursorVisbility(Z)Z
    .locals 2
    .param p1, "inputShown"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/widget/TextView;->getDefaultCursorAlwaysVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .local v0, "visible":Z
    :goto_0
    iget-boolean v1, p0, Landroid/widget/TextView;->mCurrentCursorVisible:Z

    if-eq v1, v0, :cond_4

    iput-boolean v0, p0, Landroid/widget/TextView;->mCurrentCursorVisible:Z

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1, v0}, Landroid/widget/Editor;->onCursorVisbilityChanged(Z)V

    :cond_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .end local v0    # "visible":Z
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getShowSoftInputOnFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, p1

    .restart local v0    # "visible":Z
    goto :goto_0

    .end local v0    # "visible":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "visible":Z
    goto :goto_0

    .end local v0    # "visible":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "visible":Z
    goto :goto_0

    .line 7964
    :cond_4
    const/4 v1, 0x0

    .line 13147
    goto :goto_1
.end method
